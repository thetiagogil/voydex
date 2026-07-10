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
-- Ultra Sun / Ultra Moon learnsets for default forms, species 202-251.
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
  -- Wobbuffet - Counter - Level 1
  (202, 20200, 68, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wobbuffet - Destiny Bond - Level 1
  (202, 20200, 194, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wobbuffet - Safeguard - Level 1
  (202, 20200, 219, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wobbuffet - Mirror Coat - Level 1
  (202, 20200, 243, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wobbuffet - Safeguard - TM20
  (202, 20200, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 5),

  -- Girafarig - Tackle - Level 1
  (203, 20300, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Girafarig - Growl - Level 1
  (203, 20300, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Girafarig - Confusion - Level 1
  (203, 20300, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Girafarig - Astonish - Level 1
  (203, 20300, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Girafarig - Power Swap - Level 1
  (203, 20300, 384, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Girafarig - Guard Swap - Level 1
  (203, 20300, 385, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Girafarig - Odor Sleuth - Level 5
  (203, 20300, 316, 16, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Girafarig - Assurance - Level 10
  (203, 20300, 372, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Girafarig - Stomp - Level 14
  (203, 20300, 23, 16, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Girafarig - Psybeam - Level 19
  (203, 20300, 60, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Girafarig - Agility - Level 23
  (203, 20300, 97, 16, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Girafarig - Double Hit - Level 28
  (203, 20300, 458, 16, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Girafarig - Zen Headbutt - Level 32
  (203, 20300, 428, 16, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Girafarig - Crunch - Level 37
  (203, 20300, 242, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Girafarig - Baton Pass - Level 41
  (203, 20300, 226, 16, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Girafarig - Nasty Plot - Level 46
  (203, 20300, 417, 16, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Girafarig - Psychic - Level 50
  (203, 20300, 94, 16, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Girafarig - Work Up - TM01
  (203, 20300, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 18),
  -- Girafarig - Psyshock - TM03
  (203, 20300, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 19),
  -- Girafarig - Calm Mind - TM04
  (203, 20300, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 20),
  -- Girafarig - Toxic - TM06
  (203, 20300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Girafarig - Hidden Power - TM10
  (203, 20300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Girafarig - Sunny Day - TM11
  (203, 20300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Girafarig - Light Screen - TM16
  (203, 20300, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 24),
  -- Girafarig - Protect - TM17
  (203, 20300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Girafarig - Rain Dance - TM18
  (203, 20300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Girafarig - Frustration - TM21
  (203, 20300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Girafarig - Thunderbolt - TM24
  (203, 20300, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 28),
  -- Girafarig - Thunder - TM25
  (203, 20300, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 29),
  -- Girafarig - Earthquake - TM26
  (203, 20300, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 30),
  -- Girafarig - Return - TM27
  (203, 20300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Girafarig - Psychic - TM29
  (203, 20300, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 32),
  -- Girafarig - Shadow Ball - TM30
  (203, 20300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 33),
  -- Girafarig - Double Team - TM32
  (203, 20300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Girafarig - Reflect - TM33
  (203, 20300, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 35),
  -- Girafarig - Facade - TM42
  (203, 20300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Girafarig - Rest - TM44
  (203, 20300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Girafarig - Attract - TM45
  (203, 20300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Girafarig - Thief - TM46
  (203, 20300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 39),
  -- Girafarig - Round - TM48
  (203, 20300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Girafarig - Echoed Voice - TM49
  (203, 20300, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 41),
  -- Girafarig - Energy Ball - TM53
  (203, 20300, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 42),
  -- Girafarig - Charge Beam - TM57
  (203, 20300, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 43),
  -- Girafarig - Thunder Wave - TM73
  (203, 20300, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 44),
  -- Girafarig - Psych Up - TM77
  (203, 20300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 45),
  -- Girafarig - Bulldoze - TM78
  (203, 20300, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 46),
  -- Girafarig - Dream Eater - TM85
  (203, 20300, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 47),
  -- Girafarig - Grass Knot - TM86
  (203, 20300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 48),
  -- Girafarig - Swagger - TM87
  (203, 20300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Girafarig - Sleep Talk - TM88
  (203, 20300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Girafarig - Substitute - TM90
  (203, 20300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Girafarig - Trick Room - TM92
  (203, 20300, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 52),
  -- Girafarig - Dazzling Gleam - TM99
  (203, 20300, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 53),
  -- Girafarig - Confide - TM100
  (203, 20300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Girafarig - Razor Wind - Egg
  (203, 20300, 13, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Girafarig - Double Kick - Egg
  (203, 20300, 24, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Girafarig - Take Down - Egg
  (203, 20300, 36, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Girafarig - Amnesia - Egg
  (203, 20300, 133, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Girafarig - Foresight - Egg
  (203, 20300, 193, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Girafarig - Mean Look - Egg
  (203, 20300, 212, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Girafarig - Mirror Coat - Egg
  (203, 20300, 243, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Girafarig - Future Sight - Egg
  (203, 20300, 248, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Girafarig - Beat Up - Egg
  (203, 20300, 251, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Girafarig - Wish - Egg
  (203, 20300, 273, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Girafarig - Magic Coat - Egg
  (203, 20300, 277, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Girafarig - Skill Swap - Egg
  (203, 20300, 285, 16, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Girafarig - Secret Power - Egg
  (203, 20300, 290, 16, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Girafarig - Psychic Terrain - Egg
  (203, 20300, 678, 16, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Girafarig - Psychic Fangs - Egg
  (203, 20300, 706, 16, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Girafarig - Snore - Tutor
  (203, 20300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Girafarig - Iron Tail - Tutor
  (203, 20300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Girafarig - Uproar - Tutor
  (203, 20300, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Girafarig - Trick - Tutor
  (203, 20300, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Girafarig - Magic Coat - Tutor
  (203, 20300, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Girafarig - Recycle - Tutor
  (203, 20300, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Girafarig - Skill Swap - Tutor
  (203, 20300, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Girafarig - Hyper Voice - Tutor
  (203, 20300, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Girafarig - Signal Beam - Tutor
  (203, 20300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Girafarig - Shock Wave - Tutor
  (203, 20300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Girafarig - Gravity - Tutor
  (203, 20300, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Girafarig - Zen Headbutt - Tutor
  (203, 20300, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Girafarig - Telekinesis - Tutor
  (203, 20300, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Girafarig - Foul Play - Tutor
  (203, 20300, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Girafarig - Ally Switch - Tutor
  (203, 20300, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Girafarig - Stomping Tantrum - Tutor
  (203, 20300, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),

  -- Pineco - Tackle - Level 1
  (204, 20400, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pineco - Protect - Level 1
  (204, 20400, 182, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pineco - Self-Destruct - Level 6
  (204, 20400, 120, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Pineco - Bug Bite - Level 9
  (204, 20400, 450, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Pineco - Take Down - Level 12
  (204, 20400, 36, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pineco - Rapid Spin - Level 17
  (204, 20400, 229, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Pineco - Bide - Level 20
  (204, 20400, 117, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Pineco - Natural Gift - Level 23
  (204, 20400, 363, 16, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Pineco - Spikes - Level 28
  (204, 20400, 191, 16, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Pineco - Payback - Level 31
  (204, 20400, 371, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Pineco - Explosion - Level 34
  (204, 20400, 153, 16, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Pineco - Iron Defense - Level 39
  (204, 20400, 334, 16, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Pineco - Gyro Ball - Level 42
  (204, 20400, 360, 16, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Pineco - Double-Edge - Level 45
  (204, 20400, 38, 16, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Pineco - Toxic - TM06
  (204, 20400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Pineco - Venoshock - TM09
  (204, 20400, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 16),
  -- Pineco - Hidden Power - TM10
  (204, 20400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Pineco - Sunny Day - TM11
  (204, 20400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Pineco - Light Screen - TM16
  (204, 20400, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 19),
  -- Pineco - Protect - TM17
  (204, 20400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Pineco - Frustration - TM21
  (204, 20400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 21),
  -- Pineco - Solar Beam - TM22
  (204, 20400, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 22),
  -- Pineco - Earthquake - TM26
  (204, 20400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 23),
  -- Pineco - Return - TM27
  (204, 20400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Pineco - Double Team - TM32
  (204, 20400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Pineco - Reflect - TM33
  (204, 20400, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 26),
  -- Pineco - Sandstorm - TM37
  (204, 20400, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 27),
  -- Pineco - Rock Tomb - TM39
  (204, 20400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 28),
  -- Pineco - Facade - TM42
  (204, 20400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Pineco - Rest - TM44
  (204, 20400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Pineco - Attract - TM45
  (204, 20400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Pineco - Round - TM48
  (204, 20400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Pineco - Explosion - TM64
  (204, 20400, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 33),
  -- Pineco - Payback - TM66
  (204, 20400, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 34),
  -- Pineco - Gyro Ball - TM74
  (204, 20400, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 35),
  -- Pineco - Bulldoze - TM78
  (204, 20400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 36),
  -- Pineco - Rock Slide - TM80
  (204, 20400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 37),
  -- Pineco - Swagger - TM87
  (204, 20400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 38),
  -- Pineco - Sleep Talk - TM88
  (204, 20400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 39),
  -- Pineco - Substitute - TM90
  (204, 20400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 40),
  -- Pineco - Confide - TM100
  (204, 20400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Pineco - Double-Edge - Egg
  (204, 20400, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Pineco - Pin Missile - Egg
  (204, 20400, 42, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Pineco - Counter - Egg
  (204, 20400, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Pineco - Swift - Egg
  (204, 20400, 129, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Pineco - Flail - Egg
  (204, 20400, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Pineco - Endure - Egg
  (204, 20400, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Pineco - Revenge - Egg
  (204, 20400, 279, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Pineco - Sand Tomb - Egg
  (204, 20400, 328, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Pineco - Power Trick - Egg
  (204, 20400, 379, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Pineco - Toxic Spikes - Egg
  (204, 20400, 390, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Pineco - Stealth Rock - Egg
  (204, 20400, 446, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Pineco - Snore - Tutor
  (204, 20400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Pineco - Giga Drain - Tutor
  (204, 20400, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Pineco - Pain Split - Tutor
  (204, 20400, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Pineco - Iron Defense - Tutor
  (204, 20400, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Pineco - Gravity - Tutor
  (204, 20400, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Pineco - Stealth Rock - Tutor
  (204, 20400, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Pineco - Bug Bite - Tutor
  (204, 20400, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Pineco - Drill Run - Tutor
  (204, 20400, 529, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),

  -- Forretress - Tackle - Level 1
  (205, 20500, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Forretress - Self-Destruct - Level 1
  (205, 20500, 120, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Forretress - Protect - Level 1
  (205, 20500, 182, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Forretress - Zap Cannon - Level 1
  (205, 20500, 192, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Forretress - Toxic Spikes - Level 1
  (205, 20500, 390, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Forretress - Magnet Rise - Level 1
  (205, 20500, 393, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Forretress - Mirror Shot - Level 1
  (205, 20500, 429, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Forretress - Bug Bite - Level 1
  (205, 20500, 450, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Forretress - Autotomize - Level 1
  (205, 20500, 475, 16, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Forretress - Heavy Slam - Level 1
  (205, 20500, 484, 16, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Forretress - Self-Destruct - Level 6
  (205, 20500, 120, 16, NULL, 1, 6, NULL, NULL, NULL, 11),
  -- Forretress - Bug Bite - Level 9
  (205, 20500, 450, 16, NULL, 1, 9, NULL, NULL, NULL, 12),
  -- Forretress - Take Down - Level 12
  (205, 20500, 36, 16, NULL, 1, 12, NULL, NULL, NULL, 13),
  -- Forretress - Rapid Spin - Level 17
  (205, 20500, 229, 16, NULL, 1, 17, NULL, NULL, NULL, 14),
  -- Forretress - Bide - Level 20
  (205, 20500, 117, 16, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Forretress - Natural Gift - Level 23
  (205, 20500, 363, 16, NULL, 1, 23, NULL, NULL, NULL, 16),
  -- Forretress - Spikes - Level 28
  (205, 20500, 191, 16, NULL, 1, 28, NULL, NULL, NULL, 17),
  -- Forretress - Payback - Level 32
  (205, 20500, 371, 16, NULL, 1, 32, NULL, NULL, NULL, 18),
  -- Forretress - Explosion - Level 36
  (205, 20500, 153, 16, NULL, 1, 36, NULL, NULL, NULL, 19),
  -- Forretress - Iron Defense - Level 42
  (205, 20500, 334, 16, NULL, 1, 42, NULL, NULL, NULL, 20),
  -- Forretress - Gyro Ball - Level 46
  (205, 20500, 360, 16, NULL, 1, 46, NULL, NULL, NULL, 21),
  -- Forretress - Double-Edge - Level 50
  (205, 20500, 38, 16, NULL, 1, 50, NULL, NULL, NULL, 22),
  -- Forretress - Magnet Rise - Level 56
  (205, 20500, 393, 16, NULL, 1, 56, NULL, NULL, NULL, 23),
  -- Forretress - Zap Cannon - Level 60
  (205, 20500, 192, 16, NULL, 1, 60, NULL, NULL, NULL, 24),
  -- Forretress - Heavy Slam - Level 64
  (205, 20500, 484, 16, NULL, 1, 64, NULL, NULL, NULL, 25),
  -- Forretress - Toxic - TM06
  (205, 20500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 26),
  -- Forretress - Venoshock - TM09
  (205, 20500, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 27),
  -- Forretress - Hidden Power - TM10
  (205, 20500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 28),
  -- Forretress - Sunny Day - TM11
  (205, 20500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 29),
  -- Forretress - Hyper Beam - TM15
  (205, 20500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 30),
  -- Forretress - Light Screen - TM16
  (205, 20500, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 31),
  -- Forretress - Protect - TM17
  (205, 20500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 32),
  -- Forretress - Frustration - TM21
  (205, 20500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 33),
  -- Forretress - Solar Beam - TM22
  (205, 20500, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 34),
  -- Forretress - Earthquake - TM26
  (205, 20500, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 35),
  -- Forretress - Return - TM27
  (205, 20500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 36),
  -- Forretress - Double Team - TM32
  (205, 20500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 37),
  -- Forretress - Reflect - TM33
  (205, 20500, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 38),
  -- Forretress - Sandstorm - TM37
  (205, 20500, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 39),
  -- Forretress - Rock Tomb - TM39
  (205, 20500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 40),
  -- Forretress - Facade - TM42
  (205, 20500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 41),
  -- Forretress - Rest - TM44
  (205, 20500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 42),
  -- Forretress - Attract - TM45
  (205, 20500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 43),
  -- Forretress - Round - TM48
  (205, 20500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 44),
  -- Forretress - Explosion - TM64
  (205, 20500, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 45),
  -- Forretress - Payback - TM66
  (205, 20500, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 46),
  -- Forretress - Giga Impact - TM68
  (205, 20500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 47),
  -- Forretress - Rock Polish - TM69
  (205, 20500, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 48),
  -- Forretress - Volt Switch - TM72
  (205, 20500, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 49),
  -- Forretress - Gyro Ball - TM74
  (205, 20500, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 50),
  -- Forretress - Bulldoze - TM78
  (205, 20500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 51),
  -- Forretress - Rock Slide - TM80
  (205, 20500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 52),
  -- Forretress - Swagger - TM87
  (205, 20500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 53),
  -- Forretress - Sleep Talk - TM88
  (205, 20500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 54),
  -- Forretress - Substitute - TM90
  (205, 20500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 55),
  -- Forretress - Flash Cannon - TM91
  (205, 20500, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 56),
  -- Forretress - Confide - TM100
  (205, 20500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 57),
  -- Forretress - Snore - Tutor
  (205, 20500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Forretress - Giga Drain - Tutor
  (205, 20500, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Forretress - Pain Split - Tutor
  (205, 20500, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Forretress - Signal Beam - Tutor
  (205, 20500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Forretress - Iron Defense - Tutor
  (205, 20500, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Forretress - Block - Tutor
  (205, 20500, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Forretress - Gravity - Tutor
  (205, 20500, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Forretress - Magnet Rise - Tutor
  (205, 20500, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Forretress - Stealth Rock - Tutor
  (205, 20500, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Forretress - Bug Bite - Tutor
  (205, 20500, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Forretress - Telekinesis - Tutor
  (205, 20500, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Forretress - Ally Switch - Tutor
  (205, 20500, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Forretress - Drill Run - Tutor
  (205, 20500, 529, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Forretress - Laser Focus - Tutor
  (205, 20500, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Forretress - Mirror Shot - Evolution
  (205, 20500, 429, 16, NULL, 7, NULL, NULL, NULL, NULL, 72),
  -- Forretress - Autotomize - Evolution
  (205, 20500, 475, 16, NULL, 7, NULL, NULL, NULL, NULL, 73),

  -- Dunsparce - Rage - Level 1
  (206, 20600, 99, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dunsparce - Defense Curl - Level 1
  (206, 20600, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dunsparce - Rollout - Level 3
  (206, 20600, 205, 16, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Dunsparce - Spite - Level 6
  (206, 20600, 180, 16, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Dunsparce - Pursuit - Level 8
  (206, 20600, 228, 16, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Dunsparce - Screech - Level 11
  (206, 20600, 103, 16, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Dunsparce - Mud-Slap - Level 13
  (206, 20600, 189, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Dunsparce - Yawn - Level 16
  (206, 20600, 281, 16, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Dunsparce - Ancient Power - Level 18
  (206, 20600, 246, 16, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Dunsparce - Body Slam - Level 21
  (206, 20600, 34, 16, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Dunsparce - Drill Run - Level 23
  (206, 20600, 529, 16, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Dunsparce - Roost - Level 26
  (206, 20600, 355, 16, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Dunsparce - Take Down - Level 28
  (206, 20600, 36, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Dunsparce - Coil - Level 31
  (206, 20600, 489, 16, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Dunsparce - Dig - Level 33
  (206, 20600, 91, 16, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Dunsparce - Glare - Level 36
  (206, 20600, 137, 16, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Dunsparce - Double-Edge - Level 38
  (206, 20600, 38, 16, NULL, 1, 38, NULL, NULL, NULL, 17),
  -- Dunsparce - Endeavor - Level 41
  (206, 20600, 283, 16, NULL, 1, 41, NULL, NULL, NULL, 18),
  -- Dunsparce - Air Slash - Level 43
  (206, 20600, 403, 16, NULL, 1, 43, NULL, NULL, NULL, 19),
  -- Dunsparce - Dragon Rush - Level 46
  (206, 20600, 407, 16, NULL, 1, 46, NULL, NULL, NULL, 20),
  -- Dunsparce - Endure - Level 48
  (206, 20600, 203, 16, NULL, 1, 48, NULL, NULL, NULL, 21),
  -- Dunsparce - Flail - Level 51
  (206, 20600, 175, 16, NULL, 1, 51, NULL, NULL, NULL, 22),
  -- Dunsparce - Calm Mind - TM04
  (206, 20600, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 23),
  -- Dunsparce - Toxic - TM06
  (206, 20600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 24),
  -- Dunsparce - Hidden Power - TM10
  (206, 20600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Dunsparce - Sunny Day - TM11
  (206, 20600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 26),
  -- Dunsparce - Ice Beam - TM13
  (206, 20600, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 27),
  -- Dunsparce - Blizzard - TM14
  (206, 20600, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 28),
  -- Dunsparce - Protect - TM17
  (206, 20600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Dunsparce - Rain Dance - TM18
  (206, 20600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 30),
  -- Dunsparce - Roost - TM19
  (206, 20600, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 31),
  -- Dunsparce - Frustration - TM21
  (206, 20600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Dunsparce - Solar Beam - TM22
  (206, 20600, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 33),
  -- Dunsparce - Thunderbolt - TM24
  (206, 20600, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 34),
  -- Dunsparce - Thunder - TM25
  (206, 20600, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 35),
  -- Dunsparce - Earthquake - TM26
  (206, 20600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 36),
  -- Dunsparce - Return - TM27
  (206, 20600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 37),
  -- Dunsparce - Shadow Ball - TM30
  (206, 20600, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 38),
  -- Dunsparce - Double Team - TM32
  (206, 20600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 39),
  -- Dunsparce - Flamethrower - TM35
  (206, 20600, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 40),
  -- Dunsparce - Fire Blast - TM38
  (206, 20600, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 41),
  -- Dunsparce - Rock Tomb - TM39
  (206, 20600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 42),
  -- Dunsparce - Facade - TM42
  (206, 20600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 43),
  -- Dunsparce - Rest - TM44
  (206, 20600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 44),
  -- Dunsparce - Attract - TM45
  (206, 20600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 45),
  -- Dunsparce - Thief - TM46
  (206, 20600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 46),
  -- Dunsparce - Round - TM48
  (206, 20600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 47),
  -- Dunsparce - Charge Beam - TM57
  (206, 20600, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 48),
  -- Dunsparce - Thunder Wave - TM73
  (206, 20600, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 49),
  -- Dunsparce - Gyro Ball - TM74
  (206, 20600, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 50),
  -- Dunsparce - Psych Up - TM77
  (206, 20600, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 51),
  -- Dunsparce - Bulldoze - TM78
  (206, 20600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 52),
  -- Dunsparce - Rock Slide - TM80
  (206, 20600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 53),
  -- Dunsparce - Poison Jab - TM84
  (206, 20600, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 54),
  -- Dunsparce - Dream Eater - TM85
  (206, 20600, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 55),
  -- Dunsparce - Swagger - TM87
  (206, 20600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 56),
  -- Dunsparce - Sleep Talk - TM88
  (206, 20600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 57),
  -- Dunsparce - Substitute - TM90
  (206, 20600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 58),
  -- Dunsparce - Wild Charge - TM93
  (206, 20600, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 59),
  -- Dunsparce - Confide - TM100
  (206, 20600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 60),
  -- Dunsparce - Headbutt - Egg
  (206, 20600, 29, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Dunsparce - Bite - Egg
  (206, 20600, 44, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Dunsparce - Agility - Egg
  (206, 20600, 97, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Dunsparce - Bide - Egg
  (206, 20600, 117, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Dunsparce - Snore - Egg
  (206, 20600, 173, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Dunsparce - Curse - Egg
  (206, 20600, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Dunsparce - Sleep Talk - Egg
  (206, 20600, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Dunsparce - Ancient Power - Egg
  (206, 20600, 246, 16, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Dunsparce - Magic Coat - Egg
  (206, 20600, 277, 16, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Dunsparce - Secret Power - Egg
  (206, 20600, 290, 16, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Dunsparce - Astonish - Egg
  (206, 20600, 310, 16, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Dunsparce - Trump Card - Egg
  (206, 20600, 376, 16, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Dunsparce - Hex - Egg
  (206, 20600, 506, 16, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Dunsparce - Bind - Tutor
  (206, 20600, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Dunsparce - Snore - Tutor
  (206, 20600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Dunsparce - Spite - Tutor
  (206, 20600, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Dunsparce - Pain Split - Tutor
  (206, 20600, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Dunsparce - Iron Tail - Tutor
  (206, 20600, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Dunsparce - Magic Coat - Tutor
  (206, 20600, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Dunsparce - Endeavor - Tutor
  (206, 20600, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Dunsparce - Shock Wave - Tutor
  (206, 20600, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Dunsparce - Water Pulse - Tutor
  (206, 20600, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Dunsparce - Last Resort - Tutor
  (206, 20600, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Dunsparce - Aqua Tail - Tutor
  (206, 20600, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Dunsparce - Zen Headbutt - Tutor
  (206, 20600, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Dunsparce - Stealth Rock - Tutor
  (206, 20600, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Dunsparce - Drill Run - Tutor
  (206, 20600, 529, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),
  -- Dunsparce - Stomping Tantrum - Tutor
  (206, 20600, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 88),

  -- Gligar - Poison Sting - Level 1
  (207, 20700, 40, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gligar - Sand Attack - Level 4
  (207, 20700, 28, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Gligar - Harden - Level 7
  (207, 20700, 106, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Gligar - Knock Off - Level 10
  (207, 20700, 282, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Gligar - Quick Attack - Level 13
  (207, 20700, 98, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Gligar - Fury Cutter - Level 16
  (207, 20700, 210, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gligar - Feint Attack - Level 19
  (207, 20700, 185, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Gligar - Acrobatics - Level 22
  (207, 20700, 512, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Gligar - Slash - Level 27
  (207, 20700, 163, 16, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Gligar - U-turn - Level 30
  (207, 20700, 369, 16, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Gligar - Screech - Level 35
  (207, 20700, 103, 16, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Gligar - X-Scissor - Level 40
  (207, 20700, 404, 16, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Gligar - Sky Uppercut - Level 45
  (207, 20700, 327, 16, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Gligar - Swords Dance - Level 50
  (207, 20700, 14, 16, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Gligar - Guillotine - Level 55
  (207, 20700, 12, 16, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Gligar - Toxic - TM06
  (207, 20700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Gligar - Venoshock - TM09
  (207, 20700, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 17),
  -- Gligar - Hidden Power - TM10
  (207, 20700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Gligar - Sunny Day - TM11
  (207, 20700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Gligar - Taunt - TM12
  (207, 20700, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 20),
  -- Gligar - Protect - TM17
  (207, 20700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Gligar - Rain Dance - TM18
  (207, 20700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Gligar - Roost - TM19
  (207, 20700, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 23),
  -- Gligar - Frustration - TM21
  (207, 20700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Gligar - Earthquake - TM26
  (207, 20700, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 25),
  -- Gligar - Return - TM27
  (207, 20700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Gligar - Brick Break - TM31
  (207, 20700, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 27),
  -- Gligar - Double Team - TM32
  (207, 20700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Gligar - Sludge Bomb - TM36
  (207, 20700, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 29),
  -- Gligar - Sandstorm - TM37
  (207, 20700, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 30),
  -- Gligar - Rock Tomb - TM39
  (207, 20700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 31),
  -- Gligar - Aerial Ace - TM40
  (207, 20700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Gligar - Torment - TM41
  (207, 20700, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 33),
  -- Gligar - Facade - TM42
  (207, 20700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Gligar - Rest - TM44
  (207, 20700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Gligar - Attract - TM45
  (207, 20700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Gligar - Thief - TM46
  (207, 20700, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 37),
  -- Gligar - Round - TM48
  (207, 20700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Gligar - Steel Wing - TM51
  (207, 20700, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 39),
  -- Gligar - False Swipe - TM54
  (207, 20700, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 40),
  -- Gligar - Fling - TM56
  (207, 20700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 41),
  -- Gligar - Acrobatics - TM62
  (207, 20700, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 42),
  -- Gligar - Payback - TM66
  (207, 20700, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 43),
  -- Gligar - Rock Polish - TM69
  (207, 20700, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 44),
  -- Gligar - Stone Edge - TM71
  (207, 20700, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 45),
  -- Gligar - Swords Dance - TM75
  (207, 20700, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 46),
  -- Gligar - Bulldoze - TM78
  (207, 20700, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 47),
  -- Gligar - Rock Slide - TM80
  (207, 20700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 48),
  -- Gligar - X-Scissor - TM81
  (207, 20700, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 49),
  -- Gligar - Poison Jab - TM84
  (207, 20700, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 50),
  -- Gligar - Swagger - TM87
  (207, 20700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 51),
  -- Gligar - Sleep Talk - TM88
  (207, 20700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 52),
  -- Gligar - U-turn - TM89
  (207, 20700, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 53),
  -- Gligar - Substitute - TM90
  (207, 20700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 54),
  -- Gligar - Dark Pulse - TM97
  (207, 20700, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 55),
  -- Gligar - Confide - TM100
  (207, 20700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 56),
  -- Gligar - Razor Wind - Egg
  (207, 20700, 13, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gligar - Wing Attack - Egg
  (207, 20700, 17, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Gligar - Double-Edge - Egg
  (207, 20700, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Gligar - Counter - Egg
  (207, 20700, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gligar - Agility - Egg
  (207, 20700, 97, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gligar - Baton Pass - Egg
  (207, 20700, 226, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Gligar - Metal Claw - Egg
  (207, 20700, 232, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Gligar - Sand Tomb - Egg
  (207, 20700, 328, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Gligar - Poison Tail - Egg
  (207, 20700, 342, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Gligar - Feint - Egg
  (207, 20700, 364, 16, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Gligar - Power Trick - Egg
  (207, 20700, 379, 16, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Gligar - Night Slash - Egg
  (207, 20700, 400, 16, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Gligar - Rock Climb - Egg
  (207, 20700, 431, 16, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Gligar - Cross Poison - Egg
  (207, 20700, 440, 16, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Gligar - Snore - Tutor
  (207, 20700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Gligar - Iron Tail - Tutor
  (207, 20700, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Gligar - Knock Off - Tutor
  (207, 20700, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Gligar - Tailwind - Tutor
  (207, 20700, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Gligar - Aqua Tail - Tutor
  (207, 20700, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Gligar - Earth Power - Tutor
  (207, 20700, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Gligar - Defog - Tutor
  (207, 20700, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Gligar - Stealth Rock - Tutor
  (207, 20700, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Gligar - Bug Bite - Tutor
  (207, 20700, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Gligar - Throat Chop - Tutor
  (207, 20700, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),

  -- Steelix - Bind - Level 1
  (208, 20800, 20, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Steelix - Tackle - Level 1
  (208, 20800, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Steelix - Harden - Level 1
  (208, 20800, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Steelix - Mud Sport - Level 1
  (208, 20800, 300, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Steelix - Thunder Fang - Level 1
  (208, 20800, 422, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Steelix - Ice Fang - Level 1
  (208, 20800, 423, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Steelix - Fire Fang - Level 1
  (208, 20800, 424, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Steelix - Curse - Level 4
  (208, 20800, 174, 16, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Steelix - Rock Throw - Level 7
  (208, 20800, 88, 16, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Steelix - Rock Tomb - Level 10
  (208, 20800, 317, 16, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Steelix - Rage - Level 13
  (208, 20800, 99, 16, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Steelix - Stealth Rock - Level 16
  (208, 20800, 446, 16, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Steelix - Autotomize - Level 19
  (208, 20800, 475, 16, NULL, 1, 19, NULL, NULL, NULL, 13),
  -- Steelix - Gyro Ball - Level 20
  (208, 20800, 360, 16, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Steelix - Smack Down - Level 22
  (208, 20800, 479, 16, NULL, 1, 22, NULL, NULL, NULL, 15),
  -- Steelix - Dragon Breath - Level 25
  (208, 20800, 225, 16, NULL, 1, 25, NULL, NULL, NULL, 16),
  -- Steelix - Slam - Level 28
  (208, 20800, 21, 16, NULL, 1, 28, NULL, NULL, NULL, 17),
  -- Steelix - Screech - Level 31
  (208, 20800, 103, 16, NULL, 1, 31, NULL, NULL, NULL, 18),
  -- Steelix - Rock Slide - Level 34
  (208, 20800, 157, 16, NULL, 1, 34, NULL, NULL, NULL, 19),
  -- Steelix - Crunch - Level 37
  (208, 20800, 242, 16, NULL, 1, 37, NULL, NULL, NULL, 20),
  -- Steelix - Iron Tail - Level 40
  (208, 20800, 231, 16, NULL, 1, 40, NULL, NULL, NULL, 21),
  -- Steelix - Dig - Level 43
  (208, 20800, 91, 16, NULL, 1, 43, NULL, NULL, NULL, 22),
  -- Steelix - Stone Edge - Level 46
  (208, 20800, 444, 16, NULL, 1, 46, NULL, NULL, NULL, 23),
  -- Steelix - Double-Edge - Level 49
  (208, 20800, 38, 16, NULL, 1, 49, NULL, NULL, NULL, 24),
  -- Steelix - Sandstorm - Level 52
  (208, 20800, 201, 16, NULL, 1, 52, NULL, NULL, NULL, 25),
  -- Steelix - Roar - TM05
  (208, 20800, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 26),
  -- Steelix - Toxic - TM06
  (208, 20800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 27),
  -- Steelix - Hidden Power - TM10
  (208, 20800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 28),
  -- Steelix - Sunny Day - TM11
  (208, 20800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 29),
  -- Steelix - Taunt - TM12
  (208, 20800, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 30),
  -- Steelix - Hyper Beam - TM15
  (208, 20800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 31),
  -- Steelix - Protect - TM17
  (208, 20800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 32),
  -- Steelix - Frustration - TM21
  (208, 20800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 33),
  -- Steelix - Smack Down - TM23
  (208, 20800, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 34),
  -- Steelix - Earthquake - TM26
  (208, 20800, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 35),
  -- Steelix - Return - TM27
  (208, 20800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 36),
  -- Steelix - Double Team - TM32
  (208, 20800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 37),
  -- Steelix - Sandstorm - TM37
  (208, 20800, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 38),
  -- Steelix - Rock Tomb - TM39
  (208, 20800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 39),
  -- Steelix - Torment - TM41
  (208, 20800, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 40),
  -- Steelix - Facade - TM42
  (208, 20800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 41),
  -- Steelix - Rest - TM44
  (208, 20800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 42),
  -- Steelix - Attract - TM45
  (208, 20800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 43),
  -- Steelix - Round - TM48
  (208, 20800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 44),
  -- Steelix - Brutal Swing - TM59
  (208, 20800, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 45),
  -- Steelix - Explosion - TM64
  (208, 20800, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 46),
  -- Steelix - Payback - TM66
  (208, 20800, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 47),
  -- Steelix - Giga Impact - TM68
  (208, 20800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 48),
  -- Steelix - Rock Polish - TM69
  (208, 20800, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 49),
  -- Steelix - Stone Edge - TM71
  (208, 20800, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 50),
  -- Steelix - Gyro Ball - TM74
  (208, 20800, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 51),
  -- Steelix - Psych Up - TM77
  (208, 20800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 52),
  -- Steelix - Bulldoze - TM78
  (208, 20800, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 53),
  -- Steelix - Rock Slide - TM80
  (208, 20800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 54),
  -- Steelix - Dragon Tail - TM82
  (208, 20800, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 55),
  -- Steelix - Swagger - TM87
  (208, 20800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 56),
  -- Steelix - Sleep Talk - TM88
  (208, 20800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 57),
  -- Steelix - Substitute - TM90
  (208, 20800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 58),
  -- Steelix - Flash Cannon - TM91
  (208, 20800, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 59),
  -- Steelix - Nature Power - TM96
  (208, 20800, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 60),
  -- Steelix - Dark Pulse - TM97
  (208, 20800, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 61),
  -- Steelix - Confide - TM100
  (208, 20800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 62),
  -- Steelix - Bind - Tutor
  (208, 20800, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Steelix - Snore - Tutor
  (208, 20800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Steelix - Iron Tail - Tutor
  (208, 20800, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Steelix - Block - Tutor
  (208, 20800, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Steelix - Magnet Rise - Tutor
  (208, 20800, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Steelix - Aqua Tail - Tutor
  (208, 20800, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Steelix - Dragon Pulse - Tutor
  (208, 20800, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Steelix - Earth Power - Tutor
  (208, 20800, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Steelix - Iron Head - Tutor
  (208, 20800, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Steelix - Stealth Rock - Tutor
  (208, 20800, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Steelix - Stomping Tantrum - Tutor
  (208, 20800, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),

  -- Snubbull - Tackle - Level 1
  (209, 20900, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snubbull - Tail Whip - Level 1
  (209, 20900, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snubbull - Scary Face - Level 1
  (209, 20900, 184, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Snubbull - Charm - Level 1
  (209, 20900, 204, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Snubbull - Thunder Fang - Level 1
  (209, 20900, 422, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Snubbull - Ice Fang - Level 1
  (209, 20900, 423, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Snubbull - Fire Fang - Level 1
  (209, 20900, 424, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Snubbull - Bite - Level 7
  (209, 20900, 44, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Snubbull - Lick - Level 13
  (209, 20900, 122, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Snubbull - Headbutt - Level 19
  (209, 20900, 29, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Snubbull - Roar - Level 25
  (209, 20900, 46, 16, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Snubbull - Rage - Level 31
  (209, 20900, 99, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Snubbull - Play Rough - Level 37
  (209, 20900, 583, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Snubbull - Payback - Level 43
  (209, 20900, 371, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Snubbull - Crunch - Level 49
  (209, 20900, 242, 16, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Snubbull - Work Up - TM01
  (209, 20900, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 16),
  -- Snubbull - Roar - TM05
  (209, 20900, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 17),
  -- Snubbull - Toxic - TM06
  (209, 20900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Snubbull - Bulk Up - TM08
  (209, 20900, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 19),
  -- Snubbull - Hidden Power - TM10
  (209, 20900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Snubbull - Sunny Day - TM11
  (209, 20900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Snubbull - Taunt - TM12
  (209, 20900, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Snubbull - Protect - TM17
  (209, 20900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Snubbull - Rain Dance - TM18
  (209, 20900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Snubbull - Frustration - TM21
  (209, 20900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Snubbull - Solar Beam - TM22
  (209, 20900, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 26),
  -- Snubbull - Thunderbolt - TM24
  (209, 20900, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 27),
  -- Snubbull - Thunder - TM25
  (209, 20900, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 28),
  -- Snubbull - Earthquake - TM26
  (209, 20900, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 29),
  -- Snubbull - Return - TM27
  (209, 20900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Snubbull - Shadow Ball - TM30
  (209, 20900, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 31),
  -- Snubbull - Brick Break - TM31
  (209, 20900, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 32),
  -- Snubbull - Double Team - TM32
  (209, 20900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Snubbull - Reflect - TM33
  (209, 20900, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 34),
  -- Snubbull - Flamethrower - TM35
  (209, 20900, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 35),
  -- Snubbull - Sludge Bomb - TM36
  (209, 20900, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 36),
  -- Snubbull - Fire Blast - TM38
  (209, 20900, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 37),
  -- Snubbull - Torment - TM41
  (209, 20900, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 38),
  -- Snubbull - Facade - TM42
  (209, 20900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 39),
  -- Snubbull - Rest - TM44
  (209, 20900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 40),
  -- Snubbull - Attract - TM45
  (209, 20900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 41),
  -- Snubbull - Thief - TM46
  (209, 20900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 42),
  -- Snubbull - Round - TM48
  (209, 20900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 43),
  -- Snubbull - Overheat - TM50
  (209, 20900, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 44),
  -- Snubbull - Fling - TM56
  (209, 20900, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 45),
  -- Snubbull - Payback - TM66
  (209, 20900, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 46),
  -- Snubbull - Thunder Wave - TM73
  (209, 20900, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 47),
  -- Snubbull - Bulldoze - TM78
  (209, 20900, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 48),
  -- Snubbull - Swagger - TM87
  (209, 20900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Snubbull - Sleep Talk - TM88
  (209, 20900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Snubbull - Substitute - TM90
  (209, 20900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Snubbull - Wild Charge - TM93
  (209, 20900, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 52),
  -- Snubbull - Snarl - TM95
  (209, 20900, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 53),
  -- Snubbull - Dazzling Gleam - TM99
  (209, 20900, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 54),
  -- Snubbull - Confide - TM100
  (209, 20900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 55),
  -- Snubbull - Double-Edge - Egg
  (209, 20900, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Snubbull - Mimic - Egg
  (209, 20900, 102, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Snubbull - Metronome - Egg
  (209, 20900, 118, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Snubbull - Snore - Egg
  (209, 20900, 173, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Snubbull - Feint Attack - Egg
  (209, 20900, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Snubbull - Heal Bell - Egg
  (209, 20900, 215, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Snubbull - Present - Egg
  (209, 20900, 217, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Snubbull - Crunch - Egg
  (209, 20900, 242, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Snubbull - Focus Punch - Egg
  (209, 20900, 264, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Snubbull - Smelling Salts - Egg
  (209, 20900, 265, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Snubbull - Fake Tears - Egg
  (209, 20900, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Snubbull - Close Combat - Egg
  (209, 20900, 370, 16, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Snubbull - Thunder Fang - Egg
  (209, 20900, 422, 16, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Snubbull - Ice Fang - Egg
  (209, 20900, 423, 16, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Snubbull - Fire Fang - Egg
  (209, 20900, 424, 16, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Snubbull - Fire Punch - Tutor
  (209, 20900, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Snubbull - Ice Punch - Tutor
  (209, 20900, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Snubbull - Thunder Punch - Tutor
  (209, 20900, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Snubbull - Low Kick - Tutor
  (209, 20900, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Snubbull - Super Fang - Tutor
  (209, 20900, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Snubbull - Snore - Tutor
  (209, 20900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Snubbull - Heal Bell - Tutor
  (209, 20900, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Snubbull - Focus Punch - Tutor
  (209, 20900, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Snubbull - Superpower - Tutor
  (209, 20900, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Snubbull - Hyper Voice - Tutor
  (209, 20900, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Snubbull - Covet - Tutor
  (209, 20900, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Snubbull - Shock Wave - Tutor
  (209, 20900, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Snubbull - Water Pulse - Tutor
  (209, 20900, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Snubbull - Last Resort - Tutor
  (209, 20900, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),

  -- Granbull - Tackle - Level 1
  (210, 21000, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Granbull - Tail Whip - Level 1
  (210, 21000, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Granbull - Scary Face - Level 1
  (210, 21000, 184, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Granbull - Outrage - Level 1
  (210, 21000, 200, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Granbull - Charm - Level 1
  (210, 21000, 204, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Granbull - Thunder Fang - Level 1
  (210, 21000, 422, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Granbull - Ice Fang - Level 1
  (210, 21000, 423, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Granbull - Fire Fang - Level 1
  (210, 21000, 424, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Granbull - Bite - Level 7
  (210, 21000, 44, 16, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Granbull - Lick - Level 13
  (210, 21000, 122, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Granbull - Headbutt - Level 19
  (210, 21000, 29, 16, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Granbull - Roar - Level 27
  (210, 21000, 46, 16, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Granbull - Rage - Level 35
  (210, 21000, 99, 16, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Granbull - Play Rough - Level 43
  (210, 21000, 583, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Granbull - Payback - Level 51
  (210, 21000, 371, 16, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Granbull - Crunch - Level 59
  (210, 21000, 242, 16, NULL, 1, 59, NULL, NULL, NULL, 16),
  -- Granbull - Outrage - Level 67
  (210, 21000, 200, 16, NULL, 1, 67, NULL, NULL, NULL, 17),
  -- Granbull - Work Up - TM01
  (210, 21000, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 18),
  -- Granbull - Roar - TM05
  (210, 21000, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 19),
  -- Granbull - Toxic - TM06
  (210, 21000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Granbull - Bulk Up - TM08
  (210, 21000, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 21),
  -- Granbull - Hidden Power - TM10
  (210, 21000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Granbull - Sunny Day - TM11
  (210, 21000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Granbull - Taunt - TM12
  (210, 21000, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Granbull - Hyper Beam - TM15
  (210, 21000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Granbull - Protect - TM17
  (210, 21000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Granbull - Rain Dance - TM18
  (210, 21000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Granbull - Frustration - TM21
  (210, 21000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Granbull - Solar Beam - TM22
  (210, 21000, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 29),
  -- Granbull - Thunderbolt - TM24
  (210, 21000, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 30),
  -- Granbull - Thunder - TM25
  (210, 21000, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 31),
  -- Granbull - Earthquake - TM26
  (210, 21000, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 32),
  -- Granbull - Return - TM27
  (210, 21000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Granbull - Shadow Ball - TM30
  (210, 21000, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 34),
  -- Granbull - Brick Break - TM31
  (210, 21000, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 35),
  -- Granbull - Double Team - TM32
  (210, 21000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Granbull - Reflect - TM33
  (210, 21000, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 37),
  -- Granbull - Flamethrower - TM35
  (210, 21000, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 38),
  -- Granbull - Sludge Bomb - TM36
  (210, 21000, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 39),
  -- Granbull - Fire Blast - TM38
  (210, 21000, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 40),
  -- Granbull - Rock Tomb - TM39
  (210, 21000, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 41),
  -- Granbull - Torment - TM41
  (210, 21000, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 42),
  -- Granbull - Facade - TM42
  (210, 21000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 43),
  -- Granbull - Rest - TM44
  (210, 21000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 44),
  -- Granbull - Attract - TM45
  (210, 21000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 45),
  -- Granbull - Thief - TM46
  (210, 21000, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 46),
  -- Granbull - Round - TM48
  (210, 21000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 47),
  -- Granbull - Overheat - TM50
  (210, 21000, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 48),
  -- Granbull - Focus Blast - TM52
  (210, 21000, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 49),
  -- Granbull - Fling - TM56
  (210, 21000, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 50),
  -- Granbull - Payback - TM66
  (210, 21000, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 51),
  -- Granbull - Giga Impact - TM68
  (210, 21000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 52),
  -- Granbull - Stone Edge - TM71
  (210, 21000, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 53),
  -- Granbull - Thunder Wave - TM73
  (210, 21000, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 54),
  -- Granbull - Bulldoze - TM78
  (210, 21000, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 55),
  -- Granbull - Rock Slide - TM80
  (210, 21000, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 56),
  -- Granbull - Swagger - TM87
  (210, 21000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 57),
  -- Granbull - Sleep Talk - TM88
  (210, 21000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 58),
  -- Granbull - Substitute - TM90
  (210, 21000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 59),
  -- Granbull - Wild Charge - TM93
  (210, 21000, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 60),
  -- Granbull - Snarl - TM95
  (210, 21000, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 61),
  -- Granbull - Dazzling Gleam - TM99
  (210, 21000, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 62),
  -- Granbull - Confide - TM100
  (210, 21000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 63),
  -- Granbull - Fire Punch - Tutor
  (210, 21000, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Granbull - Ice Punch - Tutor
  (210, 21000, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Granbull - Thunder Punch - Tutor
  (210, 21000, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Granbull - Low Kick - Tutor
  (210, 21000, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Granbull - Super Fang - Tutor
  (210, 21000, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Granbull - Snore - Tutor
  (210, 21000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Granbull - Outrage - Tutor
  (210, 21000, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Granbull - Heal Bell - Tutor
  (210, 21000, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Granbull - Iron Tail - Tutor
  (210, 21000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Granbull - Focus Punch - Tutor
  (210, 21000, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Granbull - Superpower - Tutor
  (210, 21000, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Granbull - Hyper Voice - Tutor
  (210, 21000, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Granbull - Covet - Tutor
  (210, 21000, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Granbull - Shock Wave - Tutor
  (210, 21000, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Granbull - Water Pulse - Tutor
  (210, 21000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Granbull - Last Resort - Tutor
  (210, 21000, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Granbull - Stomping Tantrum - Tutor
  (210, 21000, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),

  -- Qwilfish - Tackle - Level 1
  (211, 21100, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Qwilfish - Poison Sting - Level 1
  (211, 21100, 40, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Qwilfish - Water Gun - Level 1
  (211, 21100, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Qwilfish - Hydro Pump - Level 1
  (211, 21100, 56, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Qwilfish - Spikes - Level 1
  (211, 21100, 191, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Qwilfish - Destiny Bond - Level 1
  (211, 21100, 194, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Qwilfish - Fell Stinger - Level 1
  (211, 21100, 565, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Qwilfish - Harden - Level 9
  (211, 21100, 106, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Qwilfish - Minimize - Level 9
  (211, 21100, 107, 16, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Qwilfish - Bubble - Level 13
  (211, 21100, 145, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Qwilfish - Rollout - Level 17
  (211, 21100, 205, 16, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Qwilfish - Toxic Spikes - Level 21
  (211, 21100, 390, 16, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Qwilfish - Stockpile - Level 25
  (211, 21100, 254, 16, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Qwilfish - Spit Up - Level 25
  (211, 21100, 255, 16, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Qwilfish - Revenge - Level 29
  (211, 21100, 279, 16, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Qwilfish - Brine - Level 33
  (211, 21100, 362, 16, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Qwilfish - Pin Missile - Level 37
  (211, 21100, 42, 16, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Qwilfish - Take Down - Level 41
  (211, 21100, 36, 16, NULL, 1, 41, NULL, NULL, NULL, 18),
  -- Qwilfish - Aqua Tail - Level 45
  (211, 21100, 401, 16, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Qwilfish - Poison Jab - Level 49
  (211, 21100, 398, 16, NULL, 1, 49, NULL, NULL, NULL, 20),
  -- Qwilfish - Destiny Bond - Level 53
  (211, 21100, 194, 16, NULL, 1, 53, NULL, NULL, NULL, 21),
  -- Qwilfish - Hydro Pump - Level 57
  (211, 21100, 56, 16, NULL, 1, 57, NULL, NULL, NULL, 22),
  -- Qwilfish - Fell Stinger - Level 60
  (211, 21100, 565, 16, NULL, 1, 60, NULL, NULL, NULL, 23),
  -- Qwilfish - Toxic - TM06
  (211, 21100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 24),
  -- Qwilfish - Hail - TM07
  (211, 21100, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 25),
  -- Qwilfish - Venoshock - TM09
  (211, 21100, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 26),
  -- Qwilfish - Hidden Power - TM10
  (211, 21100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 27),
  -- Qwilfish - Taunt - TM12
  (211, 21100, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 28),
  -- Qwilfish - Ice Beam - TM13
  (211, 21100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 29),
  -- Qwilfish - Blizzard - TM14
  (211, 21100, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 30),
  -- Qwilfish - Protect - TM17
  (211, 21100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 31),
  -- Qwilfish - Rain Dance - TM18
  (211, 21100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 32),
  -- Qwilfish - Frustration - TM21
  (211, 21100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 33),
  -- Qwilfish - Return - TM27
  (211, 21100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 34),
  -- Qwilfish - Shadow Ball - TM30
  (211, 21100, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 35),
  -- Qwilfish - Double Team - TM32
  (211, 21100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Qwilfish - Sludge Wave - TM34
  (211, 21100, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 37),
  -- Qwilfish - Sludge Bomb - TM36
  (211, 21100, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 38),
  -- Qwilfish - Facade - TM42
  (211, 21100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 39),
  -- Qwilfish - Rest - TM44
  (211, 21100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 40),
  -- Qwilfish - Attract - TM45
  (211, 21100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 41),
  -- Qwilfish - Round - TM48
  (211, 21100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Qwilfish - Scald - TM55
  (211, 21100, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 43),
  -- Qwilfish - Explosion - TM64
  (211, 21100, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 44),
  -- Qwilfish - Payback - TM66
  (211, 21100, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 45),
  -- Qwilfish - Thunder Wave - TM73
  (211, 21100, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 46),
  -- Qwilfish - Gyro Ball - TM74
  (211, 21100, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 47),
  -- Qwilfish - Poison Jab - TM84
  (211, 21100, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 48),
  -- Qwilfish - Swagger - TM87
  (211, 21100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Qwilfish - Sleep Talk - TM88
  (211, 21100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Qwilfish - Substitute - TM90
  (211, 21100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Qwilfish - Surf - TM94
  (211, 21100, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 52),
  -- Qwilfish - Waterfall - TM98
  (211, 21100, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 53),
  -- Qwilfish - Confide - TM100
  (211, 21100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Qwilfish - Supersonic - Egg
  (211, 21100, 48, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Qwilfish - Bubble Beam - Egg
  (211, 21100, 61, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Qwilfish - Haze - Egg
  (211, 21100, 114, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Qwilfish - Flail - Egg
  (211, 21100, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Qwilfish - Astonish - Egg
  (211, 21100, 310, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Qwilfish - Signal Beam - Egg
  (211, 21100, 324, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Qwilfish - Water Pulse - Egg
  (211, 21100, 352, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Qwilfish - Brine - Egg
  (211, 21100, 362, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Qwilfish - Aqua Jet - Egg
  (211, 21100, 453, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Qwilfish - Acid Spray - Egg
  (211, 21100, 491, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Qwilfish - Snore - Tutor
  (211, 21100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Qwilfish - Icy Wind - Tutor
  (211, 21100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Qwilfish - Pain Split - Tutor
  (211, 21100, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Qwilfish - Signal Beam - Tutor
  (211, 21100, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Qwilfish - Bounce - Tutor
  (211, 21100, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Qwilfish - Shock Wave - Tutor
  (211, 21100, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Qwilfish - Water Pulse - Tutor
  (211, 21100, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Qwilfish - Aqua Tail - Tutor
  (211, 21100, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Qwilfish - Throat Chop - Tutor
  (211, 21100, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Qwilfish - Liquidation - Tutor
  (211, 21100, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),

  -- Scizor - Leer - Level 1
  (212, 21200, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scizor - Quick Attack - Level 1
  (212, 21200, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scizor - Feint - Level 1
  (212, 21200, 364, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Scizor - Bullet Punch - Level 1
  (212, 21200, 418, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Scizor - Focus Energy - Level 5
  (212, 21200, 116, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Scizor - Pursuit - Level 9
  (212, 21200, 228, 16, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Scizor - False Swipe - Level 13
  (212, 21200, 206, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Scizor - Agility - Level 17
  (212, 21200, 97, 16, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Scizor - Metal Claw - Level 21
  (212, 21200, 232, 16, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Scizor - Fury Cutter - Level 25
  (212, 21200, 210, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Scizor - Slash - Level 29
  (212, 21200, 163, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Scizor - Razor Wind - Level 33
  (212, 21200, 13, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Scizor - Iron Defense - Level 37
  (212, 21200, 334, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Scizor - X-Scissor - Level 41
  (212, 21200, 404, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Scizor - Night Slash - Level 45
  (212, 21200, 400, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Scizor - Double Hit - Level 49
  (212, 21200, 458, 16, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Scizor - Iron Head - Level 50
  (212, 21200, 442, 16, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Scizor - Swords Dance - Level 57
  (212, 21200, 14, 16, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Scizor - Feint - Level 61
  (212, 21200, 364, 16, NULL, 1, 61, NULL, NULL, NULL, 19),
  -- Scizor - Toxic - TM06
  (212, 21200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Scizor - Venoshock - TM09
  (212, 21200, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 21),
  -- Scizor - Hidden Power - TM10
  (212, 21200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Scizor - Sunny Day - TM11
  (212, 21200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Scizor - Hyper Beam - TM15
  (212, 21200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Scizor - Light Screen - TM16
  (212, 21200, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 25),
  -- Scizor - Protect - TM17
  (212, 21200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Scizor - Rain Dance - TM18
  (212, 21200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Scizor - Roost - TM19
  (212, 21200, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 28),
  -- Scizor - Safeguard - TM20
  (212, 21200, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 29),
  -- Scizor - Frustration - TM21
  (212, 21200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 30),
  -- Scizor - Return - TM27
  (212, 21200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Scizor - Brick Break - TM31
  (212, 21200, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 32),
  -- Scizor - Double Team - TM32
  (212, 21200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Scizor - Sandstorm - TM37
  (212, 21200, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 34),
  -- Scizor - Aerial Ace - TM40
  (212, 21200, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 35),
  -- Scizor - Facade - TM42
  (212, 21200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Scizor - Rest - TM44
  (212, 21200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Scizor - Attract - TM45
  (212, 21200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Scizor - Thief - TM46
  (212, 21200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 39),
  -- Scizor - Round - TM48
  (212, 21200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Scizor - Steel Wing - TM51
  (212, 21200, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 41),
  -- Scizor - False Swipe - TM54
  (212, 21200, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 42),
  -- Scizor - Fling - TM56
  (212, 21200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 43),
  -- Scizor - Brutal Swing - TM59
  (212, 21200, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 44),
  -- Scizor - Acrobatics - TM62
  (212, 21200, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 45),
  -- Scizor - Giga Impact - TM68
  (212, 21200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 46),
  -- Scizor - Swords Dance - TM75
  (212, 21200, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 47),
  -- Scizor - X-Scissor - TM81
  (212, 21200, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 48),
  -- Scizor - Swagger - TM87
  (212, 21200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Scizor - Sleep Talk - TM88
  (212, 21200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Scizor - U-turn - TM89
  (212, 21200, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 51),
  -- Scizor - Substitute - TM90
  (212, 21200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 52),
  -- Scizor - Flash Cannon - TM91
  (212, 21200, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 53),
  -- Scizor - Confide - TM100
  (212, 21200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Scizor - Snore - Tutor
  (212, 21200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Scizor - Superpower - Tutor
  (212, 21200, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Scizor - Knock Off - Tutor
  (212, 21200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Scizor - Iron Defense - Tutor
  (212, 21200, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Scizor - Tailwind - Tutor
  (212, 21200, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Scizor - Defog - Tutor
  (212, 21200, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Scizor - Iron Head - Tutor
  (212, 21200, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Scizor - Bug Bite - Tutor
  (212, 21200, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Scizor - Laser Focus - Tutor
  (212, 21200, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),

  -- Shuckle - Withdraw - Level 1
  (213, 21300, 110, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shuckle - Bide - Level 1
  (213, 21300, 117, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shuckle - Constrict - Level 1
  (213, 21300, 132, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Shuckle - Rollout - Level 1
  (213, 21300, 205, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Shuckle - Sticky Web - Level 1
  (213, 21300, 564, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Shuckle - Encore - Level 5
  (213, 21300, 227, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Shuckle - Wrap - Level 9
  (213, 21300, 35, 16, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Shuckle - Struggle Bug - Level 12
  (213, 21300, 522, 16, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Shuckle - Safeguard - Level 16
  (213, 21300, 219, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Shuckle - Rest - Level 20
  (213, 21300, 156, 16, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Shuckle - Rock Throw - Level 23
  (213, 21300, 88, 16, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Shuckle - Gastro Acid - Level 27
  (213, 21300, 380, 16, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Shuckle - Power Trick - Level 31
  (213, 21300, 379, 16, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Shuckle - Shell Smash - Level 34
  (213, 21300, 504, 16, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Shuckle - Rock Slide - Level 38
  (213, 21300, 157, 16, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Shuckle - Bug Bite - Level 42
  (213, 21300, 450, 16, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Shuckle - Guard Split - Level 45
  (213, 21300, 470, 16, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Shuckle - Power Split - Level 45
  (213, 21300, 471, 16, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Shuckle - Stone Edge - Level 49
  (213, 21300, 444, 16, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Shuckle - Sticky Web - Level 53
  (213, 21300, 564, 16, NULL, 1, 53, NULL, NULL, NULL, 20),
  -- Shuckle - Toxic - TM06
  (213, 21300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Shuckle - Venoshock - TM09
  (213, 21300, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 22),
  -- Shuckle - Hidden Power - TM10
  (213, 21300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Shuckle - Sunny Day - TM11
  (213, 21300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Shuckle - Protect - TM17
  (213, 21300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Shuckle - Safeguard - TM20
  (213, 21300, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 26),
  -- Shuckle - Frustration - TM21
  (213, 21300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Shuckle - Smack Down - TM23
  (213, 21300, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 28),
  -- Shuckle - Earthquake - TM26
  (213, 21300, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 29),
  -- Shuckle - Return - TM27
  (213, 21300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Shuckle - Double Team - TM32
  (213, 21300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Shuckle - Sludge Wave - TM34
  (213, 21300, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 32),
  -- Shuckle - Sludge Bomb - TM36
  (213, 21300, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 33),
  -- Shuckle - Sandstorm - TM37
  (213, 21300, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 34),
  -- Shuckle - Rock Tomb - TM39
  (213, 21300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Shuckle - Facade - TM42
  (213, 21300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Shuckle - Rest - TM44
  (213, 21300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Shuckle - Attract - TM45
  (213, 21300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Shuckle - Round - TM48
  (213, 21300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Shuckle - Rock Polish - TM69
  (213, 21300, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 40),
  -- Shuckle - Stone Edge - TM71
  (213, 21300, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 41),
  -- Shuckle - Gyro Ball - TM74
  (213, 21300, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 42),
  -- Shuckle - Bulldoze - TM78
  (213, 21300, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 43),
  -- Shuckle - Rock Slide - TM80
  (213, 21300, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 44),
  -- Shuckle - Infestation - TM83
  (213, 21300, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 45),
  -- Shuckle - Swagger - TM87
  (213, 21300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Shuckle - Sleep Talk - TM88
  (213, 21300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Shuckle - Substitute - TM90
  (213, 21300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Shuckle - Confide - TM100
  (213, 21300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Shuckle - Acid - Egg
  (213, 21300, 51, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Shuckle - Mud-Slap - Egg
  (213, 21300, 189, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Shuckle - Sweet Scent - Egg
  (213, 21300, 230, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Shuckle - Helping Hand - Egg
  (213, 21300, 270, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Shuckle - Knock Off - Egg
  (213, 21300, 282, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Shuckle - Sand Tomb - Egg
  (213, 21300, 328, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Shuckle - Rock Blast - Egg
  (213, 21300, 350, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Shuckle - Acupressure - Egg
  (213, 21300, 367, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Shuckle - Final Gambit - Egg
  (213, 21300, 515, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Shuckle - Bind - Tutor
  (213, 21300, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Shuckle - Snore - Tutor
  (213, 21300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Shuckle - Helping Hand - Tutor
  (213, 21300, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Shuckle - Knock Off - Tutor
  (213, 21300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Shuckle - Gastro Acid - Tutor
  (213, 21300, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Shuckle - Earth Power - Tutor
  (213, 21300, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Shuckle - Stealth Rock - Tutor
  (213, 21300, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Shuckle - Bug Bite - Tutor
  (213, 21300, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Shuckle - After You - Tutor
  (213, 21300, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),

  -- Heracross - Horn Attack - Level 1
  (214, 21400, 30, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heracross - Tackle - Level 1
  (214, 21400, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Heracross - Leer - Level 1
  (214, 21400, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Heracross - Endure - Level 1
  (214, 21400, 203, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Heracross - Arm Thrust - Level 1
  (214, 21400, 292, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Heracross - Bullet Seed - Level 1
  (214, 21400, 331, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Heracross - Night Slash - Level 1
  (214, 21400, 400, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Heracross - Feint - Level 7
  (214, 21400, 364, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Heracross - Aerial Ace - Level 10
  (214, 21400, 332, 16, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Heracross - Chip Away - Level 16
  (214, 21400, 498, 16, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Heracross - Counter - Level 19
  (214, 21400, 68, 16, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Heracross - Fury Attack - Level 25
  (214, 21400, 31, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Heracross - Brick Break - Level 28
  (214, 21400, 280, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Heracross - Pin Missile - Level 31
  (214, 21400, 42, 16, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Heracross - Take Down - Level 34
  (214, 21400, 36, 16, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Heracross - Megahorn - Level 37
  (214, 21400, 224, 16, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Heracross - Close Combat - Level 43
  (214, 21400, 370, 16, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Heracross - Reversal - Level 46
  (214, 21400, 179, 16, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Heracross - Work Up - TM01
  (214, 21400, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 19),
  -- Heracross - Toxic - TM06
  (214, 21400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Heracross - Bulk Up - TM08
  (214, 21400, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 21),
  -- Heracross - Venoshock - TM09
  (214, 21400, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 22),
  -- Heracross - Hidden Power - TM10
  (214, 21400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Heracross - Sunny Day - TM11
  (214, 21400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Heracross - Hyper Beam - TM15
  (214, 21400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Heracross - Protect - TM17
  (214, 21400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Heracross - Rain Dance - TM18
  (214, 21400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Heracross - Frustration - TM21
  (214, 21400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Heracross - Smack Down - TM23
  (214, 21400, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 29),
  -- Heracross - Earthquake - TM26
  (214, 21400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 30),
  -- Heracross - Return - TM27
  (214, 21400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Heracross - Brick Break - TM31
  (214, 21400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 32),
  -- Heracross - Double Team - TM32
  (214, 21400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Heracross - Rock Tomb - TM39
  (214, 21400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 34),
  -- Heracross - Aerial Ace - TM40
  (214, 21400, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 35),
  -- Heracross - Facade - TM42
  (214, 21400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Heracross - Rest - TM44
  (214, 21400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Heracross - Attract - TM45
  (214, 21400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Heracross - Thief - TM46
  (214, 21400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 39),
  -- Heracross - Round - TM48
  (214, 21400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Heracross - Focus Blast - TM52
  (214, 21400, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 41),
  -- Heracross - False Swipe - TM54
  (214, 21400, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 42),
  -- Heracross - Fling - TM56
  (214, 21400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 43),
  -- Heracross - Brutal Swing - TM59
  (214, 21400, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 44),
  -- Heracross - Shadow Claw - TM65
  (214, 21400, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 45),
  -- Heracross - Giga Impact - TM68
  (214, 21400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 46),
  -- Heracross - Stone Edge - TM71
  (214, 21400, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 47),
  -- Heracross - Swords Dance - TM75
  (214, 21400, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 48),
  -- Heracross - Bulldoze - TM78
  (214, 21400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 49),
  -- Heracross - Rock Slide - TM80
  (214, 21400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 50),
  -- Heracross - Swagger - TM87
  (214, 21400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 51),
  -- Heracross - Sleep Talk - TM88
  (214, 21400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 52),
  -- Heracross - Substitute - TM90
  (214, 21400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 53),
  -- Heracross - Confide - TM100
  (214, 21400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Heracross - Double-Edge - Egg
  (214, 21400, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Heracross - Seismic Toss - Egg
  (214, 21400, 69, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Heracross - Harden - Egg
  (214, 21400, 106, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Heracross - Bide - Egg
  (214, 21400, 117, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Heracross - Flail - Egg
  (214, 21400, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Heracross - Megahorn - Egg
  (214, 21400, 224, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Heracross - Pursuit - Egg
  (214, 21400, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Heracross - Focus Punch - Egg
  (214, 21400, 264, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Heracross - Revenge - Egg
  (214, 21400, 279, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Heracross - Rock Blast - Egg
  (214, 21400, 350, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Heracross - Low Kick - Tutor
  (214, 21400, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Heracross - Snore - Tutor
  (214, 21400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Heracross - Focus Punch - Tutor
  (214, 21400, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Heracross - Helping Hand - Tutor
  (214, 21400, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Heracross - Knock Off - Tutor
  (214, 21400, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Heracross - Iron Defense - Tutor
  (214, 21400, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Heracross - Bug Bite - Tutor
  (214, 21400, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Heracross - Throat Chop - Tutor
  (214, 21400, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),

  -- Sneasel - Scratch - Level 1
  (215, 21500, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sneasel - Leer - Level 1
  (215, 21500, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sneasel - Taunt - Level 1
  (215, 21500, 269, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sneasel - Quick Attack - Level 8
  (215, 21500, 98, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Sneasel - Feint Attack - Level 10
  (215, 21500, 185, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Sneasel - Icy Wind - Level 14
  (215, 21500, 196, 16, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Sneasel - Fury Swipes - Level 16
  (215, 21500, 154, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Sneasel - Agility - Level 20
  (215, 21500, 97, 16, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Sneasel - Metal Claw - Level 22
  (215, 21500, 232, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Sneasel - Hone Claws - Level 25
  (215, 21500, 468, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Sneasel - Beat Up - Level 28
  (215, 21500, 251, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Sneasel - Screech - Level 32
  (215, 21500, 103, 16, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Sneasel - Slash - Level 35
  (215, 21500, 163, 16, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Sneasel - Snatch - Level 40
  (215, 21500, 289, 16, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Sneasel - Punishment - Level 44
  (215, 21500, 386, 16, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Sneasel - Ice Shard - Level 47
  (215, 21500, 420, 16, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Sneasel - Calm Mind - TM04
  (215, 21500, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 17),
  -- Sneasel - Toxic - TM06
  (215, 21500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Sneasel - Hail - TM07
  (215, 21500, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 19),
  -- Sneasel - Hidden Power - TM10
  (215, 21500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Sneasel - Sunny Day - TM11
  (215, 21500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Sneasel - Taunt - TM12
  (215, 21500, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Sneasel - Ice Beam - TM13
  (215, 21500, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 23),
  -- Sneasel - Blizzard - TM14
  (215, 21500, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 24),
  -- Sneasel - Protect - TM17
  (215, 21500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Sneasel - Rain Dance - TM18
  (215, 21500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Sneasel - Frustration - TM21
  (215, 21500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Sneasel - Return - TM27
  (215, 21500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Sneasel - Shadow Ball - TM30
  (215, 21500, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 29),
  -- Sneasel - Brick Break - TM31
  (215, 21500, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 30),
  -- Sneasel - Double Team - TM32
  (215, 21500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Sneasel - Reflect - TM33
  (215, 21500, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 32),
  -- Sneasel - Aerial Ace - TM40
  (215, 21500, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 33),
  -- Sneasel - Torment - TM41
  (215, 21500, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 34),
  -- Sneasel - Facade - TM42
  (215, 21500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Sneasel - Rest - TM44
  (215, 21500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Sneasel - Attract - TM45
  (215, 21500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Sneasel - Thief - TM46
  (215, 21500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 38),
  -- Sneasel - Low Sweep - TM47
  (215, 21500, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 39),
  -- Sneasel - Round - TM48
  (215, 21500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Sneasel - False Swipe - TM54
  (215, 21500, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 41),
  -- Sneasel - Fling - TM56
  (215, 21500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 42),
  -- Sneasel - Embargo - TM63
  (215, 21500, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 43),
  -- Sneasel - Shadow Claw - TM65
  (215, 21500, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 44),
  -- Sneasel - Payback - TM66
  (215, 21500, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 45),
  -- Sneasel - Swords Dance - TM75
  (215, 21500, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 46),
  -- Sneasel - Psych Up - TM77
  (215, 21500, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 47),
  -- Sneasel - X-Scissor - TM81
  (215, 21500, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 48),
  -- Sneasel - Poison Jab - TM84
  (215, 21500, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 49),
  -- Sneasel - Dream Eater - TM85
  (215, 21500, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 50),
  -- Sneasel - Swagger - TM87
  (215, 21500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 51),
  -- Sneasel - Sleep Talk - TM88
  (215, 21500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 52),
  -- Sneasel - Substitute - TM90
  (215, 21500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 53),
  -- Sneasel - Surf - TM94
  (215, 21500, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 54),
  -- Sneasel - Snarl - TM95
  (215, 21500, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 55),
  -- Sneasel - Dark Pulse - TM97
  (215, 21500, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 56),
  -- Sneasel - Confide - TM100
  (215, 21500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 57),
  -- Sneasel - Ice Punch - Egg
  (215, 21500, 8, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sneasel - Bite - Egg
  (215, 21500, 44, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sneasel - Counter - Egg
  (215, 21500, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sneasel - Spite - Egg
  (215, 21500, 180, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sneasel - Foresight - Egg
  (215, 21500, 193, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sneasel - Pursuit - Egg
  (215, 21500, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sneasel - Fake Out - Egg
  (215, 21500, 252, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Sneasel - Assist - Egg
  (215, 21500, 274, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sneasel - Crush Claw - Egg
  (215, 21500, 306, 16, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Sneasel - Feint - Egg
  (215, 21500, 364, 16, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Sneasel - Punishment - Egg
  (215, 21500, 386, 16, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Sneasel - Avalanche - Egg
  (215, 21500, 419, 16, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Sneasel - Ice Shard - Egg
  (215, 21500, 420, 16, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Sneasel - Double Hit - Egg
  (215, 21500, 458, 16, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Sneasel - Icicle Crash - Egg
  (215, 21500, 556, 16, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Sneasel - Throat Chop - Egg
  (215, 21500, 675, 16, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Sneasel - Ice Punch - Tutor
  (215, 21500, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Sneasel - Low Kick - Tutor
  (215, 21500, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Sneasel - Snore - Tutor
  (215, 21500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Sneasel - Spite - Tutor
  (215, 21500, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Sneasel - Icy Wind - Tutor
  (215, 21500, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Sneasel - Iron Tail - Tutor
  (215, 21500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Sneasel - Focus Punch - Tutor
  (215, 21500, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Sneasel - Knock Off - Tutor
  (215, 21500, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Sneasel - Snatch - Tutor
  (215, 21500, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Sneasel - Foul Play - Tutor
  (215, 21500, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Sneasel - Laser Focus - Tutor
  (215, 21500, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Sneasel - Throat Chop - Tutor
  (215, 21500, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),

  -- Teddiursa - Scratch - Level 1
  (216, 21600, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Teddiursa - Lick - Level 1
  (216, 21600, 122, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Teddiursa - Fake Tears - Level 1
  (216, 21600, 313, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Teddiursa - Covet - Level 1
  (216, 21600, 343, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Teddiursa - Fling - Level 1
  (216, 21600, 374, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Teddiursa - Baby-Doll Eyes - Level 1
  (216, 21600, 608, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Teddiursa - Fury Swipes - Level 8
  (216, 21600, 154, 16, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Teddiursa - Feint Attack - Level 15
  (216, 21600, 185, 16, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Teddiursa - Sweet Scent - Level 22
  (216, 21600, 230, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Teddiursa - Play Nice - Level 25
  (216, 21600, 589, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Teddiursa - Slash - Level 29
  (216, 21600, 163, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Teddiursa - Charm - Level 36
  (216, 21600, 204, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Teddiursa - Rest - Level 43
  (216, 21600, 156, 16, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Teddiursa - Snore - Level 43
  (216, 21600, 173, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Teddiursa - Thrash - Level 50
  (216, 21600, 37, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Teddiursa - Fling - Level 57
  (216, 21600, 374, 16, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Teddiursa - Work Up - TM01
  (216, 21600, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Teddiursa - Roar - TM05
  (216, 21600, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 18),
  -- Teddiursa - Toxic - TM06
  (216, 21600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Teddiursa - Bulk Up - TM08
  (216, 21600, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 20),
  -- Teddiursa - Hidden Power - TM10
  (216, 21600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Teddiursa - Sunny Day - TM11
  (216, 21600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Teddiursa - Taunt - TM12
  (216, 21600, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 23),
  -- Teddiursa - Protect - TM17
  (216, 21600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Teddiursa - Rain Dance - TM18
  (216, 21600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Teddiursa - Frustration - TM21
  (216, 21600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Teddiursa - Earthquake - TM26
  (216, 21600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 27),
  -- Teddiursa - Return - TM27
  (216, 21600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Teddiursa - Brick Break - TM31
  (216, 21600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 29),
  -- Teddiursa - Double Team - TM32
  (216, 21600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Teddiursa - Rock Tomb - TM39
  (216, 21600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 31),
  -- Teddiursa - Aerial Ace - TM40
  (216, 21600, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Teddiursa - Torment - TM41
  (216, 21600, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 33),
  -- Teddiursa - Facade - TM42
  (216, 21600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Teddiursa - Rest - TM44
  (216, 21600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Teddiursa - Attract - TM45
  (216, 21600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Teddiursa - Thief - TM46
  (216, 21600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 37),
  -- Teddiursa - Round - TM48
  (216, 21600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Teddiursa - Fling - TM56
  (216, 21600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 39),
  -- Teddiursa - Shadow Claw - TM65
  (216, 21600, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 40),
  -- Teddiursa - Payback - TM66
  (216, 21600, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 41),
  -- Teddiursa - Swords Dance - TM75
  (216, 21600, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 42),
  -- Teddiursa - Bulldoze - TM78
  (216, 21600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 43),
  -- Teddiursa - Rock Slide - TM80
  (216, 21600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 44),
  -- Teddiursa - Swagger - TM87
  (216, 21600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Teddiursa - Sleep Talk - TM88
  (216, 21600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Teddiursa - Substitute - TM90
  (216, 21600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Teddiursa - Confide - TM100
  (216, 21600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Teddiursa - Take Down - Egg
  (216, 21600, 36, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Teddiursa - Double-Edge - Egg
  (216, 21600, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Teddiursa - Counter - Egg
  (216, 21600, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Teddiursa - Seismic Toss - Egg
  (216, 21600, 69, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Teddiursa - Belly Drum - Egg
  (216, 21600, 187, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Teddiursa - Sleep Talk - Egg
  (216, 21600, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Teddiursa - Metal Claw - Egg
  (216, 21600, 232, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Teddiursa - Cross Chop - Egg
  (216, 21600, 238, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Teddiursa - Crunch - Egg
  (216, 21600, 242, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Teddiursa - Yawn - Egg
  (216, 21600, 281, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Teddiursa - Fake Tears - Egg
  (216, 21600, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Teddiursa - Close Combat - Egg
  (216, 21600, 370, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Teddiursa - Night Slash - Egg
  (216, 21600, 400, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Teddiursa - Chip Away - Egg
  (216, 21600, 498, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Teddiursa - Play Rough - Egg
  (216, 21600, 583, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Teddiursa - Fire Punch - Tutor
  (216, 21600, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Teddiursa - Ice Punch - Tutor
  (216, 21600, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Teddiursa - Thunder Punch - Tutor
  (216, 21600, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Teddiursa - Snore - Tutor
  (216, 21600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Teddiursa - Focus Punch - Tutor
  (216, 21600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Teddiursa - Superpower - Tutor
  (216, 21600, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Teddiursa - Hyper Voice - Tutor
  (216, 21600, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Teddiursa - Covet - Tutor
  (216, 21600, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Teddiursa - Last Resort - Tutor
  (216, 21600, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Teddiursa - Seed Bomb - Tutor
  (216, 21600, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Teddiursa - Gunk Shot - Tutor
  (216, 21600, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),

  -- Ursaring - Scratch - Level 1
  (217, 21700, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ursaring - Leer - Level 1
  (217, 21700, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ursaring - Lick - Level 1
  (217, 21700, 122, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ursaring - Fake Tears - Level 1
  (217, 21700, 313, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ursaring - Covet - Level 1
  (217, 21700, 343, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ursaring - Hammer Arm - Level 1
  (217, 21700, 359, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Ursaring - Fury Swipes - Level 8
  (217, 21700, 154, 16, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Ursaring - Feint Attack - Level 15
  (217, 21700, 185, 16, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Ursaring - Sweet Scent - Level 22
  (217, 21700, 230, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Ursaring - Play Nice - Level 25
  (217, 21700, 589, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Ursaring - Slash - Level 29
  (217, 21700, 163, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Ursaring - Scary Face - Level 38
  (217, 21700, 184, 16, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Ursaring - Rest - Level 47
  (217, 21700, 156, 16, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Ursaring - Snore - Level 49
  (217, 21700, 173, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Ursaring - Thrash - Level 58
  (217, 21700, 37, 16, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Ursaring - Hammer Arm - Level 67
  (217, 21700, 359, 16, NULL, 1, 67, NULL, NULL, NULL, 16),
  -- Ursaring - Work Up - TM01
  (217, 21700, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Ursaring - Roar - TM05
  (217, 21700, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 18),
  -- Ursaring - Toxic - TM06
  (217, 21700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Ursaring - Bulk Up - TM08
  (217, 21700, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 20),
  -- Ursaring - Hidden Power - TM10
  (217, 21700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Ursaring - Sunny Day - TM11
  (217, 21700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Ursaring - Taunt - TM12
  (217, 21700, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 23),
  -- Ursaring - Hyper Beam - TM15
  (217, 21700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Ursaring - Protect - TM17
  (217, 21700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Ursaring - Rain Dance - TM18
  (217, 21700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Ursaring - Frustration - TM21
  (217, 21700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Ursaring - Smack Down - TM23
  (217, 21700, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 28),
  -- Ursaring - Earthquake - TM26
  (217, 21700, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 29),
  -- Ursaring - Return - TM27
  (217, 21700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Ursaring - Brick Break - TM31
  (217, 21700, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 31),
  -- Ursaring - Double Team - TM32
  (217, 21700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Ursaring - Rock Tomb - TM39
  (217, 21700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 33),
  -- Ursaring - Aerial Ace - TM40
  (217, 21700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 34),
  -- Ursaring - Torment - TM41
  (217, 21700, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 35),
  -- Ursaring - Facade - TM42
  (217, 21700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Ursaring - Rest - TM44
  (217, 21700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Ursaring - Attract - TM45
  (217, 21700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Ursaring - Thief - TM46
  (217, 21700, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 39),
  -- Ursaring - Round - TM48
  (217, 21700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Ursaring - Focus Blast - TM52
  (217, 21700, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 41),
  -- Ursaring - Fling - TM56
  (217, 21700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 42),
  -- Ursaring - Shadow Claw - TM65
  (217, 21700, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 43),
  -- Ursaring - Payback - TM66
  (217, 21700, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 44),
  -- Ursaring - Giga Impact - TM68
  (217, 21700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 45),
  -- Ursaring - Stone Edge - TM71
  (217, 21700, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 46),
  -- Ursaring - Swords Dance - TM75
  (217, 21700, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 47),
  -- Ursaring - Bulldoze - TM78
  (217, 21700, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 48),
  -- Ursaring - Rock Slide - TM80
  (217, 21700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 49),
  -- Ursaring - Swagger - TM87
  (217, 21700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 50),
  -- Ursaring - Sleep Talk - TM88
  (217, 21700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 51),
  -- Ursaring - Substitute - TM90
  (217, 21700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 52),
  -- Ursaring - Confide - TM100
  (217, 21700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 53),
  -- Ursaring - Fire Punch - Tutor
  (217, 21700, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Ursaring - Ice Punch - Tutor
  (217, 21700, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Ursaring - Thunder Punch - Tutor
  (217, 21700, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Ursaring - Low Kick - Tutor
  (217, 21700, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Ursaring - Snore - Tutor
  (217, 21700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Ursaring - Uproar - Tutor
  (217, 21700, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Ursaring - Focus Punch - Tutor
  (217, 21700, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Ursaring - Superpower - Tutor
  (217, 21700, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Ursaring - Hyper Voice - Tutor
  (217, 21700, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Ursaring - Covet - Tutor
  (217, 21700, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Ursaring - Last Resort - Tutor
  (217, 21700, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Ursaring - Seed Bomb - Tutor
  (217, 21700, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Ursaring - Gunk Shot - Tutor
  (217, 21700, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Ursaring - Laser Focus - Tutor
  (217, 21700, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Ursaring - Throat Chop - Tutor
  (217, 21700, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Ursaring - Stomping Tantrum - Tutor
  (217, 21700, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),

  -- Slugma - Smog - Level 1
  (218, 21800, 123, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slugma - Yawn - Level 1
  (218, 21800, 281, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slugma - Ember - Level 6
  (218, 21800, 52, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Slugma - Rock Throw - Level 8
  (218, 21800, 88, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Slugma - Harden - Level 13
  (218, 21800, 106, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Slugma - Incinerate - Level 15
  (218, 21800, 510, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Slugma - Clear Smog - Level 20
  (218, 21800, 499, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Slugma - Ancient Power - Level 22
  (218, 21800, 246, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Slugma - Flame Burst - Level 27
  (218, 21800, 481, 16, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Slugma - Rock Slide - Level 29
  (218, 21800, 157, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Slugma - Lava Plume - Level 34
  (218, 21800, 436, 16, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Slugma - Amnesia - Level 36
  (218, 21800, 133, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Slugma - Body Slam - Level 41
  (218, 21800, 34, 16, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Slugma - Recover - Level 43
  (218, 21800, 105, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Slugma - Flamethrower - Level 48
  (218, 21800, 53, 16, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Slugma - Earth Power - Level 50
  (218, 21800, 414, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Slugma - Toxic - TM06
  (218, 21800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Slugma - Hidden Power - TM10
  (218, 21800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Slugma - Sunny Day - TM11
  (218, 21800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Slugma - Light Screen - TM16
  (218, 21800, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 20),
  -- Slugma - Protect - TM17
  (218, 21800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Slugma - Frustration - TM21
  (218, 21800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Slugma - Return - TM27
  (218, 21800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 23),
  -- Slugma - Double Team - TM32
  (218, 21800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Slugma - Reflect - TM33
  (218, 21800, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 25),
  -- Slugma - Flamethrower - TM35
  (218, 21800, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 26),
  -- Slugma - Fire Blast - TM38
  (218, 21800, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 27),
  -- Slugma - Rock Tomb - TM39
  (218, 21800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 28),
  -- Slugma - Facade - TM42
  (218, 21800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Slugma - Flame Charge - TM43
  (218, 21800, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 30),
  -- Slugma - Rest - TM44
  (218, 21800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Slugma - Attract - TM45
  (218, 21800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Slugma - Round - TM48
  (218, 21800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Slugma - Overheat - TM50
  (218, 21800, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 34),
  -- Slugma - Will-O-Wisp - TM61
  (218, 21800, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 35),
  -- Slugma - Rock Slide - TM80
  (218, 21800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 36),
  -- Slugma - Infestation - TM83
  (218, 21800, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 37),
  -- Slugma - Swagger - TM87
  (218, 21800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 38),
  -- Slugma - Sleep Talk - TM88
  (218, 21800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 39),
  -- Slugma - Substitute - TM90
  (218, 21800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 40),
  -- Slugma - Nature Power - TM96
  (218, 21800, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 41),
  -- Slugma - Confide - TM100
  (218, 21800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Slugma - Smokescreen - Egg
  (218, 21800, 108, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Slugma - Acid Armor - Egg
  (218, 21800, 151, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Slugma - Curse - Egg
  (218, 21800, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Slugma - Rollout - Egg
  (218, 21800, 205, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Slugma - Stockpile - Egg
  (218, 21800, 254, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Slugma - Spit Up - Egg
  (218, 21800, 255, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Slugma - Swallow - Egg
  (218, 21800, 256, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Slugma - Heat Wave - Egg
  (218, 21800, 257, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Slugma - Memento - Egg
  (218, 21800, 262, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Slugma - Guard Swap - Egg
  (218, 21800, 385, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Slugma - Earth Power - Egg
  (218, 21800, 414, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Slugma - Inferno - Egg
  (218, 21800, 517, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Slugma - Snore - Tutor
  (218, 21800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Slugma - Pain Split - Tutor
  (218, 21800, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Slugma - Heat Wave - Tutor
  (218, 21800, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Slugma - Iron Defense - Tutor
  (218, 21800, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Slugma - Earth Power - Tutor
  (218, 21800, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Slugma - After You - Tutor
  (218, 21800, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),

  -- Magcargo - Ember - Level 1
  (219, 21900, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magcargo - Rock Throw - Level 1
  (219, 21900, 88, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magcargo - Smog - Level 1
  (219, 21900, 123, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magcargo - Yawn - Level 1
  (219, 21900, 281, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magcargo - Earth Power - Level 1
  (219, 21900, 414, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magcargo - Shell Smash - Level 1
  (219, 21900, 504, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Magcargo - Ember - Level 6
  (219, 21900, 52, 16, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Magcargo - Rock Throw - Level 8
  (219, 21900, 88, 16, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Magcargo - Harden - Level 13
  (219, 21900, 106, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Magcargo - Incinerate - Level 15
  (219, 21900, 510, 16, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Magcargo - Clear Smog - Level 20
  (219, 21900, 499, 16, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Magcargo - Ancient Power - Level 22
  (219, 21900, 246, 16, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Magcargo - Flame Burst - Level 27
  (219, 21900, 481, 16, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Magcargo - Rock Slide - Level 29
  (219, 21900, 157, 16, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Magcargo - Lava Plume - Level 34
  (219, 21900, 436, 16, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Magcargo - Amnesia - Level 36
  (219, 21900, 133, 16, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Magcargo - Body Slam - Level 43
  (219, 21900, 34, 16, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Magcargo - Recover - Level 47
  (219, 21900, 105, 16, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Magcargo - Flamethrower - Level 54
  (219, 21900, 53, 16, NULL, 1, 54, NULL, NULL, NULL, 19),
  -- Magcargo - Earth Power - Level 58
  (219, 21900, 414, 16, NULL, 1, 58, NULL, NULL, NULL, 20),
  -- Magcargo - Toxic - TM06
  (219, 21900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Magcargo - Hidden Power - TM10
  (219, 21900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Magcargo - Sunny Day - TM11
  (219, 21900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Magcargo - Hyper Beam - TM15
  (219, 21900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Magcargo - Light Screen - TM16
  (219, 21900, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 25),
  -- Magcargo - Protect - TM17
  (219, 21900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Magcargo - Frustration - TM21
  (219, 21900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Magcargo - Solar Beam - TM22
  (219, 21900, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 28),
  -- Magcargo - Smack Down - TM23
  (219, 21900, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 29),
  -- Magcargo - Earthquake - TM26
  (219, 21900, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 30),
  -- Magcargo - Return - TM27
  (219, 21900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Magcargo - Double Team - TM32
  (219, 21900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Magcargo - Reflect - TM33
  (219, 21900, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 33),
  -- Magcargo - Flamethrower - TM35
  (219, 21900, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 34),
  -- Magcargo - Sandstorm - TM37
  (219, 21900, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 35),
  -- Magcargo - Fire Blast - TM38
  (219, 21900, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 36),
  -- Magcargo - Rock Tomb - TM39
  (219, 21900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 37),
  -- Magcargo - Facade - TM42
  (219, 21900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Magcargo - Flame Charge - TM43
  (219, 21900, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 39),
  -- Magcargo - Rest - TM44
  (219, 21900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 40),
  -- Magcargo - Attract - TM45
  (219, 21900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 41),
  -- Magcargo - Round - TM48
  (219, 21900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Magcargo - Overheat - TM50
  (219, 21900, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 43),
  -- Magcargo - Will-O-Wisp - TM61
  (219, 21900, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 44),
  -- Magcargo - Explosion - TM64
  (219, 21900, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 45),
  -- Magcargo - Giga Impact - TM68
  (219, 21900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 46),
  -- Magcargo - Rock Polish - TM69
  (219, 21900, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 47),
  -- Magcargo - Stone Edge - TM71
  (219, 21900, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 48),
  -- Magcargo - Gyro Ball - TM74
  (219, 21900, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 49),
  -- Magcargo - Bulldoze - TM78
  (219, 21900, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 50),
  -- Magcargo - Rock Slide - TM80
  (219, 21900, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 51),
  -- Magcargo - Infestation - TM83
  (219, 21900, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 52),
  -- Magcargo - Swagger - TM87
  (219, 21900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 53),
  -- Magcargo - Sleep Talk - TM88
  (219, 21900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 54),
  -- Magcargo - Substitute - TM90
  (219, 21900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 55),
  -- Magcargo - Nature Power - TM96
  (219, 21900, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 56),
  -- Magcargo - Confide - TM100
  (219, 21900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 57),
  -- Magcargo - Snore - Tutor
  (219, 21900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Magcargo - Pain Split - Tutor
  (219, 21900, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Magcargo - Heat Wave - Tutor
  (219, 21900, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Magcargo - Iron Defense - Tutor
  (219, 21900, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Magcargo - Earth Power - Tutor
  (219, 21900, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Magcargo - Stealth Rock - Tutor
  (219, 21900, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Magcargo - After You - Tutor
  (219, 21900, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Magcargo - Stomping Tantrum - Tutor
  (219, 21900, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Magcargo - Shell Smash - Evolution
  (219, 21900, 504, 16, NULL, 7, NULL, NULL, NULL, NULL, 66),

  -- Swinub - Tackle - Level 1
  (220, 22000, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swinub - Odor Sleuth - Level 1
  (220, 22000, 316, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swinub - Mud Sport - Level 5
  (220, 22000, 300, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Swinub - Powder Snow - Level 8
  (220, 22000, 181, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Swinub - Mud-Slap - Level 11
  (220, 22000, 189, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Swinub - Endure - Level 14
  (220, 22000, 203, 16, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Swinub - Mud Bomb - Level 18
  (220, 22000, 426, 16, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Swinub - Icy Wind - Level 21
  (220, 22000, 196, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Swinub - Ice Shard - Level 24
  (220, 22000, 420, 16, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Swinub - Take Down - Level 28
  (220, 22000, 36, 16, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Swinub - Mist - Level 35
  (220, 22000, 54, 16, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Swinub - Earthquake - Level 37
  (220, 22000, 89, 16, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Swinub - Flail - Level 40
  (220, 22000, 175, 16, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Swinub - Blizzard - Level 44
  (220, 22000, 59, 16, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Swinub - Amnesia - Level 48
  (220, 22000, 133, 16, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Swinub - Roar - TM05
  (220, 22000, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 16),
  -- Swinub - Toxic - TM06
  (220, 22000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Swinub - Hail - TM07
  (220, 22000, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 18),
  -- Swinub - Hidden Power - TM10
  (220, 22000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Swinub - Ice Beam - TM13
  (220, 22000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 20),
  -- Swinub - Blizzard - TM14
  (220, 22000, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 21),
  -- Swinub - Light Screen - TM16
  (220, 22000, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 22),
  -- Swinub - Protect - TM17
  (220, 22000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Swinub - Rain Dance - TM18
  (220, 22000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Swinub - Frustration - TM21
  (220, 22000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Swinub - Earthquake - TM26
  (220, 22000, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 26),
  -- Swinub - Return - TM27
  (220, 22000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Swinub - Double Team - TM32
  (220, 22000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Swinub - Reflect - TM33
  (220, 22000, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 29),
  -- Swinub - Sandstorm - TM37
  (220, 22000, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 30),
  -- Swinub - Rock Tomb - TM39
  (220, 22000, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 31),
  -- Swinub - Facade - TM42
  (220, 22000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Swinub - Rest - TM44
  (220, 22000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Swinub - Attract - TM45
  (220, 22000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Swinub - Round - TM48
  (220, 22000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Swinub - Bulldoze - TM78
  (220, 22000, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 36),
  -- Swinub - Rock Slide - TM80
  (220, 22000, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 37),
  -- Swinub - Swagger - TM87
  (220, 22000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 38),
  -- Swinub - Sleep Talk - TM88
  (220, 22000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 39),
  -- Swinub - Substitute - TM90
  (220, 22000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 40),
  -- Swinub - Confide - TM100
  (220, 22000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Swinub - Body Slam - Egg
  (220, 22000, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Swinub - Take Down - Egg
  (220, 22000, 36, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Swinub - Double-Edge - Egg
  (220, 22000, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Swinub - Bite - Egg
  (220, 22000, 44, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Swinub - Fissure - Egg
  (220, 22000, 90, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Swinub - Curse - Egg
  (220, 22000, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Swinub - Ancient Power - Egg
  (220, 22000, 246, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Swinub - Icicle Spear - Egg
  (220, 22000, 333, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Swinub - Mud Shot - Egg
  (220, 22000, 341, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Swinub - Avalanche - Egg
  (220, 22000, 419, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Swinub - Stealth Rock - Egg
  (220, 22000, 446, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Swinub - Icicle Crash - Egg
  (220, 22000, 556, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Swinub - Freeze-Dry - Egg
  (220, 22000, 573, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Swinub - Snore - Tutor
  (220, 22000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Swinub - Icy Wind - Tutor
  (220, 22000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Swinub - Superpower - Tutor
  (220, 22000, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Swinub - Endeavor - Tutor
  (220, 22000, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Swinub - Earth Power - Tutor
  (220, 22000, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Swinub - Stealth Rock - Tutor
  (220, 22000, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),

  -- Piloswine - Fury Attack - Level 1
  (221, 22100, 31, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Piloswine - Peck - Level 1
  (221, 22100, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Piloswine - Powder Snow - Level 1
  (221, 22100, 181, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Piloswine - Ancient Power - Level 1
  (221, 22100, 246, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Piloswine - Mud Sport - Level 1
  (221, 22100, 300, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Piloswine - Odor Sleuth - Level 1
  (221, 22100, 316, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Piloswine - Mud Sport - Level 5
  (221, 22100, 300, 16, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Piloswine - Powder Snow - Level 8
  (221, 22100, 181, 16, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Piloswine - Mud-Slap - Level 11
  (221, 22100, 189, 16, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Piloswine - Endure - Level 14
  (221, 22100, 203, 16, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Piloswine - Mud Bomb - Level 18
  (221, 22100, 426, 16, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Piloswine - Icy Wind - Level 21
  (221, 22100, 196, 16, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Piloswine - Ice Fang - Level 24
  (221, 22100, 423, 16, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Piloswine - Take Down - Level 28
  (221, 22100, 36, 16, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Piloswine - Mist - Level 37
  (221, 22100, 54, 16, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Piloswine - Thrash - Level 41
  (221, 22100, 37, 16, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Piloswine - Earthquake - Level 46
  (221, 22100, 89, 16, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Piloswine - Blizzard - Level 52
  (221, 22100, 59, 16, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Piloswine - Amnesia - Level 58
  (221, 22100, 133, 16, NULL, 1, 58, NULL, NULL, NULL, 19),
  -- Piloswine - Roar - TM05
  (221, 22100, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 20),
  -- Piloswine - Toxic - TM06
  (221, 22100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Piloswine - Hail - TM07
  (221, 22100, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 22),
  -- Piloswine - Hidden Power - TM10
  (221, 22100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Piloswine - Ice Beam - TM13
  (221, 22100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 24),
  -- Piloswine - Blizzard - TM14
  (221, 22100, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 25),
  -- Piloswine - Hyper Beam - TM15
  (221, 22100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Piloswine - Light Screen - TM16
  (221, 22100, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 27),
  -- Piloswine - Protect - TM17
  (221, 22100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Piloswine - Rain Dance - TM18
  (221, 22100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 29),
  -- Piloswine - Frustration - TM21
  (221, 22100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 30),
  -- Piloswine - Earthquake - TM26
  (221, 22100, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 31),
  -- Piloswine - Return - TM27
  (221, 22100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Piloswine - Double Team - TM32
  (221, 22100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Piloswine - Reflect - TM33
  (221, 22100, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 34),
  -- Piloswine - Sandstorm - TM37
  (221, 22100, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 35),
  -- Piloswine - Rock Tomb - TM39
  (221, 22100, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 36),
  -- Piloswine - Facade - TM42
  (221, 22100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Piloswine - Rest - TM44
  (221, 22100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Piloswine - Attract - TM45
  (221, 22100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Piloswine - Round - TM48
  (221, 22100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Piloswine - Giga Impact - TM68
  (221, 22100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 41),
  -- Piloswine - Stone Edge - TM71
  (221, 22100, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 42),
  -- Piloswine - Bulldoze - TM78
  (221, 22100, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 43),
  -- Piloswine - Rock Slide - TM80
  (221, 22100, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 44),
  -- Piloswine - Swagger - TM87
  (221, 22100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Piloswine - Sleep Talk - TM88
  (221, 22100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Piloswine - Substitute - TM90
  (221, 22100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Piloswine - Confide - TM100
  (221, 22100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Piloswine - Snore - Tutor
  (221, 22100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Piloswine - Icy Wind - Tutor
  (221, 22100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Piloswine - Superpower - Tutor
  (221, 22100, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Piloswine - Endeavor - Tutor
  (221, 22100, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Piloswine - Earth Power - Tutor
  (221, 22100, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Piloswine - Stealth Rock - Tutor
  (221, 22100, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Piloswine - Stomping Tantrum - Tutor
  (221, 22100, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Piloswine - Fury Attack - Evolution
  (221, 22100, 31, 16, NULL, 7, NULL, NULL, NULL, NULL, 56),

  -- Corsola - Tackle - Level 1
  (222, 22200, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Corsola - Harden - Level 1
  (222, 22200, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Corsola - Bubble - Level 4
  (222, 22200, 145, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Corsola - Recover - Level 8
  (222, 22200, 105, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Corsola - Bubble Beam - Level 10
  (222, 22200, 61, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Corsola - Refresh - Level 13
  (222, 22200, 287, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Corsola - Ancient Power - Level 17
  (222, 22200, 246, 16, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Corsola - Spike Cannon - Level 20
  (222, 22200, 131, 16, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Corsola - Lucky Chant - Level 23
  (222, 22200, 381, 16, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Corsola - Brine - Level 27
  (222, 22200, 362, 16, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Corsola - Iron Defense - Level 29
  (222, 22200, 334, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Corsola - Rock Blast - Level 31
  (222, 22200, 350, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Corsola - Endure - Level 35
  (222, 22200, 203, 16, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Corsola - Aqua Ring - Level 38
  (222, 22200, 392, 16, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Corsola - Power Gem - Level 41
  (222, 22200, 408, 16, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Corsola - Mirror Coat - Level 45
  (222, 22200, 243, 16, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Corsola - Earth Power - Level 47
  (222, 22200, 414, 16, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Corsola - Flail - Level 50
  (222, 22200, 175, 16, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Corsola - Calm Mind - TM04
  (222, 22200, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 19),
  -- Corsola - Toxic - TM06
  (222, 22200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Corsola - Hail - TM07
  (222, 22200, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 21),
  -- Corsola - Hidden Power - TM10
  (222, 22200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Corsola - Sunny Day - TM11
  (222, 22200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Corsola - Ice Beam - TM13
  (222, 22200, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 24),
  -- Corsola - Blizzard - TM14
  (222, 22200, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 25),
  -- Corsola - Light Screen - TM16
  (222, 22200, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 26),
  -- Corsola - Protect - TM17
  (222, 22200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Corsola - Rain Dance - TM18
  (222, 22200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Corsola - Safeguard - TM20
  (222, 22200, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 29),
  -- Corsola - Frustration - TM21
  (222, 22200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 30),
  -- Corsola - Earthquake - TM26
  (222, 22200, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 31),
  -- Corsola - Return - TM27
  (222, 22200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Corsola - Psychic - TM29
  (222, 22200, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 33),
  -- Corsola - Shadow Ball - TM30
  (222, 22200, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 34),
  -- Corsola - Double Team - TM32
  (222, 22200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Corsola - Reflect - TM33
  (222, 22200, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 36),
  -- Corsola - Sandstorm - TM37
  (222, 22200, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 37),
  -- Corsola - Rock Tomb - TM39
  (222, 22200, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 38),
  -- Corsola - Facade - TM42
  (222, 22200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 39),
  -- Corsola - Rest - TM44
  (222, 22200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 40),
  -- Corsola - Attract - TM45
  (222, 22200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 41),
  -- Corsola - Round - TM48
  (222, 22200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Corsola - Scald - TM55
  (222, 22200, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 43),
  -- Corsola - Explosion - TM64
  (222, 22200, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 44),
  -- Corsola - Rock Polish - TM69
  (222, 22200, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 45),
  -- Corsola - Stone Edge - TM71
  (222, 22200, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 46),
  -- Corsola - Bulldoze - TM78
  (222, 22200, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 47),
  -- Corsola - Rock Slide - TM80
  (222, 22200, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 48),
  -- Corsola - Swagger - TM87
  (222, 22200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Corsola - Sleep Talk - TM88
  (222, 22200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Corsola - Substitute - TM90
  (222, 22200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Corsola - Surf - TM94
  (222, 22200, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 52),
  -- Corsola - Nature Power - TM96
  (222, 22200, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 53),
  -- Corsola - Confide - TM100
  (222, 22200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Corsola - Mist - Egg
  (222, 22200, 54, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Corsola - Screech - Egg
  (222, 22200, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Corsola - Confuse Ray - Egg
  (222, 22200, 109, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Corsola - Barrier - Egg
  (222, 22200, 112, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Corsola - Bide - Egg
  (222, 22200, 117, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Corsola - Amnesia - Egg
  (222, 22200, 133, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Corsola - Curse - Egg
  (222, 22200, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Corsola - Nature Power - Egg
  (222, 22200, 267, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Corsola - Ingrain - Egg
  (222, 22200, 275, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Corsola - Camouflage - Egg
  (222, 22200, 293, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Corsola - Icicle Spear - Egg
  (222, 22200, 333, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Corsola - Water Pulse - Egg
  (222, 22200, 352, 16, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Corsola - Aqua Ring - Egg
  (222, 22200, 392, 16, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Corsola - Head Smash - Egg
  (222, 22200, 457, 16, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Corsola - Liquidation - Egg
  (222, 22200, 710, 16, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Corsola - Snore - Tutor
  (222, 22200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Corsola - Icy Wind - Tutor
  (222, 22200, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Corsola - Magic Coat - Tutor
  (222, 22200, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Corsola - Endeavor - Tutor
  (222, 22200, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Corsola - Iron Defense - Tutor
  (222, 22200, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Corsola - Water Pulse - Tutor
  (222, 22200, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Corsola - Earth Power - Tutor
  (222, 22200, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Corsola - Stealth Rock - Tutor
  (222, 22200, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Corsola - Throat Chop - Tutor
  (222, 22200, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Corsola - Stomping Tantrum - Tutor
  (222, 22200, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Corsola - Liquidation - Tutor
  (222, 22200, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),

  -- Remoraid - Water Gun - Level 1
  (223, 22300, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Remoraid - Lock-On - Level 6
  (223, 22300, 199, 16, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Remoraid - Psybeam - Level 10
  (223, 22300, 60, 16, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Remoraid - Aurora Beam - Level 14
  (223, 22300, 62, 16, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Remoraid - Bubble Beam - Level 18
  (223, 22300, 61, 16, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Remoraid - Focus Energy - Level 22
  (223, 22300, 116, 16, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Remoraid - Water Pulse - Level 26
  (223, 22300, 352, 16, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Remoraid - Signal Beam - Level 30
  (223, 22300, 324, 16, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Remoraid - Ice Beam - Level 34
  (223, 22300, 58, 16, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Remoraid - Bullet Seed - Level 38
  (223, 22300, 331, 16, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Remoraid - Hydro Pump - Level 42
  (223, 22300, 56, 16, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Remoraid - Hyper Beam - Level 46
  (223, 22300, 63, 16, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Remoraid - Soak - Level 50
  (223, 22300, 487, 16, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Remoraid - Toxic - TM06
  (223, 22300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Remoraid - Hidden Power - TM10
  (223, 22300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 15),
  -- Remoraid - Sunny Day - TM11
  (223, 22300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 16),
  -- Remoraid - Ice Beam - TM13
  (223, 22300, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 17),
  -- Remoraid - Blizzard - TM14
  (223, 22300, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 18),
  -- Remoraid - Hyper Beam - TM15
  (223, 22300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 19),
  -- Remoraid - Protect - TM17
  (223, 22300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Remoraid - Rain Dance - TM18
  (223, 22300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Remoraid - Frustration - TM21
  (223, 22300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Remoraid - Smack Down - TM23
  (223, 22300, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 23),
  -- Remoraid - Return - TM27
  (223, 22300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Remoraid - Psychic - TM29
  (223, 22300, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 25),
  -- Remoraid - Double Team - TM32
  (223, 22300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Remoraid - Flamethrower - TM35
  (223, 22300, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 27),
  -- Remoraid - Fire Blast - TM38
  (223, 22300, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 28),
  -- Remoraid - Facade - TM42
  (223, 22300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Remoraid - Rest - TM44
  (223, 22300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Remoraid - Attract - TM45
  (223, 22300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Remoraid - Thief - TM46
  (223, 22300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 32),
  -- Remoraid - Round - TM48
  (223, 22300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Remoraid - Scald - TM55
  (223, 22300, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 34),
  -- Remoraid - Charge Beam - TM57
  (223, 22300, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 35),
  -- Remoraid - Thunder Wave - TM73
  (223, 22300, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 36),
  -- Remoraid - Swagger - TM87
  (223, 22300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Remoraid - Sleep Talk - TM88
  (223, 22300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Remoraid - Substitute - TM90
  (223, 22300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Remoraid - Surf - TM94
  (223, 22300, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 40),
  -- Remoraid - Waterfall - TM98
  (223, 22300, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 41),
  -- Remoraid - Confide - TM100
  (223, 22300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Remoraid - Supersonic - Egg
  (223, 22300, 48, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Remoraid - Aurora Beam - Egg
  (223, 22300, 62, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Remoraid - Screech - Egg
  (223, 22300, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Remoraid - Haze - Egg
  (223, 22300, 114, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Remoraid - Swift - Egg
  (223, 22300, 129, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Remoraid - Snore - Egg
  (223, 22300, 173, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Remoraid - Flail - Egg
  (223, 22300, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Remoraid - Octazooka - Egg
  (223, 22300, 190, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Remoraid - Water Spout - Egg
  (223, 22300, 323, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Remoraid - Mud Shot - Egg
  (223, 22300, 341, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Remoraid - Rock Blast - Egg
  (223, 22300, 350, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Remoraid - Water Pulse - Egg
  (223, 22300, 352, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Remoraid - Acid Spray - Egg
  (223, 22300, 491, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Remoraid - Entrainment - Egg
  (223, 22300, 494, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Remoraid - Snore - Tutor
  (223, 22300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Remoraid - Icy Wind - Tutor
  (223, 22300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Remoraid - Signal Beam - Tutor
  (223, 22300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Remoraid - Bounce - Tutor
  (223, 22300, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Remoraid - Water Pulse - Tutor
  (223, 22300, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Remoraid - Seed Bomb - Tutor
  (223, 22300, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Remoraid - Gunk Shot - Tutor
  (223, 22300, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),

  -- Octillery - Water Gun - Level 1
  (224, 22400, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Octillery - Psybeam - Level 1
  (224, 22400, 60, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Octillery - Aurora Beam - Level 1
  (224, 22400, 62, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Octillery - Constrict - Level 1
  (224, 22400, 132, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Octillery - Octazooka - Level 1
  (224, 22400, 190, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Octillery - Rock Blast - Level 1
  (224, 22400, 350, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Octillery - Gunk Shot - Level 1
  (224, 22400, 441, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Octillery - Constrict - Level 6
  (224, 22400, 132, 16, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Octillery - Psybeam - Level 10
  (224, 22400, 60, 16, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Octillery - Aurora Beam - Level 14
  (224, 22400, 62, 16, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Octillery - Bubble Beam - Level 18
  (224, 22400, 61, 16, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Octillery - Focus Energy - Level 22
  (224, 22400, 116, 16, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Octillery - Wring Out - Level 28
  (224, 22400, 378, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Octillery - Signal Beam - Level 34
  (224, 22400, 324, 16, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Octillery - Ice Beam - Level 40
  (224, 22400, 58, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Octillery - Bullet Seed - Level 46
  (224, 22400, 331, 16, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Octillery - Hydro Pump - Level 52
  (224, 22400, 56, 16, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Octillery - Hyper Beam - Level 58
  (224, 22400, 63, 16, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Octillery - Soak - Level 64
  (224, 22400, 487, 16, NULL, 1, 64, NULL, NULL, NULL, 19),
  -- Octillery - Toxic - TM06
  (224, 22400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Octillery - Hidden Power - TM10
  (224, 22400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Octillery - Sunny Day - TM11
  (224, 22400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Octillery - Ice Beam - TM13
  (224, 22400, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 23),
  -- Octillery - Blizzard - TM14
  (224, 22400, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 24),
  -- Octillery - Hyper Beam - TM15
  (224, 22400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Octillery - Protect - TM17
  (224, 22400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Octillery - Rain Dance - TM18
  (224, 22400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Octillery - Frustration - TM21
  (224, 22400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Octillery - Smack Down - TM23
  (224, 22400, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 29),
  -- Octillery - Return - TM27
  (224, 22400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Octillery - Psychic - TM29
  (224, 22400, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 31),
  -- Octillery - Double Team - TM32
  (224, 22400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Octillery - Sludge Wave - TM34
  (224, 22400, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 33),
  -- Octillery - Flamethrower - TM35
  (224, 22400, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 34),
  -- Octillery - Sludge Bomb - TM36
  (224, 22400, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 35),
  -- Octillery - Fire Blast - TM38
  (224, 22400, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 36),
  -- Octillery - Facade - TM42
  (224, 22400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Octillery - Rest - TM44
  (224, 22400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Octillery - Attract - TM45
  (224, 22400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Octillery - Thief - TM46
  (224, 22400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 40),
  -- Octillery - Round - TM48
  (224, 22400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Octillery - Energy Ball - TM53
  (224, 22400, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 42),
  -- Octillery - Scald - TM55
  (224, 22400, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 43),
  -- Octillery - Charge Beam - TM57
  (224, 22400, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 44),
  -- Octillery - Payback - TM66
  (224, 22400, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 45),
  -- Octillery - Giga Impact - TM68
  (224, 22400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 46),
  -- Octillery - Thunder Wave - TM73
  (224, 22400, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 47),
  -- Octillery - Swagger - TM87
  (224, 22400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Octillery - Sleep Talk - TM88
  (224, 22400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Octillery - Substitute - TM90
  (224, 22400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Octillery - Flash Cannon - TM91
  (224, 22400, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 51),
  -- Octillery - Surf - TM94
  (224, 22400, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 52),
  -- Octillery - Waterfall - TM98
  (224, 22400, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 53),
  -- Octillery - Confide - TM100
  (224, 22400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Octillery - Bind - Tutor
  (224, 22400, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Octillery - Snore - Tutor
  (224, 22400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Octillery - Icy Wind - Tutor
  (224, 22400, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Octillery - Signal Beam - Tutor
  (224, 22400, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Octillery - Bounce - Tutor
  (224, 22400, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Octillery - Water Pulse - Tutor
  (224, 22400, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Octillery - Seed Bomb - Tutor
  (224, 22400, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Octillery - Gunk Shot - Tutor
  (224, 22400, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Octillery - Octazooka - Evolution
  (224, 22400, 190, 16, NULL, 7, NULL, NULL, NULL, NULL, 63),

  -- Delibird - Present - Level 1
  (225, 22500, 217, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Delibird - Drill Peck - Level 25
  (225, 22500, 65, 16, NULL, 1, 25, NULL, NULL, NULL, 2),
  -- Delibird - Toxic - TM06
  (225, 22500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 3),
  -- Delibird - Hail - TM07
  (225, 22500, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 4),
  -- Delibird - Hidden Power - TM10
  (225, 22500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 5),
  -- Delibird - Ice Beam - TM13
  (225, 22500, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 6),
  -- Delibird - Blizzard - TM14
  (225, 22500, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 7),
  -- Delibird - Protect - TM17
  (225, 22500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 8),
  -- Delibird - Rain Dance - TM18
  (225, 22500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 9),
  -- Delibird - Frustration - TM21
  (225, 22500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 10),
  -- Delibird - Return - TM27
  (225, 22500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 11),
  -- Delibird - Brick Break - TM31
  (225, 22500, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 12),
  -- Delibird - Double Team - TM32
  (225, 22500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 13),
  -- Delibird - Aerial Ace - TM40
  (225, 22500, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 14),
  -- Delibird - Facade - TM42
  (225, 22500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 15),
  -- Delibird - Rest - TM44
  (225, 22500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 16),
  -- Delibird - Attract - TM45
  (225, 22500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 17),
  -- Delibird - Thief - TM46
  (225, 22500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 18),
  -- Delibird - Round - TM48
  (225, 22500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 19),
  -- Delibird - Fling - TM56
  (225, 22500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 20),
  -- Delibird - Brutal Swing - TM59
  (225, 22500, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 21),
  -- Delibird - Aurora Veil - TM70
  (225, 22500, 694, 16, NULL, 2, NULL, NULL, 16002070, NULL, 22),
  -- Delibird - Fly - TM76
  (225, 22500, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 23),
  -- Delibird - Frost Breath - TM79
  (225, 22500, 524, 16, NULL, 2, NULL, NULL, 16002079, NULL, 24),
  -- Delibird - Swagger - TM87
  (225, 22500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 25),
  -- Delibird - Sleep Talk - TM88
  (225, 22500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 26),
  -- Delibird - Substitute - TM90
  (225, 22500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 27),
  -- Delibird - Confide - TM100
  (225, 22500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 28),
  -- Delibird - Ice Punch - Egg
  (225, 22500, 8, 16, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Delibird - Aurora Beam - Egg
  (225, 22500, 62, 16, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Delibird - Counter - Egg
  (225, 22500, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Delibird - Quick Attack - Egg
  (225, 22500, 98, 16, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Delibird - Splash - Egg
  (225, 22500, 150, 16, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Delibird - Spikes - Egg
  (225, 22500, 191, 16, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Delibird - Destiny Bond - Egg
  (225, 22500, 194, 16, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Delibird - Icy Wind - Egg
  (225, 22500, 196, 16, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Delibird - Rapid Spin - Egg
  (225, 22500, 229, 16, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Delibird - Future Sight - Egg
  (225, 22500, 248, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Delibird - Fake Out - Egg
  (225, 22500, 252, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Delibird - Ice Ball - Egg
  (225, 22500, 301, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Delibird - Ice Shard - Egg
  (225, 22500, 420, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Delibird - Bestow - Egg
  (225, 22500, 516, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Delibird - Freeze-Dry - Egg
  (225, 22500, 573, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Delibird - Ice Punch - Tutor
  (225, 22500, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Delibird - Sky Attack - Tutor
  (225, 22500, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Delibird - Snore - Tutor
  (225, 22500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Delibird - Icy Wind - Tutor
  (225, 22500, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Delibird - Focus Punch - Tutor
  (225, 22500, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Delibird - Recycle - Tutor
  (225, 22500, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Delibird - Signal Beam - Tutor
  (225, 22500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Delibird - Bounce - Tutor
  (225, 22500, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Delibird - Water Pulse - Tutor
  (225, 22500, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Delibird - Seed Bomb - Tutor
  (225, 22500, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Delibird - Defog - Tutor
  (225, 22500, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Delibird - Gunk Shot - Tutor
  (225, 22500, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),

  -- Mantine - Tackle - Level 1
  (226, 22600, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mantine - Supersonic - Level 1
  (226, 22600, 48, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mantine - Psybeam - Level 1
  (226, 22600, 60, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mantine - Bubble Beam - Level 1
  (226, 22600, 61, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mantine - Bubble - Level 1
  (226, 22600, 145, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mantine - Signal Beam - Level 1
  (226, 22600, 324, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mantine - Bullet Seed - Level 1
  (226, 22600, 331, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Mantine - Roost - Level 1
  (226, 22600, 355, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Mantine - Supersonic - Level 3
  (226, 22600, 48, 16, NULL, 1, 3, NULL, NULL, NULL, 9),
  -- Mantine - Bubble Beam - Level 7
  (226, 22600, 61, 16, NULL, 1, 7, NULL, NULL, NULL, 10),
  -- Mantine - Confuse Ray - Level 11
  (226, 22600, 109, 16, NULL, 1, 11, NULL, NULL, NULL, 11),
  -- Mantine - Wing Attack - Level 14
  (226, 22600, 17, 16, NULL, 1, 14, NULL, NULL, NULL, 12),
  -- Mantine - Headbutt - Level 16
  (226, 22600, 29, 16, NULL, 1, 16, NULL, NULL, NULL, 13),
  -- Mantine - Water Pulse - Level 19
  (226, 22600, 352, 16, NULL, 1, 19, NULL, NULL, NULL, 14),
  -- Mantine - Wide Guard - Level 23
  (226, 22600, 469, 16, NULL, 1, 23, NULL, NULL, NULL, 15),
  -- Mantine - Take Down - Level 27
  (226, 22600, 36, 16, NULL, 1, 27, NULL, NULL, NULL, 16),
  -- Mantine - Agility - Level 32
  (226, 22600, 97, 16, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Mantine - Air Slash - Level 36
  (226, 22600, 403, 16, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Mantine - Aqua Ring - Level 39
  (226, 22600, 392, 16, NULL, 1, 39, NULL, NULL, NULL, 19),
  -- Mantine - Bounce - Level 46
  (226, 22600, 340, 16, NULL, 1, 46, NULL, NULL, NULL, 20),
  -- Mantine - Hydro Pump - Level 49
  (226, 22600, 56, 16, NULL, 1, 49, NULL, NULL, NULL, 21),
  -- Mantine - Toxic - TM06
  (226, 22600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Mantine - Hail - TM07
  (226, 22600, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 23),
  -- Mantine - Hidden Power - TM10
  (226, 22600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Mantine - Ice Beam - TM13
  (226, 22600, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 25),
  -- Mantine - Blizzard - TM14
  (226, 22600, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 26),
  -- Mantine - Hyper Beam - TM15
  (226, 22600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 27),
  -- Mantine - Protect - TM17
  (226, 22600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Mantine - Rain Dance - TM18
  (226, 22600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 29),
  -- Mantine - Roost - TM19
  (226, 22600, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 30),
  -- Mantine - Frustration - TM21
  (226, 22600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Mantine - Earthquake - TM26
  (226, 22600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 32),
  -- Mantine - Return - TM27
  (226, 22600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Mantine - Double Team - TM32
  (226, 22600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Mantine - Rock Tomb - TM39
  (226, 22600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Mantine - Aerial Ace - TM40
  (226, 22600, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 36),
  -- Mantine - Facade - TM42
  (226, 22600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Mantine - Rest - TM44
  (226, 22600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Mantine - Attract - TM45
  (226, 22600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Mantine - Round - TM48
  (226, 22600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Mantine - Scald - TM55
  (226, 22600, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 41),
  -- Mantine - Acrobatics - TM62
  (226, 22600, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 42),
  -- Mantine - Giga Impact - TM68
  (226, 22600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 43),
  -- Mantine - Bulldoze - TM78
  (226, 22600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 44),
  -- Mantine - Rock Slide - TM80
  (226, 22600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 45),
  -- Mantine - Swagger - TM87
  (226, 22600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Mantine - Sleep Talk - TM88
  (226, 22600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Mantine - Substitute - TM90
  (226, 22600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Mantine - Surf - TM94
  (226, 22600, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 49),
  -- Mantine - Waterfall - TM98
  (226, 22600, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 50),
  -- Mantine - Confide - TM100
  (226, 22600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Mantine - Slam - Egg
  (226, 22600, 21, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Mantine - Hydro Pump - Egg
  (226, 22600, 56, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mantine - Haze - Egg
  (226, 22600, 114, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Mantine - Amnesia - Egg
  (226, 22600, 133, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Mantine - Splash - Egg
  (226, 22600, 150, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Mantine - Twister - Egg
  (226, 22600, 239, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Mantine - Mirror Coat - Egg
  (226, 22600, 243, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Mantine - Mud Sport - Egg
  (226, 22600, 300, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mantine - Signal Beam - Egg
  (226, 22600, 324, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mantine - Water Sport - Egg
  (226, 22600, 346, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mantine - Tailwind - Egg
  (226, 22600, 366, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Mantine - Wide Guard - Egg
  (226, 22600, 469, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Mantine - Snore - Tutor
  (226, 22600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Mantine - Icy Wind - Tutor
  (226, 22600, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Mantine - Helping Hand - Tutor
  (226, 22600, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Mantine - Signal Beam - Tutor
  (226, 22600, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Mantine - Bounce - Tutor
  (226, 22600, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Mantine - Water Pulse - Tutor
  (226, 22600, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Mantine - Tailwind - Tutor
  (226, 22600, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Mantine - Aqua Tail - Tutor
  (226, 22600, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Mantine - Seed Bomb - Tutor
  (226, 22600, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Mantine - Defog - Tutor
  (226, 22600, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Mantine - Gunk Shot - Tutor
  (226, 22600, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Mantine - Iron Head - Tutor
  (226, 22600, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Mantine - Liquidation - Tutor
  (226, 22600, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),

  -- Skarmory - Leer - Level 1
  (227, 22700, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skarmory - Peck - Level 1
  (227, 22700, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skarmory - Sand Attack - Level 6
  (227, 22700, 28, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Skarmory - Metal Claw - Level 9
  (227, 22700, 232, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Skarmory - Air Cutter - Level 12
  (227, 22700, 314, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Skarmory - Fury Attack - Level 17
  (227, 22700, 31, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Skarmory - Feint - Level 20
  (227, 22700, 364, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Skarmory - Swift - Level 23
  (227, 22700, 129, 16, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Skarmory - Spikes - Level 28
  (227, 22700, 191, 16, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Skarmory - Agility - Level 31
  (227, 22700, 97, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Skarmory - Steel Wing - Level 34
  (227, 22700, 211, 16, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Skarmory - Slash - Level 39
  (227, 22700, 163, 16, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Skarmory - Metal Sound - Level 42
  (227, 22700, 319, 16, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Skarmory - Air Slash - Level 45
  (227, 22700, 403, 16, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Skarmory - Autotomize - Level 50
  (227, 22700, 475, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Skarmory - Night Slash - Level 53
  (227, 22700, 400, 16, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Skarmory - Roar - TM05
  (227, 22700, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 17),
  -- Skarmory - Toxic - TM06
  (227, 22700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Skarmory - Hidden Power - TM10
  (227, 22700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Skarmory - Sunny Day - TM11
  (227, 22700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Skarmory - Taunt - TM12
  (227, 22700, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 21),
  -- Skarmory - Protect - TM17
  (227, 22700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Skarmory - Roost - TM19
  (227, 22700, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 23),
  -- Skarmory - Frustration - TM21
  (227, 22700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Skarmory - Return - TM27
  (227, 22700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Skarmory - Double Team - TM32
  (227, 22700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Skarmory - Sandstorm - TM37
  (227, 22700, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 27),
  -- Skarmory - Rock Tomb - TM39
  (227, 22700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 28),
  -- Skarmory - Aerial Ace - TM40
  (227, 22700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 29),
  -- Skarmory - Torment - TM41
  (227, 22700, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 30),
  -- Skarmory - Facade - TM42
  (227, 22700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Skarmory - Rest - TM44
  (227, 22700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Skarmory - Attract - TM45
  (227, 22700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Skarmory - Thief - TM46
  (227, 22700, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 34),
  -- Skarmory - Round - TM48
  (227, 22700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Skarmory - Steel Wing - TM51
  (227, 22700, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 36),
  -- Skarmory - Sky Drop - TM58
  (227, 22700, 507, 16, NULL, 2, NULL, NULL, 16002058, NULL, 37),
  -- Skarmory - Payback - TM66
  (227, 22700, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 38),
  -- Skarmory - Swords Dance - TM75
  (227, 22700, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 39),
  -- Skarmory - Fly - TM76
  (227, 22700, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 40),
  -- Skarmory - Rock Slide - TM80
  (227, 22700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 41),
  -- Skarmory - X-Scissor - TM81
  (227, 22700, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 42),
  -- Skarmory - Swagger - TM87
  (227, 22700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Skarmory - Sleep Talk - TM88
  (227, 22700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Skarmory - Substitute - TM90
  (227, 22700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Skarmory - Flash Cannon - TM91
  (227, 22700, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 46),
  -- Skarmory - Dark Pulse - TM97
  (227, 22700, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 47),
  -- Skarmory - Confide - TM100
  (227, 22700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Skarmory - Whirlwind - Egg
  (227, 22700, 18, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Skarmory - Drill Peck - Egg
  (227, 22700, 65, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Skarmory - Sky Attack - Egg
  (227, 22700, 143, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Skarmory - Curse - Egg
  (227, 22700, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Skarmory - Endure - Egg
  (227, 22700, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Skarmory - Pursuit - Egg
  (227, 22700, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Skarmory - Assurance - Egg
  (227, 22700, 372, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skarmory - Guard Swap - Egg
  (227, 22700, 385, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Skarmory - Brave Bird - Egg
  (227, 22700, 413, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Skarmory - Stealth Rock - Egg
  (227, 22700, 446, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Skarmory - Sky Attack - Tutor
  (227, 22700, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Skarmory - Snore - Tutor
  (227, 22700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Skarmory - Icy Wind - Tutor
  (227, 22700, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Skarmory - Iron Defense - Tutor
  (227, 22700, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Skarmory - Tailwind - Tutor
  (227, 22700, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Skarmory - Defog - Tutor
  (227, 22700, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Skarmory - Iron Head - Tutor
  (227, 22700, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Skarmory - Stealth Rock - Tutor
  (227, 22700, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),

  -- Houndour - Leer - Level 1
  (228, 22800, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Houndour - Ember - Level 1
  (228, 22800, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Houndour - Howl - Level 4
  (228, 22800, 336, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Houndour - Smog - Level 8
  (228, 22800, 123, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Houndour - Roar - Level 13
  (228, 22800, 46, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Houndour - Bite - Level 16
  (228, 22800, 44, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Houndour - Odor Sleuth - Level 20
  (228, 22800, 316, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Houndour - Beat Up - Level 25
  (228, 22800, 251, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Houndour - Fire Fang - Level 28
  (228, 22800, 424, 16, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Houndour - Feint Attack - Level 32
  (228, 22800, 185, 16, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Houndour - Embargo - Level 37
  (228, 22800, 373, 16, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Houndour - Foul Play - Level 40
  (228, 22800, 492, 16, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Houndour - Flamethrower - Level 44
  (228, 22800, 53, 16, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Houndour - Crunch - Level 49
  (228, 22800, 242, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Houndour - Nasty Plot - Level 52
  (228, 22800, 417, 16, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Houndour - Inferno - Level 56
  (228, 22800, 517, 16, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Houndour - Roar - TM05
  (228, 22800, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 17),
  -- Houndour - Toxic - TM06
  (228, 22800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Houndour - Hidden Power - TM10
  (228, 22800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Houndour - Sunny Day - TM11
  (228, 22800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Houndour - Taunt - TM12
  (228, 22800, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 21),
  -- Houndour - Protect - TM17
  (228, 22800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Houndour - Frustration - TM21
  (228, 22800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Houndour - Solar Beam - TM22
  (228, 22800, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 24),
  -- Houndour - Return - TM27
  (228, 22800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Houndour - Shadow Ball - TM30
  (228, 22800, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 26),
  -- Houndour - Double Team - TM32
  (228, 22800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Houndour - Flamethrower - TM35
  (228, 22800, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 28),
  -- Houndour - Sludge Bomb - TM36
  (228, 22800, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 29),
  -- Houndour - Fire Blast - TM38
  (228, 22800, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 30),
  -- Houndour - Torment - TM41
  (228, 22800, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 31),
  -- Houndour - Facade - TM42
  (228, 22800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Houndour - Flame Charge - TM43
  (228, 22800, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 33),
  -- Houndour - Rest - TM44
  (228, 22800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Houndour - Attract - TM45
  (228, 22800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Houndour - Thief - TM46
  (228, 22800, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 36),
  -- Houndour - Round - TM48
  (228, 22800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Houndour - Overheat - TM50
  (228, 22800, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 38),
  -- Houndour - Will-O-Wisp - TM61
  (228, 22800, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 39),
  -- Houndour - Embargo - TM63
  (228, 22800, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 40),
  -- Houndour - Payback - TM66
  (228, 22800, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 41),
  -- Houndour - Dream Eater - TM85
  (228, 22800, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 42),
  -- Houndour - Swagger - TM87
  (228, 22800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Houndour - Sleep Talk - TM88
  (228, 22800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Houndour - Substitute - TM90
  (228, 22800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Houndour - Snarl - TM95
  (228, 22800, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 46),
  -- Houndour - Dark Pulse - TM97
  (228, 22800, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 47),
  -- Houndour - Confide - TM100
  (228, 22800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Houndour - Counter - Egg
  (228, 22800, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Houndour - Fire Spin - Egg
  (228, 22800, 83, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Houndour - Rage - Egg
  (228, 22800, 99, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Houndour - Reversal - Egg
  (228, 22800, 179, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Houndour - Spite - Egg
  (228, 22800, 180, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Houndour - Destiny Bond - Egg
  (228, 22800, 194, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Houndour - Pursuit - Egg
  (228, 22800, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Houndour - Beat Up - Egg
  (228, 22800, 251, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Houndour - Feint - Egg
  (228, 22800, 364, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Houndour - Punishment - Egg
  (228, 22800, 386, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Houndour - Sucker Punch - Egg
  (228, 22800, 389, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Houndour - Nasty Plot - Egg
  (228, 22800, 417, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Houndour - Thunder Fang - Egg
  (228, 22800, 422, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Houndour - Fire Fang - Egg
  (228, 22800, 424, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Houndour - Super Fang - Tutor
  (228, 22800, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Houndour - Snore - Tutor
  (228, 22800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Houndour - Spite - Tutor
  (228, 22800, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Houndour - Iron Tail - Tutor
  (228, 22800, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Houndour - Uproar - Tutor
  (228, 22800, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Houndour - Heat Wave - Tutor
  (228, 22800, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Houndour - Role Play - Tutor
  (228, 22800, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Houndour - Snatch - Tutor
  (228, 22800, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Houndour - Hyper Voice - Tutor
  (228, 22800, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Houndour - Foul Play - Tutor
  (228, 22800, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),

  -- Houndoom - Leer - Level 1
  (229, 22900, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Houndoom - Ember - Level 1
  (229, 22900, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Houndoom - Smog - Level 1
  (229, 22900, 123, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Houndoom - Howl - Level 1
  (229, 22900, 336, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Houndoom - Nasty Plot - Level 1
  (229, 22900, 417, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Houndoom - Thunder Fang - Level 1
  (229, 22900, 422, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Houndoom - Inferno - Level 1
  (229, 22900, 517, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Houndoom - Howl - Level 4
  (229, 22900, 336, 16, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Houndoom - Smog - Level 8
  (229, 22900, 123, 16, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Houndoom - Roar - Level 13
  (229, 22900, 46, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Houndoom - Bite - Level 16
  (229, 22900, 44, 16, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Houndoom - Odor Sleuth - Level 20
  (229, 22900, 316, 16, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Houndoom - Beat Up - Level 26
  (229, 22900, 251, 16, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Houndoom - Fire Fang - Level 30
  (229, 22900, 424, 16, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Houndoom - Feint Attack - Level 35
  (229, 22900, 185, 16, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Houndoom - Embargo - Level 41
  (229, 22900, 373, 16, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Houndoom - Foul Play - Level 45
  (229, 22900, 492, 16, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Houndoom - Flamethrower - Level 50
  (229, 22900, 53, 16, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Houndoom - Crunch - Level 56
  (229, 22900, 242, 16, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Houndoom - Nasty Plot - Level 60
  (229, 22900, 417, 16, NULL, 1, 60, NULL, NULL, NULL, 20),
  -- Houndoom - Inferno - Level 65
  (229, 22900, 517, 16, NULL, 1, 65, NULL, NULL, NULL, 21),
  -- Houndoom - Roar - TM05
  (229, 22900, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 22),
  -- Houndoom - Toxic - TM06
  (229, 22900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Houndoom - Hidden Power - TM10
  (229, 22900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Houndoom - Sunny Day - TM11
  (229, 22900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Houndoom - Taunt - TM12
  (229, 22900, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 26),
  -- Houndoom - Hyper Beam - TM15
  (229, 22900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 27),
  -- Houndoom - Protect - TM17
  (229, 22900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Houndoom - Frustration - TM21
  (229, 22900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Houndoom - Solar Beam - TM22
  (229, 22900, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 30),
  -- Houndoom - Return - TM27
  (229, 22900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Houndoom - Shadow Ball - TM30
  (229, 22900, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 32),
  -- Houndoom - Double Team - TM32
  (229, 22900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Houndoom - Flamethrower - TM35
  (229, 22900, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 34),
  -- Houndoom - Sludge Bomb - TM36
  (229, 22900, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 35),
  -- Houndoom - Fire Blast - TM38
  (229, 22900, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 36),
  -- Houndoom - Torment - TM41
  (229, 22900, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 37),
  -- Houndoom - Facade - TM42
  (229, 22900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Houndoom - Flame Charge - TM43
  (229, 22900, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 39),
  -- Houndoom - Rest - TM44
  (229, 22900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 40),
  -- Houndoom - Attract - TM45
  (229, 22900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 41),
  -- Houndoom - Thief - TM46
  (229, 22900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 42),
  -- Houndoom - Round - TM48
  (229, 22900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 43),
  -- Houndoom - Overheat - TM50
  (229, 22900, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 44),
  -- Houndoom - Will-O-Wisp - TM61
  (229, 22900, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 45),
  -- Houndoom - Embargo - TM63
  (229, 22900, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 46),
  -- Houndoom - Payback - TM66
  (229, 22900, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 47),
  -- Houndoom - Giga Impact - TM68
  (229, 22900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 48),
  -- Houndoom - Dream Eater - TM85
  (229, 22900, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 49),
  -- Houndoom - Swagger - TM87
  (229, 22900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 50),
  -- Houndoom - Sleep Talk - TM88
  (229, 22900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 51),
  -- Houndoom - Substitute - TM90
  (229, 22900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 52),
  -- Houndoom - Snarl - TM95
  (229, 22900, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 53),
  -- Houndoom - Dark Pulse - TM97
  (229, 22900, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 54),
  -- Houndoom - Confide - TM100
  (229, 22900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 55),
  -- Houndoom - Super Fang - Tutor
  (229, 22900, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Houndoom - Snore - Tutor
  (229, 22900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Houndoom - Spite - Tutor
  (229, 22900, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Houndoom - Iron Tail - Tutor
  (229, 22900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Houndoom - Uproar - Tutor
  (229, 22900, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Houndoom - Heat Wave - Tutor
  (229, 22900, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Houndoom - Role Play - Tutor
  (229, 22900, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Houndoom - Snatch - Tutor
  (229, 22900, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Houndoom - Hyper Voice - Tutor
  (229, 22900, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Houndoom - Foul Play - Tutor
  (229, 22900, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Houndoom - Laser Focus - Tutor
  (229, 22900, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Houndoom - Throat Chop - Tutor
  (229, 22900, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),

  -- Kingdra - Leer - Level 1
  (230, 23000, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kingdra - Water Gun - Level 1
  (230, 23000, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kingdra - Hydro Pump - Level 1
  (230, 23000, 56, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kingdra - Smokescreen - Level 1
  (230, 23000, 108, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kingdra - Bubble - Level 1
  (230, 23000, 145, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kingdra - Yawn - Level 1
  (230, 23000, 281, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Kingdra - Smokescreen - Level 5
  (230, 23000, 108, 16, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Kingdra - Leer - Level 9
  (230, 23000, 43, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Kingdra - Water Gun - Level 13
  (230, 23000, 55, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Kingdra - Twister - Level 17
  (230, 23000, 239, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Kingdra - Bubble Beam - Level 21
  (230, 23000, 61, 16, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Kingdra - Focus Energy - Level 26
  (230, 23000, 116, 16, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Kingdra - Brine - Level 31
  (230, 23000, 362, 16, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Kingdra - Agility - Level 38
  (230, 23000, 97, 16, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Kingdra - Dragon Pulse - Level 45
  (230, 23000, 406, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Kingdra - Dragon Dance - Level 52
  (230, 23000, 349, 16, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Kingdra - Hydro Pump - Level 60
  (230, 23000, 56, 16, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Kingdra - Toxic - TM06
  (230, 23000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Kingdra - Hail - TM07
  (230, 23000, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 19),
  -- Kingdra - Hidden Power - TM10
  (230, 23000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Kingdra - Ice Beam - TM13
  (230, 23000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Kingdra - Blizzard - TM14
  (230, 23000, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 22),
  -- Kingdra - Hyper Beam - TM15
  (230, 23000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Kingdra - Protect - TM17
  (230, 23000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Kingdra - Rain Dance - TM18
  (230, 23000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Kingdra - Frustration - TM21
  (230, 23000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Kingdra - Return - TM27
  (230, 23000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Kingdra - Double Team - TM32
  (230, 23000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Kingdra - Facade - TM42
  (230, 23000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Kingdra - Rest - TM44
  (230, 23000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Kingdra - Attract - TM45
  (230, 23000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Kingdra - Round - TM48
  (230, 23000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Kingdra - Scald - TM55
  (230, 23000, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 33),
  -- Kingdra - Quash - TM60
  (230, 23000, 511, 16, NULL, 2, NULL, NULL, 16002060, NULL, 34),
  -- Kingdra - Giga Impact - TM68
  (230, 23000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 35),
  -- Kingdra - Swagger - TM87
  (230, 23000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 36),
  -- Kingdra - Sleep Talk - TM88
  (230, 23000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 37),
  -- Kingdra - Substitute - TM90
  (230, 23000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Kingdra - Flash Cannon - TM91
  (230, 23000, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 39),
  -- Kingdra - Surf - TM94
  (230, 23000, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 40),
  -- Kingdra - Waterfall - TM98
  (230, 23000, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 41),
  -- Kingdra - Confide - TM100
  (230, 23000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Kingdra - Snore - Tutor
  (230, 23000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Kingdra - Icy Wind - Tutor
  (230, 23000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Kingdra - Outrage - Tutor
  (230, 23000, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Kingdra - Signal Beam - Tutor
  (230, 23000, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Kingdra - Bounce - Tutor
  (230, 23000, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Kingdra - Water Pulse - Tutor
  (230, 23000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Kingdra - Dragon Pulse - Tutor
  (230, 23000, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Kingdra - Draco Meteor - Tutor
  (230, 23000, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Kingdra - Iron Head - Tutor
  (230, 23000, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Kingdra - Laser Focus - Tutor
  (230, 23000, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),

  -- Phanpy - Tackle - Level 1
  (231, 23100, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Phanpy - Growl - Level 1
  (231, 23100, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Phanpy - Defense Curl - Level 1
  (231, 23100, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Phanpy - Odor Sleuth - Level 1
  (231, 23100, 316, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Phanpy - Flail - Level 6
  (231, 23100, 175, 16, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Phanpy - Rollout - Level 10
  (231, 23100, 205, 16, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Phanpy - Natural Gift - Level 15
  (231, 23100, 363, 16, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Phanpy - Endure - Level 19
  (231, 23100, 203, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Phanpy - Slam - Level 24
  (231, 23100, 21, 16, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Phanpy - Take Down - Level 28
  (231, 23100, 36, 16, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Phanpy - Charm - Level 33
  (231, 23100, 204, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Phanpy - Last Resort - Level 37
  (231, 23100, 387, 16, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Phanpy - Double-Edge - Level 42
  (231, 23100, 38, 16, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Phanpy - Roar - TM05
  (231, 23100, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 14),
  -- Phanpy - Toxic - TM06
  (231, 23100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Phanpy - Hidden Power - TM10
  (231, 23100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Phanpy - Sunny Day - TM11
  (231, 23100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 17),
  -- Phanpy - Protect - TM17
  (231, 23100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 18),
  -- Phanpy - Frustration - TM21
  (231, 23100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 19),
  -- Phanpy - Earthquake - TM26
  (231, 23100, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 20),
  -- Phanpy - Return - TM27
  (231, 23100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 21),
  -- Phanpy - Double Team - TM32
  (231, 23100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 22),
  -- Phanpy - Sandstorm - TM37
  (231, 23100, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 23),
  -- Phanpy - Rock Tomb - TM39
  (231, 23100, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 24),
  -- Phanpy - Facade - TM42
  (231, 23100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 25),
  -- Phanpy - Rest - TM44
  (231, 23100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 26),
  -- Phanpy - Attract - TM45
  (231, 23100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 27),
  -- Phanpy - Round - TM48
  (231, 23100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 28),
  -- Phanpy - Echoed Voice - TM49
  (231, 23100, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 29),
  -- Phanpy - Bulldoze - TM78
  (231, 23100, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 30),
  -- Phanpy - Rock Slide - TM80
  (231, 23100, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 31),
  -- Phanpy - Swagger - TM87
  (231, 23100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 32),
  -- Phanpy - Sleep Talk - TM88
  (231, 23100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 33),
  -- Phanpy - Substitute - TM90
  (231, 23100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 34),
  -- Phanpy - Confide - TM100
  (231, 23100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 35),
  -- Phanpy - Body Slam - Egg
  (231, 23100, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Phanpy - Counter - Egg
  (231, 23100, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Phanpy - Fissure - Egg
  (231, 23100, 90, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Phanpy - Focus Energy - Egg
  (231, 23100, 116, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Phanpy - Snore - Egg
  (231, 23100, 173, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Phanpy - Mud-Slap - Egg
  (231, 23100, 189, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Phanpy - Ancient Power - Egg
  (231, 23100, 246, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Phanpy - Endeavor - Egg
  (231, 23100, 283, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Phanpy - Ice Shard - Egg
  (231, 23100, 420, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Phanpy - Head Smash - Egg
  (231, 23100, 457, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Phanpy - Heavy Slam - Egg
  (231, 23100, 484, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Phanpy - Play Rough - Egg
  (231, 23100, 583, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Phanpy - High Horsepower - Egg
  (231, 23100, 667, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Phanpy - Snore - Tutor
  (231, 23100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Phanpy - Iron Tail - Tutor
  (231, 23100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Phanpy - Superpower - Tutor
  (231, 23100, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Phanpy - Knock Off - Tutor
  (231, 23100, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Phanpy - Endeavor - Tutor
  (231, 23100, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Phanpy - Hyper Voice - Tutor
  (231, 23100, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Phanpy - Last Resort - Tutor
  (231, 23100, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Phanpy - Seed Bomb - Tutor
  (231, 23100, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Phanpy - Earth Power - Tutor
  (231, 23100, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Phanpy - Gunk Shot - Tutor
  (231, 23100, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Phanpy - Stealth Rock - Tutor
  (231, 23100, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),

  -- Donphan - Horn Attack - Level 1
  (232, 23200, 30, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Donphan - Fury Attack - Level 1
  (232, 23200, 31, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Donphan - Growl - Level 1
  (232, 23200, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Donphan - Defense Curl - Level 1
  (232, 23200, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Donphan - Thunder Fang - Level 1
  (232, 23200, 422, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Donphan - Fire Fang - Level 1
  (232, 23200, 424, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Donphan - Bulldoze - Level 1
  (232, 23200, 523, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Donphan - Rapid Spin - Level 6
  (232, 23200, 229, 16, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Donphan - Rollout - Level 10
  (232, 23200, 205, 16, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Donphan - Assurance - Level 15
  (232, 23200, 372, 16, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Donphan - Knock Off - Level 19
  (232, 23200, 282, 16, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Donphan - Slam - Level 24
  (232, 23200, 21, 16, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Donphan - Magnitude - Level 30
  (232, 23200, 222, 16, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Donphan - Scary Face - Level 37
  (232, 23200, 184, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Donphan - Earthquake - Level 43
  (232, 23200, 89, 16, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Donphan - Giga Impact - Level 50
  (232, 23200, 416, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Donphan - Roar - TM05
  (232, 23200, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 17),
  -- Donphan - Toxic - TM06
  (232, 23200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Donphan - Hidden Power - TM10
  (232, 23200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Donphan - Sunny Day - TM11
  (232, 23200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Donphan - Hyper Beam - TM15
  (232, 23200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Donphan - Protect - TM17
  (232, 23200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Donphan - Frustration - TM21
  (232, 23200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Donphan - Earthquake - TM26
  (232, 23200, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 24),
  -- Donphan - Return - TM27
  (232, 23200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Donphan - Double Team - TM32
  (232, 23200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Donphan - Sandstorm - TM37
  (232, 23200, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 27),
  -- Donphan - Rock Tomb - TM39
  (232, 23200, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 28),
  -- Donphan - Facade - TM42
  (232, 23200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Donphan - Rest - TM44
  (232, 23200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Donphan - Attract - TM45
  (232, 23200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Donphan - Round - TM48
  (232, 23200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Donphan - Echoed Voice - TM49
  (232, 23200, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 33),
  -- Donphan - Brutal Swing - TM59
  (232, 23200, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 34),
  -- Donphan - Giga Impact - TM68
  (232, 23200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 35),
  -- Donphan - Rock Polish - TM69
  (232, 23200, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 36),
  -- Donphan - Stone Edge - TM71
  (232, 23200, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 37),
  -- Donphan - Gyro Ball - TM74
  (232, 23200, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 38),
  -- Donphan - Bulldoze - TM78
  (232, 23200, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 39),
  -- Donphan - Rock Slide - TM80
  (232, 23200, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 40),
  -- Donphan - Poison Jab - TM84
  (232, 23200, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 41),
  -- Donphan - Swagger - TM87
  (232, 23200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 42),
  -- Donphan - Sleep Talk - TM88
  (232, 23200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 43),
  -- Donphan - Substitute - TM90
  (232, 23200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Donphan - Confide - TM100
  (232, 23200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 45),
  -- Donphan - Snore - Tutor
  (232, 23200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Donphan - Iron Tail - Tutor
  (232, 23200, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Donphan - Superpower - Tutor
  (232, 23200, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Donphan - Knock Off - Tutor
  (232, 23200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Donphan - Endeavor - Tutor
  (232, 23200, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Donphan - Hyper Voice - Tutor
  (232, 23200, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Donphan - Iron Defense - Tutor
  (232, 23200, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Donphan - Block - Tutor
  (232, 23200, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Donphan - Bounce - Tutor
  (232, 23200, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Donphan - Last Resort - Tutor
  (232, 23200, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Donphan - Seed Bomb - Tutor
  (232, 23200, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Donphan - Earth Power - Tutor
  (232, 23200, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Donphan - Gunk Shot - Tutor
  (232, 23200, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Donphan - Stealth Rock - Tutor
  (232, 23200, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Donphan - Stomping Tantrum - Tutor
  (232, 23200, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Donphan - Fury Attack - Evolution
  (232, 23200, 31, 16, NULL, 7, NULL, NULL, NULL, NULL, 61),

  -- Porygon2 - Tackle - Level 1
  (233, 23300, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon2 - Defense Curl - Level 1
  (233, 23300, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon2 - Conversion - Level 1
  (233, 23300, 160, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon2 - Conversion 2 - Level 1
  (233, 23300, 176, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Porygon2 - Zap Cannon - Level 1
  (233, 23300, 192, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Porygon2 - Magic Coat - Level 1
  (233, 23300, 277, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Porygon2 - Psybeam - Level 7
  (233, 23300, 60, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Porygon2 - Agility - Level 12
  (233, 23300, 97, 16, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Porygon2 - Recover - Level 18
  (233, 23300, 105, 16, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Porygon2 - Magnet Rise - Level 23
  (233, 23300, 393, 16, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Porygon2 - Signal Beam - Level 29
  (233, 23300, 324, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Porygon2 - Recycle - Level 34
  (233, 23300, 278, 16, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Porygon2 - Discharge - Level 40
  (233, 23300, 435, 16, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Porygon2 - Lock-On - Level 45
  (233, 23300, 199, 16, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Porygon2 - Tri Attack - Level 50
  (233, 23300, 161, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Porygon2 - Magic Coat - Level 56
  (233, 23300, 277, 16, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Porygon2 - Zap Cannon - Level 62
  (233, 23300, 192, 16, NULL, 1, 62, NULL, NULL, NULL, 17),
  -- Porygon2 - Hyper Beam - Level 67
  (233, 23300, 63, 16, NULL, 1, 67, NULL, NULL, NULL, 18),
  -- Porygon2 - Psyshock - TM03
  (233, 23300, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 19),
  -- Porygon2 - Toxic - TM06
  (233, 23300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Porygon2 - Hidden Power - TM10
  (233, 23300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Porygon2 - Sunny Day - TM11
  (233, 23300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Porygon2 - Ice Beam - TM13
  (233, 23300, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 23),
  -- Porygon2 - Blizzard - TM14
  (233, 23300, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 24),
  -- Porygon2 - Hyper Beam - TM15
  (233, 23300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Porygon2 - Protect - TM17
  (233, 23300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Porygon2 - Rain Dance - TM18
  (233, 23300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Porygon2 - Frustration - TM21
  (233, 23300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Porygon2 - Solar Beam - TM22
  (233, 23300, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 29),
  -- Porygon2 - Thunderbolt - TM24
  (233, 23300, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 30),
  -- Porygon2 - Thunder - TM25
  (233, 23300, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 31),
  -- Porygon2 - Return - TM27
  (233, 23300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Porygon2 - Psychic - TM29
  (233, 23300, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 33),
  -- Porygon2 - Shadow Ball - TM30
  (233, 23300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 34),
  -- Porygon2 - Double Team - TM32
  (233, 23300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Porygon2 - Aerial Ace - TM40
  (233, 23300, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 36),
  -- Porygon2 - Facade - TM42
  (233, 23300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Porygon2 - Rest - TM44
  (233, 23300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Porygon2 - Thief - TM46
  (233, 23300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 39),
  -- Porygon2 - Round - TM48
  (233, 23300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Porygon2 - Charge Beam - TM57
  (233, 23300, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 41),
  -- Porygon2 - Giga Impact - TM68
  (233, 23300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 42),
  -- Porygon2 - Thunder Wave - TM73
  (233, 23300, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 43),
  -- Porygon2 - Psych Up - TM77
  (233, 23300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 44),
  -- Porygon2 - Dream Eater - TM85
  (233, 23300, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 45),
  -- Porygon2 - Swagger - TM87
  (233, 23300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Porygon2 - Sleep Talk - TM88
  (233, 23300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Porygon2 - Substitute - TM90
  (233, 23300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Porygon2 - Trick Room - TM92
  (233, 23300, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 49),
  -- Porygon2 - Confide - TM100
  (233, 23300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Porygon2 - Snore - Tutor
  (233, 23300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Porygon2 - Icy Wind - Tutor
  (233, 23300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Porygon2 - Pain Split - Tutor
  (233, 23300, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Porygon2 - Iron Tail - Tutor
  (233, 23300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Porygon2 - Trick - Tutor
  (233, 23300, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Porygon2 - Magic Coat - Tutor
  (233, 23300, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Porygon2 - Recycle - Tutor
  (233, 23300, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Porygon2 - Signal Beam - Tutor
  (233, 23300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Porygon2 - Shock Wave - Tutor
  (233, 23300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Porygon2 - Gravity - Tutor
  (233, 23300, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Porygon2 - Last Resort - Tutor
  (233, 23300, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Porygon2 - Magnet Rise - Tutor
  (233, 23300, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Porygon2 - Zen Headbutt - Tutor
  (233, 23300, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Porygon2 - Wonder Room - Tutor
  (233, 23300, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Porygon2 - Telekinesis - Tutor
  (233, 23300, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Porygon2 - Foul Play - Tutor
  (233, 23300, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Porygon2 - Ally Switch - Tutor
  (233, 23300, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Porygon2 - Electroweb - Tutor
  (233, 23300, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),

  -- Stantler - Tackle - Level 1
  (234, 23400, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stantler - Me First - Level 1
  (234, 23400, 382, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stantler - Leer - Level 3
  (234, 23400, 43, 16, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Stantler - Astonish - Level 7
  (234, 23400, 310, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Stantler - Hypnosis - Level 10
  (234, 23400, 95, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Stantler - Stomp - Level 13
  (234, 23400, 23, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Stantler - Sand Attack - Level 16
  (234, 23400, 28, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Stantler - Take Down - Level 21
  (234, 23400, 36, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Stantler - Confuse Ray - Level 23
  (234, 23400, 109, 16, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Stantler - Calm Mind - Level 27
  (234, 23400, 347, 16, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Stantler - Role Play - Level 33
  (234, 23400, 272, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Stantler - Zen Headbutt - Level 38
  (234, 23400, 428, 16, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Stantler - Jump Kick - Level 43
  (234, 23400, 26, 16, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Stantler - Imprison - Level 49
  (234, 23400, 286, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Stantler - Captivate - Level 50
  (234, 23400, 445, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Stantler - Me First - Level 55
  (234, 23400, 382, 16, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Stantler - Work Up - TM01
  (234, 23400, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Stantler - Psyshock - TM03
  (234, 23400, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 18),
  -- Stantler - Calm Mind - TM04
  (234, 23400, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 19),
  -- Stantler - Roar - TM05
  (234, 23400, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 20),
  -- Stantler - Toxic - TM06
  (234, 23400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Stantler - Hidden Power - TM10
  (234, 23400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Stantler - Sunny Day - TM11
  (234, 23400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Stantler - Light Screen - TM16
  (234, 23400, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 24),
  -- Stantler - Protect - TM17
  (234, 23400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Stantler - Rain Dance - TM18
  (234, 23400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Stantler - Frustration - TM21
  (234, 23400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Stantler - Solar Beam - TM22
  (234, 23400, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 28),
  -- Stantler - Thunderbolt - TM24
  (234, 23400, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 29),
  -- Stantler - Thunder - TM25
  (234, 23400, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 30),
  -- Stantler - Earthquake - TM26
  (234, 23400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 31),
  -- Stantler - Return - TM27
  (234, 23400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Stantler - Psychic - TM29
  (234, 23400, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 33),
  -- Stantler - Shadow Ball - TM30
  (234, 23400, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 34),
  -- Stantler - Double Team - TM32
  (234, 23400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Stantler - Reflect - TM33
  (234, 23400, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 36),
  -- Stantler - Facade - TM42
  (234, 23400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Stantler - Rest - TM44
  (234, 23400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Stantler - Attract - TM45
  (234, 23400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Stantler - Thief - TM46
  (234, 23400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 40),
  -- Stantler - Round - TM48
  (234, 23400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Stantler - Energy Ball - TM53
  (234, 23400, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 42),
  -- Stantler - Charge Beam - TM57
  (234, 23400, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 43),
  -- Stantler - Giga Impact - TM68
  (234, 23400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 44),
  -- Stantler - Thunder Wave - TM73
  (234, 23400, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 45),
  -- Stantler - Psych Up - TM77
  (234, 23400, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 46),
  -- Stantler - Bulldoze - TM78
  (234, 23400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 47),
  -- Stantler - Dream Eater - TM85
  (234, 23400, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 48),
  -- Stantler - Swagger - TM87
  (234, 23400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Stantler - Sleep Talk - TM88
  (234, 23400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Stantler - Substitute - TM90
  (234, 23400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Stantler - Trick Room - TM92
  (234, 23400, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 52),
  -- Stantler - Wild Charge - TM93
  (234, 23400, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 53),
  -- Stantler - Confide - TM100
  (234, 23400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Stantler - Double Kick - Egg
  (234, 23400, 24, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Stantler - Thrash - Egg
  (234, 23400, 37, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Stantler - Bite - Egg
  (234, 23400, 44, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Stantler - Disable - Egg
  (234, 23400, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Stantler - Rage - Egg
  (234, 23400, 99, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Stantler - Spite - Egg
  (234, 23400, 180, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Stantler - Megahorn - Egg
  (234, 23400, 224, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Stantler - Mud Sport - Egg
  (234, 23400, 300, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Stantler - Extrasensory - Egg
  (234, 23400, 326, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Stantler - Me First - Egg
  (234, 23400, 382, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Stantler - Zen Headbutt - Egg
  (234, 23400, 428, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Stantler - Snore - Tutor
  (234, 23400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Stantler - Spite - Tutor
  (234, 23400, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Stantler - Iron Tail - Tutor
  (234, 23400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Stantler - Uproar - Tutor
  (234, 23400, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Stantler - Role Play - Tutor
  (234, 23400, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Stantler - Skill Swap - Tutor
  (234, 23400, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Stantler - Signal Beam - Tutor
  (234, 23400, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Stantler - Bounce - Tutor
  (234, 23400, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Stantler - Shock Wave - Tutor
  (234, 23400, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Stantler - Gravity - Tutor
  (234, 23400, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Stantler - Last Resort - Tutor
  (234, 23400, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Stantler - Zen Headbutt - Tutor
  (234, 23400, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Stantler - Magic Room - Tutor
  (234, 23400, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Stantler - Throat Chop - Tutor
  (234, 23400, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),

  -- Smeargle - Sketch - Level 1
  (235, 23500, 166, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Smeargle - Sketch - Level 11
  (235, 23500, 166, 16, NULL, 1, 11, NULL, NULL, NULL, 2),
  -- Smeargle - Sketch - Level 21
  (235, 23500, 166, 16, NULL, 1, 21, NULL, NULL, NULL, 3),
  -- Smeargle - Sketch - Level 31
  (235, 23500, 166, 16, NULL, 1, 31, NULL, NULL, NULL, 4),
  -- Smeargle - Sketch - Level 41
  (235, 23500, 166, 16, NULL, 1, 41, NULL, NULL, NULL, 5),
  -- Smeargle - Sketch - Level 51
  (235, 23500, 166, 16, NULL, 1, 51, NULL, NULL, NULL, 6),
  -- Smeargle - Sketch - Level 61
  (235, 23500, 166, 16, NULL, 1, 61, NULL, NULL, NULL, 7),
  -- Smeargle - Sketch - Level 71
  (235, 23500, 166, 16, NULL, 1, 71, NULL, NULL, NULL, 8),
  -- Smeargle - Sketch - Level 81
  (235, 23500, 166, 16, NULL, 1, 81, NULL, NULL, NULL, 9),
  -- Smeargle - Sketch - Level 91
  (235, 23500, 166, 16, NULL, 1, 91, NULL, NULL, NULL, 10),

  -- Tyrogue - Tackle - Level 1
  (236, 23600, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyrogue - Foresight - Level 1
  (236, 23600, 193, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tyrogue - Fake Out - Level 1
  (236, 23600, 252, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tyrogue - Helping Hand - Level 1
  (236, 23600, 270, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tyrogue - Work Up - TM01
  (236, 23600, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 5),
  -- Tyrogue - Toxic - TM06
  (236, 23600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 6),
  -- Tyrogue - Bulk Up - TM08
  (236, 23600, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 7),
  -- Tyrogue - Hidden Power - TM10
  (236, 23600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 8),
  -- Tyrogue - Sunny Day - TM11
  (236, 23600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 9),
  -- Tyrogue - Protect - TM17
  (236, 23600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 10),
  -- Tyrogue - Rain Dance - TM18
  (236, 23600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 11),
  -- Tyrogue - Frustration - TM21
  (236, 23600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 12),
  -- Tyrogue - Earthquake - TM26
  (236, 23600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 13),
  -- Tyrogue - Return - TM27
  (236, 23600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 14),
  -- Tyrogue - Brick Break - TM31
  (236, 23600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 15),
  -- Tyrogue - Double Team - TM32
  (236, 23600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 16),
  -- Tyrogue - Facade - TM42
  (236, 23600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 17),
  -- Tyrogue - Rest - TM44
  (236, 23600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 18),
  -- Tyrogue - Attract - TM45
  (236, 23600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 19),
  -- Tyrogue - Thief - TM46
  (236, 23600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 20),
  -- Tyrogue - Low Sweep - TM47
  (236, 23600, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 21),
  -- Tyrogue - Round - TM48
  (236, 23600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 22),
  -- Tyrogue - Bulldoze - TM78
  (236, 23600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 23),
  -- Tyrogue - Rock Slide - TM80
  (236, 23600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 24),
  -- Tyrogue - Swagger - TM87
  (236, 23600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 25),
  -- Tyrogue - Sleep Talk - TM88
  (236, 23600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 26),
  -- Tyrogue - Substitute - TM90
  (236, 23600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 27),
  -- Tyrogue - Confide - TM100
  (236, 23600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 28),
  -- Tyrogue - Counter - Egg
  (236, 23600, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Tyrogue - High Jump Kick - Egg
  (236, 23600, 136, 16, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Tyrogue - Mind Reader - Egg
  (236, 23600, 170, 16, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Tyrogue - Mach Punch - Egg
  (236, 23600, 183, 16, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Tyrogue - Endure - Egg
  (236, 23600, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Tyrogue - Pursuit - Egg
  (236, 23600, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Tyrogue - Rapid Spin - Egg
  (236, 23600, 229, 16, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Tyrogue - Helping Hand - Egg
  (236, 23600, 270, 16, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Tyrogue - Feint - Egg
  (236, 23600, 364, 16, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Tyrogue - Vacuum Wave - Egg
  (236, 23600, 410, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Tyrogue - Bullet Punch - Egg
  (236, 23600, 418, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Tyrogue - Low Kick - Tutor
  (236, 23600, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Tyrogue - Snore - Tutor
  (236, 23600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Tyrogue - Uproar - Tutor
  (236, 23600, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Tyrogue - Helping Hand - Tutor
  (236, 23600, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Tyrogue - Role Play - Tutor
  (236, 23600, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Tyrogue - Covet - Tutor
  (236, 23600, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Tyrogue - Laser Focus - Tutor
  (236, 23600, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),

  -- Hitmontop - Rolling Kick - Level 1
  (237, 23700, 27, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmontop - Quick Attack - Level 1
  (237, 23700, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hitmontop - Focus Energy - Level 1
  (237, 23700, 116, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hitmontop - Detect - Level 1
  (237, 23700, 197, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hitmontop - Pursuit - Level 1
  (237, 23700, 228, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hitmontop - Revenge - Level 1
  (237, 23700, 279, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Hitmontop - Endeavor - Level 1
  (237, 23700, 283, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Hitmontop - Close Combat - Level 1
  (237, 23700, 370, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Hitmontop - Focus Energy - Level 6
  (237, 23700, 116, 16, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Hitmontop - Pursuit - Level 10
  (237, 23700, 228, 16, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Hitmontop - Quick Attack - Level 15
  (237, 23700, 98, 16, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Hitmontop - Rapid Spin - Level 19
  (237, 23700, 229, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Hitmontop - Feint - Level 24
  (237, 23700, 364, 16, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Hitmontop - Counter - Level 28
  (237, 23700, 68, 16, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Hitmontop - Triple Kick - Level 33
  (237, 23700, 167, 16, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Hitmontop - Agility - Level 37
  (237, 23700, 97, 16, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Hitmontop - Gyro Ball - Level 42
  (237, 23700, 360, 16, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Hitmontop - Wide Guard - Level 46
  (237, 23700, 469, 16, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Hitmontop - Quick Guard - Level 46
  (237, 23700, 501, 16, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Hitmontop - Detect - Level 50
  (237, 23700, 197, 16, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Hitmontop - Close Combat - Level 55
  (237, 23700, 370, 16, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Hitmontop - Endeavor - Level 60
  (237, 23700, 283, 16, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Hitmontop - Work Up - TM01
  (237, 23700, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 23),
  -- Hitmontop - Toxic - TM06
  (237, 23700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 24),
  -- Hitmontop - Bulk Up - TM08
  (237, 23700, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 25),
  -- Hitmontop - Hidden Power - TM10
  (237, 23700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 26),
  -- Hitmontop - Sunny Day - TM11
  (237, 23700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 27),
  -- Hitmontop - Protect - TM17
  (237, 23700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Hitmontop - Rain Dance - TM18
  (237, 23700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 29),
  -- Hitmontop - Frustration - TM21
  (237, 23700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 30),
  -- Hitmontop - Earthquake - TM26
  (237, 23700, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 31),
  -- Hitmontop - Return - TM27
  (237, 23700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Hitmontop - Brick Break - TM31
  (237, 23700, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 33),
  -- Hitmontop - Double Team - TM32
  (237, 23700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Hitmontop - Sandstorm - TM37
  (237, 23700, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 35),
  -- Hitmontop - Aerial Ace - TM40
  (237, 23700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 36),
  -- Hitmontop - Facade - TM42
  (237, 23700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Hitmontop - Rest - TM44
  (237, 23700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Hitmontop - Attract - TM45
  (237, 23700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Hitmontop - Thief - TM46
  (237, 23700, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 40),
  -- Hitmontop - Low Sweep - TM47
  (237, 23700, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 41),
  -- Hitmontop - Round - TM48
  (237, 23700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Hitmontop - Stone Edge - TM71
  (237, 23700, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 43),
  -- Hitmontop - Gyro Ball - TM74
  (237, 23700, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 44),
  -- Hitmontop - Bulldoze - TM78
  (237, 23700, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 45),
  -- Hitmontop - Rock Slide - TM80
  (237, 23700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 46),
  -- Hitmontop - Swagger - TM87
  (237, 23700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 47),
  -- Hitmontop - Sleep Talk - TM88
  (237, 23700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 48),
  -- Hitmontop - Substitute - TM90
  (237, 23700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Hitmontop - Confide - TM100
  (237, 23700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Hitmontop - Low Kick - Tutor
  (237, 23700, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Hitmontop - Snore - Tutor
  (237, 23700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Hitmontop - Helping Hand - Tutor
  (237, 23700, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Hitmontop - Role Play - Tutor
  (237, 23700, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Hitmontop - Endeavor - Tutor
  (237, 23700, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Hitmontop - Covet - Tutor
  (237, 23700, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Hitmontop - Laser Focus - Tutor
  (237, 23700, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Hitmontop - Rolling Kick - Evolution
  (237, 23700, 27, 16, NULL, 7, NULL, NULL, NULL, NULL, 58),

  -- Smoochum - Pound - Level 1
  (238, 23800, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Smoochum - Lick - Level 5
  (238, 23800, 122, 16, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Smoochum - Sweet Kiss - Level 8
  (238, 23800, 186, 16, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Smoochum - Powder Snow - Level 11
  (238, 23800, 181, 16, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Smoochum - Confusion - Level 15
  (238, 23800, 93, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Smoochum - Sing - Level 18
  (238, 23800, 47, 16, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Smoochum - Heart Stamp - Level 21
  (238, 23800, 531, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Smoochum - Mean Look - Level 25
  (238, 23800, 212, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Smoochum - Fake Tears - Level 28
  (238, 23800, 313, 16, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Smoochum - Lucky Chant - Level 31
  (238, 23800, 381, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Smoochum - Avalanche - Level 35
  (238, 23800, 419, 16, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Smoochum - Psychic - Level 38
  (238, 23800, 94, 16, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Smoochum - Copycat - Level 41
  (238, 23800, 383, 16, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Smoochum - Perish Song - Level 45
  (238, 23800, 195, 16, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Smoochum - Blizzard - Level 48
  (238, 23800, 59, 16, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Smoochum - Psyshock - TM03
  (238, 23800, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 16),
  -- Smoochum - Calm Mind - TM04
  (238, 23800, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 17),
  -- Smoochum - Toxic - TM06
  (238, 23800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Smoochum - Hail - TM07
  (238, 23800, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 19),
  -- Smoochum - Hidden Power - TM10
  (238, 23800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Smoochum - Ice Beam - TM13
  (238, 23800, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Smoochum - Blizzard - TM14
  (238, 23800, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 22),
  -- Smoochum - Light Screen - TM16
  (238, 23800, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 23),
  -- Smoochum - Protect - TM17
  (238, 23800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Smoochum - Rain Dance - TM18
  (238, 23800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Smoochum - Frustration - TM21
  (238, 23800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Smoochum - Return - TM27
  (238, 23800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Smoochum - Psychic - TM29
  (238, 23800, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 28),
  -- Smoochum - Shadow Ball - TM30
  (238, 23800, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 29),
  -- Smoochum - Double Team - TM32
  (238, 23800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Smoochum - Reflect - TM33
  (238, 23800, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 31),
  -- Smoochum - Facade - TM42
  (238, 23800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Smoochum - Rest - TM44
  (238, 23800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Smoochum - Attract - TM45
  (238, 23800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Smoochum - Thief - TM46
  (238, 23800, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 35),
  -- Smoochum - Round - TM48
  (238, 23800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Smoochum - Echoed Voice - TM49
  (238, 23800, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 37),
  -- Smoochum - Fling - TM56
  (238, 23800, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 38),
  -- Smoochum - Payback - TM66
  (238, 23800, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 39),
  -- Smoochum - Aurora Veil - TM70
  (238, 23800, 694, 16, NULL, 2, NULL, NULL, 16002070, NULL, 40),
  -- Smoochum - Psych Up - TM77
  (238, 23800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 41),
  -- Smoochum - Frost Breath - TM79
  (238, 23800, 524, 16, NULL, 2, NULL, NULL, 16002079, NULL, 42),
  -- Smoochum - Dream Eater - TM85
  (238, 23800, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 43),
  -- Smoochum - Grass Knot - TM86
  (238, 23800, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 44),
  -- Smoochum - Swagger - TM87
  (238, 23800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Smoochum - Sleep Talk - TM88
  (238, 23800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Smoochum - Substitute - TM90
  (238, 23800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Smoochum - Trick Room - TM92
  (238, 23800, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 48),
  -- Smoochum - Confide - TM100
  (238, 23800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Smoochum - Ice Punch - Egg
  (238, 23800, 8, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Smoochum - Meditate - Egg
  (238, 23800, 96, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Smoochum - Fake Out - Egg
  (238, 23800, 252, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Smoochum - Wish - Egg
  (238, 23800, 273, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Smoochum - Miracle Eye - Egg
  (238, 23800, 357, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Smoochum - Wake-Up Slap - Egg
  (238, 23800, 358, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Smoochum - Nasty Plot - Egg
  (238, 23800, 417, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Smoochum - Captivate - Egg
  (238, 23800, 445, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Smoochum - Ice Punch - Tutor
  (238, 23800, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Smoochum - Snore - Tutor
  (238, 23800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Smoochum - Icy Wind - Tutor
  (238, 23800, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Smoochum - Heal Bell - Tutor
  (238, 23800, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Smoochum - Uproar - Tutor
  (238, 23800, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Smoochum - Helping Hand - Tutor
  (238, 23800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Smoochum - Trick - Tutor
  (238, 23800, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Smoochum - Role Play - Tutor
  (238, 23800, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Smoochum - Magic Coat - Tutor
  (238, 23800, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Smoochum - Recycle - Tutor
  (238, 23800, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Smoochum - Skill Swap - Tutor
  (238, 23800, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Smoochum - Signal Beam - Tutor
  (238, 23800, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Smoochum - Covet - Tutor
  (238, 23800, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Smoochum - Water Pulse - Tutor
  (238, 23800, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Smoochum - Zen Headbutt - Tutor
  (238, 23800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Smoochum - Wonder Room - Tutor
  (238, 23800, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Smoochum - Magic Room - Tutor
  (238, 23800, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),

  -- Elekid - Leer - Level 1
  (239, 23900, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Elekid - Quick Attack - Level 1
  (239, 23900, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Elekid - Thunder Shock - Level 5
  (239, 23900, 84, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Elekid - Low Kick - Level 8
  (239, 23900, 67, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Elekid - Swift - Level 12
  (239, 23900, 129, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Elekid - Shock Wave - Level 15
  (239, 23900, 351, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Elekid - Thunder Wave - Level 19
  (239, 23900, 86, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Elekid - Electro Ball - Level 22
  (239, 23900, 486, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Elekid - Light Screen - Level 26
  (239, 23900, 113, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Elekid - Thunder Punch - Level 29
  (239, 23900, 9, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Elekid - Discharge - Level 33
  (239, 23900, 435, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Elekid - Screech - Level 36
  (239, 23900, 103, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Elekid - Thunderbolt - Level 40
  (239, 23900, 85, 16, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Elekid - Thunder - Level 43
  (239, 23900, 87, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Elekid - Toxic - TM06
  (239, 23900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Elekid - Hidden Power - TM10
  (239, 23900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Elekid - Light Screen - TM16
  (239, 23900, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 17),
  -- Elekid - Protect - TM17
  (239, 23900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 18),
  -- Elekid - Rain Dance - TM18
  (239, 23900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 19),
  -- Elekid - Frustration - TM21
  (239, 23900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Elekid - Thunderbolt - TM24
  (239, 23900, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 21),
  -- Elekid - Thunder - TM25
  (239, 23900, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 22),
  -- Elekid - Return - TM27
  (239, 23900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 23),
  -- Elekid - Psychic - TM29
  (239, 23900, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 24),
  -- Elekid - Brick Break - TM31
  (239, 23900, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 25),
  -- Elekid - Double Team - TM32
  (239, 23900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Elekid - Facade - TM42
  (239, 23900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Elekid - Rest - TM44
  (239, 23900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Elekid - Attract - TM45
  (239, 23900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Elekid - Thief - TM46
  (239, 23900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 30),
  -- Elekid - Round - TM48
  (239, 23900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Elekid - Fling - TM56
  (239, 23900, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 32),
  -- Elekid - Charge Beam - TM57
  (239, 23900, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 33),
  -- Elekid - Volt Switch - TM72
  (239, 23900, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 34),
  -- Elekid - Thunder Wave - TM73
  (239, 23900, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 35),
  -- Elekid - Swagger - TM87
  (239, 23900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 36),
  -- Elekid - Sleep Talk - TM88
  (239, 23900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 37),
  -- Elekid - Substitute - TM90
  (239, 23900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Elekid - Wild Charge - TM93
  (239, 23900, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 39),
  -- Elekid - Confide - TM100
  (239, 23900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Elekid - Karate Chop - Egg
  (239, 23900, 2, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Elekid - Fire Punch - Egg
  (239, 23900, 7, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Elekid - Ice Punch - Egg
  (239, 23900, 8, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Elekid - Rolling Kick - Egg
  (239, 23900, 27, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Elekid - Meditate - Egg
  (239, 23900, 96, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Elekid - Barrier - Egg
  (239, 23900, 112, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Elekid - Dynamic Punch - Egg
  (239, 23900, 223, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Elekid - Cross Chop - Egg
  (239, 23900, 238, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Elekid - Focus Punch - Egg
  (239, 23900, 264, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Elekid - Hammer Arm - Egg
  (239, 23900, 359, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Elekid - Feint - Egg
  (239, 23900, 364, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Elekid - Fire Punch - Tutor
  (239, 23900, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Elekid - Ice Punch - Tutor
  (239, 23900, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Elekid - Thunder Punch - Tutor
  (239, 23900, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Elekid - Low Kick - Tutor
  (239, 23900, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Elekid - Snore - Tutor
  (239, 23900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Elekid - Uproar - Tutor
  (239, 23900, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Elekid - Focus Punch - Tutor
  (239, 23900, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Elekid - Helping Hand - Tutor
  (239, 23900, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Elekid - Signal Beam - Tutor
  (239, 23900, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Elekid - Covet - Tutor
  (239, 23900, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Elekid - Shock Wave - Tutor
  (239, 23900, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Elekid - Magnet Rise - Tutor
  (239, 23900, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Elekid - Electroweb - Tutor
  (239, 23900, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Elekid - Dual Chop - Tutor
  (239, 23900, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),

  -- Magby - Leer - Level 1
  (240, 24000, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magby - Smog - Level 1
  (240, 24000, 123, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magby - Ember - Level 5
  (240, 24000, 52, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Magby - Smokescreen - Level 8
  (240, 24000, 108, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Magby - Feint Attack - Level 12
  (240, 24000, 185, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Magby - Fire Spin - Level 15
  (240, 24000, 83, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Magby - Clear Smog - Level 19
  (240, 24000, 499, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Magby - Flame Burst - Level 22
  (240, 24000, 481, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Magby - Confuse Ray - Level 26
  (240, 24000, 109, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Magby - Fire Punch - Level 29
  (240, 24000, 7, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Magby - Lava Plume - Level 33
  (240, 24000, 436, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Magby - Sunny Day - Level 36
  (240, 24000, 241, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Magby - Flamethrower - Level 40
  (240, 24000, 53, 16, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Magby - Fire Blast - Level 43
  (240, 24000, 126, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Magby - Toxic - TM06
  (240, 24000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Magby - Hidden Power - TM10
  (240, 24000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Magby - Sunny Day - TM11
  (240, 24000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 17),
  -- Magby - Protect - TM17
  (240, 24000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 18),
  -- Magby - Frustration - TM21
  (240, 24000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 19),
  -- Magby - Return - TM27
  (240, 24000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 20),
  -- Magby - Psychic - TM29
  (240, 24000, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 21),
  -- Magby - Brick Break - TM31
  (240, 24000, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 22),
  -- Magby - Double Team - TM32
  (240, 24000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 23),
  -- Magby - Flamethrower - TM35
  (240, 24000, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 24),
  -- Magby - Fire Blast - TM38
  (240, 24000, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 25),
  -- Magby - Facade - TM42
  (240, 24000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 26),
  -- Magby - Flame Charge - TM43
  (240, 24000, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 27),
  -- Magby - Rest - TM44
  (240, 24000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Magby - Attract - TM45
  (240, 24000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Magby - Thief - TM46
  (240, 24000, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 30),
  -- Magby - Round - TM48
  (240, 24000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Magby - Overheat - TM50
  (240, 24000, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 32),
  -- Magby - Fling - TM56
  (240, 24000, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 33),
  -- Magby - Will-O-Wisp - TM61
  (240, 24000, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 34),
  -- Magby - Swagger - TM87
  (240, 24000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Magby - Sleep Talk - TM88
  (240, 24000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Magby - Substitute - TM90
  (240, 24000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 37),
  -- Magby - Confide - TM100
  (240, 24000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 38),
  -- Magby - Karate Chop - Egg
  (240, 24000, 2, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Magby - Mega Punch - Egg
  (240, 24000, 5, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Magby - Thunder Punch - Egg
  (240, 24000, 9, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Magby - Screech - Egg
  (240, 24000, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Magby - Barrier - Egg
  (240, 24000, 112, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Magby - Focus Energy - Egg
  (240, 24000, 116, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Magby - Mach Punch - Egg
  (240, 24000, 183, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Magby - Belly Drum - Egg
  (240, 24000, 187, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Magby - Dynamic Punch - Egg
  (240, 24000, 223, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Magby - Iron Tail - Egg
  (240, 24000, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Magby - Cross Chop - Egg
  (240, 24000, 238, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Magby - Power Swap - Egg
  (240, 24000, 384, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Magby - Flare Blitz - Egg
  (240, 24000, 394, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Magby - Belch - Egg
  (240, 24000, 562, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Magby - Fire Punch - Tutor
  (240, 24000, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Magby - Thunder Punch - Tutor
  (240, 24000, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Magby - Snore - Tutor
  (240, 24000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Magby - Iron Tail - Tutor
  (240, 24000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Magby - Uproar - Tutor
  (240, 24000, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Magby - Heat Wave - Tutor
  (240, 24000, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Magby - Focus Punch - Tutor
  (240, 24000, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Magby - Helping Hand - Tutor
  (240, 24000, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Magby - Covet - Tutor
  (240, 24000, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Magby - Dual Chop - Tutor
  (240, 24000, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),

  -- Miltank - Tackle - Level 1
  (241, 24100, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Miltank - Growl - Level 3
  (241, 24100, 45, 16, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Miltank - Defense Curl - Level 5
  (241, 24100, 111, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Miltank - Stomp - Level 8
  (241, 24100, 23, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Miltank - Milk Drink - Level 11
  (241, 24100, 208, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Miltank - Bide - Level 15
  (241, 24100, 117, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Miltank - Rollout - Level 19
  (241, 24100, 205, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Miltank - Body Slam - Level 24
  (241, 24100, 34, 16, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Miltank - Zen Headbutt - Level 29
  (241, 24100, 428, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Miltank - Captivate - Level 35
  (241, 24100, 445, 16, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Miltank - Gyro Ball - Level 41
  (241, 24100, 360, 16, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Miltank - Heal Bell - Level 48
  (241, 24100, 215, 16, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Miltank - Wake-Up Slap - Level 50
  (241, 24100, 358, 16, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Miltank - Work Up - TM01
  (241, 24100, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 14),
  -- Miltank - Toxic - TM06
  (241, 24100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Miltank - Hidden Power - TM10
  (241, 24100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Miltank - Sunny Day - TM11
  (241, 24100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 17),
  -- Miltank - Ice Beam - TM13
  (241, 24100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 18),
  -- Miltank - Blizzard - TM14
  (241, 24100, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 19),
  -- Miltank - Hyper Beam - TM15
  (241, 24100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 20),
  -- Miltank - Protect - TM17
  (241, 24100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Miltank - Rain Dance - TM18
  (241, 24100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Miltank - Frustration - TM21
  (241, 24100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Miltank - Solar Beam - TM22
  (241, 24100, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 24),
  -- Miltank - Thunderbolt - TM24
  (241, 24100, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 25),
  -- Miltank - Thunder - TM25
  (241, 24100, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 26),
  -- Miltank - Earthquake - TM26
  (241, 24100, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 27),
  -- Miltank - Return - TM27
  (241, 24100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Miltank - Shadow Ball - TM30
  (241, 24100, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 29),
  -- Miltank - Brick Break - TM31
  (241, 24100, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 30),
  -- Miltank - Double Team - TM32
  (241, 24100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Miltank - Sandstorm - TM37
  (241, 24100, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 32),
  -- Miltank - Rock Tomb - TM39
  (241, 24100, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 33),
  -- Miltank - Facade - TM42
  (241, 24100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Miltank - Rest - TM44
  (241, 24100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Miltank - Attract - TM45
  (241, 24100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Miltank - Round - TM48
  (241, 24100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Miltank - Echoed Voice - TM49
  (241, 24100, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 38),
  -- Miltank - Focus Blast - TM52
  (241, 24100, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 39),
  -- Miltank - Fling - TM56
  (241, 24100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 40),
  -- Miltank - Giga Impact - TM68
  (241, 24100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 41),
  -- Miltank - Thunder Wave - TM73
  (241, 24100, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 42),
  -- Miltank - Gyro Ball - TM74
  (241, 24100, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 43),
  -- Miltank - Psych Up - TM77
  (241, 24100, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 44),
  -- Miltank - Bulldoze - TM78
  (241, 24100, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 45),
  -- Miltank - Rock Slide - TM80
  (241, 24100, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 46),
  -- Miltank - Swagger - TM87
  (241, 24100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 47),
  -- Miltank - Sleep Talk - TM88
  (241, 24100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 48),
  -- Miltank - Substitute - TM90
  (241, 24100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Miltank - Surf - TM94
  (241, 24100, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 50),
  -- Miltank - Confide - TM100
  (241, 24100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Miltank - Double-Edge - Egg
  (241, 24100, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Miltank - Seismic Toss - Egg
  (241, 24100, 69, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Miltank - Dizzy Punch - Egg
  (241, 24100, 146, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Miltank - Curse - Egg
  (241, 24100, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Miltank - Reversal - Egg
  (241, 24100, 179, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Miltank - Endure - Egg
  (241, 24100, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Miltank - Sleep Talk - Egg
  (241, 24100, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Miltank - Present - Egg
  (241, 24100, 217, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Miltank - Helping Hand - Egg
  (241, 24100, 270, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Miltank - Hammer Arm - Egg
  (241, 24100, 359, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Miltank - Natural Gift - Egg
  (241, 24100, 363, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Miltank - Punishment - Egg
  (241, 24100, 386, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Miltank - Heart Stamp - Egg
  (241, 24100, 531, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Miltank - Belch - Egg
  (241, 24100, 562, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Miltank - Fire Punch - Tutor
  (241, 24100, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Miltank - Ice Punch - Tutor
  (241, 24100, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Miltank - Thunder Punch - Tutor
  (241, 24100, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Miltank - Snore - Tutor
  (241, 24100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Miltank - Icy Wind - Tutor
  (241, 24100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Miltank - Heal Bell - Tutor
  (241, 24100, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Miltank - Iron Tail - Tutor
  (241, 24100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Miltank - Focus Punch - Tutor
  (241, 24100, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Miltank - Helping Hand - Tutor
  (241, 24100, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Miltank - Block - Tutor
  (241, 24100, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Miltank - Shock Wave - Tutor
  (241, 24100, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Miltank - Water Pulse - Tutor
  (241, 24100, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Miltank - Zen Headbutt - Tutor
  (241, 24100, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Miltank - Iron Head - Tutor
  (241, 24100, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Miltank - Stealth Rock - Tutor
  (241, 24100, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Miltank - After You - Tutor
  (241, 24100, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Miltank - Stomping Tantrum - Tutor
  (241, 24100, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),

  -- Blissey - Pound - Level 1
  (242, 24200, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blissey - Double-Edge - Level 1
  (242, 24200, 38, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blissey - Growl - Level 1
  (242, 24200, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Blissey - Defense Curl - Level 1
  (242, 24200, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Blissey - Tail Whip - Level 5
  (242, 24200, 39, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Blissey - Refresh - Level 9
  (242, 24200, 287, 16, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Blissey - Double Slap - Level 12
  (242, 24200, 3, 16, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Blissey - Soft-Boiled - Level 16
  (242, 24200, 135, 16, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Blissey - Bestow - Level 20
  (242, 24200, 516, 16, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Blissey - Minimize - Level 23
  (242, 24200, 107, 16, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Blissey - Take Down - Level 27
  (242, 24200, 36, 16, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Blissey - Sing - Level 31
  (242, 24200, 47, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Blissey - Fling - Level 34
  (242, 24200, 374, 16, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Blissey - Heal Pulse - Level 39
  (242, 24200, 505, 16, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Blissey - Egg Bomb - Level 44
  (242, 24200, 121, 16, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Blissey - Light Screen - Level 50
  (242, 24200, 113, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Blissey - Healing Wish - Level 57
  (242, 24200, 361, 16, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Blissey - Double-Edge - Level 65
  (242, 24200, 38, 16, NULL, 1, 65, NULL, NULL, NULL, 18),
  -- Blissey - Work Up - TM01
  (242, 24200, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 19),
  -- Blissey - Calm Mind - TM04
  (242, 24200, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 20),
  -- Blissey - Toxic - TM06
  (242, 24200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Blissey - Hail - TM07
  (242, 24200, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 22),
  -- Blissey - Hidden Power - TM10
  (242, 24200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Blissey - Sunny Day - TM11
  (242, 24200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Blissey - Ice Beam - TM13
  (242, 24200, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 25),
  -- Blissey - Blizzard - TM14
  (242, 24200, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 26),
  -- Blissey - Hyper Beam - TM15
  (242, 24200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 27),
  -- Blissey - Light Screen - TM16
  (242, 24200, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 28),
  -- Blissey - Protect - TM17
  (242, 24200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Blissey - Rain Dance - TM18
  (242, 24200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 30),
  -- Blissey - Safeguard - TM20
  (242, 24200, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 31),
  -- Blissey - Frustration - TM21
  (242, 24200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Blissey - Solar Beam - TM22
  (242, 24200, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 33),
  -- Blissey - Thunderbolt - TM24
  (242, 24200, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 34),
  -- Blissey - Thunder - TM25
  (242, 24200, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 35),
  -- Blissey - Earthquake - TM26
  (242, 24200, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 36),
  -- Blissey - Return - TM27
  (242, 24200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 37),
  -- Blissey - Psychic - TM29
  (242, 24200, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 38),
  -- Blissey - Shadow Ball - TM30
  (242, 24200, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 39),
  -- Blissey - Brick Break - TM31
  (242, 24200, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 40),
  -- Blissey - Double Team - TM32
  (242, 24200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 41),
  -- Blissey - Flamethrower - TM35
  (242, 24200, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 42),
  -- Blissey - Sandstorm - TM37
  (242, 24200, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 43),
  -- Blissey - Fire Blast - TM38
  (242, 24200, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 44),
  -- Blissey - Rock Tomb - TM39
  (242, 24200, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 45),
  -- Blissey - Facade - TM42
  (242, 24200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 46),
  -- Blissey - Rest - TM44
  (242, 24200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 47),
  -- Blissey - Attract - TM45
  (242, 24200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 48),
  -- Blissey - Round - TM48
  (242, 24200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 49),
  -- Blissey - Echoed Voice - TM49
  (242, 24200, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 50),
  -- Blissey - Focus Blast - TM52
  (242, 24200, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 51),
  -- Blissey - Fling - TM56
  (242, 24200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 52),
  -- Blissey - Charge Beam - TM57
  (242, 24200, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 53),
  -- Blissey - Giga Impact - TM68
  (242, 24200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 54),
  -- Blissey - Thunder Wave - TM73
  (242, 24200, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 55),
  -- Blissey - Psych Up - TM77
  (242, 24200, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 56),
  -- Blissey - Bulldoze - TM78
  (242, 24200, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 57),
  -- Blissey - Rock Slide - TM80
  (242, 24200, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 58),
  -- Blissey - Dream Eater - TM85
  (242, 24200, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 59),
  -- Blissey - Grass Knot - TM86
  (242, 24200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 60),
  -- Blissey - Swagger - TM87
  (242, 24200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 61),
  -- Blissey - Sleep Talk - TM88
  (242, 24200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 62),
  -- Blissey - Substitute - TM90
  (242, 24200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 63),
  -- Blissey - Wild Charge - TM93
  (242, 24200, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 64),
  -- Blissey - Dazzling Gleam - TM99
  (242, 24200, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 65),
  -- Blissey - Confide - TM100
  (242, 24200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 66),
  -- Blissey - Fire Punch - Tutor
  (242, 24200, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Blissey - Ice Punch - Tutor
  (242, 24200, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Blissey - Thunder Punch - Tutor
  (242, 24200, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Blissey - Snore - Tutor
  (242, 24200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Blissey - Icy Wind - Tutor
  (242, 24200, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Blissey - Heal Bell - Tutor
  (242, 24200, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Blissey - Iron Tail - Tutor
  (242, 24200, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Blissey - Focus Punch - Tutor
  (242, 24200, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Blissey - Helping Hand - Tutor
  (242, 24200, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Blissey - Recycle - Tutor
  (242, 24200, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Blissey - Endeavor - Tutor
  (242, 24200, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Blissey - Skill Swap - Tutor
  (242, 24200, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Blissey - Snatch - Tutor
  (242, 24200, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Blissey - Hyper Voice - Tutor
  (242, 24200, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Blissey - Block - Tutor
  (242, 24200, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Blissey - Covet - Tutor
  (242, 24200, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Blissey - Shock Wave - Tutor
  (242, 24200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Blissey - Water Pulse - Tutor
  (242, 24200, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Blissey - Gravity - Tutor
  (242, 24200, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Blissey - Last Resort - Tutor
  (242, 24200, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Blissey - Drain Punch - Tutor
  (242, 24200, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),
  -- Blissey - Zen Headbutt - Tutor
  (242, 24200, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 88),
  -- Blissey - Stealth Rock - Tutor
  (242, 24200, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 89),
  -- Blissey - Telekinesis - Tutor
  (242, 24200, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 90),
  -- Blissey - Ally Switch - Tutor
  (242, 24200, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 91),
  -- Blissey - Laser Focus - Tutor
  (242, 24200, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 92),
  -- Blissey - Stomping Tantrum - Tutor
  (242, 24200, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 93),

  -- Raikou - Leer - Level 1
  (243, 24300, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raikou - Bite - Level 1
  (243, 24300, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raikou - Extrasensory - Level 1
  (243, 24300, 326, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raikou - Discharge - Level 1
  (243, 24300, 435, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raikou - Thunder Shock - Level 8
  (243, 24300, 84, 16, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Raikou - Roar - Level 15
  (243, 24300, 46, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Raikou - Quick Attack - Level 22
  (243, 24300, 98, 16, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Raikou - Spark - Level 29
  (243, 24300, 209, 16, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Raikou - Reflect - Level 36
  (243, 24300, 115, 16, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Raikou - Crunch - Level 43
  (243, 24300, 242, 16, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Raikou - Thunder Fang - Level 50
  (243, 24300, 422, 16, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Raikou - Discharge - Level 57
  (243, 24300, 435, 16, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Raikou - Extrasensory - Level 64
  (243, 24300, 326, 16, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Raikou - Rain Dance - Level 71
  (243, 24300, 240, 16, NULL, 1, 71, NULL, NULL, NULL, 14),
  -- Raikou - Calm Mind - Level 78
  (243, 24300, 347, 16, NULL, 1, 78, NULL, NULL, NULL, 15),
  -- Raikou - Thunder - Level 85
  (243, 24300, 87, 16, NULL, 1, 85, NULL, NULL, NULL, 16),
  -- Raikou - Calm Mind - TM04
  (243, 24300, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 17),
  -- Raikou - Roar - TM05
  (243, 24300, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 18),
  -- Raikou - Toxic - TM06
  (243, 24300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Raikou - Hidden Power - TM10
  (243, 24300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Raikou - Sunny Day - TM11
  (243, 24300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Raikou - Hyper Beam - TM15
  (243, 24300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 22),
  -- Raikou - Light Screen - TM16
  (243, 24300, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 23),
  -- Raikou - Protect - TM17
  (243, 24300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Raikou - Rain Dance - TM18
  (243, 24300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Raikou - Frustration - TM21
  (243, 24300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Raikou - Thunderbolt - TM24
  (243, 24300, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 27),
  -- Raikou - Thunder - TM25
  (243, 24300, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 28),
  -- Raikou - Return - TM27
  (243, 24300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Raikou - Shadow Ball - TM30
  (243, 24300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 30),
  -- Raikou - Double Team - TM32
  (243, 24300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Raikou - Reflect - TM33
  (243, 24300, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 32),
  -- Raikou - Sandstorm - TM37
  (243, 24300, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 33),
  -- Raikou - Facade - TM42
  (243, 24300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Raikou - Rest - TM44
  (243, 24300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Raikou - Round - TM48
  (243, 24300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Raikou - Charge Beam - TM57
  (243, 24300, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 37),
  -- Raikou - Quash - TM60
  (243, 24300, 511, 16, NULL, 2, NULL, NULL, 16002060, NULL, 38),
  -- Raikou - Giga Impact - TM68
  (243, 24300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 39),
  -- Raikou - Volt Switch - TM72
  (243, 24300, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 40),
  -- Raikou - Thunder Wave - TM73
  (243, 24300, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 41),
  -- Raikou - Psych Up - TM77
  (243, 24300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 42),
  -- Raikou - Bulldoze - TM78
  (243, 24300, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 43),
  -- Raikou - Swagger - TM87
  (243, 24300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Raikou - Sleep Talk - TM88
  (243, 24300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Raikou - Substitute - TM90
  (243, 24300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Raikou - Wild Charge - TM93
  (243, 24300, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 47),
  -- Raikou - Snarl - TM95
  (243, 24300, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 48),
  -- Raikou - Confide - TM100
  (243, 24300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Raikou - Snore - Tutor
  (243, 24300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Raikou - Iron Tail - Tutor
  (243, 24300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Raikou - Signal Beam - Tutor
  (243, 24300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Raikou - Shock Wave - Tutor
  (243, 24300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Raikou - Magnet Rise - Tutor
  (243, 24300, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Raikou - Iron Head - Tutor
  (243, 24300, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Raikou - Laser Focus - Tutor
  (243, 24300, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Raikou - Throat Chop - Tutor
  (243, 24300, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),

  -- Entei - Leer - Level 1
  (244, 24400, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Entei - Bite - Level 1
  (244, 24400, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Entei - Sacred Fire - Level 1
  (244, 24400, 221, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Entei - Eruption - Level 1
  (244, 24400, 284, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Entei - Extrasensory - Level 1
  (244, 24400, 326, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Entei - Lava Plume - Level 1
  (244, 24400, 436, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Entei - Ember - Level 8
  (244, 24400, 52, 16, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Entei - Roar - Level 15
  (244, 24400, 46, 16, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Entei - Fire Spin - Level 22
  (244, 24400, 83, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Entei - Stomp - Level 29
  (244, 24400, 23, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Entei - Flamethrower - Level 36
  (244, 24400, 53, 16, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Entei - Swagger - Level 43
  (244, 24400, 207, 16, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Entei - Fire Fang - Level 50
  (244, 24400, 424, 16, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Entei - Lava Plume - Level 57
  (244, 24400, 436, 16, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Entei - Extrasensory - Level 64
  (244, 24400, 326, 16, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Entei - Fire Blast - Level 71
  (244, 24400, 126, 16, NULL, 1, 71, NULL, NULL, NULL, 16),
  -- Entei - Calm Mind - Level 78
  (244, 24400, 347, 16, NULL, 1, 78, NULL, NULL, NULL, 17),
  -- Entei - Eruption - Level 85
  (244, 24400, 284, 16, NULL, 1, 85, NULL, NULL, NULL, 18),
  -- Entei - Calm Mind - TM04
  (244, 24400, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 19),
  -- Entei - Roar - TM05
  (244, 24400, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 20),
  -- Entei - Toxic - TM06
  (244, 24400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Entei - Hidden Power - TM10
  (244, 24400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Entei - Sunny Day - TM11
  (244, 24400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Entei - Hyper Beam - TM15
  (244, 24400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Entei - Protect - TM17
  (244, 24400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Entei - Rain Dance - TM18
  (244, 24400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Entei - Frustration - TM21
  (244, 24400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Entei - Solar Beam - TM22
  (244, 24400, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 28),
  -- Entei - Return - TM27
  (244, 24400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Entei - Shadow Ball - TM30
  (244, 24400, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 30),
  -- Entei - Double Team - TM32
  (244, 24400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Entei - Reflect - TM33
  (244, 24400, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 32),
  -- Entei - Flamethrower - TM35
  (244, 24400, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 33),
  -- Entei - Sandstorm - TM37
  (244, 24400, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 34),
  -- Entei - Fire Blast - TM38
  (244, 24400, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 35),
  -- Entei - Facade - TM42
  (244, 24400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Entei - Flame Charge - TM43
  (244, 24400, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 37),
  -- Entei - Rest - TM44
  (244, 24400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Entei - Round - TM48
  (244, 24400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Entei - Overheat - TM50
  (244, 24400, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 40),
  -- Entei - Quash - TM60
  (244, 24400, 511, 16, NULL, 2, NULL, NULL, 16002060, NULL, 41),
  -- Entei - Will-O-Wisp - TM61
  (244, 24400, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 42),
  -- Entei - Giga Impact - TM68
  (244, 24400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 43),
  -- Entei - Stone Edge - TM71
  (244, 24400, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 44),
  -- Entei - Psych Up - TM77
  (244, 24400, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 45),
  -- Entei - Bulldoze - TM78
  (244, 24400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 46),
  -- Entei - Swagger - TM87
  (244, 24400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 47),
  -- Entei - Sleep Talk - TM88
  (244, 24400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 48),
  -- Entei - Substitute - TM90
  (244, 24400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Entei - Snarl - TM95
  (244, 24400, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 50),
  -- Entei - Confide - TM100
  (244, 24400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Entei - Snore - Tutor
  (244, 24400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Entei - Iron Tail - Tutor
  (244, 24400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Entei - Heat Wave - Tutor
  (244, 24400, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Entei - Iron Head - Tutor
  (244, 24400, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Entei - Laser Focus - Tutor
  (244, 24400, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Entei - Stomping Tantrum - Tutor
  (244, 24400, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),

  -- Suicune - Leer - Level 1
  (245, 24500, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Suicune - Bite - Level 1
  (245, 24500, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Suicune - Bubble Beam - Level 1
  (245, 24500, 61, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Suicune - Rain Dance - Level 1
  (245, 24500, 240, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Suicune - Sheer Cold - Level 1
  (245, 24500, 329, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Suicune - Bubble Beam - Level 8
  (245, 24500, 61, 16, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Suicune - Rain Dance - Level 15
  (245, 24500, 240, 16, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Suicune - Gust - Level 22
  (245, 24500, 16, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Suicune - Aurora Beam - Level 29
  (245, 24500, 62, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Suicune - Mist - Level 36
  (245, 24500, 54, 16, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Suicune - Mirror Coat - Level 43
  (245, 24500, 243, 16, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Suicune - Ice Fang - Level 50
  (245, 24500, 423, 16, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Suicune - Tailwind - Level 57
  (245, 24500, 366, 16, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Suicune - Extrasensory - Level 64
  (245, 24500, 326, 16, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Suicune - Hydro Pump - Level 71
  (245, 24500, 56, 16, NULL, 1, 71, NULL, NULL, NULL, 15),
  -- Suicune - Calm Mind - Level 78
  (245, 24500, 347, 16, NULL, 1, 78, NULL, NULL, NULL, 16),
  -- Suicune - Blizzard - Level 85
  (245, 24500, 59, 16, NULL, 1, 85, NULL, NULL, NULL, 17),
  -- Suicune - Calm Mind - TM04
  (245, 24500, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 18),
  -- Suicune - Roar - TM05
  (245, 24500, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 19),
  -- Suicune - Toxic - TM06
  (245, 24500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Suicune - Hail - TM07
  (245, 24500, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 21),
  -- Suicune - Hidden Power - TM10
  (245, 24500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Suicune - Sunny Day - TM11
  (245, 24500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Suicune - Ice Beam - TM13
  (245, 24500, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 24),
  -- Suicune - Blizzard - TM14
  (245, 24500, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 25),
  -- Suicune - Hyper Beam - TM15
  (245, 24500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Suicune - Protect - TM17
  (245, 24500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Suicune - Rain Dance - TM18
  (245, 24500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Suicune - Frustration - TM21
  (245, 24500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Suicune - Return - TM27
  (245, 24500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Suicune - Shadow Ball - TM30
  (245, 24500, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 31),
  -- Suicune - Double Team - TM32
  (245, 24500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Suicune - Reflect - TM33
  (245, 24500, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 33),
  -- Suicune - Sandstorm - TM37
  (245, 24500, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 34),
  -- Suicune - Facade - TM42
  (245, 24500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Suicune - Rest - TM44
  (245, 24500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Suicune - Round - TM48
  (245, 24500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Suicune - Scald - TM55
  (245, 24500, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 38),
  -- Suicune - Quash - TM60
  (245, 24500, 511, 16, NULL, 2, NULL, NULL, 16002060, NULL, 39),
  -- Suicune - Giga Impact - TM68
  (245, 24500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Suicune - Psych Up - TM77
  (245, 24500, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 41),
  -- Suicune - Bulldoze - TM78
  (245, 24500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 42),
  -- Suicune - Swagger - TM87
  (245, 24500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Suicune - Sleep Talk - TM88
  (245, 24500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Suicune - Substitute - TM90
  (245, 24500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Suicune - Surf - TM94
  (245, 24500, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 46),
  -- Suicune - Snarl - TM95
  (245, 24500, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 47),
  -- Suicune - Waterfall - TM98
  (245, 24500, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 48),
  -- Suicune - Confide - TM100
  (245, 24500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Suicune - Snore - Tutor
  (245, 24500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Suicune - Icy Wind - Tutor
  (245, 24500, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Suicune - Iron Tail - Tutor
  (245, 24500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Suicune - Signal Beam - Tutor
  (245, 24500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Suicune - Water Pulse - Tutor
  (245, 24500, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Suicune - Tailwind - Tutor
  (245, 24500, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Suicune - Iron Head - Tutor
  (245, 24500, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Suicune - Laser Focus - Tutor
  (245, 24500, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),

  -- Larvitar - Leer - Level 1
  (246, 24600, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Larvitar - Bite - Level 1
  (246, 24600, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Larvitar - Sandstorm - Level 5
  (246, 24600, 201, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Larvitar - Screech - Level 10
  (246, 24600, 103, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Larvitar - Chip Away - Level 14
  (246, 24600, 498, 16, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Larvitar - Rock Slide - Level 19
  (246, 24600, 157, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Larvitar - Scary Face - Level 23
  (246, 24600, 184, 16, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Larvitar - Thrash - Level 28
  (246, 24600, 37, 16, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Larvitar - Dark Pulse - Level 32
  (246, 24600, 399, 16, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Larvitar - Payback - Level 37
  (246, 24600, 371, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Larvitar - Crunch - Level 41
  (246, 24600, 242, 16, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Larvitar - Earthquake - Level 46
  (246, 24600, 89, 16, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Larvitar - Stone Edge - Level 50
  (246, 24600, 444, 16, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Larvitar - Hyper Beam - Level 55
  (246, 24600, 63, 16, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Larvitar - Toxic - TM06
  (246, 24600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Larvitar - Hidden Power - TM10
  (246, 24600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Larvitar - Sunny Day - TM11
  (246, 24600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 17),
  -- Larvitar - Taunt - TM12
  (246, 24600, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 18),
  -- Larvitar - Hyper Beam - TM15
  (246, 24600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 19),
  -- Larvitar - Protect - TM17
  (246, 24600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Larvitar - Rain Dance - TM18
  (246, 24600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Larvitar - Frustration - TM21
  (246, 24600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Larvitar - Smack Down - TM23
  (246, 24600, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 23),
  -- Larvitar - Earthquake - TM26
  (246, 24600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 24),
  -- Larvitar - Return - TM27
  (246, 24600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Larvitar - Brick Break - TM31
  (246, 24600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 26),
  -- Larvitar - Double Team - TM32
  (246, 24600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Larvitar - Sandstorm - TM37
  (246, 24600, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 28),
  -- Larvitar - Rock Tomb - TM39
  (246, 24600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 29),
  -- Larvitar - Torment - TM41
  (246, 24600, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 30),
  -- Larvitar - Facade - TM42
  (246, 24600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Larvitar - Rest - TM44
  (246, 24600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Larvitar - Attract - TM45
  (246, 24600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Larvitar - Round - TM48
  (246, 24600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Larvitar - Payback - TM66
  (246, 24600, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 35),
  -- Larvitar - Rock Polish - TM69
  (246, 24600, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 36),
  -- Larvitar - Stone Edge - TM71
  (246, 24600, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 37),
  -- Larvitar - Bulldoze - TM78
  (246, 24600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 38),
  -- Larvitar - Rock Slide - TM80
  (246, 24600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 39),
  -- Larvitar - Swagger - TM87
  (246, 24600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Larvitar - Sleep Talk - TM88
  (246, 24600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Larvitar - Substitute - TM90
  (246, 24600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Larvitar - Snarl - TM95
  (246, 24600, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 43),
  -- Larvitar - Dark Pulse - TM97
  (246, 24600, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 44),
  -- Larvitar - Confide - TM100
  (246, 24600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 45),
  -- Larvitar - Stomp - Egg
  (246, 24600, 23, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Larvitar - Focus Energy - Egg
  (246, 24600, 116, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Larvitar - Curse - Egg
  (246, 24600, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Larvitar - Outrage - Egg
  (246, 24600, 200, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Larvitar - Pursuit - Egg
  (246, 24600, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Larvitar - Iron Tail - Egg
  (246, 24600, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Larvitar - Ancient Power - Egg
  (246, 24600, 246, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Larvitar - Iron Defense - Egg
  (246, 24600, 334, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Larvitar - Dragon Dance - Egg
  (246, 24600, 349, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Larvitar - Assurance - Egg
  (246, 24600, 372, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Larvitar - Iron Head - Egg
  (246, 24600, 442, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Larvitar - Stealth Rock - Egg
  (246, 24600, 446, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Larvitar - Snore - Tutor
  (246, 24600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Larvitar - Spite - Tutor
  (246, 24600, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Larvitar - Outrage - Tutor
  (246, 24600, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Larvitar - Iron Tail - Tutor
  (246, 24600, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Larvitar - Uproar - Tutor
  (246, 24600, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Larvitar - Superpower - Tutor
  (246, 24600, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Larvitar - Iron Defense - Tutor
  (246, 24600, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Larvitar - Earth Power - Tutor
  (246, 24600, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Larvitar - Iron Head - Tutor
  (246, 24600, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Larvitar - Stealth Rock - Tutor
  (246, 24600, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),

  -- Pupitar - Leer - Level 1
  (247, 24700, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pupitar - Bite - Level 1
  (247, 24700, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pupitar - Screech - Level 1
  (247, 24700, 103, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pupitar - Sandstorm - Level 1
  (247, 24700, 201, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pupitar - Sandstorm - Level 5
  (247, 24700, 201, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Pupitar - Screech - Level 10
  (247, 24700, 103, 16, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Pupitar - Chip Away - Level 14
  (247, 24700, 498, 16, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Pupitar - Rock Slide - Level 19
  (247, 24700, 157, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Pupitar - Scary Face - Level 23
  (247, 24700, 184, 16, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Pupitar - Thrash - Level 28
  (247, 24700, 37, 16, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Pupitar - Dark Pulse - Level 34
  (247, 24700, 399, 16, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Pupitar - Payback - Level 41
  (247, 24700, 371, 16, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Pupitar - Crunch - Level 47
  (247, 24700, 242, 16, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Pupitar - Earthquake - Level 54
  (247, 24700, 89, 16, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Pupitar - Stone Edge - Level 60
  (247, 24700, 444, 16, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Pupitar - Hyper Beam - Level 67
  (247, 24700, 63, 16, NULL, 1, 67, NULL, NULL, NULL, 16),
  -- Pupitar - Toxic - TM06
  (247, 24700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Pupitar - Hidden Power - TM10
  (247, 24700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Pupitar - Sunny Day - TM11
  (247, 24700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Pupitar - Taunt - TM12
  (247, 24700, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 20),
  -- Pupitar - Hyper Beam - TM15
  (247, 24700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Pupitar - Protect - TM17
  (247, 24700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Pupitar - Rain Dance - TM18
  (247, 24700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Pupitar - Frustration - TM21
  (247, 24700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Pupitar - Smack Down - TM23
  (247, 24700, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 25),
  -- Pupitar - Earthquake - TM26
  (247, 24700, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 26),
  -- Pupitar - Return - TM27
  (247, 24700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Pupitar - Brick Break - TM31
  (247, 24700, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 28),
  -- Pupitar - Double Team - TM32
  (247, 24700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Pupitar - Sandstorm - TM37
  (247, 24700, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 30),
  -- Pupitar - Rock Tomb - TM39
  (247, 24700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 31),
  -- Pupitar - Torment - TM41
  (247, 24700, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 32),
  -- Pupitar - Facade - TM42
  (247, 24700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Pupitar - Rest - TM44
  (247, 24700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Pupitar - Attract - TM45
  (247, 24700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Pupitar - Round - TM48
  (247, 24700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Pupitar - Payback - TM66
  (247, 24700, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 37),
  -- Pupitar - Rock Polish - TM69
  (247, 24700, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 38),
  -- Pupitar - Stone Edge - TM71
  (247, 24700, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 39),
  -- Pupitar - Bulldoze - TM78
  (247, 24700, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 40),
  -- Pupitar - Rock Slide - TM80
  (247, 24700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 41),
  -- Pupitar - Swagger - TM87
  (247, 24700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 42),
  -- Pupitar - Sleep Talk - TM88
  (247, 24700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 43),
  -- Pupitar - Substitute - TM90
  (247, 24700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Pupitar - Snarl - TM95
  (247, 24700, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 45),
  -- Pupitar - Dark Pulse - TM97
  (247, 24700, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 46),
  -- Pupitar - Confide - TM100
  (247, 24700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Pupitar - Snore - Tutor
  (247, 24700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Pupitar - Spite - Tutor
  (247, 24700, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Pupitar - Outrage - Tutor
  (247, 24700, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Pupitar - Iron Tail - Tutor
  (247, 24700, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Pupitar - Uproar - Tutor
  (247, 24700, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Pupitar - Superpower - Tutor
  (247, 24700, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Pupitar - Iron Defense - Tutor
  (247, 24700, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Pupitar - Earth Power - Tutor
  (247, 24700, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Pupitar - Iron Head - Tutor
  (247, 24700, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Pupitar - Stealth Rock - Tutor
  (247, 24700, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),

  -- Tyranitar - Leer - Level 1
  (248, 24800, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyranitar - Bite - Level 1
  (248, 24800, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tyranitar - Screech - Level 1
  (248, 24800, 103, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tyranitar - Sandstorm - Level 1
  (248, 24800, 201, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tyranitar - Thunder Fang - Level 1
  (248, 24800, 422, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tyranitar - Ice Fang - Level 1
  (248, 24800, 423, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Tyranitar - Fire Fang - Level 1
  (248, 24800, 424, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Tyranitar - Sandstorm - Level 5
  (248, 24800, 201, 16, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Tyranitar - Screech - Level 10
  (248, 24800, 103, 16, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Tyranitar - Chip Away - Level 14
  (248, 24800, 498, 16, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Tyranitar - Rock Slide - Level 19
  (248, 24800, 157, 16, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Tyranitar - Scary Face - Level 23
  (248, 24800, 184, 16, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Tyranitar - Thrash - Level 28
  (248, 24800, 37, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Tyranitar - Dark Pulse - Level 34
  (248, 24800, 399, 16, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Tyranitar - Payback - Level 41
  (248, 24800, 371, 16, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Tyranitar - Crunch - Level 47
  (248, 24800, 242, 16, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Tyranitar - Earthquake - Level 54
  (248, 24800, 89, 16, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Tyranitar - Stone Edge - Level 63
  (248, 24800, 444, 16, NULL, 1, 63, NULL, NULL, NULL, 18),
  -- Tyranitar - Hyper Beam - Level 73
  (248, 24800, 63, 16, NULL, 1, 73, NULL, NULL, NULL, 19),
  -- Tyranitar - Giga Impact - Level 82
  (248, 24800, 416, 16, NULL, 1, 82, NULL, NULL, NULL, 20),
  -- Tyranitar - Dragon Claw - TM02
  (248, 24800, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 21),
  -- Tyranitar - Roar - TM05
  (248, 24800, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 22),
  -- Tyranitar - Toxic - TM06
  (248, 24800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Tyranitar - Hidden Power - TM10
  (248, 24800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Tyranitar - Sunny Day - TM11
  (248, 24800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Tyranitar - Taunt - TM12
  (248, 24800, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 26),
  -- Tyranitar - Ice Beam - TM13
  (248, 24800, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 27),
  -- Tyranitar - Blizzard - TM14
  (248, 24800, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 28),
  -- Tyranitar - Hyper Beam - TM15
  (248, 24800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 29),
  -- Tyranitar - Protect - TM17
  (248, 24800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 30),
  -- Tyranitar - Rain Dance - TM18
  (248, 24800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 31),
  -- Tyranitar - Frustration - TM21
  (248, 24800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Tyranitar - Smack Down - TM23
  (248, 24800, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 33),
  -- Tyranitar - Thunderbolt - TM24
  (248, 24800, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 34),
  -- Tyranitar - Thunder - TM25
  (248, 24800, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 35),
  -- Tyranitar - Earthquake - TM26
  (248, 24800, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 36),
  -- Tyranitar - Return - TM27
  (248, 24800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 37),
  -- Tyranitar - Brick Break - TM31
  (248, 24800, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 38),
  -- Tyranitar - Double Team - TM32
  (248, 24800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 39),
  -- Tyranitar - Flamethrower - TM35
  (248, 24800, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 40),
  -- Tyranitar - Sandstorm - TM37
  (248, 24800, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 41),
  -- Tyranitar - Fire Blast - TM38
  (248, 24800, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 42),
  -- Tyranitar - Rock Tomb - TM39
  (248, 24800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 43),
  -- Tyranitar - Aerial Ace - TM40
  (248, 24800, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 44),
  -- Tyranitar - Torment - TM41
  (248, 24800, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 45),
  -- Tyranitar - Facade - TM42
  (248, 24800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 46),
  -- Tyranitar - Rest - TM44
  (248, 24800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 47),
  -- Tyranitar - Attract - TM45
  (248, 24800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 48),
  -- Tyranitar - Round - TM48
  (248, 24800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 49),
  -- Tyranitar - Focus Blast - TM52
  (248, 24800, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 50),
  -- Tyranitar - Fling - TM56
  (248, 24800, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 51),
  -- Tyranitar - Brutal Swing - TM59
  (248, 24800, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 52),
  -- Tyranitar - Shadow Claw - TM65
  (248, 24800, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 53),
  -- Tyranitar - Payback - TM66
  (248, 24800, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 54),
  -- Tyranitar - Giga Impact - TM68
  (248, 24800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 55),
  -- Tyranitar - Rock Polish - TM69
  (248, 24800, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 56),
  -- Tyranitar - Stone Edge - TM71
  (248, 24800, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 57),
  -- Tyranitar - Thunder Wave - TM73
  (248, 24800, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 58),
  -- Tyranitar - Bulldoze - TM78
  (248, 24800, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 59),
  -- Tyranitar - Rock Slide - TM80
  (248, 24800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 60),
  -- Tyranitar - Dragon Tail - TM82
  (248, 24800, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 61),
  -- Tyranitar - Swagger - TM87
  (248, 24800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 62),
  -- Tyranitar - Sleep Talk - TM88
  (248, 24800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 63),
  -- Tyranitar - Substitute - TM90
  (248, 24800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 64),
  -- Tyranitar - Surf - TM94
  (248, 24800, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 65),
  -- Tyranitar - Snarl - TM95
  (248, 24800, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 66),
  -- Tyranitar - Dark Pulse - TM97
  (248, 24800, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 67),
  -- Tyranitar - Confide - TM100
  (248, 24800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 68),
  -- Tyranitar - Fire Punch - Tutor
  (248, 24800, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Tyranitar - Ice Punch - Tutor
  (248, 24800, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Tyranitar - Thunder Punch - Tutor
  (248, 24800, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Tyranitar - Low Kick - Tutor
  (248, 24800, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Tyranitar - Snore - Tutor
  (248, 24800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Tyranitar - Spite - Tutor
  (248, 24800, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Tyranitar - Outrage - Tutor
  (248, 24800, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Tyranitar - Iron Tail - Tutor
  (248, 24800, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Tyranitar - Uproar - Tutor
  (248, 24800, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Tyranitar - Focus Punch - Tutor
  (248, 24800, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Tyranitar - Superpower - Tutor
  (248, 24800, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Tyranitar - Iron Defense - Tutor
  (248, 24800, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Tyranitar - Block - Tutor
  (248, 24800, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Tyranitar - Shock Wave - Tutor
  (248, 24800, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Tyranitar - Water Pulse - Tutor
  (248, 24800, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Tyranitar - Aqua Tail - Tutor
  (248, 24800, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Tyranitar - Dragon Pulse - Tutor
  (248, 24800, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Tyranitar - Earth Power - Tutor
  (248, 24800, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Tyranitar - Iron Head - Tutor
  (248, 24800, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),
  -- Tyranitar - Stealth Rock - Tutor
  (248, 24800, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 88),
  -- Tyranitar - Foul Play - Tutor
  (248, 24800, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 89),
  -- Tyranitar - Stomping Tantrum - Tutor
  (248, 24800, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 90),

  -- Lugia - Whirlwind - Level 1
  (249, 24900, 18, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lugia - Weather Ball - Level 1
  (249, 24900, 311, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lugia - Gust - Level 9
  (249, 24900, 16, 16, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Lugia - Dragon Rush - Level 15
  (249, 24900, 407, 16, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Lugia - Extrasensory - Level 23
  (249, 24900, 326, 16, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Lugia - Rain Dance - Level 29
  (249, 24900, 240, 16, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Lugia - Hydro Pump - Level 37
  (249, 24900, 56, 16, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Lugia - Aeroblast - Level 43
  (249, 24900, 177, 16, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Lugia - Punishment - Level 50
  (249, 24900, 386, 16, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Lugia - Ancient Power - Level 57
  (249, 24900, 246, 16, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Lugia - Safeguard - Level 65
  (249, 24900, 219, 16, NULL, 1, 65, NULL, NULL, NULL, 11),
  -- Lugia - Recover - Level 71
  (249, 24900, 105, 16, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Lugia - Future Sight - Level 79
  (249, 24900, 248, 16, NULL, 1, 79, NULL, NULL, NULL, 13),
  -- Lugia - Natural Gift - Level 85
  (249, 24900, 363, 16, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Lugia - Calm Mind - Level 93
  (249, 24900, 347, 16, NULL, 1, 93, NULL, NULL, NULL, 15),
  -- Lugia - Sky Attack - Level 99
  (249, 24900, 143, 16, NULL, 1, 99, NULL, NULL, NULL, 16),
  -- Lugia - Psyshock - TM03
  (249, 24900, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 17),
  -- Lugia - Calm Mind - TM04
  (249, 24900, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 18),
  -- Lugia - Roar - TM05
  (249, 24900, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 19),
  -- Lugia - Toxic - TM06
  (249, 24900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Lugia - Hail - TM07
  (249, 24900, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 21),
  -- Lugia - Hidden Power - TM10
  (249, 24900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Lugia - Sunny Day - TM11
  (249, 24900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Lugia - Ice Beam - TM13
  (249, 24900, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 24),
  -- Lugia - Blizzard - TM14
  (249, 24900, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 25),
  -- Lugia - Hyper Beam - TM15
  (249, 24900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Lugia - Light Screen - TM16
  (249, 24900, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 27),
  -- Lugia - Protect - TM17
  (249, 24900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Lugia - Rain Dance - TM18
  (249, 24900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 29),
  -- Lugia - Roost - TM19
  (249, 24900, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 30),
  -- Lugia - Safeguard - TM20
  (249, 24900, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 31),
  -- Lugia - Frustration - TM21
  (249, 24900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Lugia - Thunderbolt - TM24
  (249, 24900, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 33),
  -- Lugia - Thunder - TM25
  (249, 24900, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 34),
  -- Lugia - Earthquake - TM26
  (249, 24900, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 35),
  -- Lugia - Return - TM27
  (249, 24900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 36),
  -- Lugia - Psychic - TM29
  (249, 24900, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 37),
  -- Lugia - Shadow Ball - TM30
  (249, 24900, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 38),
  -- Lugia - Double Team - TM32
  (249, 24900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 39),
  -- Lugia - Reflect - TM33
  (249, 24900, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 40),
  -- Lugia - Sandstorm - TM37
  (249, 24900, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 41),
  -- Lugia - Aerial Ace - TM40
  (249, 24900, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 42),
  -- Lugia - Facade - TM42
  (249, 24900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 43),
  -- Lugia - Rest - TM44
  (249, 24900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 44),
  -- Lugia - Round - TM48
  (249, 24900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 45),
  -- Lugia - Echoed Voice - TM49
  (249, 24900, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 46),
  -- Lugia - Steel Wing - TM51
  (249, 24900, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 47),
  -- Lugia - Charge Beam - TM57
  (249, 24900, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 48),
  -- Lugia - Sky Drop - TM58
  (249, 24900, 507, 16, NULL, 2, NULL, NULL, 16002058, NULL, 49),
  -- Lugia - Giga Impact - TM68
  (249, 24900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 50),
  -- Lugia - Thunder Wave - TM73
  (249, 24900, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 51),
  -- Lugia - Fly - TM76
  (249, 24900, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 52),
  -- Lugia - Psych Up - TM77
  (249, 24900, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 53),
  -- Lugia - Bulldoze - TM78
  (249, 24900, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 54),
  -- Lugia - Dragon Tail - TM82
  (249, 24900, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 55),
  -- Lugia - Dream Eater - TM85
  (249, 24900, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 56),
  -- Lugia - Swagger - TM87
  (249, 24900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 57),
  -- Lugia - Sleep Talk - TM88
  (249, 24900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 58),
  -- Lugia - Substitute - TM90
  (249, 24900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 59),
  -- Lugia - Surf - TM94
  (249, 24900, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 60),
  -- Lugia - Waterfall - TM98
  (249, 24900, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 61),
  -- Lugia - Confide - TM100
  (249, 24900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 62),
  -- Lugia - Sky Attack - Tutor
  (249, 24900, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Lugia - Snore - Tutor
  (249, 24900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Lugia - Icy Wind - Tutor
  (249, 24900, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Lugia - Giga Drain - Tutor
  (249, 24900, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Lugia - Iron Tail - Tutor
  (249, 24900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Lugia - Trick - Tutor
  (249, 24900, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Lugia - Skill Swap - Tutor
  (249, 24900, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Lugia - Hyper Voice - Tutor
  (249, 24900, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Lugia - Signal Beam - Tutor
  (249, 24900, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Lugia - Shock Wave - Tutor
  (249, 24900, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Lugia - Water Pulse - Tutor
  (249, 24900, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Lugia - Tailwind - Tutor
  (249, 24900, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Lugia - Aqua Tail - Tutor
  (249, 24900, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Lugia - Dragon Pulse - Tutor
  (249, 24900, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Lugia - Earth Power - Tutor
  (249, 24900, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Lugia - Zen Headbutt - Tutor
  (249, 24900, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Lugia - Defog - Tutor
  (249, 24900, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Lugia - Iron Head - Tutor
  (249, 24900, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Lugia - Wonder Room - Tutor
  (249, 24900, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Lugia - Telekinesis - Tutor
  (249, 24900, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Lugia - Laser Focus - Tutor
  (249, 24900, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),

  -- Ho-Oh - Whirlwind - Level 1
  (250, 25000, 18, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ho-Oh - Weather Ball - Level 1
  (250, 25000, 311, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ho-Oh - Gust - Level 9
  (250, 25000, 16, 16, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Ho-Oh - Brave Bird - Level 15
  (250, 25000, 413, 16, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Ho-Oh - Extrasensory - Level 23
  (250, 25000, 326, 16, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Ho-Oh - Sunny Day - Level 29
  (250, 25000, 241, 16, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Ho-Oh - Fire Blast - Level 37
  (250, 25000, 126, 16, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Ho-Oh - Sacred Fire - Level 43
  (250, 25000, 221, 16, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Ho-Oh - Punishment - Level 50
  (250, 25000, 386, 16, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Ho-Oh - Ancient Power - Level 57
  (250, 25000, 246, 16, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Ho-Oh - Safeguard - Level 65
  (250, 25000, 219, 16, NULL, 1, 65, NULL, NULL, NULL, 11),
  -- Ho-Oh - Recover - Level 71
  (250, 25000, 105, 16, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Ho-Oh - Future Sight - Level 79
  (250, 25000, 248, 16, NULL, 1, 79, NULL, NULL, NULL, 13),
  -- Ho-Oh - Natural Gift - Level 85
  (250, 25000, 363, 16, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Ho-Oh - Calm Mind - Level 93
  (250, 25000, 347, 16, NULL, 1, 93, NULL, NULL, NULL, 15),
  -- Ho-Oh - Sky Attack - Level 99
  (250, 25000, 143, 16, NULL, 1, 99, NULL, NULL, NULL, 16),
  -- Ho-Oh - Calm Mind - TM04
  (250, 25000, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 17),
  -- Ho-Oh - Roar - TM05
  (250, 25000, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 18),
  -- Ho-Oh - Toxic - TM06
  (250, 25000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Ho-Oh - Hidden Power - TM10
  (250, 25000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Ho-Oh - Sunny Day - TM11
  (250, 25000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Ho-Oh - Hyper Beam - TM15
  (250, 25000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 22),
  -- Ho-Oh - Light Screen - TM16
  (250, 25000, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 23),
  -- Ho-Oh - Protect - TM17
  (250, 25000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Ho-Oh - Rain Dance - TM18
  (250, 25000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Ho-Oh - Roost - TM19
  (250, 25000, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 26),
  -- Ho-Oh - Safeguard - TM20
  (250, 25000, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 27),
  -- Ho-Oh - Frustration - TM21
  (250, 25000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Ho-Oh - Solar Beam - TM22
  (250, 25000, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 29),
  -- Ho-Oh - Thunderbolt - TM24
  (250, 25000, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 30),
  -- Ho-Oh - Thunder - TM25
  (250, 25000, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 31),
  -- Ho-Oh - Earthquake - TM26
  (250, 25000, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 32),
  -- Ho-Oh - Return - TM27
  (250, 25000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Ho-Oh - Psychic - TM29
  (250, 25000, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 34),
  -- Ho-Oh - Shadow Ball - TM30
  (250, 25000, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 35),
  -- Ho-Oh - Double Team - TM32
  (250, 25000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Ho-Oh - Reflect - TM33
  (250, 25000, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 37),
  -- Ho-Oh - Flamethrower - TM35
  (250, 25000, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 38),
  -- Ho-Oh - Sandstorm - TM37
  (250, 25000, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 39),
  -- Ho-Oh - Fire Blast - TM38
  (250, 25000, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 40),
  -- Ho-Oh - Aerial Ace - TM40
  (250, 25000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 41),
  -- Ho-Oh - Facade - TM42
  (250, 25000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 42),
  -- Ho-Oh - Flame Charge - TM43
  (250, 25000, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 43),
  -- Ho-Oh - Rest - TM44
  (250, 25000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 44),
  -- Ho-Oh - Round - TM48
  (250, 25000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 45),
  -- Ho-Oh - Echoed Voice - TM49
  (250, 25000, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 46),
  -- Ho-Oh - Overheat - TM50
  (250, 25000, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 47),
  -- Ho-Oh - Steel Wing - TM51
  (250, 25000, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 48),
  -- Ho-Oh - Charge Beam - TM57
  (250, 25000, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 49),
  -- Ho-Oh - Sky Drop - TM58
  (250, 25000, 507, 16, NULL, 2, NULL, NULL, 16002058, NULL, 50),
  -- Ho-Oh - Will-O-Wisp - TM61
  (250, 25000, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 51),
  -- Ho-Oh - Giga Impact - TM68
  (250, 25000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 52),
  -- Ho-Oh - Thunder Wave - TM73
  (250, 25000, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 53),
  -- Ho-Oh - Fly - TM76
  (250, 25000, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 54),
  -- Ho-Oh - Psych Up - TM77
  (250, 25000, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 55),
  -- Ho-Oh - Bulldoze - TM78
  (250, 25000, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 56),
  -- Ho-Oh - Dream Eater - TM85
  (250, 25000, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 57),
  -- Ho-Oh - Swagger - TM87
  (250, 25000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 58),
  -- Ho-Oh - Sleep Talk - TM88
  (250, 25000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 59),
  -- Ho-Oh - Substitute - TM90
  (250, 25000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 60),
  -- Ho-Oh - Confide - TM100
  (250, 25000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 61),
  -- Ho-Oh - Sky Attack - Tutor
  (250, 25000, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Ho-Oh - Snore - Tutor
  (250, 25000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Ho-Oh - Giga Drain - Tutor
  (250, 25000, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Ho-Oh - Heat Wave - Tutor
  (250, 25000, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Ho-Oh - Hyper Voice - Tutor
  (250, 25000, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Ho-Oh - Signal Beam - Tutor
  (250, 25000, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Ho-Oh - Shock Wave - Tutor
  (250, 25000, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Ho-Oh - Tailwind - Tutor
  (250, 25000, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Ho-Oh - Earth Power - Tutor
  (250, 25000, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Ho-Oh - Zen Headbutt - Tutor
  (250, 25000, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Ho-Oh - Defog - Tutor
  (250, 25000, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Ho-Oh - Iron Head - Tutor
  (250, 25000, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Ho-Oh - Laser Focus - Tutor
  (250, 25000, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),

  -- Celebi - Leech Seed - Level 1
  (251, 25100, 73, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Celebi - Confusion - Level 1
  (251, 25100, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Celebi - Recover - Level 1
  (251, 25100, 105, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Celebi - Heal Bell - Level 1
  (251, 25100, 215, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Celebi - Safeguard - Level 10
  (251, 25100, 219, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Celebi - Magical Leaf - Level 19
  (251, 25100, 345, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Celebi - Ancient Power - Level 28
  (251, 25100, 246, 16, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Celebi - Baton Pass - Level 37
  (251, 25100, 226, 16, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Celebi - Natural Gift - Level 46
  (251, 25100, 363, 16, NULL, 1, 46, NULL, NULL, NULL, 9),
  -- Celebi - Heal Block - Level 55
  (251, 25100, 377, 16, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Celebi - Future Sight - Level 64
  (251, 25100, 248, 16, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Celebi - Healing Wish - Level 73
  (251, 25100, 361, 16, NULL, 1, 73, NULL, NULL, NULL, 12),
  -- Celebi - Leaf Storm - Level 82
  (251, 25100, 437, 16, NULL, 1, 82, NULL, NULL, NULL, 13),
  -- Celebi - Perish Song - Level 91
  (251, 25100, 195, 16, NULL, 1, 91, NULL, NULL, NULL, 14),
  -- Celebi - Calm Mind - TM04
  (251, 25100, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 15),
  -- Celebi - Toxic - TM06
  (251, 25100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Celebi - Hidden Power - TM10
  (251, 25100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Celebi - Sunny Day - TM11
  (251, 25100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Celebi - Hyper Beam - TM15
  (251, 25100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 19),
  -- Celebi - Light Screen - TM16
  (251, 25100, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 20),
  -- Celebi - Protect - TM17
  (251, 25100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Celebi - Rain Dance - TM18
  (251, 25100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Celebi - Safeguard - TM20
  (251, 25100, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 23),
  -- Celebi - Frustration - TM21
  (251, 25100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Celebi - Solar Beam - TM22
  (251, 25100, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 25),
  -- Celebi - Return - TM27
  (251, 25100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Celebi - Psychic - TM29
  (251, 25100, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 27),
  -- Celebi - Shadow Ball - TM30
  (251, 25100, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 28),
  -- Celebi - Double Team - TM32
  (251, 25100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Celebi - Reflect - TM33
  (251, 25100, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 30),
  -- Celebi - Sandstorm - TM37
  (251, 25100, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 31),
  -- Celebi - Aerial Ace - TM40
  (251, 25100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Celebi - Facade - TM42
  (251, 25100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Celebi - Rest - TM44
  (251, 25100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Celebi - Round - TM48
  (251, 25100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Celebi - Echoed Voice - TM49
  (251, 25100, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 36),
  -- Celebi - Energy Ball - TM53
  (251, 25100, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 37),
  -- Celebi - Fling - TM56
  (251, 25100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 38),
  -- Celebi - Charge Beam - TM57
  (251, 25100, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 39),
  -- Celebi - Giga Impact - TM68
  (251, 25100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Celebi - Thunder Wave - TM73
  (251, 25100, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 41),
  -- Celebi - Swords Dance - TM75
  (251, 25100, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 42),
  -- Celebi - Psych Up - TM77
  (251, 25100, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 43),
  -- Celebi - Dream Eater - TM85
  (251, 25100, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 44),
  -- Celebi - Grass Knot - TM86
  (251, 25100, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 45),
  -- Celebi - Swagger - TM87
  (251, 25100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Celebi - Sleep Talk - TM88
  (251, 25100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Celebi - U-turn - TM89
  (251, 25100, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 48),
  -- Celebi - Substitute - TM90
  (251, 25100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Celebi - Trick Room - TM92
  (251, 25100, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 50),
  -- Celebi - Nature Power - TM96
  (251, 25100, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 51),
  -- Celebi - Dazzling Gleam - TM99
  (251, 25100, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 52),
  -- Celebi - Confide - TM100
  (251, 25100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 53),
  -- Celebi - Snore - Tutor
  (251, 25100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Celebi - Giga Drain - Tutor
  (251, 25100, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Celebi - Heal Bell - Tutor
  (251, 25100, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Celebi - Synthesis - Tutor
  (251, 25100, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Celebi - Uproar - Tutor
  (251, 25100, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Celebi - Helping Hand - Tutor
  (251, 25100, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Celebi - Trick - Tutor
  (251, 25100, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Celebi - Magic Coat - Tutor
  (251, 25100, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Celebi - Skill Swap - Tutor
  (251, 25100, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Celebi - Signal Beam - Tutor
  (251, 25100, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Celebi - Shock Wave - Tutor
  (251, 25100, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Celebi - Water Pulse - Tutor
  (251, 25100, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Celebi - Last Resort - Tutor
  (251, 25100, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Celebi - Worry Seed - Tutor
  (251, 25100, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Celebi - Seed Bomb - Tutor
  (251, 25100, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Celebi - Earth Power - Tutor
  (251, 25100, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Celebi - Zen Headbutt - Tutor
  (251, 25100, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Celebi - Stealth Rock - Tutor
  (251, 25100, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Celebi - Wonder Room - Tutor
  (251, 25100, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Celebi - Telekinesis - Tutor
  (251, 25100, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Celebi - Magic Room - Tutor
  (251, 25100, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Celebi - Ally Switch - Tutor
  (251, 25100, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Celebi - Laser Focus - Tutor
  (251, 25100, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76);
