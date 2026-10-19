-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VII raw learnset pages for Sun / Moon.
-- Cross-check: PokemonDB Generation 7 learnset pages where source rows were ambiguous.
-- Machine normalization: Bulbapedia Generation VII TM catalog data.
-- Source names and caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Sun / Moon learnsets for non-default forms.
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
  -- Alolan Rattata - Tackle - Level 1
  (19, 1901, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Rattata - Tail Whip - Level 1
  (19, 1901, 39, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Rattata - Quick Attack - Level 4
  (19, 1901, 98, 15, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Alolan Rattata - Focus Energy - Level 7
  (19, 1901, 116, 15, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Alolan Rattata - Bite - Level 10
  (19, 1901, 44, 15, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Alolan Rattata - Pursuit - Level 13
  (19, 1901, 228, 15, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Alolan Rattata - Hyper Fang - Level 16
  (19, 1901, 158, 15, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Alolan Rattata - Assurance - Level 19
  (19, 1901, 372, 15, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Alolan Rattata - Crunch - Level 22
  (19, 1901, 242, 15, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Alolan Rattata - Sucker Punch - Level 25
  (19, 1901, 389, 15, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Alolan Rattata - Super Fang - Level 28
  (19, 1901, 162, 15, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Alolan Rattata - Double-Edge - Level 31
  (19, 1901, 38, 15, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Alolan Rattata - Endeavor - Level 34
  (19, 1901, 283, 15, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Alolan Rattata - Toxic - TM06
  (19, 1901, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 14),
  -- Alolan Rattata - Hidden Power - TM10
  (19, 1901, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 15),
  -- Alolan Rattata - Sunny Day - TM11
  (19, 1901, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 16),
  -- Alolan Rattata - Taunt - TM12
  (19, 1901, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 17),
  -- Alolan Rattata - Ice Beam - TM13
  (19, 1901, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 18),
  -- Alolan Rattata - Blizzard - TM14
  (19, 1901, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 19),
  -- Alolan Rattata - Protect - TM17
  (19, 1901, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 20),
  -- Alolan Rattata - Rain Dance - TM18
  (19, 1901, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 21),
  -- Alolan Rattata - Frustration - TM21
  (19, 1901, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 22),
  -- Alolan Rattata - Return - TM27
  (19, 1901, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 23),
  -- Alolan Rattata - Shadow Ball - TM30
  (19, 1901, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 24),
  -- Alolan Rattata - Double Team - TM32
  (19, 1901, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 25),
  -- Alolan Rattata - Sludge Bomb - TM36
  (19, 1901, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 26),
  -- Alolan Rattata - Torment - TM41
  (19, 1901, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 27),
  -- Alolan Rattata - Facade - TM42
  (19, 1901, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 28),
  -- Alolan Rattata - Rest - TM44
  (19, 1901, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 29),
  -- Alolan Rattata - Attract - TM45
  (19, 1901, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 30),
  -- Alolan Rattata - Thief - TM46
  (19, 1901, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 31),
  -- Alolan Rattata - Round - TM48
  (19, 1901, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 32),
  -- Alolan Rattata - Quash - TM60
  (19, 1901, 511, 15, NULL, 2, NULL, NULL, 15002060, NULL, 33),
  -- Alolan Rattata - Embargo - TM63
  (19, 1901, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 34),
  -- Alolan Rattata - Shadow Claw - TM65
  (19, 1901, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 35),
  -- Alolan Rattata - Grass Knot - TM86
  (19, 1901, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 36),
  -- Alolan Rattata - Swagger - TM87
  (19, 1901, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 37),
  -- Alolan Rattata - Sleep Talk - TM88
  (19, 1901, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 38),
  -- Alolan Rattata - U-turn - TM89
  (19, 1901, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 39),
  -- Alolan Rattata - Substitute - TM90
  (19, 1901, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 40),
  -- Alolan Rattata - Snarl - TM95
  (19, 1901, 555, 15, NULL, 2, NULL, NULL, 15002095, NULL, 41),
  -- Alolan Rattata - Dark Pulse - TM97
  (19, 1901, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 42),
  -- Alolan Rattata - Confide - TM100
  (19, 1901, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 43),
  -- Alolan Rattata - Counter - Egg
  (19, 1901, 68, 15, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Alolan Rattata - Fury Swipes - Egg
  (19, 1901, 154, 15, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Alolan Rattata - Reversal - Egg
  (19, 1901, 179, 15, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Alolan Rattata - Uproar - Egg
  (19, 1901, 253, 15, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Alolan Rattata - Stockpile - Egg
  (19, 1901, 254, 15, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Alolan Rattata - Swallow - Egg
  (19, 1901, 256, 15, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Alolan Rattata - Revenge - Egg
  (19, 1901, 279, 15, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Alolan Rattata - Snatch - Egg
  (19, 1901, 289, 15, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Alolan Rattata - Me First - Egg
  (19, 1901, 382, 15, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Alolan Rattata - Switcheroo - Egg
  (19, 1901, 415, 15, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Alolan Rattata - Final Gambit - Egg
  (19, 1901, 515, 15, NULL, 5, NULL, NULL, NULL, NULL, 54),

  -- Alolan Raticate - Swords Dance - Level 1
  (20, 2001, 14, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Raticate - Tackle - Level 1
  (20, 2001, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Raticate - Tail Whip - Level 1
  (20, 2001, 39, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alolan Raticate - Quick Attack - Level 1
  (20, 2001, 98, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Alolan Raticate - Focus Energy - Level 1
  (20, 2001, 116, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Alolan Raticate - Scary Face - Level 1
  (20, 2001, 184, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Alolan Raticate - Quick Attack - Level 4
  (20, 2001, 98, 15, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Alolan Raticate - Focus Energy - Level 7
  (20, 2001, 116, 15, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Alolan Raticate - Bite - Level 10
  (20, 2001, 44, 15, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Alolan Raticate - Pursuit - Level 13
  (20, 2001, 228, 15, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Alolan Raticate - Hyper Fang - Level 16
  (20, 2001, 158, 15, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Alolan Raticate - Assurance - Level 19
  (20, 2001, 372, 15, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Alolan Raticate - Crunch - Level 24
  (20, 2001, 242, 15, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Alolan Raticate - Sucker Punch - Level 29
  (20, 2001, 389, 15, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Alolan Raticate - Super Fang - Level 34
  (20, 2001, 162, 15, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Alolan Raticate - Double-Edge - Level 39
  (20, 2001, 38, 15, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Alolan Raticate - Endeavor - Level 44
  (20, 2001, 283, 15, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Alolan Raticate - Roar - TM05
  (20, 2001, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 18),
  -- Alolan Raticate - Toxic - TM06
  (20, 2001, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Alolan Raticate - Bulk Up - TM08
  (20, 2001, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 20),
  -- Alolan Raticate - Venoshock - TM09
  (20, 2001, 474, 15, NULL, 2, NULL, NULL, 15002009, NULL, 21),
  -- Alolan Raticate - Hidden Power - TM10
  (20, 2001, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 22),
  -- Alolan Raticate - Sunny Day - TM11
  (20, 2001, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 23),
  -- Alolan Raticate - Taunt - TM12
  (20, 2001, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 24),
  -- Alolan Raticate - Ice Beam - TM13
  (20, 2001, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 25),
  -- Alolan Raticate - Blizzard - TM14
  (20, 2001, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 26),
  -- Alolan Raticate - Hyper Beam - TM15
  (20, 2001, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 27),
  -- Alolan Raticate - Protect - TM17
  (20, 2001, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 28),
  -- Alolan Raticate - Rain Dance - TM18
  (20, 2001, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 29),
  -- Alolan Raticate - Frustration - TM21
  (20, 2001, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 30),
  -- Alolan Raticate - Return - TM27
  (20, 2001, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 31),
  -- Alolan Raticate - Shadow Ball - TM30
  (20, 2001, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 32),
  -- Alolan Raticate - Double Team - TM32
  (20, 2001, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 33),
  -- Alolan Raticate - Sludge Wave - TM34
  (20, 2001, 482, 15, NULL, 2, NULL, NULL, 15002034, NULL, 34),
  -- Alolan Raticate - Sludge Bomb - TM36
  (20, 2001, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 35),
  -- Alolan Raticate - Torment - TM41
  (20, 2001, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 36),
  -- Alolan Raticate - Facade - TM42
  (20, 2001, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 37),
  -- Alolan Raticate - Rest - TM44
  (20, 2001, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 38),
  -- Alolan Raticate - Attract - TM45
  (20, 2001, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 39),
  -- Alolan Raticate - Thief - TM46
  (20, 2001, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 40),
  -- Alolan Raticate - Round - TM48
  (20, 2001, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 41),
  -- Alolan Raticate - Quash - TM60
  (20, 2001, 511, 15, NULL, 2, NULL, NULL, 15002060, NULL, 42),
  -- Alolan Raticate - Embargo - TM63
  (20, 2001, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 43),
  -- Alolan Raticate - Shadow Claw - TM65
  (20, 2001, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 44),
  -- Alolan Raticate - Giga Impact - TM68
  (20, 2001, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 45),
  -- Alolan Raticate - Swords Dance - TM75
  (20, 2001, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 46),
  -- Alolan Raticate - Grass Knot - TM86
  (20, 2001, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 47),
  -- Alolan Raticate - Swagger - TM87
  (20, 2001, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 48),
  -- Alolan Raticate - Sleep Talk - TM88
  (20, 2001, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 49),
  -- Alolan Raticate - U-turn - TM89
  (20, 2001, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 50),
  -- Alolan Raticate - Substitute - TM90
  (20, 2001, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 51),
  -- Alolan Raticate - Snarl - TM95
  (20, 2001, 555, 15, NULL, 2, NULL, NULL, 15002095, NULL, 52),
  -- Alolan Raticate - Dark Pulse - TM97
  (20, 2001, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 53),
  -- Alolan Raticate - Confide - TM100
  (20, 2001, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 54),
  -- Alolan Raticate - Scary Face - Evolution
  (20, 2001, 184, 15, NULL, 7, NULL, NULL, NULL, NULL, 55),

  -- Alolan Raichu - Tail Whip - Level 1
  (26, 2601, 39, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Raichu - Thunder Shock - Level 1
  (26, 2601, 84, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Raichu - Thunderbolt - Level 1
  (26, 2601, 85, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alolan Raichu - Psychic - Level 1
  (26, 2601, 94, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Alolan Raichu - Quick Attack - Level 1
  (26, 2601, 98, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Alolan Raichu - Speed Swap - Level 1
  (26, 2601, 683, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Alolan Raichu - Psyshock - TM03
  (26, 2601, 473, 15, NULL, 2, NULL, NULL, 15002003, NULL, 7),
  -- Alolan Raichu - Calm Mind - TM04
  (26, 2601, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 8),
  -- Alolan Raichu - Toxic - TM06
  (26, 2601, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 9),
  -- Alolan Raichu - Hidden Power - TM10
  (26, 2601, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 10),
  -- Alolan Raichu - Hyper Beam - TM15
  (26, 2601, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 11),
  -- Alolan Raichu - Light Screen - TM16
  (26, 2601, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 12),
  -- Alolan Raichu - Protect - TM17
  (26, 2601, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 13),
  -- Alolan Raichu - Rain Dance - TM18
  (26, 2601, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 14),
  -- Alolan Raichu - Safeguard - TM20
  (26, 2601, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 15),
  -- Alolan Raichu - Frustration - TM21
  (26, 2601, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 16),
  -- Alolan Raichu - Thunderbolt - TM24
  (26, 2601, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 17),
  -- Alolan Raichu - Thunder - TM25
  (26, 2601, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 18),
  -- Alolan Raichu - Return - TM27
  (26, 2601, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 19),
  -- Alolan Raichu - Psychic - TM29
  (26, 2601, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 20),
  -- Alolan Raichu - Brick Break - TM31
  (26, 2601, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 21),
  -- Alolan Raichu - Double Team - TM32
  (26, 2601, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 22),
  -- Alolan Raichu - Reflect - TM33
  (26, 2601, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 23),
  -- Alolan Raichu - Facade - TM42
  (26, 2601, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 24),
  -- Alolan Raichu - Rest - TM44
  (26, 2601, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 25),
  -- Alolan Raichu - Attract - TM45
  (26, 2601, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 26),
  -- Alolan Raichu - Thief - TM46
  (26, 2601, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 27),
  -- Alolan Raichu - Round - TM48
  (26, 2601, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 28),
  -- Alolan Raichu - Echoed Voice - TM49
  (26, 2601, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 29),
  -- Alolan Raichu - Focus Blast - TM52
  (26, 2601, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 30),
  -- Alolan Raichu - Fling - TM56
  (26, 2601, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 31),
  -- Alolan Raichu - Charge Beam - TM57
  (26, 2601, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 32),
  -- Alolan Raichu - Giga Impact - TM68
  (26, 2601, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 33),
  -- Alolan Raichu - Volt Switch - TM72
  (26, 2601, 521, 15, NULL, 2, NULL, NULL, 15002072, NULL, 34),
  -- Alolan Raichu - Thunder Wave - TM73
  (26, 2601, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 35),
  -- Alolan Raichu - Grass Knot - TM86
  (26, 2601, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 36),
  -- Alolan Raichu - Swagger - TM87
  (26, 2601, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 37),
  -- Alolan Raichu - Sleep Talk - TM88
  (26, 2601, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 38),
  -- Alolan Raichu - Substitute - TM90
  (26, 2601, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 39),
  -- Alolan Raichu - Wild Charge - TM93
  (26, 2601, 528, 15, NULL, 2, NULL, NULL, 15002093, NULL, 40),
  -- Alolan Raichu - Confide - TM100
  (26, 2601, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 41),
  -- Alolan Raichu - Psychic - Evolution
  (26, 2601, 94, 15, NULL, 7, NULL, NULL, NULL, NULL, 42),

  -- Alolan Sandshrew - Scratch - Level 1
  (27, 2701, 10, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Sandshrew - Defense Curl - Level 1
  (27, 2701, 111, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Sandshrew - Bide - Level 3
  (27, 2701, 117, 15, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Alolan Sandshrew - Powder Snow - Level 5
  (27, 2701, 181, 15, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Alolan Sandshrew - Ice Ball - Level 7
  (27, 2701, 301, 15, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Alolan Sandshrew - Rapid Spin - Level 9
  (27, 2701, 229, 15, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Alolan Sandshrew - Fury Cutter - Level 11
  (27, 2701, 210, 15, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Alolan Sandshrew - Metal Claw - Level 14
  (27, 2701, 232, 15, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Alolan Sandshrew - Swift - Level 17
  (27, 2701, 129, 15, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Alolan Sandshrew - Fury Swipes - Level 20
  (27, 2701, 154, 15, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Alolan Sandshrew - Iron Defense - Level 23
  (27, 2701, 334, 15, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Alolan Sandshrew - Slash - Level 26
  (27, 2701, 163, 15, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Alolan Sandshrew - Iron Head - Level 30
  (27, 2701, 442, 15, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Alolan Sandshrew - Gyro Ball - Level 34
  (27, 2701, 360, 15, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Alolan Sandshrew - Swords Dance - Level 38
  (27, 2701, 14, 15, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Alolan Sandshrew - Hail - Level 42
  (27, 2701, 258, 15, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Alolan Sandshrew - Blizzard - Level 46
  (27, 2701, 59, 15, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Alolan Sandshrew - Work Up - TM01
  (27, 2701, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 18),
  -- Alolan Sandshrew - Toxic - TM06
  (27, 2701, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Alolan Sandshrew - Hail - TM07
  (27, 2701, 258, 15, NULL, 2, NULL, NULL, 15002007, NULL, 20),
  -- Alolan Sandshrew - Hidden Power - TM10
  (27, 2701, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 21),
  -- Alolan Sandshrew - Sunny Day - TM11
  (27, 2701, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 22),
  -- Alolan Sandshrew - Blizzard - TM14
  (27, 2701, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 23),
  -- Alolan Sandshrew - Protect - TM17
  (27, 2701, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 24),
  -- Alolan Sandshrew - Safeguard - TM20
  (27, 2701, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 25),
  -- Alolan Sandshrew - Frustration - TM21
  (27, 2701, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 26),
  -- Alolan Sandshrew - Earthquake - TM26
  (27, 2701, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 27),
  -- Alolan Sandshrew - Return - TM27
  (27, 2701, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 28),
  -- Alolan Sandshrew - Leech Life - TM28
  (27, 2701, 141, 15, NULL, 2, NULL, NULL, 15002028, NULL, 29),
  -- Alolan Sandshrew - Brick Break - TM31
  (27, 2701, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 30),
  -- Alolan Sandshrew - Double Team - TM32
  (27, 2701, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 31),
  -- Alolan Sandshrew - Aerial Ace - TM40
  (27, 2701, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 32),
  -- Alolan Sandshrew - Facade - TM42
  (27, 2701, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 33),
  -- Alolan Sandshrew - Rest - TM44
  (27, 2701, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 34),
  -- Alolan Sandshrew - Attract - TM45
  (27, 2701, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 35),
  -- Alolan Sandshrew - Thief - TM46
  (27, 2701, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 36),
  -- Alolan Sandshrew - Round - TM48
  (27, 2701, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 37),
  -- Alolan Sandshrew - Fling - TM56
  (27, 2701, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 38),
  -- Alolan Sandshrew - Shadow Claw - TM65
  (27, 2701, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 39),
  -- Alolan Sandshrew - Aurora Veil - TM70
  (27, 2701, 694, 15, NULL, 2, NULL, NULL, 15002070, NULL, 40),
  -- Alolan Sandshrew - Gyro Ball - TM74
  (27, 2701, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 41),
  -- Alolan Sandshrew - Swords Dance - TM75
  (27, 2701, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 42),
  -- Alolan Sandshrew - Bulldoze - TM78
  (27, 2701, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 43),
  -- Alolan Sandshrew - Frost Breath - TM79
  (27, 2701, 524, 15, NULL, 2, NULL, NULL, 15002079, NULL, 44),
  -- Alolan Sandshrew - Rock Slide - TM80
  (27, 2701, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 45),
  -- Alolan Sandshrew - X-Scissor - TM81
  (27, 2701, 404, 15, NULL, 2, NULL, NULL, 15002081, NULL, 46),
  -- Alolan Sandshrew - Poison Jab - TM84
  (27, 2701, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 47),
  -- Alolan Sandshrew - Swagger - TM87
  (27, 2701, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 48),
  -- Alolan Sandshrew - Sleep Talk - TM88
  (27, 2701, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 49),
  -- Alolan Sandshrew - Substitute - TM90
  (27, 2701, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 50),
  -- Alolan Sandshrew - Confide - TM100
  (27, 2701, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 51),
  -- Alolan Sandshrew - Counter - Egg
  (27, 2701, 68, 15, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Alolan Sandshrew - Amnesia - Egg
  (27, 2701, 133, 15, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Alolan Sandshrew - Curse - Egg
  (27, 2701, 174, 15, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Alolan Sandshrew - Flail - Egg
  (27, 2701, 175, 15, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Alolan Sandshrew - Endure - Egg
  (27, 2701, 203, 15, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Alolan Sandshrew - Metal Claw - Egg
  (27, 2701, 232, 15, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Alolan Sandshrew - Crush Claw - Egg
  (27, 2701, 306, 15, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Alolan Sandshrew - Icicle Spear - Egg
  (27, 2701, 333, 15, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Alolan Sandshrew - Night Slash - Egg
  (27, 2701, 400, 15, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Alolan Sandshrew - Hone Claws - Egg
  (27, 2701, 468, 15, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Alolan Sandshrew - Chip Away - Egg
  (27, 2701, 498, 15, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Alolan Sandshrew - Icicle Crash - Egg
  (27, 2701, 556, 15, NULL, 5, NULL, NULL, NULL, NULL, 63),

  -- Alolan Sandslash - Defense Curl - Level 1
  (28, 2801, 111, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Sandslash - Slash - Level 1
  (28, 2801, 163, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Sandslash - Metal Claw - Level 1
  (28, 2801, 232, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alolan Sandslash - Ice Ball - Level 1
  (28, 2801, 301, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Alolan Sandslash - Icicle Spear - Level 1
  (28, 2801, 333, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Alolan Sandslash - Metal Burst - Level 1
  (28, 2801, 368, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Alolan Sandslash - Icicle Crash - Level 1
  (28, 2801, 556, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Alolan Sandslash - Work Up - TM01
  (28, 2801, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 8),
  -- Alolan Sandslash - Toxic - TM06
  (28, 2801, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 9),
  -- Alolan Sandslash - Hail - TM07
  (28, 2801, 258, 15, NULL, 2, NULL, NULL, 15002007, NULL, 10),
  -- Alolan Sandslash - Hidden Power - TM10
  (28, 2801, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 11),
  -- Alolan Sandslash - Sunny Day - TM11
  (28, 2801, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 12),
  -- Alolan Sandslash - Blizzard - TM14
  (28, 2801, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 13),
  -- Alolan Sandslash - Hyper Beam - TM15
  (28, 2801, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 14),
  -- Alolan Sandslash - Protect - TM17
  (28, 2801, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 15),
  -- Alolan Sandslash - Safeguard - TM20
  (28, 2801, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 16),
  -- Alolan Sandslash - Frustration - TM21
  (28, 2801, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 17),
  -- Alolan Sandslash - Earthquake - TM26
  (28, 2801, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 18),
  -- Alolan Sandslash - Return - TM27
  (28, 2801, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 19),
  -- Alolan Sandslash - Leech Life - TM28
  (28, 2801, 141, 15, NULL, 2, NULL, NULL, 15002028, NULL, 20),
  -- Alolan Sandslash - Brick Break - TM31
  (28, 2801, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 21),
  -- Alolan Sandslash - Double Team - TM32
  (28, 2801, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 22),
  -- Alolan Sandslash - Aerial Ace - TM40
  (28, 2801, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 23),
  -- Alolan Sandslash - Facade - TM42
  (28, 2801, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 24),
  -- Alolan Sandslash - Rest - TM44
  (28, 2801, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 25),
  -- Alolan Sandslash - Attract - TM45
  (28, 2801, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 26),
  -- Alolan Sandslash - Thief - TM46
  (28, 2801, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 27),
  -- Alolan Sandslash - Round - TM48
  (28, 2801, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 28),
  -- Alolan Sandslash - Focus Blast - TM52
  (28, 2801, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 29),
  -- Alolan Sandslash - Fling - TM56
  (28, 2801, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 30),
  -- Alolan Sandslash - Shadow Claw - TM65
  (28, 2801, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 31),
  -- Alolan Sandslash - Giga Impact - TM68
  (28, 2801, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 32),
  -- Alolan Sandslash - Aurora Veil - TM70
  (28, 2801, 694, 15, NULL, 2, NULL, NULL, 15002070, NULL, 33),
  -- Alolan Sandslash - Gyro Ball - TM74
  (28, 2801, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 34),
  -- Alolan Sandslash - Swords Dance - TM75
  (28, 2801, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 35),
  -- Alolan Sandslash - Bulldoze - TM78
  (28, 2801, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 36),
  -- Alolan Sandslash - Frost Breath - TM79
  (28, 2801, 524, 15, NULL, 2, NULL, NULL, 15002079, NULL, 37),
  -- Alolan Sandslash - Rock Slide - TM80
  (28, 2801, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 38),
  -- Alolan Sandslash - X-Scissor - TM81
  (28, 2801, 404, 15, NULL, 2, NULL, NULL, 15002081, NULL, 39),
  -- Alolan Sandslash - Poison Jab - TM84
  (28, 2801, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 40),
  -- Alolan Sandslash - Swagger - TM87
  (28, 2801, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 41),
  -- Alolan Sandslash - Sleep Talk - TM88
  (28, 2801, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 42),
  -- Alolan Sandslash - Substitute - TM90
  (28, 2801, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 43),
  -- Alolan Sandslash - Confide - TM100
  (28, 2801, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 44),
  -- Alolan Sandslash - Icicle Spear - Evolution
  (28, 2801, 333, 15, NULL, 7, NULL, NULL, NULL, NULL, 45),

  -- Alolan Vulpix - Powder Snow - Level 1
  (37, 3701, 181, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Vulpix - Tail Whip - Level 4
  (37, 3701, 39, 15, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Alolan Vulpix - Roar - Level 7
  (37, 3701, 46, 15, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Alolan Vulpix - Baby-Doll Eyes - Level 9
  (37, 3701, 608, 15, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Alolan Vulpix - Ice Shard - Level 10
  (37, 3701, 420, 15, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Alolan Vulpix - Confuse Ray - Level 12
  (37, 3701, 109, 15, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Alolan Vulpix - Icy Wind - Level 15
  (37, 3701, 196, 15, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Alolan Vulpix - Payback - Level 18
  (37, 3701, 371, 15, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Alolan Vulpix - Mist - Level 20
  (37, 3701, 54, 15, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Alolan Vulpix - Feint Attack - Level 23
  (37, 3701, 185, 15, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Alolan Vulpix - Hex - Level 26
  (37, 3701, 506, 15, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Alolan Vulpix - Aurora Beam - Level 28
  (37, 3701, 62, 15, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Alolan Vulpix - Extrasensory - Level 31
  (37, 3701, 326, 15, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Alolan Vulpix - Safeguard - Level 34
  (37, 3701, 219, 15, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Alolan Vulpix - Ice Beam - Level 36
  (37, 3701, 58, 15, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Alolan Vulpix - Imprison - Level 39
  (37, 3701, 286, 15, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Alolan Vulpix - Blizzard - Level 42
  (37, 3701, 59, 15, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Alolan Vulpix - Grudge - Level 44
  (37, 3701, 288, 15, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Alolan Vulpix - Captivate - Level 47
  (37, 3701, 445, 15, NULL, 1, 47, NULL, NULL, NULL, 19),
  -- Alolan Vulpix - Sheer Cold - Level 50
  (37, 3701, 329, 15, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Alolan Vulpix - Roar - TM05
  (37, 3701, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 21),
  -- Alolan Vulpix - Toxic - TM06
  (37, 3701, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 22),
  -- Alolan Vulpix - Hail - TM07
  (37, 3701, 258, 15, NULL, 2, NULL, NULL, 15002007, NULL, 23),
  -- Alolan Vulpix - Hidden Power - TM10
  (37, 3701, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 24),
  -- Alolan Vulpix - Ice Beam - TM13
  (37, 3701, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 25),
  -- Alolan Vulpix - Blizzard - TM14
  (37, 3701, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 26),
  -- Alolan Vulpix - Protect - TM17
  (37, 3701, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 27),
  -- Alolan Vulpix - Rain Dance - TM18
  (37, 3701, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 28),
  -- Alolan Vulpix - Safeguard - TM20
  (37, 3701, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 29),
  -- Alolan Vulpix - Frustration - TM21
  (37, 3701, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 30),
  -- Alolan Vulpix - Return - TM27
  (37, 3701, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 31),
  -- Alolan Vulpix - Double Team - TM32
  (37, 3701, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 32),
  -- Alolan Vulpix - Facade - TM42
  (37, 3701, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 33),
  -- Alolan Vulpix - Rest - TM44
  (37, 3701, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 34),
  -- Alolan Vulpix - Attract - TM45
  (37, 3701, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 35),
  -- Alolan Vulpix - Round - TM48
  (37, 3701, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 36),
  -- Alolan Vulpix - Payback - TM66
  (37, 3701, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 37),
  -- Alolan Vulpix - Aurora Veil - TM70
  (37, 3701, 694, 15, NULL, 2, NULL, NULL, 15002070, NULL, 38),
  -- Alolan Vulpix - Psych Up - TM77
  (37, 3701, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 39),
  -- Alolan Vulpix - Frost Breath - TM79
  (37, 3701, 524, 15, NULL, 2, NULL, NULL, 15002079, NULL, 40),
  -- Alolan Vulpix - Swagger - TM87
  (37, 3701, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 41),
  -- Alolan Vulpix - Sleep Talk - TM88
  (37, 3701, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 42),
  -- Alolan Vulpix - Substitute - TM90
  (37, 3701, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 43),
  -- Alolan Vulpix - Dark Pulse - TM97
  (37, 3701, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 44),
  -- Alolan Vulpix - Confide - TM100
  (37, 3701, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 45),
  -- Alolan Vulpix - Disable - Egg
  (37, 3701, 50, 15, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Alolan Vulpix - Hypnosis - Egg
  (37, 3701, 95, 15, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Alolan Vulpix - Agility - Egg
  (37, 3701, 97, 15, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Alolan Vulpix - Flail - Egg
  (37, 3701, 175, 15, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Alolan Vulpix - Spite - Egg
  (37, 3701, 180, 15, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Alolan Vulpix - Charm - Egg
  (37, 3701, 204, 15, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Alolan Vulpix - Encore - Egg
  (37, 3701, 227, 15, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Alolan Vulpix - Secret Power - Egg
  (37, 3701, 290, 15, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Alolan Vulpix - Extrasensory - Egg
  (37, 3701, 326, 15, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Alolan Vulpix - Howl - Egg
  (37, 3701, 336, 15, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Alolan Vulpix - Power Swap - Egg
  (37, 3701, 384, 15, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Alolan Vulpix - Tail Slap - Egg
  (37, 3701, 541, 15, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Alolan Vulpix - Freeze-Dry - Egg
  (37, 3701, 573, 15, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Alolan Vulpix - Moonblast - Egg
  (37, 3701, 585, 15, NULL, 5, NULL, NULL, NULL, NULL, 59),

  -- Alolan Ninetales - Ice Beam - Level 1
  (38, 3801, 58, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Ninetales - Confuse Ray - Level 1
  (38, 3801, 109, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Ninetales - Safeguard - Level 1
  (38, 3801, 219, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alolan Ninetales - Imprison - Level 1
  (38, 3801, 286, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Alolan Ninetales - Nasty Plot - Level 1
  (38, 3801, 417, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Alolan Ninetales - Ice Shard - Level 1
  (38, 3801, 420, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Alolan Ninetales - Dazzling Gleam - Level 1
  (38, 3801, 605, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Alolan Ninetales - Psyshock - TM03
  (38, 3801, 473, 15, NULL, 2, NULL, NULL, 15002003, NULL, 8),
  -- Alolan Ninetales - Calm Mind - TM04
  (38, 3801, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 9),
  -- Alolan Ninetales - Roar - TM05
  (38, 3801, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 10),
  -- Alolan Ninetales - Toxic - TM06
  (38, 3801, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 11),
  -- Alolan Ninetales - Hail - TM07
  (38, 3801, 258, 15, NULL, 2, NULL, NULL, 15002007, NULL, 12),
  -- Alolan Ninetales - Hidden Power - TM10
  (38, 3801, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 13),
  -- Alolan Ninetales - Ice Beam - TM13
  (38, 3801, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 14),
  -- Alolan Ninetales - Blizzard - TM14
  (38, 3801, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 15),
  -- Alolan Ninetales - Hyper Beam - TM15
  (38, 3801, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 16),
  -- Alolan Ninetales - Protect - TM17
  (38, 3801, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 17),
  -- Alolan Ninetales - Rain Dance - TM18
  (38, 3801, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 18),
  -- Alolan Ninetales - Safeguard - TM20
  (38, 3801, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 19),
  -- Alolan Ninetales - Frustration - TM21
  (38, 3801, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 20),
  -- Alolan Ninetales - Return - TM27
  (38, 3801, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 21),
  -- Alolan Ninetales - Double Team - TM32
  (38, 3801, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 22),
  -- Alolan Ninetales - Facade - TM42
  (38, 3801, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 23),
  -- Alolan Ninetales - Rest - TM44
  (38, 3801, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 24),
  -- Alolan Ninetales - Attract - TM45
  (38, 3801, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 25),
  -- Alolan Ninetales - Round - TM48
  (38, 3801, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 26),
  -- Alolan Ninetales - Payback - TM66
  (38, 3801, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 27),
  -- Alolan Ninetales - Giga Impact - TM68
  (38, 3801, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 28),
  -- Alolan Ninetales - Aurora Veil - TM70
  (38, 3801, 694, 15, NULL, 2, NULL, NULL, 15002070, NULL, 29),
  -- Alolan Ninetales - Psych Up - TM77
  (38, 3801, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 30),
  -- Alolan Ninetales - Frost Breath - TM79
  (38, 3801, 524, 15, NULL, 2, NULL, NULL, 15002079, NULL, 31),
  -- Alolan Ninetales - Dream Eater - TM85
  (38, 3801, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 32),
  -- Alolan Ninetales - Swagger - TM87
  (38, 3801, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 33),
  -- Alolan Ninetales - Sleep Talk - TM88
  (38, 3801, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 34),
  -- Alolan Ninetales - Substitute - TM90
  (38, 3801, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 35),
  -- Alolan Ninetales - Dark Pulse - TM97
  (38, 3801, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 36),
  -- Alolan Ninetales - Dazzling Gleam - TM99
  (38, 3801, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 37),
  -- Alolan Ninetales - Confide - TM100
  (38, 3801, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 38),
  -- Alolan Ninetales - Dazzling Gleam - Evolution
  (38, 3801, 605, 15, NULL, 7, NULL, NULL, NULL, NULL, 39),

  -- Alolan Diglett - Sand Attack - Level 1
  (50, 5001, 28, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Diglett - Metal Claw - Level 1
  (50, 5001, 232, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Diglett - Growl - Level 4
  (50, 5001, 45, 15, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Alolan Diglett - Astonish - Level 7
  (50, 5001, 310, 15, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Alolan Diglett - Mud-Slap - Level 10
  (50, 5001, 189, 15, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Alolan Diglett - Magnitude - Level 14
  (50, 5001, 222, 15, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Alolan Diglett - Bulldoze - Level 18
  (50, 5001, 523, 15, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Alolan Diglett - Sucker Punch - Level 22
  (50, 5001, 389, 15, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Alolan Diglett - Mud Bomb - Level 25
  (50, 5001, 426, 15, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Alolan Diglett - Earth Power - Level 28
  (50, 5001, 414, 15, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Alolan Diglett - Dig - Level 31
  (50, 5001, 91, 15, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Alolan Diglett - Iron Head - Level 35
  (50, 5001, 442, 15, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Alolan Diglett - Earthquake - Level 39
  (50, 5001, 89, 15, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Alolan Diglett - Fissure - Level 43
  (50, 5001, 90, 15, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Alolan Diglett - Work Up - TM01
  (50, 5001, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 15),
  -- Alolan Diglett - Toxic - TM06
  (50, 5001, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 16),
  -- Alolan Diglett - Hidden Power - TM10
  (50, 5001, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 17),
  -- Alolan Diglett - Sunny Day - TM11
  (50, 5001, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 18),
  -- Alolan Diglett - Protect - TM17
  (50, 5001, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 19),
  -- Alolan Diglett - Frustration - TM21
  (50, 5001, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 20),
  -- Alolan Diglett - Earthquake - TM26
  (50, 5001, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 21),
  -- Alolan Diglett - Return - TM27
  (50, 5001, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 22),
  -- Alolan Diglett - Double Team - TM32
  (50, 5001, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 23),
  -- Alolan Diglett - Sludge Bomb - TM36
  (50, 5001, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 24),
  -- Alolan Diglett - Sandstorm - TM37
  (50, 5001, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 25),
  -- Alolan Diglett - Rock Tomb - TM39
  (50, 5001, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 26),
  -- Alolan Diglett - Aerial Ace - TM40
  (50, 5001, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 27),
  -- Alolan Diglett - Facade - TM42
  (50, 5001, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 28),
  -- Alolan Diglett - Rest - TM44
  (50, 5001, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 29),
  -- Alolan Diglett - Attract - TM45
  (50, 5001, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 30),
  -- Alolan Diglett - Thief - TM46
  (50, 5001, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 31),
  -- Alolan Diglett - Round - TM48
  (50, 5001, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 32),
  -- Alolan Diglett - Echoed Voice - TM49
  (50, 5001, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 33),
  -- Alolan Diglett - Shadow Claw - TM65
  (50, 5001, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 34),
  -- Alolan Diglett - Bulldoze - TM78
  (50, 5001, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 35),
  -- Alolan Diglett - Rock Slide - TM80
  (50, 5001, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 36),
  -- Alolan Diglett - Swagger - TM87
  (50, 5001, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 37),
  -- Alolan Diglett - Sleep Talk - TM88
  (50, 5001, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 38),
  -- Alolan Diglett - Substitute - TM90
  (50, 5001, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 39),
  -- Alolan Diglett - Flash Cannon - TM91
  (50, 5001, 430, 15, NULL, 2, NULL, NULL, 15002091, NULL, 40),
  -- Alolan Diglett - Confide - TM100
  (50, 5001, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 41),
  -- Alolan Diglett - Headbutt - Egg
  (50, 5001, 29, 15, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Alolan Diglett - Thrash - Egg
  (50, 5001, 37, 15, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Alolan Diglett - Reversal - Egg
  (50, 5001, 179, 15, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Alolan Diglett - Feint Attack - Egg
  (50, 5001, 185, 15, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Alolan Diglett - Endure - Egg
  (50, 5001, 203, 15, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Alolan Diglett - Pursuit - Egg
  (50, 5001, 228, 15, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Alolan Diglett - Ancient Power - Egg
  (50, 5001, 246, 15, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Alolan Diglett - Beat Up - Egg
  (50, 5001, 251, 15, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Alolan Diglett - Memento - Egg
  (50, 5001, 262, 15, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Alolan Diglett - Metal Sound - Egg
  (50, 5001, 319, 15, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Alolan Diglett - Final Gambit - Egg
  (50, 5001, 515, 15, NULL, 5, NULL, NULL, NULL, NULL, 52),

  -- Alolan Dugtrio - Sand Attack - Level 1
  (51, 5101, 28, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Dugtrio - Growl - Level 1
  (51, 5101, 45, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Dugtrio - Tri Attack - Level 1
  (51, 5101, 161, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alolan Dugtrio - Metal Claw - Level 1
  (51, 5101, 232, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Alolan Dugtrio - Sand Tomb - Level 1
  (51, 5101, 328, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Alolan Dugtrio - Night Slash - Level 1
  (51, 5101, 400, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Alolan Dugtrio - Rototiller - Level 1
  (51, 5101, 563, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Alolan Dugtrio - Growl - Level 4
  (51, 5101, 45, 15, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Alolan Dugtrio - Astonish - Level 7
  (51, 5101, 310, 15, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Alolan Dugtrio - Mud-Slap - Level 10
  (51, 5101, 189, 15, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Alolan Dugtrio - Magnitude - Level 14
  (51, 5101, 222, 15, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Alolan Dugtrio - Bulldoze - Level 18
  (51, 5101, 523, 15, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Alolan Dugtrio - Sucker Punch - Level 22
  (51, 5101, 389, 15, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Alolan Dugtrio - Mud Bomb - Level 25
  (51, 5101, 426, 15, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Alolan Dugtrio - Earth Power - Level 30
  (51, 5101, 414, 15, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Alolan Dugtrio - Dig - Level 35
  (51, 5101, 91, 15, NULL, 1, 35, NULL, NULL, NULL, 16),
  -- Alolan Dugtrio - Iron Head - Level 41
  (51, 5101, 442, 15, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Alolan Dugtrio - Earthquake - Level 47
  (51, 5101, 89, 15, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Alolan Dugtrio - Fissure - Level 53
  (51, 5101, 90, 15, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Alolan Dugtrio - Work Up - TM01
  (51, 5101, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 20),
  -- Alolan Dugtrio - Toxic - TM06
  (51, 5101, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 21),
  -- Alolan Dugtrio - Hidden Power - TM10
  (51, 5101, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 22),
  -- Alolan Dugtrio - Sunny Day - TM11
  (51, 5101, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 23),
  -- Alolan Dugtrio - Hyper Beam - TM15
  (51, 5101, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 24),
  -- Alolan Dugtrio - Protect - TM17
  (51, 5101, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 25),
  -- Alolan Dugtrio - Frustration - TM21
  (51, 5101, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 26),
  -- Alolan Dugtrio - Earthquake - TM26
  (51, 5101, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 27),
  -- Alolan Dugtrio - Return - TM27
  (51, 5101, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 28),
  -- Alolan Dugtrio - Double Team - TM32
  (51, 5101, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 29),
  -- Alolan Dugtrio - Sludge Wave - TM34
  (51, 5101, 482, 15, NULL, 2, NULL, NULL, 15002034, NULL, 30),
  -- Alolan Dugtrio - Sludge Bomb - TM36
  (51, 5101, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 31),
  -- Alolan Dugtrio - Sandstorm - TM37
  (51, 5101, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 32),
  -- Alolan Dugtrio - Rock Tomb - TM39
  (51, 5101, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 33),
  -- Alolan Dugtrio - Aerial Ace - TM40
  (51, 5101, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 34),
  -- Alolan Dugtrio - Facade - TM42
  (51, 5101, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 35),
  -- Alolan Dugtrio - Rest - TM44
  (51, 5101, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 36),
  -- Alolan Dugtrio - Attract - TM45
  (51, 5101, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 37),
  -- Alolan Dugtrio - Thief - TM46
  (51, 5101, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 38),
  -- Alolan Dugtrio - Round - TM48
  (51, 5101, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 39),
  -- Alolan Dugtrio - Echoed Voice - TM49
  (51, 5101, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 40),
  -- Alolan Dugtrio - Shadow Claw - TM65
  (51, 5101, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 41),
  -- Alolan Dugtrio - Giga Impact - TM68
  (51, 5101, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 42),
  -- Alolan Dugtrio - Stone Edge - TM71
  (51, 5101, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 43),
  -- Alolan Dugtrio - Bulldoze - TM78
  (51, 5101, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 44),
  -- Alolan Dugtrio - Rock Slide - TM80
  (51, 5101, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 45),
  -- Alolan Dugtrio - Swagger - TM87
  (51, 5101, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 46),
  -- Alolan Dugtrio - Sleep Talk - TM88
  (51, 5101, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 47),
  -- Alolan Dugtrio - Substitute - TM90
  (51, 5101, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 48),
  -- Alolan Dugtrio - Flash Cannon - TM91
  (51, 5101, 430, 15, NULL, 2, NULL, NULL, 15002091, NULL, 49),
  -- Alolan Dugtrio - Confide - TM100
  (51, 5101, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 50),
  -- Alolan Dugtrio - Sand Tomb - Evolution
  (51, 5101, 328, 15, NULL, 7, NULL, NULL, NULL, NULL, 51),

  -- Alolan Meowth - Scratch - Level 1
  (52, 5201, 10, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Meowth - Growl - Level 1
  (52, 5201, 45, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Meowth - Bite - Level 6
  (52, 5201, 44, 15, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Alolan Meowth - Fake Out - Level 9
  (52, 5201, 252, 15, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Alolan Meowth - Fury Swipes - Level 14
  (52, 5201, 154, 15, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Alolan Meowth - Screech - Level 17
  (52, 5201, 103, 15, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Alolan Meowth - Feint Attack - Level 22
  (52, 5201, 185, 15, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Alolan Meowth - Taunt - Level 25
  (52, 5201, 269, 15, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Alolan Meowth - Pay Day - Level 30
  (52, 5201, 6, 15, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Alolan Meowth - Slash - Level 33
  (52, 5201, 163, 15, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Alolan Meowth - Nasty Plot - Level 38
  (52, 5201, 417, 15, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Alolan Meowth - Assurance - Level 41
  (52, 5201, 372, 15, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Alolan Meowth - Captivate - Level 46
  (52, 5201, 445, 15, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Alolan Meowth - Night Slash - Level 49
  (52, 5201, 400, 15, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Alolan Meowth - Feint - Level 50
  (52, 5201, 364, 15, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Alolan Meowth - Dark Pulse - Level 55
  (52, 5201, 399, 15, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Alolan Meowth - Work Up - TM01
  (52, 5201, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 17),
  -- Alolan Meowth - Toxic - TM06
  (52, 5201, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 18),
  -- Alolan Meowth - Hidden Power - TM10
  (52, 5201, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 19),
  -- Alolan Meowth - Sunny Day - TM11
  (52, 5201, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 20),
  -- Alolan Meowth - Taunt - TM12
  (52, 5201, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 21),
  -- Alolan Meowth - Protect - TM17
  (52, 5201, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 22),
  -- Alolan Meowth - Rain Dance - TM18
  (52, 5201, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 23),
  -- Alolan Meowth - Frustration - TM21
  (52, 5201, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 24),
  -- Alolan Meowth - Thunderbolt - TM24
  (52, 5201, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 25),
  -- Alolan Meowth - Thunder - TM25
  (52, 5201, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 26),
  -- Alolan Meowth - Return - TM27
  (52, 5201, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 27),
  -- Alolan Meowth - Shadow Ball - TM30
  (52, 5201, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 28),
  -- Alolan Meowth - Double Team - TM32
  (52, 5201, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 29),
  -- Alolan Meowth - Aerial Ace - TM40
  (52, 5201, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 30),
  -- Alolan Meowth - Torment - TM41
  (52, 5201, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 31),
  -- Alolan Meowth - Facade - TM42
  (52, 5201, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 32),
  -- Alolan Meowth - Rest - TM44
  (52, 5201, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 33),
  -- Alolan Meowth - Attract - TM45
  (52, 5201, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 34),
  -- Alolan Meowth - Thief - TM46
  (52, 5201, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 35),
  -- Alolan Meowth - Round - TM48
  (52, 5201, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 36),
  -- Alolan Meowth - Echoed Voice - TM49
  (52, 5201, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 37),
  -- Alolan Meowth - Quash - TM60
  (52, 5201, 511, 15, NULL, 2, NULL, NULL, 15002060, NULL, 38),
  -- Alolan Meowth - Embargo - TM63
  (52, 5201, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 39),
  -- Alolan Meowth - Shadow Claw - TM65
  (52, 5201, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 40),
  -- Alolan Meowth - Payback - TM66
  (52, 5201, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 41),
  -- Alolan Meowth - Psych Up - TM77
  (52, 5201, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 42),
  -- Alolan Meowth - Dream Eater - TM85
  (52, 5201, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 43),
  -- Alolan Meowth - Swagger - TM87
  (52, 5201, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 44),
  -- Alolan Meowth - Sleep Talk - TM88
  (52, 5201, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 45),
  -- Alolan Meowth - U-turn - TM89
  (52, 5201, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 46),
  -- Alolan Meowth - Substitute - TM90
  (52, 5201, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 47),
  -- Alolan Meowth - Dark Pulse - TM97
  (52, 5201, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 48),
  -- Alolan Meowth - Confide - TM100
  (52, 5201, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 49),
  -- Alolan Meowth - Hypnosis - Egg
  (52, 5201, 95, 15, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Alolan Meowth - Amnesia - Egg
  (52, 5201, 133, 15, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Alolan Meowth - Flail - Egg
  (52, 5201, 175, 15, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Alolan Meowth - Spite - Egg
  (52, 5201, 180, 15, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Alolan Meowth - Charm - Egg
  (52, 5201, 204, 15, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Alolan Meowth - Flatter - Egg
  (52, 5201, 260, 15, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Alolan Meowth - Assist - Egg
  (52, 5201, 274, 15, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Alolan Meowth - Snatch - Egg
  (52, 5201, 289, 15, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Alolan Meowth - Covet - Egg
  (52, 5201, 343, 15, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Alolan Meowth - Punishment - Egg
  (52, 5201, 386, 15, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Alolan Meowth - Foul Play - Egg
  (52, 5201, 492, 15, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Alolan Meowth - Parting Shot - Egg
  (52, 5201, 575, 15, NULL, 5, NULL, NULL, NULL, NULL, 61),

  -- Alolan Persian - Scratch - Level 1
  (53, 5301, 10, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Persian - Bite - Level 1
  (53, 5301, 44, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Persian - Growl - Level 1
  (53, 5301, 45, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alolan Persian - Swift - Level 1
  (53, 5301, 129, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Alolan Persian - Fake Out - Level 1
  (53, 5301, 252, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Alolan Persian - Switcheroo - Level 1
  (53, 5301, 415, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Alolan Persian - Quash - Level 1
  (53, 5301, 511, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Alolan Persian - Play Rough - Level 1
  (53, 5301, 583, 15, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Alolan Persian - Bite - Level 6
  (53, 5301, 44, 15, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Alolan Persian - Fake Out - Level 9
  (53, 5301, 252, 15, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Alolan Persian - Fury Swipes - Level 14
  (53, 5301, 154, 15, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Alolan Persian - Screech - Level 17
  (53, 5301, 103, 15, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Alolan Persian - Feint Attack - Level 22
  (53, 5301, 185, 15, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Alolan Persian - Taunt - Level 25
  (53, 5301, 269, 15, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Alolan Persian - Power Gem - Level 32
  (53, 5301, 408, 15, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Alolan Persian - Slash - Level 37
  (53, 5301, 163, 15, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Alolan Persian - Nasty Plot - Level 44
  (53, 5301, 417, 15, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Alolan Persian - Assurance - Level 49
  (53, 5301, 372, 15, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Alolan Persian - Captivate - Level 56
  (53, 5301, 445, 15, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Alolan Persian - Night Slash - Level 61
  (53, 5301, 400, 15, NULL, 1, 61, NULL, NULL, NULL, 20),
  -- Alolan Persian - Feint - Level 65
  (53, 5301, 364, 15, NULL, 1, 65, NULL, NULL, NULL, 21),
  -- Alolan Persian - Dark Pulse - Level 69
  (53, 5301, 399, 15, NULL, 1, 69, NULL, NULL, NULL, 22),
  -- Alolan Persian - Work Up - TM01
  (53, 5301, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 23),
  -- Alolan Persian - Roar - TM05
  (53, 5301, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 24),
  -- Alolan Persian - Toxic - TM06
  (53, 5301, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 25),
  -- Alolan Persian - Hidden Power - TM10
  (53, 5301, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 26),
  -- Alolan Persian - Sunny Day - TM11
  (53, 5301, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 27),
  -- Alolan Persian - Taunt - TM12
  (53, 5301, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 28),
  -- Alolan Persian - Hyper Beam - TM15
  (53, 5301, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 29),
  -- Alolan Persian - Protect - TM17
  (53, 5301, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 30),
  -- Alolan Persian - Rain Dance - TM18
  (53, 5301, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 31),
  -- Alolan Persian - Frustration - TM21
  (53, 5301, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 32),
  -- Alolan Persian - Thunderbolt - TM24
  (53, 5301, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 33),
  -- Alolan Persian - Thunder - TM25
  (53, 5301, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 34),
  -- Alolan Persian - Return - TM27
  (53, 5301, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 35),
  -- Alolan Persian - Shadow Ball - TM30
  (53, 5301, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 36),
  -- Alolan Persian - Double Team - TM32
  (53, 5301, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 37),
  -- Alolan Persian - Aerial Ace - TM40
  (53, 5301, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 38),
  -- Alolan Persian - Torment - TM41
  (53, 5301, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 39),
  -- Alolan Persian - Facade - TM42
  (53, 5301, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 40),
  -- Alolan Persian - Rest - TM44
  (53, 5301, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 41),
  -- Alolan Persian - Attract - TM45
  (53, 5301, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 42),
  -- Alolan Persian - Thief - TM46
  (53, 5301, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 43),
  -- Alolan Persian - Round - TM48
  (53, 5301, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 44),
  -- Alolan Persian - Echoed Voice - TM49
  (53, 5301, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 45),
  -- Alolan Persian - Quash - TM60
  (53, 5301, 511, 15, NULL, 2, NULL, NULL, 15002060, NULL, 46),
  -- Alolan Persian - Embargo - TM63
  (53, 5301, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 47),
  -- Alolan Persian - Shadow Claw - TM65
  (53, 5301, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 48),
  -- Alolan Persian - Payback - TM66
  (53, 5301, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 49),
  -- Alolan Persian - Giga Impact - TM68
  (53, 5301, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 50),
  -- Alolan Persian - Psych Up - TM77
  (53, 5301, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 51),
  -- Alolan Persian - Dream Eater - TM85
  (53, 5301, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 52),
  -- Alolan Persian - Swagger - TM87
  (53, 5301, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 53),
  -- Alolan Persian - Sleep Talk - TM88
  (53, 5301, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 54),
  -- Alolan Persian - U-turn - TM89
  (53, 5301, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 55),
  -- Alolan Persian - Substitute - TM90
  (53, 5301, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 56),
  -- Alolan Persian - Snarl - TM95
  (53, 5301, 555, 15, NULL, 2, NULL, NULL, 15002095, NULL, 57),
  -- Alolan Persian - Dark Pulse - TM97
  (53, 5301, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 58),
  -- Alolan Persian - Confide - TM100
  (53, 5301, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 59),
  -- Alolan Persian - Swift - Evolution
  (53, 5301, 129, 15, NULL, 7, NULL, NULL, NULL, NULL, 60),

  -- Alolan Geodude - Tackle - Level 1
  (74, 7401, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Geodude - Defense Curl - Level 1
  (74, 7401, 111, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Geodude - Charge - Level 4
  (74, 7401, 268, 15, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Alolan Geodude - Rock Polish - Level 6
  (74, 7401, 397, 15, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Alolan Geodude - Rollout - Level 10
  (74, 7401, 205, 15, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Alolan Geodude - Spark - Level 12
  (74, 7401, 209, 15, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Alolan Geodude - Rock Throw - Level 16
  (74, 7401, 88, 15, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Alolan Geodude - Smack Down - Level 18
  (74, 7401, 479, 15, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Alolan Geodude - Thunder Punch - Level 22
  (74, 7401, 9, 15, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Alolan Geodude - Self-Destruct - Level 24
  (74, 7401, 120, 15, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Alolan Geodude - Stealth Rock - Level 28
  (74, 7401, 446, 15, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Alolan Geodude - Rock Blast - Level 30
  (74, 7401, 350, 15, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Alolan Geodude - Discharge - Level 34
  (74, 7401, 435, 15, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Alolan Geodude - Explosion - Level 36
  (74, 7401, 153, 15, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Alolan Geodude - Double-Edge - Level 40
  (74, 7401, 38, 15, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Alolan Geodude - Stone Edge - Level 42
  (74, 7401, 444, 15, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Alolan Geodude - Toxic - TM06
  (74, 7401, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Alolan Geodude - Hidden Power - TM10
  (74, 7401, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Alolan Geodude - Sunny Day - TM11
  (74, 7401, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 19),
  -- Alolan Geodude - Protect - TM17
  (74, 7401, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 20),
  -- Alolan Geodude - Frustration - TM21
  (74, 7401, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 21),
  -- Alolan Geodude - Smack Down - TM23
  (74, 7401, 479, 15, NULL, 2, NULL, NULL, 15002023, NULL, 22),
  -- Alolan Geodude - Thunderbolt - TM24
  (74, 7401, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 23),
  -- Alolan Geodude - Thunder - TM25
  (74, 7401, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 24),
  -- Alolan Geodude - Earthquake - TM26
  (74, 7401, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 25),
  -- Alolan Geodude - Return - TM27
  (74, 7401, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 26),
  -- Alolan Geodude - Brick Break - TM31
  (74, 7401, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 27),
  -- Alolan Geodude - Double Team - TM32
  (74, 7401, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 28),
  -- Alolan Geodude - Flamethrower - TM35
  (74, 7401, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 29),
  -- Alolan Geodude - Sandstorm - TM37
  (74, 7401, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 30),
  -- Alolan Geodude - Fire Blast - TM38
  (74, 7401, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 31),
  -- Alolan Geodude - Rock Tomb - TM39
  (74, 7401, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 32),
  -- Alolan Geodude - Facade - TM42
  (74, 7401, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 33),
  -- Alolan Geodude - Rest - TM44
  (74, 7401, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 34),
  -- Alolan Geodude - Attract - TM45
  (74, 7401, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 35),
  -- Alolan Geodude - Round - TM48
  (74, 7401, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 36),
  -- Alolan Geodude - Fling - TM56
  (74, 7401, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 37),
  -- Alolan Geodude - Charge Beam - TM57
  (74, 7401, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 38),
  -- Alolan Geodude - Brutal Swing - TM59
  (74, 7401, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 39),
  -- Alolan Geodude - Explosion - TM64
  (74, 7401, 153, 15, NULL, 2, NULL, NULL, 15002064, NULL, 40),
  -- Alolan Geodude - Rock Polish - TM69
  (74, 7401, 397, 15, NULL, 2, NULL, NULL, 15002069, NULL, 41),
  -- Alolan Geodude - Stone Edge - TM71
  (74, 7401, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 42),
  -- Alolan Geodude - Volt Switch - TM72
  (74, 7401, 521, 15, NULL, 2, NULL, NULL, 15002072, NULL, 43),
  -- Alolan Geodude - Gyro Ball - TM74
  (74, 7401, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 44),
  -- Alolan Geodude - Bulldoze - TM78
  (74, 7401, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 45),
  -- Alolan Geodude - Rock Slide - TM80
  (74, 7401, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 46),
  -- Alolan Geodude - Swagger - TM87
  (74, 7401, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 47),
  -- Alolan Geodude - Sleep Talk - TM88
  (74, 7401, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 48),
  -- Alolan Geodude - Substitute - TM90
  (74, 7401, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 49),
  -- Alolan Geodude - Nature Power - TM96
  (74, 7401, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 50),
  -- Alolan Geodude - Confide - TM100
  (74, 7401, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 51),
  -- Alolan Geodude - Counter - Egg
  (74, 7401, 68, 15, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Alolan Geodude - Screech - Egg
  (74, 7401, 103, 15, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Alolan Geodude - Curse - Egg
  (74, 7401, 174, 15, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Alolan Geodude - Flail - Egg
  (74, 7401, 175, 15, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Alolan Geodude - Endure - Egg
  (74, 7401, 203, 15, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Alolan Geodude - Block - Egg
  (74, 7401, 335, 15, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Alolan Geodude - Magnet Rise - Egg
  (74, 7401, 393, 15, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Alolan Geodude - Rock Climb - Egg
  (74, 7401, 431, 15, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Alolan Geodude - Wide Guard - Egg
  (74, 7401, 469, 15, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Alolan Geodude - Autotomize - Egg
  (74, 7401, 475, 15, NULL, 5, NULL, NULL, NULL, NULL, 61),

  -- Alolan Graveler - Tackle - Level 1
  (75, 7501, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Graveler - Defense Curl - Level 1
  (75, 7501, 111, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Graveler - Charge - Level 1
  (75, 7501, 268, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alolan Graveler - Rock Polish - Level 1
  (75, 7501, 397, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Alolan Graveler - Charge - Level 4
  (75, 7501, 268, 15, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Alolan Graveler - Rock Polish - Level 6
  (75, 7501, 397, 15, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Alolan Graveler - Rollout - Level 10
  (75, 7501, 205, 15, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Alolan Graveler - Spark - Level 12
  (75, 7501, 209, 15, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Alolan Graveler - Rock Throw - Level 16
  (75, 7501, 88, 15, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Alolan Graveler - Smack Down - Level 18
  (75, 7501, 479, 15, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Alolan Graveler - Thunder Punch - Level 22
  (75, 7501, 9, 15, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Alolan Graveler - Self-Destruct - Level 24
  (75, 7501, 120, 15, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Alolan Graveler - Stealth Rock - Level 30
  (75, 7501, 446, 15, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Alolan Graveler - Rock Blast - Level 34
  (75, 7501, 350, 15, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Alolan Graveler - Discharge - Level 40
  (75, 7501, 435, 15, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Alolan Graveler - Explosion - Level 44
  (75, 7501, 153, 15, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Alolan Graveler - Double-Edge - Level 50
  (75, 7501, 38, 15, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Alolan Graveler - Stone Edge - Level 54
  (75, 7501, 444, 15, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Alolan Graveler - Toxic - TM06
  (75, 7501, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Alolan Graveler - Hidden Power - TM10
  (75, 7501, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 20),
  -- Alolan Graveler - Sunny Day - TM11
  (75, 7501, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 21),
  -- Alolan Graveler - Protect - TM17
  (75, 7501, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 22),
  -- Alolan Graveler - Frustration - TM21
  (75, 7501, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 23),
  -- Alolan Graveler - Smack Down - TM23
  (75, 7501, 479, 15, NULL, 2, NULL, NULL, 15002023, NULL, 24),
  -- Alolan Graveler - Thunderbolt - TM24
  (75, 7501, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 25),
  -- Alolan Graveler - Thunder - TM25
  (75, 7501, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 26),
  -- Alolan Graveler - Earthquake - TM26
  (75, 7501, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 27),
  -- Alolan Graveler - Return - TM27
  (75, 7501, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 28),
  -- Alolan Graveler - Brick Break - TM31
  (75, 7501, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 29),
  -- Alolan Graveler - Double Team - TM32
  (75, 7501, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 30),
  -- Alolan Graveler - Flamethrower - TM35
  (75, 7501, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 31),
  -- Alolan Graveler - Sandstorm - TM37
  (75, 7501, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 32),
  -- Alolan Graveler - Fire Blast - TM38
  (75, 7501, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 33),
  -- Alolan Graveler - Rock Tomb - TM39
  (75, 7501, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 34),
  -- Alolan Graveler - Facade - TM42
  (75, 7501, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 35),
  -- Alolan Graveler - Rest - TM44
  (75, 7501, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 36),
  -- Alolan Graveler - Attract - TM45
  (75, 7501, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 37),
  -- Alolan Graveler - Round - TM48
  (75, 7501, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 38),
  -- Alolan Graveler - Fling - TM56
  (75, 7501, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 39),
  -- Alolan Graveler - Charge Beam - TM57
  (75, 7501, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 40),
  -- Alolan Graveler - Brutal Swing - TM59
  (75, 7501, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 41),
  -- Alolan Graveler - Explosion - TM64
  (75, 7501, 153, 15, NULL, 2, NULL, NULL, 15002064, NULL, 42),
  -- Alolan Graveler - Rock Polish - TM69
  (75, 7501, 397, 15, NULL, 2, NULL, NULL, 15002069, NULL, 43),
  -- Alolan Graveler - Stone Edge - TM71
  (75, 7501, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 44),
  -- Alolan Graveler - Volt Switch - TM72
  (75, 7501, 521, 15, NULL, 2, NULL, NULL, 15002072, NULL, 45),
  -- Alolan Graveler - Gyro Ball - TM74
  (75, 7501, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 46),
  -- Alolan Graveler - Bulldoze - TM78
  (75, 7501, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 47),
  -- Alolan Graveler - Rock Slide - TM80
  (75, 7501, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 48),
  -- Alolan Graveler - Swagger - TM87
  (75, 7501, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 49),
  -- Alolan Graveler - Sleep Talk - TM88
  (75, 7501, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 50),
  -- Alolan Graveler - Substitute - TM90
  (75, 7501, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 51),
  -- Alolan Graveler - Nature Power - TM96
  (75, 7501, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 52),
  -- Alolan Graveler - Confide - TM100
  (75, 7501, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 53),

  -- Alolan Golem - Tackle - Level 1
  (76, 7601, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Golem - Defense Curl - Level 1
  (76, 7601, 111, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Golem - Charge - Level 1
  (76, 7601, 268, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alolan Golem - Rock Polish - Level 1
  (76, 7601, 397, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Alolan Golem - Heavy Slam - Level 1
  (76, 7601, 484, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Alolan Golem - Charge - Level 4
  (76, 7601, 268, 15, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Alolan Golem - Rock Polish - Level 6
  (76, 7601, 397, 15, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Alolan Golem - Steamroller - Level 10
  (76, 7601, 537, 15, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Alolan Golem - Spark - Level 12
  (76, 7601, 209, 15, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Alolan Golem - Rock Throw - Level 16
  (76, 7601, 88, 15, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Alolan Golem - Smack Down - Level 18
  (76, 7601, 479, 15, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Alolan Golem - Thunder Punch - Level 22
  (76, 7601, 9, 15, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Alolan Golem - Self-Destruct - Level 24
  (76, 7601, 120, 15, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Alolan Golem - Stealth Rock - Level 30
  (76, 7601, 446, 15, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Alolan Golem - Rock Blast - Level 34
  (76, 7601, 350, 15, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Alolan Golem - Discharge - Level 40
  (76, 7601, 435, 15, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Alolan Golem - Explosion - Level 44
  (76, 7601, 153, 15, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Alolan Golem - Double-Edge - Level 50
  (76, 7601, 38, 15, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Alolan Golem - Stone Edge - Level 54
  (76, 7601, 444, 15, NULL, 1, 54, NULL, NULL, NULL, 19),
  -- Alolan Golem - Heavy Slam - Level 60
  (76, 7601, 484, 15, NULL, 1, 60, NULL, NULL, NULL, 20),
  -- Alolan Golem - Roar - TM05
  (76, 7601, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 21),
  -- Alolan Golem - Toxic - TM06
  (76, 7601, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 22),
  -- Alolan Golem - Hidden Power - TM10
  (76, 7601, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 23),
  -- Alolan Golem - Sunny Day - TM11
  (76, 7601, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 24),
  -- Alolan Golem - Hyper Beam - TM15
  (76, 7601, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 25),
  -- Alolan Golem - Protect - TM17
  (76, 7601, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 26),
  -- Alolan Golem - Frustration - TM21
  (76, 7601, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 27),
  -- Alolan Golem - Smack Down - TM23
  (76, 7601, 479, 15, NULL, 2, NULL, NULL, 15002023, NULL, 28),
  -- Alolan Golem - Thunderbolt - TM24
  (76, 7601, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 29),
  -- Alolan Golem - Thunder - TM25
  (76, 7601, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 30),
  -- Alolan Golem - Earthquake - TM26
  (76, 7601, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 31),
  -- Alolan Golem - Return - TM27
  (76, 7601, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 32),
  -- Alolan Golem - Brick Break - TM31
  (76, 7601, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 33),
  -- Alolan Golem - Double Team - TM32
  (76, 7601, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 34),
  -- Alolan Golem - Flamethrower - TM35
  (76, 7601, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 35),
  -- Alolan Golem - Sandstorm - TM37
  (76, 7601, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 36),
  -- Alolan Golem - Fire Blast - TM38
  (76, 7601, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 37),
  -- Alolan Golem - Rock Tomb - TM39
  (76, 7601, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 38),
  -- Alolan Golem - Facade - TM42
  (76, 7601, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 39),
  -- Alolan Golem - Rest - TM44
  (76, 7601, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 40),
  -- Alolan Golem - Attract - TM45
  (76, 7601, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 41),
  -- Alolan Golem - Round - TM48
  (76, 7601, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 42),
  -- Alolan Golem - Echoed Voice - TM49
  (76, 7601, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 43),
  -- Alolan Golem - Focus Blast - TM52
  (76, 7601, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 44),
  -- Alolan Golem - Fling - TM56
  (76, 7601, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 45),
  -- Alolan Golem - Charge Beam - TM57
  (76, 7601, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 46),
  -- Alolan Golem - Brutal Swing - TM59
  (76, 7601, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 47),
  -- Alolan Golem - Explosion - TM64
  (76, 7601, 153, 15, NULL, 2, NULL, NULL, 15002064, NULL, 48),
  -- Alolan Golem - Giga Impact - TM68
  (76, 7601, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 49),
  -- Alolan Golem - Rock Polish - TM69
  (76, 7601, 397, 15, NULL, 2, NULL, NULL, 15002069, NULL, 50),
  -- Alolan Golem - Stone Edge - TM71
  (76, 7601, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 51),
  -- Alolan Golem - Volt Switch - TM72
  (76, 7601, 521, 15, NULL, 2, NULL, NULL, 15002072, NULL, 52),
  -- Alolan Golem - Gyro Ball - TM74
  (76, 7601, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 53),
  -- Alolan Golem - Bulldoze - TM78
  (76, 7601, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 54),
  -- Alolan Golem - Rock Slide - TM80
  (76, 7601, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 55),
  -- Alolan Golem - Swagger - TM87
  (76, 7601, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 56),
  -- Alolan Golem - Sleep Talk - TM88
  (76, 7601, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 57),
  -- Alolan Golem - Substitute - TM90
  (76, 7601, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 58),
  -- Alolan Golem - Wild Charge - TM93
  (76, 7601, 528, 15, NULL, 2, NULL, NULL, 15002093, NULL, 59),
  -- Alolan Golem - Nature Power - TM96
  (76, 7601, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 60),
  -- Alolan Golem - Confide - TM100
  (76, 7601, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 61),

  -- Alolan Grimer - Pound - Level 1
  (88, 8801, 1, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Grimer - Poison Gas - Level 1
  (88, 8801, 139, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Grimer - Harden - Level 4
  (88, 8801, 106, 15, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Alolan Grimer - Bite - Level 7
  (88, 8801, 44, 15, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Alolan Grimer - Disable - Level 12
  (88, 8801, 50, 15, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Alolan Grimer - Acid Spray - Level 15
  (88, 8801, 491, 15, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Alolan Grimer - Poison Fang - Level 18
  (88, 8801, 305, 15, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Alolan Grimer - Minimize - Level 21
  (88, 8801, 107, 15, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Alolan Grimer - Fling - Level 26
  (88, 8801, 374, 15, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Alolan Grimer - Knock Off - Level 29
  (88, 8801, 282, 15, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Alolan Grimer - Crunch - Level 32
  (88, 8801, 242, 15, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Alolan Grimer - Screech - Level 37
  (88, 8801, 103, 15, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Alolan Grimer - Gunk Shot - Level 40
  (88, 8801, 441, 15, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Alolan Grimer - Acid Armor - Level 43
  (88, 8801, 151, 15, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Alolan Grimer - Belch - Level 46
  (88, 8801, 562, 15, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Alolan Grimer - Memento - Level 48
  (88, 8801, 262, 15, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Alolan Grimer - Toxic - TM06
  (88, 8801, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Alolan Grimer - Venoshock - TM09
  (88, 8801, 474, 15, NULL, 2, NULL, NULL, 15002009, NULL, 18),
  -- Alolan Grimer - Hidden Power - TM10
  (88, 8801, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 19),
  -- Alolan Grimer - Sunny Day - TM11
  (88, 8801, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 20),
  -- Alolan Grimer - Taunt - TM12
  (88, 8801, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 21),
  -- Alolan Grimer - Protect - TM17
  (88, 8801, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 22),
  -- Alolan Grimer - Rain Dance - TM18
  (88, 8801, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 23),
  -- Alolan Grimer - Frustration - TM21
  (88, 8801, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 24),
  -- Alolan Grimer - Return - TM27
  (88, 8801, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 25),
  -- Alolan Grimer - Shadow Ball - TM30
  (88, 8801, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 26),
  -- Alolan Grimer - Double Team - TM32
  (88, 8801, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 27),
  -- Alolan Grimer - Sludge Wave - TM34
  (88, 8801, 482, 15, NULL, 2, NULL, NULL, 15002034, NULL, 28),
  -- Alolan Grimer - Flamethrower - TM35
  (88, 8801, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 29),
  -- Alolan Grimer - Sludge Bomb - TM36
  (88, 8801, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 30),
  -- Alolan Grimer - Fire Blast - TM38
  (88, 8801, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 31),
  -- Alolan Grimer - Rock Tomb - TM39
  (88, 8801, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 32),
  -- Alolan Grimer - Torment - TM41
  (88, 8801, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 33),
  -- Alolan Grimer - Facade - TM42
  (88, 8801, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 34),
  -- Alolan Grimer - Rest - TM44
  (88, 8801, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 35),
  -- Alolan Grimer - Attract - TM45
  (88, 8801, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 36),
  -- Alolan Grimer - Thief - TM46
  (88, 8801, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 37),
  -- Alolan Grimer - Round - TM48
  (88, 8801, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 38),
  -- Alolan Grimer - Fling - TM56
  (88, 8801, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 39),
  -- Alolan Grimer - Brutal Swing - TM59
  (88, 8801, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 40),
  -- Alolan Grimer - Quash - TM60
  (88, 8801, 511, 15, NULL, 2, NULL, NULL, 15002060, NULL, 41),
  -- Alolan Grimer - Embargo - TM63
  (88, 8801, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 42),
  -- Alolan Grimer - Explosion - TM64
  (88, 8801, 153, 15, NULL, 2, NULL, NULL, 15002064, NULL, 43),
  -- Alolan Grimer - Payback - TM66
  (88, 8801, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 44),
  -- Alolan Grimer - Rock Polish - TM69
  (88, 8801, 397, 15, NULL, 2, NULL, NULL, 15002069, NULL, 45),
  -- Alolan Grimer - Stone Edge - TM71
  (88, 8801, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 46),
  -- Alolan Grimer - Rock Slide - TM80
  (88, 8801, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 47),
  -- Alolan Grimer - Infestation - TM83
  (88, 8801, 611, 15, NULL, 2, NULL, NULL, 15002083, NULL, 48),
  -- Alolan Grimer - Poison Jab - TM84
  (88, 8801, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 49),
  -- Alolan Grimer - Swagger - TM87
  (88, 8801, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 50),
  -- Alolan Grimer - Sleep Talk - TM88
  (88, 8801, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 51),
  -- Alolan Grimer - Substitute - TM90
  (88, 8801, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 52),
  -- Alolan Grimer - Snarl - TM95
  (88, 8801, 555, 15, NULL, 2, NULL, NULL, 15002095, NULL, 53),
  -- Alolan Grimer - Confide - TM100
  (88, 8801, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 54),
  -- Alolan Grimer - Curse - Egg
  (88, 8801, 174, 15, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Alolan Grimer - Spite - Egg
  (88, 8801, 180, 15, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Alolan Grimer - Scary Face - Egg
  (88, 8801, 184, 15, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Alolan Grimer - Mean Look - Egg
  (88, 8801, 212, 15, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Alolan Grimer - Pursuit - Egg
  (88, 8801, 228, 15, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Alolan Grimer - Stockpile - Egg
  (88, 8801, 254, 15, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Alolan Grimer - Spit Up - Egg
  (88, 8801, 255, 15, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Alolan Grimer - Swallow - Egg
  (88, 8801, 256, 15, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Alolan Grimer - Imprison - Egg
  (88, 8801, 286, 15, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Alolan Grimer - Assurance - Egg
  (88, 8801, 372, 15, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Alolan Grimer - Shadow Sneak - Egg
  (88, 8801, 425, 15, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Alolan Grimer - Clear Smog - Egg
  (88, 8801, 499, 15, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Alolan Grimer - Power-Up Punch - Egg
  (88, 8801, 612, 15, NULL, 5, NULL, NULL, NULL, NULL, 67),

  -- Alolan Muk - Pound - Level 1
  (89, 8901, 1, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Muk - Bite - Level 1
  (89, 8901, 44, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Muk - Harden - Level 1
  (89, 8901, 106, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alolan Muk - Poison Gas - Level 1
  (89, 8901, 139, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Alolan Muk - Venom Drench - Level 1
  (89, 8901, 599, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Alolan Muk - Harden - Level 4
  (89, 8901, 106, 15, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Alolan Muk - Bite - Level 7
  (89, 8901, 44, 15, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Alolan Muk - Disable - Level 12
  (89, 8901, 50, 15, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Alolan Muk - Acid Spray - Level 15
  (89, 8901, 491, 15, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Alolan Muk - Poison Fang - Level 18
  (89, 8901, 305, 15, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Alolan Muk - Minimize - Level 21
  (89, 8901, 107, 15, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Alolan Muk - Fling - Level 26
  (89, 8901, 374, 15, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Alolan Muk - Knock Off - Level 29
  (89, 8901, 282, 15, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Alolan Muk - Crunch - Level 32
  (89, 8901, 242, 15, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Alolan Muk - Screech - Level 37
  (89, 8901, 103, 15, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Alolan Muk - Gunk Shot - Level 40
  (89, 8901, 441, 15, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Alolan Muk - Acid Armor - Level 46
  (89, 8901, 151, 15, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Alolan Muk - Belch - Level 52
  (89, 8901, 562, 15, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Alolan Muk - Memento - Level 57
  (89, 8901, 262, 15, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Alolan Muk - Toxic - TM06
  (89, 8901, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 20),
  -- Alolan Muk - Venoshock - TM09
  (89, 8901, 474, 15, NULL, 2, NULL, NULL, 15002009, NULL, 21),
  -- Alolan Muk - Hidden Power - TM10
  (89, 8901, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 22),
  -- Alolan Muk - Sunny Day - TM11
  (89, 8901, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 23),
  -- Alolan Muk - Taunt - TM12
  (89, 8901, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 24),
  -- Alolan Muk - Hyper Beam - TM15
  (89, 8901, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 25),
  -- Alolan Muk - Protect - TM17
  (89, 8901, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 26),
  -- Alolan Muk - Rain Dance - TM18
  (89, 8901, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 27),
  -- Alolan Muk - Frustration - TM21
  (89, 8901, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 28),
  -- Alolan Muk - Return - TM27
  (89, 8901, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 29),
  -- Alolan Muk - Shadow Ball - TM30
  (89, 8901, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 30),
  -- Alolan Muk - Brick Break - TM31
  (89, 8901, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 31),
  -- Alolan Muk - Double Team - TM32
  (89, 8901, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 32),
  -- Alolan Muk - Sludge Wave - TM34
  (89, 8901, 482, 15, NULL, 2, NULL, NULL, 15002034, NULL, 33),
  -- Alolan Muk - Flamethrower - TM35
  (89, 8901, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 34),
  -- Alolan Muk - Sludge Bomb - TM36
  (89, 8901, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 35),
  -- Alolan Muk - Fire Blast - TM38
  (89, 8901, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 36),
  -- Alolan Muk - Rock Tomb - TM39
  (89, 8901, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 37),
  -- Alolan Muk - Torment - TM41
  (89, 8901, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 38),
  -- Alolan Muk - Facade - TM42
  (89, 8901, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 39),
  -- Alolan Muk - Rest - TM44
  (89, 8901, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 40),
  -- Alolan Muk - Attract - TM45
  (89, 8901, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 41),
  -- Alolan Muk - Thief - TM46
  (89, 8901, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 42),
  -- Alolan Muk - Round - TM48
  (89, 8901, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 43),
  -- Alolan Muk - Focus Blast - TM52
  (89, 8901, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 44),
  -- Alolan Muk - Fling - TM56
  (89, 8901, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 45),
  -- Alolan Muk - Brutal Swing - TM59
  (89, 8901, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 46),
  -- Alolan Muk - Quash - TM60
  (89, 8901, 511, 15, NULL, 2, NULL, NULL, 15002060, NULL, 47),
  -- Alolan Muk - Embargo - TM63
  (89, 8901, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 48),
  -- Alolan Muk - Explosion - TM64
  (89, 8901, 153, 15, NULL, 2, NULL, NULL, 15002064, NULL, 49),
  -- Alolan Muk - Payback - TM66
  (89, 8901, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 50),
  -- Alolan Muk - Giga Impact - TM68
  (89, 8901, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 51),
  -- Alolan Muk - Rock Polish - TM69
  (89, 8901, 397, 15, NULL, 2, NULL, NULL, 15002069, NULL, 52),
  -- Alolan Muk - Stone Edge - TM71
  (89, 8901, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 53),
  -- Alolan Muk - Rock Slide - TM80
  (89, 8901, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 54),
  -- Alolan Muk - Infestation - TM83
  (89, 8901, 611, 15, NULL, 2, NULL, NULL, 15002083, NULL, 55),
  -- Alolan Muk - Poison Jab - TM84
  (89, 8901, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 56),
  -- Alolan Muk - Swagger - TM87
  (89, 8901, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 57),
  -- Alolan Muk - Sleep Talk - TM88
  (89, 8901, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 58),
  -- Alolan Muk - Substitute - TM90
  (89, 8901, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 59),
  -- Alolan Muk - Snarl - TM95
  (89, 8901, 555, 15, NULL, 2, NULL, NULL, 15002095, NULL, 60),
  -- Alolan Muk - Dark Pulse - TM97
  (89, 8901, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 61),
  -- Alolan Muk - Confide - TM100
  (89, 8901, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 62),
  -- Alolan Muk - Venom Drench - Evolution
  (89, 8901, 599, 15, NULL, 7, NULL, NULL, NULL, NULL, 63),

  -- Alolan Exeggutor - Confusion - Level 1
  (103, 10301, 93, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Exeggutor - Hypnosis - Level 1
  (103, 10301, 95, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Exeggutor - Barrage - Level 1
  (103, 10301, 140, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alolan Exeggutor - Seed Bomb - Level 1
  (103, 10301, 402, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Alolan Exeggutor - Dragon Hammer - Level 1
  (103, 10301, 692, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Alolan Exeggutor - Psyshock - Level 17
  (103, 10301, 473, 15, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Alolan Exeggutor - Egg Bomb - Level 27
  (103, 10301, 121, 15, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Alolan Exeggutor - Wood Hammer - Level 37
  (103, 10301, 452, 15, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Alolan Exeggutor - Leaf Storm - Level 47
  (103, 10301, 437, 15, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Alolan Exeggutor - Psyshock - TM03
  (103, 10301, 473, 15, NULL, 2, NULL, NULL, 15002003, NULL, 10),
  -- Alolan Exeggutor - Toxic - TM06
  (103, 10301, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 11),
  -- Alolan Exeggutor - Hidden Power - TM10
  (103, 10301, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 12),
  -- Alolan Exeggutor - Sunny Day - TM11
  (103, 10301, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 13),
  -- Alolan Exeggutor - Hyper Beam - TM15
  (103, 10301, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 14),
  -- Alolan Exeggutor - Light Screen - TM16
  (103, 10301, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 15),
  -- Alolan Exeggutor - Protect - TM17
  (103, 10301, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 16),
  -- Alolan Exeggutor - Frustration - TM21
  (103, 10301, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 17),
  -- Alolan Exeggutor - Solar Beam - TM22
  (103, 10301, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 18),
  -- Alolan Exeggutor - Earthquake - TM26
  (103, 10301, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 19),
  -- Alolan Exeggutor - Return - TM27
  (103, 10301, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 20),
  -- Alolan Exeggutor - Psychic - TM29
  (103, 10301, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 21),
  -- Alolan Exeggutor - Brick Break - TM31
  (103, 10301, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 22),
  -- Alolan Exeggutor - Double Team - TM32
  (103, 10301, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 23),
  -- Alolan Exeggutor - Reflect - TM33
  (103, 10301, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 24),
  -- Alolan Exeggutor - Flamethrower - TM35
  (103, 10301, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 25),
  -- Alolan Exeggutor - Sludge Bomb - TM36
  (103, 10301, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 26),
  -- Alolan Exeggutor - Facade - TM42
  (103, 10301, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 27),
  -- Alolan Exeggutor - Rest - TM44
  (103, 10301, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 28),
  -- Alolan Exeggutor - Attract - TM45
  (103, 10301, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 29),
  -- Alolan Exeggutor - Thief - TM46
  (103, 10301, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 30),
  -- Alolan Exeggutor - Round - TM48
  (103, 10301, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 31),
  -- Alolan Exeggutor - Energy Ball - TM53
  (103, 10301, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 32),
  -- Alolan Exeggutor - Brutal Swing - TM59
  (103, 10301, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 33),
  -- Alolan Exeggutor - Explosion - TM64
  (103, 10301, 153, 15, NULL, 2, NULL, NULL, 15002064, NULL, 34),
  -- Alolan Exeggutor - Giga Impact - TM68
  (103, 10301, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 35),
  -- Alolan Exeggutor - Swords Dance - TM75
  (103, 10301, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 36),
  -- Alolan Exeggutor - Psych Up - TM77
  (103, 10301, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 37),
  -- Alolan Exeggutor - Bulldoze - TM78
  (103, 10301, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 38),
  -- Alolan Exeggutor - Dragon Tail - TM82
  (103, 10301, 525, 15, NULL, 2, NULL, NULL, 15002082, NULL, 39),
  -- Alolan Exeggutor - Infestation - TM83
  (103, 10301, 611, 15, NULL, 2, NULL, NULL, 15002083, NULL, 40),
  -- Alolan Exeggutor - Dream Eater - TM85
  (103, 10301, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 41),
  -- Alolan Exeggutor - Grass Knot - TM86
  (103, 10301, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 42),
  -- Alolan Exeggutor - Swagger - TM87
  (103, 10301, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 43),
  -- Alolan Exeggutor - Sleep Talk - TM88
  (103, 10301, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 44),
  -- Alolan Exeggutor - Substitute - TM90
  (103, 10301, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 45),
  -- Alolan Exeggutor - Trick Room - TM92
  (103, 10301, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 46),
  -- Alolan Exeggutor - Nature Power - TM96
  (103, 10301, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 47),
  -- Alolan Exeggutor - Confide - TM100
  (103, 10301, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 48),
  -- Alolan Exeggutor - Draco Meteor - Tutor
  (103, 10301, 434, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 49),
  -- Alolan Exeggutor - Dragon Hammer - Evolution
  (103, 10301, 692, 15, NULL, 7, NULL, NULL, NULL, NULL, 50),

  -- Alolan Marowak - Tail Whip - Level 1
  (105, 10501, 39, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Marowak - Growl - Level 1
  (105, 10501, 45, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Marowak - Bone Club - Level 1
  (105, 10501, 125, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alolan Marowak - Flame Wheel - Level 1
  (105, 10501, 172, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Alolan Marowak - Tail Whip - Level 3
  (105, 10501, 39, 15, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Alolan Marowak - Bone Club - Level 7
  (105, 10501, 125, 15, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Alolan Marowak - Flame Wheel - Level 11
  (105, 10501, 172, 15, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Alolan Marowak - Leer - Level 13
  (105, 10501, 43, 15, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Alolan Marowak - Hex - Level 17
  (105, 10501, 506, 15, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Alolan Marowak - Bonemerang - Level 21
  (105, 10501, 155, 15, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Alolan Marowak - Will-O-Wisp - Level 23
  (105, 10501, 261, 15, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Alolan Marowak - Shadow Bone - Level 27
  (105, 10501, 708, 15, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Alolan Marowak - Thrash - Level 33
  (105, 10501, 37, 15, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Alolan Marowak - Fling - Level 37
  (105, 10501, 374, 15, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Alolan Marowak - Stomping Tantrum - Level 43
  (105, 10501, 707, 15, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Alolan Marowak - Endeavor - Level 49
  (105, 10501, 283, 15, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Alolan Marowak - Flare Blitz - Level 53
  (105, 10501, 394, 15, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Alolan Marowak - Retaliate - Level 59
  (105, 10501, 514, 15, NULL, 1, 59, NULL, NULL, NULL, 18),
  -- Alolan Marowak - Bone Rush - Level 65
  (105, 10501, 198, 15, NULL, 1, 65, NULL, NULL, NULL, 19),
  -- Alolan Marowak - Toxic - TM06
  (105, 10501, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 20),
  -- Alolan Marowak - Hidden Power - TM10
  (105, 10501, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 21),
  -- Alolan Marowak - Sunny Day - TM11
  (105, 10501, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 22),
  -- Alolan Marowak - Ice Beam - TM13
  (105, 10501, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 23),
  -- Alolan Marowak - Blizzard - TM14
  (105, 10501, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 24),
  -- Alolan Marowak - Hyper Beam - TM15
  (105, 10501, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 25),
  -- Alolan Marowak - Protect - TM17
  (105, 10501, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 26),
  -- Alolan Marowak - Rain Dance - TM18
  (105, 10501, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 27),
  -- Alolan Marowak - Frustration - TM21
  (105, 10501, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 28),
  -- Alolan Marowak - Smack Down - TM23
  (105, 10501, 479, 15, NULL, 2, NULL, NULL, 15002023, NULL, 29),
  -- Alolan Marowak - Thunderbolt - TM24
  (105, 10501, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 30),
  -- Alolan Marowak - Thunder - TM25
  (105, 10501, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 31),
  -- Alolan Marowak - Earthquake - TM26
  (105, 10501, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 32),
  -- Alolan Marowak - Return - TM27
  (105, 10501, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 33),
  -- Alolan Marowak - Shadow Ball - TM30
  (105, 10501, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 34),
  -- Alolan Marowak - Brick Break - TM31
  (105, 10501, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 35),
  -- Alolan Marowak - Double Team - TM32
  (105, 10501, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 36),
  -- Alolan Marowak - Flamethrower - TM35
  (105, 10501, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 37),
  -- Alolan Marowak - Sandstorm - TM37
  (105, 10501, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 38),
  -- Alolan Marowak - Fire Blast - TM38
  (105, 10501, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 39),
  -- Alolan Marowak - Rock Tomb - TM39
  (105, 10501, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 40),
  -- Alolan Marowak - Aerial Ace - TM40
  (105, 10501, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 41),
  -- Alolan Marowak - Facade - TM42
  (105, 10501, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 42),
  -- Alolan Marowak - Flame Charge - TM43
  (105, 10501, 488, 15, NULL, 2, NULL, NULL, 15002043, NULL, 43),
  -- Alolan Marowak - Rest - TM44
  (105, 10501, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 44),
  -- Alolan Marowak - Attract - TM45
  (105, 10501, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 45),
  -- Alolan Marowak - Thief - TM46
  (105, 10501, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 46),
  -- Alolan Marowak - Round - TM48
  (105, 10501, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 47),
  -- Alolan Marowak - Echoed Voice - TM49
  (105, 10501, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 48),
  -- Alolan Marowak - Focus Blast - TM52
  (105, 10501, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 49),
  -- Alolan Marowak - False Swipe - TM54
  (105, 10501, 206, 15, NULL, 2, NULL, NULL, 15002054, NULL, 50),
  -- Alolan Marowak - Fling - TM56
  (105, 10501, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 51),
  -- Alolan Marowak - Brutal Swing - TM59
  (105, 10501, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 52),
  -- Alolan Marowak - Will-O-Wisp - TM61
  (105, 10501, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 53),
  -- Alolan Marowak - Giga Impact - TM68
  (105, 10501, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 54),
  -- Alolan Marowak - Stone Edge - TM71
  (105, 10501, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 55),
  -- Alolan Marowak - Swords Dance - TM75
  (105, 10501, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 56),
  -- Alolan Marowak - Bulldoze - TM78
  (105, 10501, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 57),
  -- Alolan Marowak - Rock Slide - TM80
  (105, 10501, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 58),
  -- Alolan Marowak - Dream Eater - TM85
  (105, 10501, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 59),
  -- Alolan Marowak - Swagger - TM87
  (105, 10501, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 60),
  -- Alolan Marowak - Sleep Talk - TM88
  (105, 10501, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 61),
  -- Alolan Marowak - Substitute - TM90
  (105, 10501, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 62),
  -- Alolan Marowak - Dark Pulse - TM97
  (105, 10501, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 63),
  -- Alolan Marowak - Confide - TM100
  (105, 10501, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 64),

  -- Deoxys (Attack) - Wrap - Level 1
  (386, 38601, 35, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Attack) - Leer - Level 1
  (386, 38601, 43, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Attack) - Night Shade - Level 7
  (386, 38601, 101, 15, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Deoxys (Attack) - Teleport - Level 13
  (386, 38601, 100, 15, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Deoxys (Attack) - Taunt - Level 19
  (386, 38601, 269, 15, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Deoxys (Attack) - Pursuit - Level 25
  (386, 38601, 228, 15, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Deoxys (Attack) - Psychic - Level 31
  (386, 38601, 94, 15, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Deoxys (Attack) - Superpower - Level 37
  (386, 38601, 276, 15, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Deoxys (Attack) - Psycho Shift - Level 43
  (386, 38601, 375, 15, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Deoxys (Attack) - Zen Headbutt - Level 49
  (386, 38601, 428, 15, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Deoxys (Attack) - Cosmic Power - Level 55
  (386, 38601, 322, 15, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Deoxys (Attack) - Zap Cannon - Level 61
  (386, 38601, 192, 15, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Deoxys (Attack) - Psycho Boost - Level 67
  (386, 38601, 354, 15, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Deoxys (Attack) - Hyper Beam - Level 73
  (386, 38601, 63, 15, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Deoxys (Attack) - Psyshock - TM03
  (386, 38601, 473, 15, NULL, 2, NULL, NULL, 15002003, NULL, 15),
  -- Deoxys (Attack) - Calm Mind - TM04
  (386, 38601, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 16),
  -- Deoxys (Attack) - Toxic - TM06
  (386, 38601, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Deoxys (Attack) - Hidden Power - TM10
  (386, 38601, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Deoxys (Attack) - Sunny Day - TM11
  (386, 38601, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 19),
  -- Deoxys (Attack) - Taunt - TM12
  (386, 38601, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 20),
  -- Deoxys (Attack) - Ice Beam - TM13
  (386, 38601, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 21),
  -- Deoxys (Attack) - Hyper Beam - TM15
  (386, 38601, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 22),
  -- Deoxys (Attack) - Light Screen - TM16
  (386, 38601, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 23),
  -- Deoxys (Attack) - Protect - TM17
  (386, 38601, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 24),
  -- Deoxys (Attack) - Rain Dance - TM18
  (386, 38601, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 25),
  -- Deoxys (Attack) - Safeguard - TM20
  (386, 38601, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 26),
  -- Deoxys (Attack) - Frustration - TM21
  (386, 38601, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 27),
  -- Deoxys (Attack) - Solar Beam - TM22
  (386, 38601, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 28),
  -- Deoxys (Attack) - Thunderbolt - TM24
  (386, 38601, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 29),
  -- Deoxys (Attack) - Thunder - TM25
  (386, 38601, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 30),
  -- Deoxys (Attack) - Return - TM27
  (386, 38601, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 31),
  -- Deoxys (Attack) - Psychic - TM29
  (386, 38601, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 32),
  -- Deoxys (Attack) - Shadow Ball - TM30
  (386, 38601, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 33),
  -- Deoxys (Attack) - Brick Break - TM31
  (386, 38601, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 34),
  -- Deoxys (Attack) - Double Team - TM32
  (386, 38601, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 35),
  -- Deoxys (Attack) - Reflect - TM33
  (386, 38601, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 36),
  -- Deoxys (Attack) - Rock Tomb - TM39
  (386, 38601, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 37),
  -- Deoxys (Attack) - Aerial Ace - TM40
  (386, 38601, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 38),
  -- Deoxys (Attack) - Torment - TM41
  (386, 38601, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 39),
  -- Deoxys (Attack) - Facade - TM42
  (386, 38601, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 40),
  -- Deoxys (Attack) - Rest - TM44
  (386, 38601, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 41),
  -- Deoxys (Attack) - Low Sweep - TM47
  (386, 38601, 490, 15, NULL, 2, NULL, NULL, 15002047, NULL, 42),
  -- Deoxys (Attack) - Round - TM48
  (386, 38601, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 43),
  -- Deoxys (Attack) - Focus Blast - TM52
  (386, 38601, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 44),
  -- Deoxys (Attack) - Energy Ball - TM53
  (386, 38601, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 45),
  -- Deoxys (Attack) - Fling - TM56
  (386, 38601, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 46),
  -- Deoxys (Attack) - Charge Beam - TM57
  (386, 38601, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 47),
  -- Deoxys (Attack) - Brutal Swing - TM59
  (386, 38601, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 48),
  -- Deoxys (Attack) - Giga Impact - TM68
  (386, 38601, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 49),
  -- Deoxys (Attack) - Thunder Wave - TM73
  (386, 38601, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 50),
  -- Deoxys (Attack) - Psych Up - TM77
  (386, 38601, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 51),
  -- Deoxys (Attack) - Rock Slide - TM80
  (386, 38601, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 52),
  -- Deoxys (Attack) - Poison Jab - TM84
  (386, 38601, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 53),
  -- Deoxys (Attack) - Dream Eater - TM85
  (386, 38601, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 54),
  -- Deoxys (Attack) - Grass Knot - TM86
  (386, 38601, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 55),
  -- Deoxys (Attack) - Swagger - TM87
  (386, 38601, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 56),
  -- Deoxys (Attack) - Sleep Talk - TM88
  (386, 38601, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 57),
  -- Deoxys (Attack) - Substitute - TM90
  (386, 38601, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 58),
  -- Deoxys (Attack) - Flash Cannon - TM91
  (386, 38601, 430, 15, NULL, 2, NULL, NULL, 15002091, NULL, 59),
  -- Deoxys (Attack) - Trick Room - TM92
  (386, 38601, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 60),
  -- Deoxys (Attack) - Dark Pulse - TM97
  (386, 38601, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 61),
  -- Deoxys (Attack) - Confide - TM100
  (386, 38601, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 62),

  -- Deoxys (Defense) - Wrap - Level 1
  (386, 38602, 35, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Defense) - Leer - Level 1
  (386, 38602, 43, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Defense) - Night Shade - Level 7
  (386, 38602, 101, 15, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Deoxys (Defense) - Teleport - Level 13
  (386, 38602, 100, 15, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Deoxys (Defense) - Knock Off - Level 19
  (386, 38602, 282, 15, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Deoxys (Defense) - Spikes - Level 25
  (386, 38602, 191, 15, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Deoxys (Defense) - Psychic - Level 31
  (386, 38602, 94, 15, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Deoxys (Defense) - Snatch - Level 37
  (386, 38602, 289, 15, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Deoxys (Defense) - Psycho Shift - Level 43
  (386, 38602, 375, 15, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Deoxys (Defense) - Zen Headbutt - Level 49
  (386, 38602, 428, 15, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Deoxys (Defense) - Amnesia - Level 55
  (386, 38602, 133, 15, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Deoxys (Defense) - Iron Defense - Level 55
  (386, 38602, 334, 15, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Deoxys (Defense) - Recover - Level 61
  (386, 38602, 105, 15, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Deoxys (Defense) - Psycho Boost - Level 67
  (386, 38602, 354, 15, NULL, 1, 67, NULL, NULL, NULL, 14),
  -- Deoxys (Defense) - Counter - Level 73
  (386, 38602, 68, 15, NULL, 1, 73, NULL, NULL, NULL, 15),
  -- Deoxys (Defense) - Mirror Coat - Level 73
  (386, 38602, 243, 15, NULL, 1, 73, NULL, NULL, NULL, 16),
  -- Deoxys (Defense) - Psyshock - TM03
  (386, 38602, 473, 15, NULL, 2, NULL, NULL, 15002003, NULL, 17),
  -- Deoxys (Defense) - Calm Mind - TM04
  (386, 38602, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 18),
  -- Deoxys (Defense) - Toxic - TM06
  (386, 38602, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Deoxys (Defense) - Hidden Power - TM10
  (386, 38602, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 20),
  -- Deoxys (Defense) - Sunny Day - TM11
  (386, 38602, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 21),
  -- Deoxys (Defense) - Taunt - TM12
  (386, 38602, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 22),
  -- Deoxys (Defense) - Ice Beam - TM13
  (386, 38602, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 23),
  -- Deoxys (Defense) - Hyper Beam - TM15
  (386, 38602, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 24),
  -- Deoxys (Defense) - Light Screen - TM16
  (386, 38602, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 25),
  -- Deoxys (Defense) - Protect - TM17
  (386, 38602, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 26),
  -- Deoxys (Defense) - Rain Dance - TM18
  (386, 38602, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 27),
  -- Deoxys (Defense) - Safeguard - TM20
  (386, 38602, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 28),
  -- Deoxys (Defense) - Frustration - TM21
  (386, 38602, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 29),
  -- Deoxys (Defense) - Solar Beam - TM22
  (386, 38602, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 30),
  -- Deoxys (Defense) - Thunderbolt - TM24
  (386, 38602, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 31),
  -- Deoxys (Defense) - Thunder - TM25
  (386, 38602, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 32),
  -- Deoxys (Defense) - Return - TM27
  (386, 38602, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 33),
  -- Deoxys (Defense) - Psychic - TM29
  (386, 38602, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 34),
  -- Deoxys (Defense) - Shadow Ball - TM30
  (386, 38602, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 35),
  -- Deoxys (Defense) - Brick Break - TM31
  (386, 38602, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 36),
  -- Deoxys (Defense) - Double Team - TM32
  (386, 38602, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 37),
  -- Deoxys (Defense) - Reflect - TM33
  (386, 38602, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 38),
  -- Deoxys (Defense) - Rock Tomb - TM39
  (386, 38602, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 39),
  -- Deoxys (Defense) - Aerial Ace - TM40
  (386, 38602, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 40),
  -- Deoxys (Defense) - Torment - TM41
  (386, 38602, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 41),
  -- Deoxys (Defense) - Facade - TM42
  (386, 38602, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 42),
  -- Deoxys (Defense) - Rest - TM44
  (386, 38602, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 43),
  -- Deoxys (Defense) - Low Sweep - TM47
  (386, 38602, 490, 15, NULL, 2, NULL, NULL, 15002047, NULL, 44),
  -- Deoxys (Defense) - Round - TM48
  (386, 38602, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 45),
  -- Deoxys (Defense) - Focus Blast - TM52
  (386, 38602, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 46),
  -- Deoxys (Defense) - Energy Ball - TM53
  (386, 38602, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 47),
  -- Deoxys (Defense) - Fling - TM56
  (386, 38602, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 48),
  -- Deoxys (Defense) - Charge Beam - TM57
  (386, 38602, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 49),
  -- Deoxys (Defense) - Brutal Swing - TM59
  (386, 38602, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 50),
  -- Deoxys (Defense) - Giga Impact - TM68
  (386, 38602, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 51),
  -- Deoxys (Defense) - Thunder Wave - TM73
  (386, 38602, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 52),
  -- Deoxys (Defense) - Psych Up - TM77
  (386, 38602, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 53),
  -- Deoxys (Defense) - Rock Slide - TM80
  (386, 38602, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 54),
  -- Deoxys (Defense) - Poison Jab - TM84
  (386, 38602, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 55),
  -- Deoxys (Defense) - Dream Eater - TM85
  (386, 38602, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 56),
  -- Deoxys (Defense) - Grass Knot - TM86
  (386, 38602, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 57),
  -- Deoxys (Defense) - Swagger - TM87
  (386, 38602, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 58),
  -- Deoxys (Defense) - Sleep Talk - TM88
  (386, 38602, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 59),
  -- Deoxys (Defense) - Substitute - TM90
  (386, 38602, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 60),
  -- Deoxys (Defense) - Flash Cannon - TM91
  (386, 38602, 430, 15, NULL, 2, NULL, NULL, 15002091, NULL, 61),
  -- Deoxys (Defense) - Trick Room - TM92
  (386, 38602, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 62),
  -- Deoxys (Defense) - Dark Pulse - TM97
  (386, 38602, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 63),
  -- Deoxys (Defense) - Confide - TM100
  (386, 38602, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 64),

  -- Deoxys (Speed) - Wrap - Level 1
  (386, 38603, 35, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Speed) - Leer - Level 1
  (386, 38603, 43, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Speed) - Night Shade - Level 7
  (386, 38603, 101, 15, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Deoxys (Speed) - Double Team - Level 13
  (386, 38603, 104, 15, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Deoxys (Speed) - Knock Off - Level 19
  (386, 38603, 282, 15, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Deoxys (Speed) - Pursuit - Level 25
  (386, 38603, 228, 15, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Deoxys (Speed) - Psychic - Level 31
  (386, 38603, 94, 15, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Deoxys (Speed) - Swift - Level 37
  (386, 38603, 129, 15, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Deoxys (Speed) - Psycho Shift - Level 43
  (386, 38603, 375, 15, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Deoxys (Speed) - Zen Headbutt - Level 49
  (386, 38603, 428, 15, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Deoxys (Speed) - Agility - Level 55
  (386, 38603, 97, 15, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Deoxys (Speed) - Recover - Level 61
  (386, 38603, 105, 15, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Deoxys (Speed) - Psycho Boost - Level 67
  (386, 38603, 354, 15, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Deoxys (Speed) - Extreme Speed - Level 73
  (386, 38603, 245, 15, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Deoxys (Speed) - Psyshock - TM03
  (386, 38603, 473, 15, NULL, 2, NULL, NULL, 15002003, NULL, 15),
  -- Deoxys (Speed) - Calm Mind - TM04
  (386, 38603, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 16),
  -- Deoxys (Speed) - Toxic - TM06
  (386, 38603, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Deoxys (Speed) - Hidden Power - TM10
  (386, 38603, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Deoxys (Speed) - Sunny Day - TM11
  (386, 38603, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 19),
  -- Deoxys (Speed) - Taunt - TM12
  (386, 38603, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 20),
  -- Deoxys (Speed) - Ice Beam - TM13
  (386, 38603, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 21),
  -- Deoxys (Speed) - Hyper Beam - TM15
  (386, 38603, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 22),
  -- Deoxys (Speed) - Light Screen - TM16
  (386, 38603, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 23),
  -- Deoxys (Speed) - Protect - TM17
  (386, 38603, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 24),
  -- Deoxys (Speed) - Rain Dance - TM18
  (386, 38603, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 25),
  -- Deoxys (Speed) - Safeguard - TM20
  (386, 38603, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 26),
  -- Deoxys (Speed) - Frustration - TM21
  (386, 38603, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 27),
  -- Deoxys (Speed) - Solar Beam - TM22
  (386, 38603, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 28),
  -- Deoxys (Speed) - Thunderbolt - TM24
  (386, 38603, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 29),
  -- Deoxys (Speed) - Thunder - TM25
  (386, 38603, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 30),
  -- Deoxys (Speed) - Return - TM27
  (386, 38603, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 31),
  -- Deoxys (Speed) - Psychic - TM29
  (386, 38603, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 32),
  -- Deoxys (Speed) - Shadow Ball - TM30
  (386, 38603, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 33),
  -- Deoxys (Speed) - Brick Break - TM31
  (386, 38603, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 34),
  -- Deoxys (Speed) - Double Team - TM32
  (386, 38603, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 35),
  -- Deoxys (Speed) - Reflect - TM33
  (386, 38603, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 36),
  -- Deoxys (Speed) - Rock Tomb - TM39
  (386, 38603, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 37),
  -- Deoxys (Speed) - Aerial Ace - TM40
  (386, 38603, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 38),
  -- Deoxys (Speed) - Torment - TM41
  (386, 38603, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 39),
  -- Deoxys (Speed) - Facade - TM42
  (386, 38603, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 40),
  -- Deoxys (Speed) - Rest - TM44
  (386, 38603, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 41),
  -- Deoxys (Speed) - Low Sweep - TM47
  (386, 38603, 490, 15, NULL, 2, NULL, NULL, 15002047, NULL, 42),
  -- Deoxys (Speed) - Round - TM48
  (386, 38603, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 43),
  -- Deoxys (Speed) - Focus Blast - TM52
  (386, 38603, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 44),
  -- Deoxys (Speed) - Energy Ball - TM53
  (386, 38603, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 45),
  -- Deoxys (Speed) - Fling - TM56
  (386, 38603, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 46),
  -- Deoxys (Speed) - Charge Beam - TM57
  (386, 38603, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 47),
  -- Deoxys (Speed) - Brutal Swing - TM59
  (386, 38603, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 48),
  -- Deoxys (Speed) - Giga Impact - TM68
  (386, 38603, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 49),
  -- Deoxys (Speed) - Thunder Wave - TM73
  (386, 38603, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 50),
  -- Deoxys (Speed) - Psych Up - TM77
  (386, 38603, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 51),
  -- Deoxys (Speed) - Rock Slide - TM80
  (386, 38603, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 52),
  -- Deoxys (Speed) - Poison Jab - TM84
  (386, 38603, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 53),
  -- Deoxys (Speed) - Dream Eater - TM85
  (386, 38603, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 54),
  -- Deoxys (Speed) - Grass Knot - TM86
  (386, 38603, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 55),
  -- Deoxys (Speed) - Swagger - TM87
  (386, 38603, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 56),
  -- Deoxys (Speed) - Sleep Talk - TM88
  (386, 38603, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 57),
  -- Deoxys (Speed) - Substitute - TM90
  (386, 38603, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 58),
  -- Deoxys (Speed) - Flash Cannon - TM91
  (386, 38603, 430, 15, NULL, 2, NULL, NULL, 15002091, NULL, 59),
  -- Deoxys (Speed) - Trick Room - TM92
  (386, 38603, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 60),
  -- Deoxys (Speed) - Dark Pulse - TM97
  (386, 38603, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 61),
  -- Deoxys (Speed) - Confide - TM100
  (386, 38603, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 62),

  -- Wormadam (Sandy Cloak) - Tackle - Level 1
  (413, 41301, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam (Sandy Cloak) - Protect - Level 1
  (413, 41301, 182, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wormadam (Sandy Cloak) - Sucker Punch - Level 1
  (413, 41301, 389, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wormadam (Sandy Cloak) - Bug Bite - Level 1
  (413, 41301, 450, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wormadam (Sandy Cloak) - Quiver Dance - Level 1
  (413, 41301, 483, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Wormadam (Sandy Cloak) - Protect - Level 10
  (413, 41301, 182, 15, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Wormadam (Sandy Cloak) - Bug Bite - Level 15
  (413, 41301, 450, 15, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Wormadam (Sandy Cloak) - Hidden Power - Level 20
  (413, 41301, 237, 15, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Wormadam (Sandy Cloak) - Confusion - Level 23
  (413, 41301, 93, 15, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Wormadam (Sandy Cloak) - Rock Blast - Level 26
  (413, 41301, 350, 15, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Wormadam (Sandy Cloak) - Harden - Level 29
  (413, 41301, 106, 15, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Wormadam (Sandy Cloak) - Psybeam - Level 32
  (413, 41301, 60, 15, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Wormadam (Sandy Cloak) - Captivate - Level 35
  (413, 41301, 445, 15, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Wormadam (Sandy Cloak) - Flail - Level 38
  (413, 41301, 175, 15, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Wormadam (Sandy Cloak) - Attract - Level 41
  (413, 41301, 213, 15, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Wormadam (Sandy Cloak) - Psychic - Level 44
  (413, 41301, 94, 15, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Wormadam (Sandy Cloak) - Fissure - Level 47
  (413, 41301, 90, 15, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Wormadam (Sandy Cloak) - Bug Buzz - Level 50
  (413, 41301, 405, 15, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Wormadam (Sandy Cloak) - Toxic - TM06
  (413, 41301, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Wormadam (Sandy Cloak) - Venoshock - TM09
  (413, 41301, 474, 15, NULL, 2, NULL, NULL, 15002009, NULL, 20),
  -- Wormadam (Sandy Cloak) - Hidden Power - TM10
  (413, 41301, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 21),
  -- Wormadam (Sandy Cloak) - Sunny Day - TM11
  (413, 41301, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 22),
  -- Wormadam (Sandy Cloak) - Hyper Beam - TM15
  (413, 41301, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 23),
  -- Wormadam (Sandy Cloak) - Protect - TM17
  (413, 41301, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 24),
  -- Wormadam (Sandy Cloak) - Rain Dance - TM18
  (413, 41301, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 25),
  -- Wormadam (Sandy Cloak) - Safeguard - TM20
  (413, 41301, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 26),
  -- Wormadam (Sandy Cloak) - Frustration - TM21
  (413, 41301, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 27),
  -- Wormadam (Sandy Cloak) - Earthquake - TM26
  (413, 41301, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 28),
  -- Wormadam (Sandy Cloak) - Return - TM27
  (413, 41301, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 29),
  -- Wormadam (Sandy Cloak) - Psychic - TM29
  (413, 41301, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 30),
  -- Wormadam (Sandy Cloak) - Shadow Ball - TM30
  (413, 41301, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 31),
  -- Wormadam (Sandy Cloak) - Double Team - TM32
  (413, 41301, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 32),
  -- Wormadam (Sandy Cloak) - Sandstorm - TM37
  (413, 41301, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 33),
  -- Wormadam (Sandy Cloak) - Rock Tomb - TM39
  (413, 41301, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 34),
  -- Wormadam (Sandy Cloak) - Facade - TM42
  (413, 41301, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 35),
  -- Wormadam (Sandy Cloak) - Rest - TM44
  (413, 41301, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 36),
  -- Wormadam (Sandy Cloak) - Attract - TM45
  (413, 41301, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 37),
  -- Wormadam (Sandy Cloak) - Thief - TM46
  (413, 41301, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 38),
  -- Wormadam (Sandy Cloak) - Round - TM48
  (413, 41301, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 39),
  -- Wormadam (Sandy Cloak) - Giga Impact - TM68
  (413, 41301, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 40),
  -- Wormadam (Sandy Cloak) - Psych Up - TM77
  (413, 41301, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 41),
  -- Wormadam (Sandy Cloak) - Bulldoze - TM78
  (413, 41301, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 42),
  -- Wormadam (Sandy Cloak) - Infestation - TM83
  (413, 41301, 611, 15, NULL, 2, NULL, NULL, 15002083, NULL, 43),
  -- Wormadam (Sandy Cloak) - Dream Eater - TM85
  (413, 41301, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 44),
  -- Wormadam (Sandy Cloak) - Swagger - TM87
  (413, 41301, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 45),
  -- Wormadam (Sandy Cloak) - Sleep Talk - TM88
  (413, 41301, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 46),
  -- Wormadam (Sandy Cloak) - Substitute - TM90
  (413, 41301, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 47),
  -- Wormadam (Sandy Cloak) - Confide - TM100
  (413, 41301, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 48),
  -- Wormadam (Sandy Cloak) - Quiver Dance - Evolution
  (413, 41301, 483, 15, NULL, 7, NULL, NULL, NULL, NULL, 49),

  -- Wormadam (Trash Cloak) - Tackle - Level 1
  (413, 41302, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam (Trash Cloak) - Protect - Level 1
  (413, 41302, 182, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wormadam (Trash Cloak) - Metal Burst - Level 1
  (413, 41302, 368, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wormadam (Trash Cloak) - Sucker Punch - Level 1
  (413, 41302, 389, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wormadam (Trash Cloak) - Bug Bite - Level 1
  (413, 41302, 450, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Wormadam (Trash Cloak) - Quiver Dance - Level 1
  (413, 41302, 483, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Wormadam (Trash Cloak) - Protect - Level 10
  (413, 41302, 182, 15, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Wormadam (Trash Cloak) - Bug Bite - Level 15
  (413, 41302, 450, 15, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Wormadam (Trash Cloak) - Hidden Power - Level 20
  (413, 41302, 237, 15, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Wormadam (Trash Cloak) - Confusion - Level 23
  (413, 41302, 93, 15, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Wormadam (Trash Cloak) - Mirror Shot - Level 26
  (413, 41302, 429, 15, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Wormadam (Trash Cloak) - Metal Sound - Level 29
  (413, 41302, 319, 15, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Wormadam (Trash Cloak) - Psybeam - Level 32
  (413, 41302, 60, 15, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Wormadam (Trash Cloak) - Captivate - Level 35
  (413, 41302, 445, 15, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Wormadam (Trash Cloak) - Flail - Level 38
  (413, 41302, 175, 15, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Wormadam (Trash Cloak) - Attract - Level 41
  (413, 41302, 213, 15, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Wormadam (Trash Cloak) - Psychic - Level 44
  (413, 41302, 94, 15, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Wormadam (Trash Cloak) - Iron Head - Level 47
  (413, 41302, 442, 15, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Wormadam (Trash Cloak) - Bug Buzz - Level 50
  (413, 41302, 405, 15, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Wormadam (Trash Cloak) - Toxic - TM06
  (413, 41302, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 20),
  -- Wormadam (Trash Cloak) - Venoshock - TM09
  (413, 41302, 474, 15, NULL, 2, NULL, NULL, 15002009, NULL, 21),
  -- Wormadam (Trash Cloak) - Hidden Power - TM10
  (413, 41302, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 22),
  -- Wormadam (Trash Cloak) - Sunny Day - TM11
  (413, 41302, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 23),
  -- Wormadam (Trash Cloak) - Hyper Beam - TM15
  (413, 41302, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 24),
  -- Wormadam (Trash Cloak) - Protect - TM17
  (413, 41302, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 25),
  -- Wormadam (Trash Cloak) - Rain Dance - TM18
  (413, 41302, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 26),
  -- Wormadam (Trash Cloak) - Safeguard - TM20
  (413, 41302, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 27),
  -- Wormadam (Trash Cloak) - Frustration - TM21
  (413, 41302, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 28),
  -- Wormadam (Trash Cloak) - Return - TM27
  (413, 41302, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 29),
  -- Wormadam (Trash Cloak) - Psychic - TM29
  (413, 41302, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 30),
  -- Wormadam (Trash Cloak) - Shadow Ball - TM30
  (413, 41302, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 31),
  -- Wormadam (Trash Cloak) - Double Team - TM32
  (413, 41302, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 32),
  -- Wormadam (Trash Cloak) - Facade - TM42
  (413, 41302, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 33),
  -- Wormadam (Trash Cloak) - Rest - TM44
  (413, 41302, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 34),
  -- Wormadam (Trash Cloak) - Attract - TM45
  (413, 41302, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 35),
  -- Wormadam (Trash Cloak) - Thief - TM46
  (413, 41302, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 36),
  -- Wormadam (Trash Cloak) - Round - TM48
  (413, 41302, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 37),
  -- Wormadam (Trash Cloak) - Giga Impact - TM68
  (413, 41302, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 38),
  -- Wormadam (Trash Cloak) - Gyro Ball - TM74
  (413, 41302, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 39),
  -- Wormadam (Trash Cloak) - Psych Up - TM77
  (413, 41302, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 40),
  -- Wormadam (Trash Cloak) - Infestation - TM83
  (413, 41302, 611, 15, NULL, 2, NULL, NULL, 15002083, NULL, 41),
  -- Wormadam (Trash Cloak) - Dream Eater - TM85
  (413, 41302, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 42),
  -- Wormadam (Trash Cloak) - Swagger - TM87
  (413, 41302, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 43),
  -- Wormadam (Trash Cloak) - Sleep Talk - TM88
  (413, 41302, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 44),
  -- Wormadam (Trash Cloak) - Substitute - TM90
  (413, 41302, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 45),
  -- Wormadam (Trash Cloak) - Flash Cannon - TM91
  (413, 41302, 430, 15, NULL, 2, NULL, NULL, 15002091, NULL, 46),
  -- Wormadam (Trash Cloak) - Confide - TM100
  (413, 41302, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 47),
  -- Wormadam (Trash Cloak) - Quiver Dance - Evolution
  (413, 41302, 483, 15, NULL, 7, NULL, NULL, NULL, NULL, 48),

  -- Rotom (Heat) - Thunder Shock - Level 1
  (479, 47901, 84, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Heat) - Thunder Wave - Level 1
  (479, 47901, 86, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Heat) - Confuse Ray - Level 1
  (479, 47901, 109, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Heat) - Charge - Level 1
  (479, 47901, 268, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Heat) - Trick - Level 1
  (479, 47901, 271, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Heat) - Astonish - Level 1
  (479, 47901, 310, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rotom (Heat) - Discharge - Level 1
  (479, 47901, 435, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Rotom (Heat) - Uproar - Level 8
  (479, 47901, 253, 15, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Rotom (Heat) - Double Team - Level 15
  (479, 47901, 104, 15, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Rotom (Heat) - Shock Wave - Level 22
  (479, 47901, 351, 15, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Rotom (Heat) - Ominous Wind - Level 29
  (479, 47901, 466, 15, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Rotom (Heat) - Substitute - Level 36
  (479, 47901, 164, 15, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Rotom (Heat) - Electro Ball - Level 43
  (479, 47901, 486, 15, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Rotom (Heat) - Hex - Level 50
  (479, 47901, 506, 15, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Rotom (Heat) - Charge - Level 57
  (479, 47901, 268, 15, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Rotom (Heat) - Discharge - Level 64
  (479, 47901, 435, 15, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Rotom (Heat) - Toxic - TM06
  (479, 47901, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Rotom (Heat) - Hidden Power - TM10
  (479, 47901, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Rotom (Heat) - Sunny Day - TM11
  (479, 47901, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 19),
  -- Rotom (Heat) - Light Screen - TM16
  (479, 47901, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 20),
  -- Rotom (Heat) - Protect - TM17
  (479, 47901, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 21),
  -- Rotom (Heat) - Rain Dance - TM18
  (479, 47901, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 22),
  -- Rotom (Heat) - Frustration - TM21
  (479, 47901, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 23),
  -- Rotom (Heat) - Thunderbolt - TM24
  (479, 47901, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 24),
  -- Rotom (Heat) - Thunder - TM25
  (479, 47901, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 25),
  -- Rotom (Heat) - Return - TM27
  (479, 47901, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 26),
  -- Rotom (Heat) - Shadow Ball - TM30
  (479, 47901, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 27),
  -- Rotom (Heat) - Double Team - TM32
  (479, 47901, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 28),
  -- Rotom (Heat) - Reflect - TM33
  (479, 47901, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 29),
  -- Rotom (Heat) - Facade - TM42
  (479, 47901, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 30),
  -- Rotom (Heat) - Rest - TM44
  (479, 47901, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 31),
  -- Rotom (Heat) - Thief - TM46
  (479, 47901, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 32),
  -- Rotom (Heat) - Round - TM48
  (479, 47901, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 33),
  -- Rotom (Heat) - Charge Beam - TM57
  (479, 47901, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 34),
  -- Rotom (Heat) - Will-O-Wisp - TM61
  (479, 47901, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 35),
  -- Rotom (Heat) - Volt Switch - TM72
  (479, 47901, 521, 15, NULL, 2, NULL, NULL, 15002072, NULL, 36),
  -- Rotom (Heat) - Thunder Wave - TM73
  (479, 47901, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 37),
  -- Rotom (Heat) - Psych Up - TM77
  (479, 47901, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 38),
  -- Rotom (Heat) - Dream Eater - TM85
  (479, 47901, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 39),
  -- Rotom (Heat) - Swagger - TM87
  (479, 47901, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 40),
  -- Rotom (Heat) - Sleep Talk - TM88
  (479, 47901, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 41),
  -- Rotom (Heat) - Substitute - TM90
  (479, 47901, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 42),
  -- Rotom (Heat) - Dark Pulse - TM97
  (479, 47901, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 43),
  -- Rotom (Heat) - Confide - TM100
  (479, 47901, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 44),

  -- Rotom (Wash) - Thunder Shock - Level 1
  (479, 47902, 84, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Wash) - Thunder Wave - Level 1
  (479, 47902, 86, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Wash) - Confuse Ray - Level 1
  (479, 47902, 109, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Wash) - Charge - Level 1
  (479, 47902, 268, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Wash) - Trick - Level 1
  (479, 47902, 271, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Wash) - Astonish - Level 1
  (479, 47902, 310, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rotom (Wash) - Discharge - Level 1
  (479, 47902, 435, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Rotom (Wash) - Uproar - Level 8
  (479, 47902, 253, 15, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Rotom (Wash) - Double Team - Level 15
  (479, 47902, 104, 15, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Rotom (Wash) - Shock Wave - Level 22
  (479, 47902, 351, 15, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Rotom (Wash) - Ominous Wind - Level 29
  (479, 47902, 466, 15, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Rotom (Wash) - Substitute - Level 36
  (479, 47902, 164, 15, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Rotom (Wash) - Electro Ball - Level 43
  (479, 47902, 486, 15, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Rotom (Wash) - Hex - Level 50
  (479, 47902, 506, 15, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Rotom (Wash) - Charge - Level 57
  (479, 47902, 268, 15, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Rotom (Wash) - Discharge - Level 64
  (479, 47902, 435, 15, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Rotom (Wash) - Toxic - TM06
  (479, 47902, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Rotom (Wash) - Hidden Power - TM10
  (479, 47902, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Rotom (Wash) - Sunny Day - TM11
  (479, 47902, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 19),
  -- Rotom (Wash) - Light Screen - TM16
  (479, 47902, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 20),
  -- Rotom (Wash) - Protect - TM17
  (479, 47902, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 21),
  -- Rotom (Wash) - Rain Dance - TM18
  (479, 47902, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 22),
  -- Rotom (Wash) - Frustration - TM21
  (479, 47902, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 23),
  -- Rotom (Wash) - Thunderbolt - TM24
  (479, 47902, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 24),
  -- Rotom (Wash) - Thunder - TM25
  (479, 47902, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 25),
  -- Rotom (Wash) - Return - TM27
  (479, 47902, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 26),
  -- Rotom (Wash) - Shadow Ball - TM30
  (479, 47902, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 27),
  -- Rotom (Wash) - Double Team - TM32
  (479, 47902, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 28),
  -- Rotom (Wash) - Reflect - TM33
  (479, 47902, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 29),
  -- Rotom (Wash) - Facade - TM42
  (479, 47902, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 30),
  -- Rotom (Wash) - Rest - TM44
  (479, 47902, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 31),
  -- Rotom (Wash) - Thief - TM46
  (479, 47902, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 32),
  -- Rotom (Wash) - Round - TM48
  (479, 47902, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 33),
  -- Rotom (Wash) - Charge Beam - TM57
  (479, 47902, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 34),
  -- Rotom (Wash) - Will-O-Wisp - TM61
  (479, 47902, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 35),
  -- Rotom (Wash) - Volt Switch - TM72
  (479, 47902, 521, 15, NULL, 2, NULL, NULL, 15002072, NULL, 36),
  -- Rotom (Wash) - Thunder Wave - TM73
  (479, 47902, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 37),
  -- Rotom (Wash) - Psych Up - TM77
  (479, 47902, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 38),
  -- Rotom (Wash) - Dream Eater - TM85
  (479, 47902, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 39),
  -- Rotom (Wash) - Swagger - TM87
  (479, 47902, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 40),
  -- Rotom (Wash) - Sleep Talk - TM88
  (479, 47902, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 41),
  -- Rotom (Wash) - Substitute - TM90
  (479, 47902, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 42),
  -- Rotom (Wash) - Dark Pulse - TM97
  (479, 47902, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 43),
  -- Rotom (Wash) - Confide - TM100
  (479, 47902, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 44),

  -- Rotom (Frost) - Thunder Shock - Level 1
  (479, 47903, 84, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Frost) - Thunder Wave - Level 1
  (479, 47903, 86, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Frost) - Confuse Ray - Level 1
  (479, 47903, 109, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Frost) - Charge - Level 1
  (479, 47903, 268, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Frost) - Trick - Level 1
  (479, 47903, 271, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Frost) - Astonish - Level 1
  (479, 47903, 310, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rotom (Frost) - Discharge - Level 1
  (479, 47903, 435, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Rotom (Frost) - Uproar - Level 8
  (479, 47903, 253, 15, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Rotom (Frost) - Double Team - Level 15
  (479, 47903, 104, 15, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Rotom (Frost) - Shock Wave - Level 22
  (479, 47903, 351, 15, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Rotom (Frost) - Ominous Wind - Level 29
  (479, 47903, 466, 15, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Rotom (Frost) - Substitute - Level 36
  (479, 47903, 164, 15, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Rotom (Frost) - Electro Ball - Level 43
  (479, 47903, 486, 15, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Rotom (Frost) - Hex - Level 50
  (479, 47903, 506, 15, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Rotom (Frost) - Charge - Level 57
  (479, 47903, 268, 15, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Rotom (Frost) - Discharge - Level 64
  (479, 47903, 435, 15, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Rotom (Frost) - Toxic - TM06
  (479, 47903, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Rotom (Frost) - Hidden Power - TM10
  (479, 47903, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Rotom (Frost) - Sunny Day - TM11
  (479, 47903, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 19),
  -- Rotom (Frost) - Light Screen - TM16
  (479, 47903, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 20),
  -- Rotom (Frost) - Protect - TM17
  (479, 47903, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 21),
  -- Rotom (Frost) - Rain Dance - TM18
  (479, 47903, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 22),
  -- Rotom (Frost) - Frustration - TM21
  (479, 47903, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 23),
  -- Rotom (Frost) - Thunderbolt - TM24
  (479, 47903, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 24),
  -- Rotom (Frost) - Thunder - TM25
  (479, 47903, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 25),
  -- Rotom (Frost) - Return - TM27
  (479, 47903, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 26),
  -- Rotom (Frost) - Shadow Ball - TM30
  (479, 47903, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 27),
  -- Rotom (Frost) - Double Team - TM32
  (479, 47903, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 28),
  -- Rotom (Frost) - Reflect - TM33
  (479, 47903, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 29),
  -- Rotom (Frost) - Facade - TM42
  (479, 47903, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 30),
  -- Rotom (Frost) - Rest - TM44
  (479, 47903, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 31),
  -- Rotom (Frost) - Thief - TM46
  (479, 47903, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 32),
  -- Rotom (Frost) - Round - TM48
  (479, 47903, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 33),
  -- Rotom (Frost) - Charge Beam - TM57
  (479, 47903, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 34),
  -- Rotom (Frost) - Will-O-Wisp - TM61
  (479, 47903, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 35),
  -- Rotom (Frost) - Volt Switch - TM72
  (479, 47903, 521, 15, NULL, 2, NULL, NULL, 15002072, NULL, 36),
  -- Rotom (Frost) - Thunder Wave - TM73
  (479, 47903, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 37),
  -- Rotom (Frost) - Psych Up - TM77
  (479, 47903, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 38),
  -- Rotom (Frost) - Dream Eater - TM85
  (479, 47903, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 39),
  -- Rotom (Frost) - Swagger - TM87
  (479, 47903, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 40),
  -- Rotom (Frost) - Sleep Talk - TM88
  (479, 47903, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 41),
  -- Rotom (Frost) - Substitute - TM90
  (479, 47903, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 42),
  -- Rotom (Frost) - Dark Pulse - TM97
  (479, 47903, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 43),
  -- Rotom (Frost) - Confide - TM100
  (479, 47903, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 44),

  -- Rotom (Fan) - Thunder Shock - Level 1
  (479, 47904, 84, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Fan) - Thunder Wave - Level 1
  (479, 47904, 86, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Fan) - Confuse Ray - Level 1
  (479, 47904, 109, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Fan) - Charge - Level 1
  (479, 47904, 268, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Fan) - Trick - Level 1
  (479, 47904, 271, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Fan) - Astonish - Level 1
  (479, 47904, 310, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rotom (Fan) - Discharge - Level 1
  (479, 47904, 435, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Rotom (Fan) - Uproar - Level 8
  (479, 47904, 253, 15, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Rotom (Fan) - Double Team - Level 15
  (479, 47904, 104, 15, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Rotom (Fan) - Shock Wave - Level 22
  (479, 47904, 351, 15, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Rotom (Fan) - Ominous Wind - Level 29
  (479, 47904, 466, 15, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Rotom (Fan) - Substitute - Level 36
  (479, 47904, 164, 15, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Rotom (Fan) - Electro Ball - Level 43
  (479, 47904, 486, 15, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Rotom (Fan) - Hex - Level 50
  (479, 47904, 506, 15, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Rotom (Fan) - Charge - Level 57
  (479, 47904, 268, 15, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Rotom (Fan) - Discharge - Level 64
  (479, 47904, 435, 15, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Rotom (Fan) - Toxic - TM06
  (479, 47904, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Rotom (Fan) - Hidden Power - TM10
  (479, 47904, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Rotom (Fan) - Sunny Day - TM11
  (479, 47904, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 19),
  -- Rotom (Fan) - Light Screen - TM16
  (479, 47904, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 20),
  -- Rotom (Fan) - Protect - TM17
  (479, 47904, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 21),
  -- Rotom (Fan) - Rain Dance - TM18
  (479, 47904, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 22),
  -- Rotom (Fan) - Frustration - TM21
  (479, 47904, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 23),
  -- Rotom (Fan) - Thunderbolt - TM24
  (479, 47904, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 24),
  -- Rotom (Fan) - Thunder - TM25
  (479, 47904, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 25),
  -- Rotom (Fan) - Return - TM27
  (479, 47904, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 26),
  -- Rotom (Fan) - Shadow Ball - TM30
  (479, 47904, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 27),
  -- Rotom (Fan) - Double Team - TM32
  (479, 47904, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 28),
  -- Rotom (Fan) - Reflect - TM33
  (479, 47904, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 29),
  -- Rotom (Fan) - Facade - TM42
  (479, 47904, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 30),
  -- Rotom (Fan) - Rest - TM44
  (479, 47904, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 31),
  -- Rotom (Fan) - Thief - TM46
  (479, 47904, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 32),
  -- Rotom (Fan) - Round - TM48
  (479, 47904, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 33),
  -- Rotom (Fan) - Charge Beam - TM57
  (479, 47904, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 34),
  -- Rotom (Fan) - Will-O-Wisp - TM61
  (479, 47904, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 35),
  -- Rotom (Fan) - Volt Switch - TM72
  (479, 47904, 521, 15, NULL, 2, NULL, NULL, 15002072, NULL, 36),
  -- Rotom (Fan) - Thunder Wave - TM73
  (479, 47904, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 37),
  -- Rotom (Fan) - Psych Up - TM77
  (479, 47904, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 38),
  -- Rotom (Fan) - Dream Eater - TM85
  (479, 47904, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 39),
  -- Rotom (Fan) - Swagger - TM87
  (479, 47904, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 40),
  -- Rotom (Fan) - Sleep Talk - TM88
  (479, 47904, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 41),
  -- Rotom (Fan) - Substitute - TM90
  (479, 47904, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 42),
  -- Rotom (Fan) - Dark Pulse - TM97
  (479, 47904, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 43),
  -- Rotom (Fan) - Confide - TM100
  (479, 47904, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 44),

  -- Rotom (Mow) - Thunder Shock - Level 1
  (479, 47905, 84, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Mow) - Thunder Wave - Level 1
  (479, 47905, 86, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Mow) - Confuse Ray - Level 1
  (479, 47905, 109, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Mow) - Charge - Level 1
  (479, 47905, 268, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Mow) - Trick - Level 1
  (479, 47905, 271, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Mow) - Astonish - Level 1
  (479, 47905, 310, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rotom (Mow) - Discharge - Level 1
  (479, 47905, 435, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Rotom (Mow) - Uproar - Level 8
  (479, 47905, 253, 15, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Rotom (Mow) - Double Team - Level 15
  (479, 47905, 104, 15, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Rotom (Mow) - Shock Wave - Level 22
  (479, 47905, 351, 15, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Rotom (Mow) - Ominous Wind - Level 29
  (479, 47905, 466, 15, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Rotom (Mow) - Substitute - Level 36
  (479, 47905, 164, 15, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Rotom (Mow) - Electro Ball - Level 43
  (479, 47905, 486, 15, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Rotom (Mow) - Hex - Level 50
  (479, 47905, 506, 15, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Rotom (Mow) - Charge - Level 57
  (479, 47905, 268, 15, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Rotom (Mow) - Discharge - Level 64
  (479, 47905, 435, 15, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Rotom (Mow) - Toxic - TM06
  (479, 47905, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Rotom (Mow) - Hidden Power - TM10
  (479, 47905, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Rotom (Mow) - Sunny Day - TM11
  (479, 47905, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 19),
  -- Rotom (Mow) - Light Screen - TM16
  (479, 47905, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 20),
  -- Rotom (Mow) - Protect - TM17
  (479, 47905, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 21),
  -- Rotom (Mow) - Rain Dance - TM18
  (479, 47905, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 22),
  -- Rotom (Mow) - Frustration - TM21
  (479, 47905, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 23),
  -- Rotom (Mow) - Thunderbolt - TM24
  (479, 47905, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 24),
  -- Rotom (Mow) - Thunder - TM25
  (479, 47905, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 25),
  -- Rotom (Mow) - Return - TM27
  (479, 47905, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 26),
  -- Rotom (Mow) - Shadow Ball - TM30
  (479, 47905, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 27),
  -- Rotom (Mow) - Double Team - TM32
  (479, 47905, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 28),
  -- Rotom (Mow) - Reflect - TM33
  (479, 47905, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 29),
  -- Rotom (Mow) - Facade - TM42
  (479, 47905, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 30),
  -- Rotom (Mow) - Rest - TM44
  (479, 47905, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 31),
  -- Rotom (Mow) - Thief - TM46
  (479, 47905, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 32),
  -- Rotom (Mow) - Round - TM48
  (479, 47905, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 33),
  -- Rotom (Mow) - Charge Beam - TM57
  (479, 47905, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 34),
  -- Rotom (Mow) - Will-O-Wisp - TM61
  (479, 47905, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 35),
  -- Rotom (Mow) - Volt Switch - TM72
  (479, 47905, 521, 15, NULL, 2, NULL, NULL, 15002072, NULL, 36),
  -- Rotom (Mow) - Thunder Wave - TM73
  (479, 47905, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 37),
  -- Rotom (Mow) - Psych Up - TM77
  (479, 47905, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 38),
  -- Rotom (Mow) - Dream Eater - TM85
  (479, 47905, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 39),
  -- Rotom (Mow) - Swagger - TM87
  (479, 47905, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 40),
  -- Rotom (Mow) - Sleep Talk - TM88
  (479, 47905, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 41),
  -- Rotom (Mow) - Substitute - TM90
  (479, 47905, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 42),
  -- Rotom (Mow) - Dark Pulse - TM97
  (479, 47905, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 43),
  -- Rotom (Mow) - Confide - TM100
  (479, 47905, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 44),

  -- Giratina (Origin) - Scary Face - Level 1
  (487, 48701, 184, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Giratina (Origin) - Dragon Breath - Level 1
  (487, 48701, 225, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Giratina (Origin) - Ominous Wind - Level 6
  (487, 48701, 466, 15, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Giratina (Origin) - Ancient Power - Level 10
  (487, 48701, 246, 15, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Giratina (Origin) - Slash - Level 15
  (487, 48701, 163, 15, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Giratina (Origin) - Shadow Sneak - Level 19
  (487, 48701, 425, 15, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Giratina (Origin) - Destiny Bond - Level 24
  (487, 48701, 194, 15, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Giratina (Origin) - Dragon Claw - Level 28
  (487, 48701, 337, 15, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Giratina (Origin) - Earth Power - Level 33
  (487, 48701, 414, 15, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Giratina (Origin) - Aura Sphere - Level 37
  (487, 48701, 396, 15, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Giratina (Origin) - Shadow Claw - Level 42
  (487, 48701, 421, 15, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Giratina (Origin) - Shadow Force - Level 46
  (487, 48701, 467, 15, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Giratina (Origin) - Hex - Level 50
  (487, 48701, 506, 15, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Giratina (Origin) - Dragon Claw - TM02
  (487, 48701, 337, 15, NULL, 2, NULL, NULL, 15002002, NULL, 14),
  -- Giratina (Origin) - Calm Mind - TM04
  (487, 48701, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 15),
  -- Giratina (Origin) - Roar - TM05
  (487, 48701, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 16),
  -- Giratina (Origin) - Toxic - TM06
  (487, 48701, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Giratina (Origin) - Hidden Power - TM10
  (487, 48701, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Giratina (Origin) - Sunny Day - TM11
  (487, 48701, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 19),
  -- Giratina (Origin) - Hyper Beam - TM15
  (487, 48701, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 20),
  -- Giratina (Origin) - Protect - TM17
  (487, 48701, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 21),
  -- Giratina (Origin) - Rain Dance - TM18
  (487, 48701, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 22),
  -- Giratina (Origin) - Safeguard - TM20
  (487, 48701, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 23),
  -- Giratina (Origin) - Frustration - TM21
  (487, 48701, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 24),
  -- Giratina (Origin) - Thunderbolt - TM24
  (487, 48701, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 25),
  -- Giratina (Origin) - Thunder - TM25
  (487, 48701, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 26),
  -- Giratina (Origin) - Earthquake - TM26
  (487, 48701, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 27),
  -- Giratina (Origin) - Return - TM27
  (487, 48701, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 28),
  -- Giratina (Origin) - Psychic - TM29
  (487, 48701, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 29),
  -- Giratina (Origin) - Shadow Ball - TM30
  (487, 48701, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 30),
  -- Giratina (Origin) - Double Team - TM32
  (487, 48701, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 31),
  -- Giratina (Origin) - Aerial Ace - TM40
  (487, 48701, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 32),
  -- Giratina (Origin) - Facade - TM42
  (487, 48701, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 33),
  -- Giratina (Origin) - Rest - TM44
  (487, 48701, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 34),
  -- Giratina (Origin) - Round - TM48
  (487, 48701, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 35),
  -- Giratina (Origin) - Echoed Voice - TM49
  (487, 48701, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 36),
  -- Giratina (Origin) - Steel Wing - TM51
  (487, 48701, 211, 15, NULL, 2, NULL, NULL, 15002051, NULL, 37),
  -- Giratina (Origin) - Energy Ball - TM53
  (487, 48701, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 38),
  -- Giratina (Origin) - Charge Beam - TM57
  (487, 48701, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 39),
  -- Giratina (Origin) - Brutal Swing - TM59
  (487, 48701, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 40),
  -- Giratina (Origin) - Will-O-Wisp - TM61
  (487, 48701, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 41),
  -- Giratina (Origin) - Shadow Claw - TM65
  (487, 48701, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 42),
  -- Giratina (Origin) - Payback - TM66
  (487, 48701, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 43),
  -- Giratina (Origin) - Giga Impact - TM68
  (487, 48701, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 44),
  -- Giratina (Origin) - Stone Edge - TM71
  (487, 48701, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 45),
  -- Giratina (Origin) - Thunder Wave - TM73
  (487, 48701, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 46),
  -- Giratina (Origin) - Fly - TM76
  (487, 48701, 19, 15, NULL, 2, NULL, NULL, 15002076, NULL, 47),
  -- Giratina (Origin) - Psych Up - TM77
  (487, 48701, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 48),
  -- Giratina (Origin) - Bulldoze - TM78
  (487, 48701, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 49),
  -- Giratina (Origin) - Dragon Tail - TM82
  (487, 48701, 525, 15, NULL, 2, NULL, NULL, 15002082, NULL, 50),
  -- Giratina (Origin) - Dream Eater - TM85
  (487, 48701, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 51),
  -- Giratina (Origin) - Swagger - TM87
  (487, 48701, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 52),
  -- Giratina (Origin) - Sleep Talk - TM88
  (487, 48701, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 53),
  -- Giratina (Origin) - Substitute - TM90
  (487, 48701, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 54),
  -- Giratina (Origin) - Dark Pulse - TM97
  (487, 48701, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 55),
  -- Giratina (Origin) - Confide - TM100
  (487, 48701, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 56),
  -- Giratina (Origin) - Draco Meteor - Tutor
  (487, 48701, 434, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 57),

  -- Shaymin (Sky) - Growth - Level 1
  (492, 49201, 74, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shaymin (Sky) - Magical Leaf - Level 10
  (492, 49201, 345, 15, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Shaymin (Sky) - Leech Seed - Level 19
  (492, 49201, 73, 15, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Shaymin (Sky) - Quick Attack - Level 28
  (492, 49201, 98, 15, NULL, 1, 28, NULL, NULL, NULL, 4),
  -- Shaymin (Sky) - Sweet Scent - Level 37
  (492, 49201, 230, 15, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Shaymin (Sky) - Natural Gift - Level 46
  (492, 49201, 363, 15, NULL, 1, 46, NULL, NULL, NULL, 6),
  -- Shaymin (Sky) - Worry Seed - Level 55
  (492, 49201, 388, 15, NULL, 1, 55, NULL, NULL, NULL, 7),
  -- Shaymin (Sky) - Air Slash - Level 64
  (492, 49201, 403, 15, NULL, 1, 64, NULL, NULL, NULL, 8),
  -- Shaymin (Sky) - Energy Ball - Level 73
  (492, 49201, 412, 15, NULL, 1, 73, NULL, NULL, NULL, 9),
  -- Shaymin (Sky) - Sweet Kiss - Level 82
  (492, 49201, 186, 15, NULL, 1, 82, NULL, NULL, NULL, 10),
  -- Shaymin (Sky) - Leaf Storm - Level 91
  (492, 49201, 437, 15, NULL, 1, 91, NULL, NULL, NULL, 11),
  -- Shaymin (Sky) - Seed Flare - Level 100
  (492, 49201, 465, 15, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Shaymin (Sky) - Toxic - TM06
  (492, 49201, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 13),
  -- Shaymin (Sky) - Hidden Power - TM10
  (492, 49201, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 14),
  -- Shaymin (Sky) - Sunny Day - TM11
  (492, 49201, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 15),
  -- Shaymin (Sky) - Hyper Beam - TM15
  (492, 49201, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 16),
  -- Shaymin (Sky) - Protect - TM17
  (492, 49201, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 17),
  -- Shaymin (Sky) - Safeguard - TM20
  (492, 49201, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 18),
  -- Shaymin (Sky) - Frustration - TM21
  (492, 49201, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 19),
  -- Shaymin (Sky) - Solar Beam - TM22
  (492, 49201, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 20),
  -- Shaymin (Sky) - Return - TM27
  (492, 49201, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 21),
  -- Shaymin (Sky) - Psychic - TM29
  (492, 49201, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 22),
  -- Shaymin (Sky) - Double Team - TM32
  (492, 49201, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 23),
  -- Shaymin (Sky) - Facade - TM42
  (492, 49201, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 24),
  -- Shaymin (Sky) - Rest - TM44
  (492, 49201, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 25),
  -- Shaymin (Sky) - Round - TM48
  (492, 49201, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 26),
  -- Shaymin (Sky) - Energy Ball - TM53
  (492, 49201, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 27),
  -- Shaymin (Sky) - Giga Impact - TM68
  (492, 49201, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 28),
  -- Shaymin (Sky) - Swords Dance - TM75
  (492, 49201, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 29),
  -- Shaymin (Sky) - Psych Up - TM77
  (492, 49201, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 30),
  -- Shaymin (Sky) - Grass Knot - TM86
  (492, 49201, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 31),
  -- Shaymin (Sky) - Swagger - TM87
  (492, 49201, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 32),
  -- Shaymin (Sky) - Sleep Talk - TM88
  (492, 49201, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 33),
  -- Shaymin (Sky) - Substitute - TM90
  (492, 49201, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 34),
  -- Shaymin (Sky) - Nature Power - TM96
  (492, 49201, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 35),
  -- Shaymin (Sky) - Dazzling Gleam - TM99
  (492, 49201, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 36),
  -- Shaymin (Sky) - Confide - TM100
  (492, 49201, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 37),

  -- Basculin (Blue-Striped) - Tackle - Level 1
  (550, 55001, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Basculin (Blue-Striped) - Tail Whip - Level 1
  (550, 55001, 39, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Basculin (Blue-Striped) - Water Gun - Level 1
  (550, 55001, 55, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Basculin (Blue-Striped) - Uproar - Level 3
  (550, 55001, 253, 15, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Basculin (Blue-Striped) - Headbutt - Level 5
  (550, 55001, 29, 15, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Basculin (Blue-Striped) - Bite - Level 7
  (550, 55001, 44, 15, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Basculin (Blue-Striped) - Aqua Jet - Level 9
  (550, 55001, 453, 15, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Basculin (Blue-Striped) - Chip Away - Level 11
  (550, 55001, 498, 15, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Basculin (Blue-Striped) - Take Down - Level 14
  (550, 55001, 36, 15, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Basculin (Blue-Striped) - Crunch - Level 17
  (550, 55001, 242, 15, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Basculin (Blue-Striped) - Aqua Tail - Level 20
  (550, 55001, 401, 15, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Basculin (Blue-Striped) - Soak - Level 23
  (550, 55001, 487, 15, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Basculin (Blue-Striped) - Double-Edge - Level 26
  (550, 55001, 38, 15, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Basculin (Blue-Striped) - Scary Face - Level 30
  (550, 55001, 184, 15, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Basculin (Blue-Striped) - Flail - Level 34
  (550, 55001, 175, 15, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Basculin (Blue-Striped) - Final Gambit - Level 38
  (550, 55001, 515, 15, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Basculin (Blue-Striped) - Thrash - Level 42
  (550, 55001, 37, 15, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Basculin (Blue-Striped) - Head Smash - Level 46
  (550, 55001, 457, 15, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Basculin (Blue-Striped) - Toxic - TM06
  (550, 55001, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Basculin (Blue-Striped) - Hail - TM07
  (550, 55001, 258, 15, NULL, 2, NULL, NULL, 15002007, NULL, 20),
  -- Basculin (Blue-Striped) - Hidden Power - TM10
  (550, 55001, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 21),
  -- Basculin (Blue-Striped) - Taunt - TM12
  (550, 55001, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 22),
  -- Basculin (Blue-Striped) - Ice Beam - TM13
  (550, 55001, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 23),
  -- Basculin (Blue-Striped) - Protect - TM17
  (550, 55001, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 24),
  -- Basculin (Blue-Striped) - Rain Dance - TM18
  (550, 55001, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 25),
  -- Basculin (Blue-Striped) - Frustration - TM21
  (550, 55001, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 26),
  -- Basculin (Blue-Striped) - Return - TM27
  (550, 55001, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 27),
  -- Basculin (Blue-Striped) - Double Team - TM32
  (550, 55001, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 28),
  -- Basculin (Blue-Striped) - Facade - TM42
  (550, 55001, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 29),
  -- Basculin (Blue-Striped) - Rest - TM44
  (550, 55001, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 30),
  -- Basculin (Blue-Striped) - Attract - TM45
  (550, 55001, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 31),
  -- Basculin (Blue-Striped) - Round - TM48
  (550, 55001, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 32),
  -- Basculin (Blue-Striped) - Scald - TM55
  (550, 55001, 503, 15, NULL, 2, NULL, NULL, 15002055, NULL, 33),
  -- Basculin (Blue-Striped) - Swagger - TM87
  (550, 55001, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 34),
  -- Basculin (Blue-Striped) - Sleep Talk - TM88
  (550, 55001, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 35),
  -- Basculin (Blue-Striped) - Substitute - TM90
  (550, 55001, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 36),
  -- Basculin (Blue-Striped) - Surf - TM94
  (550, 55001, 57, 15, NULL, 2, NULL, NULL, 15002094, NULL, 37),
  -- Basculin (Blue-Striped) - Waterfall - TM98
  (550, 55001, 127, 15, NULL, 2, NULL, NULL, 15002098, NULL, 38),
  -- Basculin (Blue-Striped) - Confide - TM100
  (550, 55001, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 39),
  -- Basculin (Blue-Striped) - Bubble Beam - Egg
  (550, 55001, 61, 15, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Basculin (Blue-Striped) - Agility - Egg
  (550, 55001, 97, 15, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Basculin (Blue-Striped) - Rage - Egg
  (550, 55001, 99, 15, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Basculin (Blue-Striped) - Swift - Egg
  (550, 55001, 129, 15, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Basculin (Blue-Striped) - Whirlpool - Egg
  (550, 55001, 250, 15, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Basculin (Blue-Striped) - Revenge - Egg
  (550, 55001, 279, 15, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Basculin (Blue-Striped) - Muddy Water - Egg
  (550, 55001, 330, 15, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Basculin (Blue-Striped) - Mud Shot - Egg
  (550, 55001, 341, 15, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Basculin (Blue-Striped) - Brine - Egg
  (550, 55001, 362, 15, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Basculin (Blue-Striped) - Head Smash - Egg
  (550, 55001, 457, 15, NULL, 5, NULL, NULL, NULL, NULL, 49),

  -- Tornadus (Therian) - Gust - Level 1
  (641, 64101, 16, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tornadus (Therian) - Thrash - Level 1
  (641, 64101, 37, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tornadus (Therian) - Swagger - Level 1
  (641, 64101, 207, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tornadus (Therian) - Uproar - Level 1
  (641, 64101, 253, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tornadus (Therian) - Astonish - Level 1
  (641, 64101, 310, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tornadus (Therian) - Hammer Arm - Level 1
  (641, 64101, 359, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Tornadus (Therian) - Hurricane - Level 1
  (641, 64101, 542, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Tornadus (Therian) - Bite - Level 7
  (641, 64101, 44, 15, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Tornadus (Therian) - Revenge - Level 13
  (641, 64101, 279, 15, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Tornadus (Therian) - Air Cutter - Level 19
  (641, 64101, 314, 15, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Tornadus (Therian) - Extrasensory - Level 25
  (641, 64101, 326, 15, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Tornadus (Therian) - Agility - Level 31
  (641, 64101, 97, 15, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Tornadus (Therian) - Air Slash - Level 37
  (641, 64101, 403, 15, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Tornadus (Therian) - Crunch - Level 43
  (641, 64101, 242, 15, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Tornadus (Therian) - Tailwind - Level 49
  (641, 64101, 366, 15, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Tornadus (Therian) - Rain Dance - Level 55
  (641, 64101, 240, 15, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Tornadus (Therian) - Hurricane - Level 61
  (641, 64101, 542, 15, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Tornadus (Therian) - Dark Pulse - Level 67
  (641, 64101, 399, 15, NULL, 1, 67, NULL, NULL, NULL, 18),
  -- Tornadus (Therian) - Hammer Arm - Level 73
  (641, 64101, 359, 15, NULL, 1, 73, NULL, NULL, NULL, 19),
  -- Tornadus (Therian) - Thrash - Level 79
  (641, 64101, 37, 15, NULL, 1, 79, NULL, NULL, NULL, 20),
  -- Tornadus (Therian) - Toxic - TM06
  (641, 64101, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 21),
  -- Tornadus (Therian) - Bulk Up - TM08
  (641, 64101, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 22),
  -- Tornadus (Therian) - Hidden Power - TM10
  (641, 64101, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 23),
  -- Tornadus (Therian) - Taunt - TM12
  (641, 64101, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 24),
  -- Tornadus (Therian) - Hyper Beam - TM15
  (641, 64101, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 25),
  -- Tornadus (Therian) - Protect - TM17
  (641, 64101, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 26),
  -- Tornadus (Therian) - Rain Dance - TM18
  (641, 64101, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 27),
  -- Tornadus (Therian) - Frustration - TM21
  (641, 64101, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 28),
  -- Tornadus (Therian) - Smack Down - TM23
  (641, 64101, 479, 15, NULL, 2, NULL, NULL, 15002023, NULL, 29),
  -- Tornadus (Therian) - Return - TM27
  (641, 64101, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 30),
  -- Tornadus (Therian) - Psychic - TM29
  (641, 64101, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 31),
  -- Tornadus (Therian) - Brick Break - TM31
  (641, 64101, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 32),
  -- Tornadus (Therian) - Double Team - TM32
  (641, 64101, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 33),
  -- Tornadus (Therian) - Sludge Wave - TM34
  (641, 64101, 482, 15, NULL, 2, NULL, NULL, 15002034, NULL, 34),
  -- Tornadus (Therian) - Sludge Bomb - TM36
  (641, 64101, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 35),
  -- Tornadus (Therian) - Aerial Ace - TM40
  (641, 64101, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 36),
  -- Tornadus (Therian) - Torment - TM41
  (641, 64101, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 37),
  -- Tornadus (Therian) - Facade - TM42
  (641, 64101, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 38),
  -- Tornadus (Therian) - Rest - TM44
  (641, 64101, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 39),
  -- Tornadus (Therian) - Attract - TM45
  (641, 64101, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 40),
  -- Tornadus (Therian) - Thief - TM46
  (641, 64101, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 41),
  -- Tornadus (Therian) - Round - TM48
  (641, 64101, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 42),
  -- Tornadus (Therian) - Focus Blast - TM52
  (641, 64101, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 43),
  -- Tornadus (Therian) - Fling - TM56
  (641, 64101, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 44),
  -- Tornadus (Therian) - Sky Drop - TM58
  (641, 64101, 507, 15, NULL, 2, NULL, NULL, 15002058, NULL, 45),
  -- Tornadus (Therian) - Brutal Swing - TM59
  (641, 64101, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 46),
  -- Tornadus (Therian) - Acrobatics - TM62
  (641, 64101, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 47),
  -- Tornadus (Therian) - Embargo - TM63
  (641, 64101, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 48),
  -- Tornadus (Therian) - Payback - TM66
  (641, 64101, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 49),
  -- Tornadus (Therian) - Giga Impact - TM68
  (641, 64101, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 50),
  -- Tornadus (Therian) - Fly - TM76
  (641, 64101, 19, 15, NULL, 2, NULL, NULL, 15002076, NULL, 51),
  -- Tornadus (Therian) - Grass Knot - TM86
  (641, 64101, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 52),
  -- Tornadus (Therian) - Swagger - TM87
  (641, 64101, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 53),
  -- Tornadus (Therian) - Sleep Talk - TM88
  (641, 64101, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 54),
  -- Tornadus (Therian) - U-turn - TM89
  (641, 64101, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 55),
  -- Tornadus (Therian) - Substitute - TM90
  (641, 64101, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 56),
  -- Tornadus (Therian) - Dark Pulse - TM97
  (641, 64101, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 57),
  -- Tornadus (Therian) - Confide - TM100
  (641, 64101, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 58),

  -- Thundurus (Therian) - Thrash - Level 1
  (642, 64201, 37, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Thundurus (Therian) - Thunder Shock - Level 1
  (642, 64201, 84, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Thundurus (Therian) - Swagger - Level 1
  (642, 64201, 207, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Thundurus (Therian) - Uproar - Level 1
  (642, 64201, 253, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Thundurus (Therian) - Astonish - Level 1
  (642, 64201, 310, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Thundurus (Therian) - Hammer Arm - Level 1
  (642, 64201, 359, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Thundurus (Therian) - Nasty Plot - Level 1
  (642, 64201, 417, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Thundurus (Therian) - Bite - Level 7
  (642, 64201, 44, 15, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Thundurus (Therian) - Revenge - Level 13
  (642, 64201, 279, 15, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Thundurus (Therian) - Shock Wave - Level 19
  (642, 64201, 351, 15, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Thundurus (Therian) - Heal Block - Level 25
  (642, 64201, 377, 15, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Thundurus (Therian) - Agility - Level 31
  (642, 64201, 97, 15, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Thundurus (Therian) - Discharge - Level 37
  (642, 64201, 435, 15, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Thundurus (Therian) - Crunch - Level 43
  (642, 64201, 242, 15, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Thundurus (Therian) - Charge - Level 49
  (642, 64201, 268, 15, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Thundurus (Therian) - Nasty Plot - Level 55
  (642, 64201, 417, 15, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Thundurus (Therian) - Thunder - Level 61
  (642, 64201, 87, 15, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Thundurus (Therian) - Dark Pulse - Level 67
  (642, 64201, 399, 15, NULL, 1, 67, NULL, NULL, NULL, 18),
  -- Thundurus (Therian) - Hammer Arm - Level 73
  (642, 64201, 359, 15, NULL, 1, 73, NULL, NULL, NULL, 19),
  -- Thundurus (Therian) - Thrash - Level 79
  (642, 64201, 37, 15, NULL, 1, 79, NULL, NULL, NULL, 20),
  -- Thundurus (Therian) - Toxic - TM06
  (642, 64201, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 21),
  -- Thundurus (Therian) - Bulk Up - TM08
  (642, 64201, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 22),
  -- Thundurus (Therian) - Hidden Power - TM10
  (642, 64201, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 23),
  -- Thundurus (Therian) - Taunt - TM12
  (642, 64201, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 24),
  -- Thundurus (Therian) - Hyper Beam - TM15
  (642, 64201, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 25),
  -- Thundurus (Therian) - Protect - TM17
  (642, 64201, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 26),
  -- Thundurus (Therian) - Rain Dance - TM18
  (642, 64201, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 27),
  -- Thundurus (Therian) - Frustration - TM21
  (642, 64201, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 28),
  -- Thundurus (Therian) - Smack Down - TM23
  (642, 64201, 479, 15, NULL, 2, NULL, NULL, 15002023, NULL, 29),
  -- Thundurus (Therian) - Thunderbolt - TM24
  (642, 64201, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 30),
  -- Thundurus (Therian) - Thunder - TM25
  (642, 64201, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 31),
  -- Thundurus (Therian) - Return - TM27
  (642, 64201, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 32),
  -- Thundurus (Therian) - Psychic - TM29
  (642, 64201, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 33),
  -- Thundurus (Therian) - Brick Break - TM31
  (642, 64201, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 34),
  -- Thundurus (Therian) - Double Team - TM32
  (642, 64201, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 35),
  -- Thundurus (Therian) - Sludge Wave - TM34
  (642, 64201, 482, 15, NULL, 2, NULL, NULL, 15002034, NULL, 36),
  -- Thundurus (Therian) - Sludge Bomb - TM36
  (642, 64201, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 37),
  -- Thundurus (Therian) - Torment - TM41
  (642, 64201, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 38),
  -- Thundurus (Therian) - Facade - TM42
  (642, 64201, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 39),
  -- Thundurus (Therian) - Rest - TM44
  (642, 64201, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 40),
  -- Thundurus (Therian) - Attract - TM45
  (642, 64201, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 41),
  -- Thundurus (Therian) - Thief - TM46
  (642, 64201, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 42),
  -- Thundurus (Therian) - Round - TM48
  (642, 64201, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 43),
  -- Thundurus (Therian) - Focus Blast - TM52
  (642, 64201, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 44),
  -- Thundurus (Therian) - Fling - TM56
  (642, 64201, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 45),
  -- Thundurus (Therian) - Charge Beam - TM57
  (642, 64201, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 46),
  -- Thundurus (Therian) - Sky Drop - TM58
  (642, 64201, 507, 15, NULL, 2, NULL, NULL, 15002058, NULL, 47),
  -- Thundurus (Therian) - Brutal Swing - TM59
  (642, 64201, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 48),
  -- Thundurus (Therian) - Embargo - TM63
  (642, 64201, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 49),
  -- Thundurus (Therian) - Payback - TM66
  (642, 64201, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 50),
  -- Thundurus (Therian) - Smart Strike - TM67
  (642, 64201, 684, 15, NULL, 2, NULL, NULL, 15002067, NULL, 51),
  -- Thundurus (Therian) - Giga Impact - TM68
  (642, 64201, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 52),
  -- Thundurus (Therian) - Volt Switch - TM72
  (642, 64201, 521, 15, NULL, 2, NULL, NULL, 15002072, NULL, 53),
  -- Thundurus (Therian) - Thunder Wave - TM73
  (642, 64201, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 54),
  -- Thundurus (Therian) - Fly - TM76
  (642, 64201, 19, 15, NULL, 2, NULL, NULL, 15002076, NULL, 55),
  -- Thundurus (Therian) - Grass Knot - TM86
  (642, 64201, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 56),
  -- Thundurus (Therian) - Swagger - TM87
  (642, 64201, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 57),
  -- Thundurus (Therian) - Sleep Talk - TM88
  (642, 64201, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 58),
  -- Thundurus (Therian) - U-turn - TM89
  (642, 64201, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 59),
  -- Thundurus (Therian) - Substitute - TM90
  (642, 64201, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 60),
  -- Thundurus (Therian) - Flash Cannon - TM91
  (642, 64201, 430, 15, NULL, 2, NULL, NULL, 15002091, NULL, 61),
  -- Thundurus (Therian) - Wild Charge - TM93
  (642, 64201, 528, 15, NULL, 2, NULL, NULL, 15002093, NULL, 62),
  -- Thundurus (Therian) - Dark Pulse - TM97
  (642, 64201, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 63),
  -- Thundurus (Therian) - Confide - TM100
  (642, 64201, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 64),

  -- Landorus (Therian) - Fissure - Level 1
  (645, 64501, 90, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Landorus (Therian) - Outrage - Level 1
  (645, 64501, 200, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Landorus (Therian) - Imprison - Level 1
  (645, 64501, 286, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Landorus (Therian) - Rock Tomb - Level 1
  (645, 64501, 317, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Landorus (Therian) - Block - Level 1
  (645, 64501, 335, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Landorus (Therian) - Mud Shot - Level 1
  (645, 64501, 341, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Landorus (Therian) - Hammer Arm - Level 1
  (645, 64501, 359, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Landorus (Therian) - Punishment - Level 7
  (645, 64501, 386, 15, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Landorus (Therian) - Bulldoze - Level 13
  (645, 64501, 523, 15, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Landorus (Therian) - Rock Throw - Level 19
  (645, 64501, 88, 15, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Landorus (Therian) - Extrasensory - Level 25
  (645, 64501, 326, 15, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Landorus (Therian) - Swords Dance - Level 31
  (645, 64501, 14, 15, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Landorus (Therian) - Earth Power - Level 37
  (645, 64501, 414, 15, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Landorus (Therian) - Rock Slide - Level 43
  (645, 64501, 157, 15, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Landorus (Therian) - Earthquake - Level 49
  (645, 64501, 89, 15, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Landorus (Therian) - Sandstorm - Level 55
  (645, 64501, 201, 15, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Landorus (Therian) - Fissure - Level 61
  (645, 64501, 90, 15, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Landorus (Therian) - Stone Edge - Level 67
  (645, 64501, 444, 15, NULL, 1, 67, NULL, NULL, NULL, 18),
  -- Landorus (Therian) - Hammer Arm - Level 73
  (645, 64501, 359, 15, NULL, 1, 73, NULL, NULL, NULL, 19),
  -- Landorus (Therian) - Outrage - Level 79
  (645, 64501, 200, 15, NULL, 1, 79, NULL, NULL, NULL, 20),
  -- Landorus (Therian) - Calm Mind - TM04
  (645, 64501, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 21),
  -- Landorus (Therian) - Toxic - TM06
  (645, 64501, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 22),
  -- Landorus (Therian) - Bulk Up - TM08
  (645, 64501, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 23),
  -- Landorus (Therian) - Hidden Power - TM10
  (645, 64501, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 24),
  -- Landorus (Therian) - Hyper Beam - TM15
  (645, 64501, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 25),
  -- Landorus (Therian) - Protect - TM17
  (645, 64501, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 26),
  -- Landorus (Therian) - Frustration - TM21
  (645, 64501, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 27),
  -- Landorus (Therian) - Smack Down - TM23
  (645, 64501, 479, 15, NULL, 2, NULL, NULL, 15002023, NULL, 28),
  -- Landorus (Therian) - Earthquake - TM26
  (645, 64501, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 29),
  -- Landorus (Therian) - Return - TM27
  (645, 64501, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 30),
  -- Landorus (Therian) - Psychic - TM29
  (645, 64501, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 31),
  -- Landorus (Therian) - Brick Break - TM31
  (645, 64501, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 32),
  -- Landorus (Therian) - Double Team - TM32
  (645, 64501, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 33),
  -- Landorus (Therian) - Sludge Wave - TM34
  (645, 64501, 482, 15, NULL, 2, NULL, NULL, 15002034, NULL, 34),
  -- Landorus (Therian) - Sludge Bomb - TM36
  (645, 64501, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 35),
  -- Landorus (Therian) - Sandstorm - TM37
  (645, 64501, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 36),
  -- Landorus (Therian) - Rock Tomb - TM39
  (645, 64501, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 37),
  -- Landorus (Therian) - Facade - TM42
  (645, 64501, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 38),
  -- Landorus (Therian) - Rest - TM44
  (645, 64501, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 39),
  -- Landorus (Therian) - Attract - TM45
  (645, 64501, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 40),
  -- Landorus (Therian) - Round - TM48
  (645, 64501, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 41),
  -- Landorus (Therian) - Focus Blast - TM52
  (645, 64501, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 42),
  -- Landorus (Therian) - Fling - TM56
  (645, 64501, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 43),
  -- Landorus (Therian) - Brutal Swing - TM59
  (645, 64501, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 44),
  -- Landorus (Therian) - Explosion - TM64
  (645, 64501, 153, 15, NULL, 2, NULL, NULL, 15002064, NULL, 45),
  -- Landorus (Therian) - Payback - TM66
  (645, 64501, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 46),
  -- Landorus (Therian) - Giga Impact - TM68
  (645, 64501, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 47),
  -- Landorus (Therian) - Rock Polish - TM69
  (645, 64501, 397, 15, NULL, 2, NULL, NULL, 15002069, NULL, 48),
  -- Landorus (Therian) - Stone Edge - TM71
  (645, 64501, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 49),
  -- Landorus (Therian) - Swords Dance - TM75
  (645, 64501, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 50),
  -- Landorus (Therian) - Fly - TM76
  (645, 64501, 19, 15, NULL, 2, NULL, NULL, 15002076, NULL, 51),
  -- Landorus (Therian) - Bulldoze - TM78
  (645, 64501, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 52),
  -- Landorus (Therian) - Rock Slide - TM80
  (645, 64501, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 53),
  -- Landorus (Therian) - Grass Knot - TM86
  (645, 64501, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 54),
  -- Landorus (Therian) - Swagger - TM87
  (645, 64501, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 55),
  -- Landorus (Therian) - Sleep Talk - TM88
  (645, 64501, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 56),
  -- Landorus (Therian) - U-turn - TM89
  (645, 64501, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 57),
  -- Landorus (Therian) - Substitute - TM90
  (645, 64501, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 58),
  -- Landorus (Therian) - Confide - TM100
  (645, 64501, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 59),

  -- Kyurem (White) - Dragon Rage - Level 1
  (646, 64601, 82, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyurem (White) - Icy Wind - Level 1
  (646, 64601, 196, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kyurem (White) - Imprison - Level 8
  (646, 64601, 286, 15, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Kyurem (White) - Ancient Power - Level 15
  (646, 64601, 246, 15, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Kyurem (White) - Ice Beam - Level 22
  (646, 64601, 58, 15, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Kyurem (White) - Dragon Breath - Level 29
  (646, 64601, 225, 15, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Kyurem (White) - Slash - Level 36
  (646, 64601, 163, 15, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Kyurem (White) - Fusion Flare - Level 43
  (646, 64601, 558, 15, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Kyurem (White) - Ice Burn - Level 50
  (646, 64601, 554, 15, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Kyurem (White) - Dragon Pulse - Level 57
  (646, 64601, 406, 15, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Kyurem (White) - Imprison - Level 64
  (646, 64601, 286, 15, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Kyurem (White) - Endeavor - Level 71
  (646, 64601, 283, 15, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Kyurem (White) - Blizzard - Level 78
  (646, 64601, 59, 15, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Kyurem (White) - Outrage - Level 85
  (646, 64601, 200, 15, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Kyurem (White) - Hyper Voice - Level 92
  (646, 64601, 304, 15, NULL, 1, 92, NULL, NULL, NULL, 15),
  -- Kyurem (White) - Dragon Claw - TM02
  (646, 64601, 337, 15, NULL, 2, NULL, NULL, 15002002, NULL, 16),
  -- Kyurem (White) - Toxic - TM06
  (646, 64601, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Kyurem (White) - Hail - TM07
  (646, 64601, 258, 15, NULL, 2, NULL, NULL, 15002007, NULL, 18),
  -- Kyurem (White) - Hidden Power - TM10
  (646, 64601, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 19),
  -- Kyurem (White) - Sunny Day - TM11
  (646, 64601, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 20),
  -- Kyurem (White) - Ice Beam - TM13
  (646, 64601, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 21),
  -- Kyurem (White) - Blizzard - TM14
  (646, 64601, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 22),
  -- Kyurem (White) - Hyper Beam - TM15
  (646, 64601, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 23),
  -- Kyurem (White) - Light Screen - TM16
  (646, 64601, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 24),
  -- Kyurem (White) - Protect - TM17
  (646, 64601, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 25),
  -- Kyurem (White) - Rain Dance - TM18
  (646, 64601, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 26),
  -- Kyurem (White) - Roost - TM19
  (646, 64601, 355, 15, NULL, 2, NULL, NULL, 15002019, NULL, 27),
  -- Kyurem (White) - Safeguard - TM20
  (646, 64601, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 28),
  -- Kyurem (White) - Frustration - TM21
  (646, 64601, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 29),
  -- Kyurem (White) - Return - TM27
  (646, 64601, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 30),
  -- Kyurem (White) - Psychic - TM29
  (646, 64601, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 31),
  -- Kyurem (White) - Shadow Ball - TM30
  (646, 64601, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 32),
  -- Kyurem (White) - Double Team - TM32
  (646, 64601, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 33),
  -- Kyurem (White) - Reflect - TM33
  (646, 64601, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 34),
  -- Kyurem (White) - Rock Tomb - TM39
  (646, 64601, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 35),
  -- Kyurem (White) - Facade - TM42
  (646, 64601, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 36),
  -- Kyurem (White) - Rest - TM44
  (646, 64601, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 37),
  -- Kyurem (White) - Round - TM48
  (646, 64601, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 38),
  -- Kyurem (White) - Echoed Voice - TM49
  (646, 64601, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 39),
  -- Kyurem (White) - Steel Wing - TM51
  (646, 64601, 211, 15, NULL, 2, NULL, NULL, 15002051, NULL, 40),
  -- Kyurem (White) - Focus Blast - TM52
  (646, 64601, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 41),
  -- Kyurem (White) - Fling - TM56
  (646, 64601, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 42),
  -- Kyurem (White) - Brutal Swing - TM59
  (646, 64601, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 43),
  -- Kyurem (White) - Shadow Claw - TM65
  (646, 64601, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 44),
  -- Kyurem (White) - Payback - TM66
  (646, 64601, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 45),
  -- Kyurem (White) - Giga Impact - TM68
  (646, 64601, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 46),
  -- Kyurem (White) - Stone Edge - TM71
  (646, 64601, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 47),
  -- Kyurem (White) - Fly - TM76
  (646, 64601, 19, 15, NULL, 2, NULL, NULL, 15002076, NULL, 48),
  -- Kyurem (White) - Rock Slide - TM80
  (646, 64601, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 49),
  -- Kyurem (White) - Dragon Tail - TM82
  (646, 64601, 525, 15, NULL, 2, NULL, NULL, 15002082, NULL, 50),
  -- Kyurem (White) - Swagger - TM87
  (646, 64601, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 51),
  -- Kyurem (White) - Sleep Talk - TM88
  (646, 64601, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 52),
  -- Kyurem (White) - Substitute - TM90
  (646, 64601, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 53),
  -- Kyurem (White) - Flash Cannon - TM91
  (646, 64601, 430, 15, NULL, 2, NULL, NULL, 15002091, NULL, 54),
  -- Kyurem (White) - Confide - TM100
  (646, 64601, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 55),
  -- Kyurem (White) - Draco Meteor - Tutor
  (646, 64601, 434, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 56),

  -- Kyurem (Black) - Dragon Rage - Level 1
  (646, 64602, 82, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyurem (Black) - Icy Wind - Level 1
  (646, 64602, 196, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kyurem (Black) - Imprison - Level 8
  (646, 64602, 286, 15, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Kyurem (Black) - Ancient Power - Level 15
  (646, 64602, 246, 15, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Kyurem (Black) - Ice Beam - Level 22
  (646, 64602, 58, 15, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Kyurem (Black) - Dragon Breath - Level 29
  (646, 64602, 225, 15, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Kyurem (Black) - Slash - Level 36
  (646, 64602, 163, 15, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Kyurem (Black) - Fusion Bolt - Level 43
  (646, 64602, 559, 15, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Kyurem (Black) - Freeze Shock - Level 50
  (646, 64602, 553, 15, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Kyurem (Black) - Dragon Pulse - Level 57
  (646, 64602, 406, 15, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Kyurem (Black) - Imprison - Level 64
  (646, 64602, 286, 15, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Kyurem (Black) - Endeavor - Level 71
  (646, 64602, 283, 15, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Kyurem (Black) - Blizzard - Level 78
  (646, 64602, 59, 15, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Kyurem (Black) - Outrage - Level 85
  (646, 64602, 200, 15, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Kyurem (Black) - Hyper Voice - Level 92
  (646, 64602, 304, 15, NULL, 1, 92, NULL, NULL, NULL, 15),
  -- Kyurem (Black) - Dragon Claw - TM02
  (646, 64602, 337, 15, NULL, 2, NULL, NULL, 15002002, NULL, 16),
  -- Kyurem (Black) - Toxic - TM06
  (646, 64602, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Kyurem (Black) - Hail - TM07
  (646, 64602, 258, 15, NULL, 2, NULL, NULL, 15002007, NULL, 18),
  -- Kyurem (Black) - Hidden Power - TM10
  (646, 64602, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 19),
  -- Kyurem (Black) - Sunny Day - TM11
  (646, 64602, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 20),
  -- Kyurem (Black) - Ice Beam - TM13
  (646, 64602, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 21),
  -- Kyurem (Black) - Blizzard - TM14
  (646, 64602, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 22),
  -- Kyurem (Black) - Hyper Beam - TM15
  (646, 64602, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 23),
  -- Kyurem (Black) - Light Screen - TM16
  (646, 64602, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 24),
  -- Kyurem (Black) - Protect - TM17
  (646, 64602, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 25),
  -- Kyurem (Black) - Rain Dance - TM18
  (646, 64602, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 26),
  -- Kyurem (Black) - Roost - TM19
  (646, 64602, 355, 15, NULL, 2, NULL, NULL, 15002019, NULL, 27),
  -- Kyurem (Black) - Safeguard - TM20
  (646, 64602, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 28),
  -- Kyurem (Black) - Frustration - TM21
  (646, 64602, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 29),
  -- Kyurem (Black) - Return - TM27
  (646, 64602, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 30),
  -- Kyurem (Black) - Psychic - TM29
  (646, 64602, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 31),
  -- Kyurem (Black) - Shadow Ball - TM30
  (646, 64602, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 32),
  -- Kyurem (Black) - Double Team - TM32
  (646, 64602, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 33),
  -- Kyurem (Black) - Reflect - TM33
  (646, 64602, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 34),
  -- Kyurem (Black) - Rock Tomb - TM39
  (646, 64602, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 35),
  -- Kyurem (Black) - Facade - TM42
  (646, 64602, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 36),
  -- Kyurem (Black) - Rest - TM44
  (646, 64602, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 37),
  -- Kyurem (Black) - Round - TM48
  (646, 64602, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 38),
  -- Kyurem (Black) - Echoed Voice - TM49
  (646, 64602, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 39),
  -- Kyurem (Black) - Steel Wing - TM51
  (646, 64602, 211, 15, NULL, 2, NULL, NULL, 15002051, NULL, 40),
  -- Kyurem (Black) - Focus Blast - TM52
  (646, 64602, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 41),
  -- Kyurem (Black) - Fling - TM56
  (646, 64602, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 42),
  -- Kyurem (Black) - Brutal Swing - TM59
  (646, 64602, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 43),
  -- Kyurem (Black) - Shadow Claw - TM65
  (646, 64602, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 44),
  -- Kyurem (Black) - Payback - TM66
  (646, 64602, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 45),
  -- Kyurem (Black) - Giga Impact - TM68
  (646, 64602, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 46),
  -- Kyurem (Black) - Stone Edge - TM71
  (646, 64602, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 47),
  -- Kyurem (Black) - Fly - TM76
  (646, 64602, 19, 15, NULL, 2, NULL, NULL, 15002076, NULL, 48),
  -- Kyurem (Black) - Rock Slide - TM80
  (646, 64602, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 49),
  -- Kyurem (Black) - Dragon Tail - TM82
  (646, 64602, 525, 15, NULL, 2, NULL, NULL, 15002082, NULL, 50),
  -- Kyurem (Black) - Swagger - TM87
  (646, 64602, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 51),
  -- Kyurem (Black) - Sleep Talk - TM88
  (646, 64602, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 52),
  -- Kyurem (Black) - Substitute - TM90
  (646, 64602, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 53),
  -- Kyurem (Black) - Flash Cannon - TM91
  (646, 64602, 430, 15, NULL, 2, NULL, NULL, 15002091, NULL, 54),
  -- Kyurem (Black) - Confide - TM100
  (646, 64602, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 55),
  -- Kyurem (Black) - Draco Meteor - Tutor
  (646, 64602, 434, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 56),

  -- Meowstic (Female) - Scratch - Level 1
  (678, 67801, 10, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowstic (Female) - Leer - Level 1
  (678, 67801, 43, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowstic (Female) - Confusion - Level 1
  (678, 67801, 93, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Meowstic (Female) - Covet - Level 1
  (678, 67801, 343, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Meowstic (Female) - Magical Leaf - Level 1
  (678, 67801, 345, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Meowstic (Female) - Me First - Level 1
  (678, 67801, 382, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Meowstic (Female) - Stored Power - Level 1
  (678, 67801, 500, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Meowstic (Female) - Covet - Level 5
  (678, 67801, 343, 15, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Meowstic (Female) - Confusion - Level 9
  (678, 67801, 93, 15, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Meowstic (Female) - Light Screen - Level 13
  (678, 67801, 113, 15, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Meowstic (Female) - Psybeam - Level 17
  (678, 67801, 60, 15, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Meowstic (Female) - Fake Out - Level 19
  (678, 67801, 252, 15, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Meowstic (Female) - Disarming Voice - Level 22
  (678, 67801, 574, 15, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Meowstic (Female) - Psyshock - Level 25
  (678, 67801, 473, 15, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Meowstic (Female) - Charge Beam - Level 28
  (678, 67801, 451, 15, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Meowstic (Female) - Shadow Ball - Level 31
  (678, 67801, 247, 15, NULL, 1, 31, NULL, NULL, NULL, 16),
  -- Meowstic (Female) - Extrasensory - Level 35
  (678, 67801, 326, 15, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Meowstic (Female) - Psychic - Level 40
  (678, 67801, 94, 15, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Meowstic (Female) - Role Play - Level 43
  (678, 67801, 272, 15, NULL, 1, 43, NULL, NULL, NULL, 19),
  -- Meowstic (Female) - Signal Beam - Level 45
  (678, 67801, 324, 15, NULL, 1, 45, NULL, NULL, NULL, 20),
  -- Meowstic (Female) - Sucker Punch - Level 48
  (678, 67801, 389, 15, NULL, 1, 48, NULL, NULL, NULL, 21),
  -- Meowstic (Female) - Future Sight - Level 50
  (678, 67801, 248, 15, NULL, 1, 50, NULL, NULL, NULL, 22),
  -- Meowstic (Female) - Stored Power - Level 53
  (678, 67801, 500, 15, NULL, 1, 53, NULL, NULL, NULL, 23),
  -- Meowstic (Female) - Work Up - TM01
  (678, 67801, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 24),
  -- Meowstic (Female) - Psyshock - TM03
  (678, 67801, 473, 15, NULL, 2, NULL, NULL, 15002003, NULL, 25),
  -- Meowstic (Female) - Calm Mind - TM04
  (678, 67801, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 26),
  -- Meowstic (Female) - Toxic - TM06
  (678, 67801, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 27),
  -- Meowstic (Female) - Hidden Power - TM10
  (678, 67801, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 28),
  -- Meowstic (Female) - Sunny Day - TM11
  (678, 67801, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 29),
  -- Meowstic (Female) - Hyper Beam - TM15
  (678, 67801, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 30),
  -- Meowstic (Female) - Light Screen - TM16
  (678, 67801, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 31),
  -- Meowstic (Female) - Protect - TM17
  (678, 67801, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 32),
  -- Meowstic (Female) - Rain Dance - TM18
  (678, 67801, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 33),
  -- Meowstic (Female) - Safeguard - TM20
  (678, 67801, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 34),
  -- Meowstic (Female) - Frustration - TM21
  (678, 67801, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 35),
  -- Meowstic (Female) - Thunderbolt - TM24
  (678, 67801, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 36),
  -- Meowstic (Female) - Return - TM27
  (678, 67801, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 37),
  -- Meowstic (Female) - Psychic - TM29
  (678, 67801, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 38),
  -- Meowstic (Female) - Shadow Ball - TM30
  (678, 67801, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 39),
  -- Meowstic (Female) - Double Team - TM32
  (678, 67801, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 40),
  -- Meowstic (Female) - Reflect - TM33
  (678, 67801, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 41),
  -- Meowstic (Female) - Torment - TM41
  (678, 67801, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 42),
  -- Meowstic (Female) - Facade - TM42
  (678, 67801, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 43),
  -- Meowstic (Female) - Rest - TM44
  (678, 67801, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 44),
  -- Meowstic (Female) - Attract - TM45
  (678, 67801, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 45),
  -- Meowstic (Female) - Round - TM48
  (678, 67801, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 46),
  -- Meowstic (Female) - Echoed Voice - TM49
  (678, 67801, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 47),
  -- Meowstic (Female) - Energy Ball - TM53
  (678, 67801, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 48),
  -- Meowstic (Female) - Charge Beam - TM57
  (678, 67801, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 49),
  -- Meowstic (Female) - Payback - TM66
  (678, 67801, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 50),
  -- Meowstic (Female) - Giga Impact - TM68
  (678, 67801, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 51),
  -- Meowstic (Female) - Thunder Wave - TM73
  (678, 67801, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 52),
  -- Meowstic (Female) - Psych Up - TM77
  (678, 67801, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 53),
  -- Meowstic (Female) - Dream Eater - TM85
  (678, 67801, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 54),
  -- Meowstic (Female) - Swagger - TM87
  (678, 67801, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 55),
  -- Meowstic (Female) - Sleep Talk - TM88
  (678, 67801, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 56),
  -- Meowstic (Female) - Substitute - TM90
  (678, 67801, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 57),
  -- Meowstic (Female) - Trick Room - TM92
  (678, 67801, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 58),
  -- Meowstic (Female) - Dark Pulse - TM97
  (678, 67801, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 59),
  -- Meowstic (Female) - Confide - TM100
  (678, 67801, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 60),

  -- Pumpkaboo (Small) - Confuse Ray - Level 1
  (710, 71001, 109, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pumpkaboo (Small) - Trick - Level 1
  (710, 71001, 271, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pumpkaboo (Small) - Astonish - Level 1
  (710, 71001, 310, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pumpkaboo (Small) - Scary Face - Level 4
  (710, 71001, 184, 15, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Pumpkaboo (Small) - Trick-or-Treat - Level 6
  (710, 71001, 567, 15, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Pumpkaboo (Small) - Worry Seed - Level 11
  (710, 71001, 388, 15, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Pumpkaboo (Small) - Razor Leaf - Level 16
  (710, 71001, 75, 15, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pumpkaboo (Small) - Leech Seed - Level 20
  (710, 71001, 73, 15, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Pumpkaboo (Small) - Trick-or-Treat - Level 23
  (710, 71001, 567, 15, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Pumpkaboo (Small) - Bullet Seed - Level 26
  (710, 71001, 331, 15, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Pumpkaboo (Small) - Shadow Sneak - Level 30
  (710, 71001, 425, 15, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Pumpkaboo (Small) - Shadow Ball - Level 36
  (710, 71001, 247, 15, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Pumpkaboo (Small) - Trick-or-Treat - Level 40
  (710, 71001, 567, 15, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Pumpkaboo (Small) - Pain Split - Level 42
  (710, 71001, 220, 15, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Pumpkaboo (Small) - Seed Bomb - Level 48
  (710, 71001, 402, 15, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Pumpkaboo (Small) - Toxic - TM06
  (710, 71001, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 16),
  -- Pumpkaboo (Small) - Hidden Power - TM10
  (710, 71001, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 17),
  -- Pumpkaboo (Small) - Sunny Day - TM11
  (710, 71001, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 18),
  -- Pumpkaboo (Small) - Light Screen - TM16
  (710, 71001, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 19),
  -- Pumpkaboo (Small) - Protect - TM17
  (710, 71001, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 20),
  -- Pumpkaboo (Small) - Safeguard - TM20
  (710, 71001, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 21),
  -- Pumpkaboo (Small) - Frustration - TM21
  (710, 71001, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 22),
  -- Pumpkaboo (Small) - Solar Beam - TM22
  (710, 71001, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 23),
  -- Pumpkaboo (Small) - Return - TM27
  (710, 71001, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 24),
  -- Pumpkaboo (Small) - Psychic - TM29
  (710, 71001, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 25),
  -- Pumpkaboo (Small) - Shadow Ball - TM30
  (710, 71001, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 26),
  -- Pumpkaboo (Small) - Double Team - TM32
  (710, 71001, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 27),
  -- Pumpkaboo (Small) - Flamethrower - TM35
  (710, 71001, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 28),
  -- Pumpkaboo (Small) - Sludge Bomb - TM36
  (710, 71001, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 29),
  -- Pumpkaboo (Small) - Fire Blast - TM38
  (710, 71001, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 30),
  -- Pumpkaboo (Small) - Facade - TM42
  (710, 71001, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 31),
  -- Pumpkaboo (Small) - Flame Charge - TM43
  (710, 71001, 488, 15, NULL, 2, NULL, NULL, 15002043, NULL, 32),
  -- Pumpkaboo (Small) - Rest - TM44
  (710, 71001, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 33),
  -- Pumpkaboo (Small) - Attract - TM45
  (710, 71001, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 34),
  -- Pumpkaboo (Small) - Thief - TM46
  (710, 71001, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 35),
  -- Pumpkaboo (Small) - Round - TM48
  (710, 71001, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 36),
  -- Pumpkaboo (Small) - Energy Ball - TM53
  (710, 71001, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 37),
  -- Pumpkaboo (Small) - Charge Beam - TM57
  (710, 71001, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 38),
  -- Pumpkaboo (Small) - Will-O-Wisp - TM61
  (710, 71001, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 39),
  -- Pumpkaboo (Small) - Explosion - TM64
  (710, 71001, 153, 15, NULL, 2, NULL, NULL, 15002064, NULL, 40),
  -- Pumpkaboo (Small) - Gyro Ball - TM74
  (710, 71001, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 41),
  -- Pumpkaboo (Small) - Rock Slide - TM80
  (710, 71001, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 42),
  -- Pumpkaboo (Small) - Dream Eater - TM85
  (710, 71001, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 43),
  -- Pumpkaboo (Small) - Grass Knot - TM86
  (710, 71001, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 44),
  -- Pumpkaboo (Small) - Swagger - TM87
  (710, 71001, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 45),
  -- Pumpkaboo (Small) - Sleep Talk - TM88
  (710, 71001, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 46),
  -- Pumpkaboo (Small) - Substitute - TM90
  (710, 71001, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 47),
  -- Pumpkaboo (Small) - Trick Room - TM92
  (710, 71001, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 48),
  -- Pumpkaboo (Small) - Nature Power - TM96
  (710, 71001, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 49),
  -- Pumpkaboo (Small) - Dark Pulse - TM97
  (710, 71001, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 50),
  -- Pumpkaboo (Small) - Confide - TM100
  (710, 71001, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 51),
  -- Pumpkaboo (Small) - Disable - Egg
  (710, 71001, 50, 15, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Pumpkaboo (Small) - Curse - Egg
  (710, 71001, 174, 15, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Pumpkaboo (Small) - Destiny Bond - Egg
  (710, 71001, 194, 15, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pumpkaboo (Small) - Bestow - Egg
  (710, 71001, 516, 15, NULL, 5, NULL, NULL, NULL, NULL, 55),

  -- Pumpkaboo (Large) - Confuse Ray - Level 1
  (710, 71002, 109, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pumpkaboo (Large) - Trick - Level 1
  (710, 71002, 271, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pumpkaboo (Large) - Astonish - Level 1
  (710, 71002, 310, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pumpkaboo (Large) - Scary Face - Level 4
  (710, 71002, 184, 15, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Pumpkaboo (Large) - Trick-or-Treat - Level 6
  (710, 71002, 567, 15, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Pumpkaboo (Large) - Worry Seed - Level 11
  (710, 71002, 388, 15, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Pumpkaboo (Large) - Razor Leaf - Level 16
  (710, 71002, 75, 15, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pumpkaboo (Large) - Leech Seed - Level 20
  (710, 71002, 73, 15, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Pumpkaboo (Large) - Trick-or-Treat - Level 23
  (710, 71002, 567, 15, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Pumpkaboo (Large) - Bullet Seed - Level 26
  (710, 71002, 331, 15, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Pumpkaboo (Large) - Shadow Sneak - Level 30
  (710, 71002, 425, 15, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Pumpkaboo (Large) - Shadow Ball - Level 36
  (710, 71002, 247, 15, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Pumpkaboo (Large) - Trick-or-Treat - Level 40
  (710, 71002, 567, 15, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Pumpkaboo (Large) - Pain Split - Level 42
  (710, 71002, 220, 15, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Pumpkaboo (Large) - Seed Bomb - Level 48
  (710, 71002, 402, 15, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Pumpkaboo (Large) - Toxic - TM06
  (710, 71002, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 16),
  -- Pumpkaboo (Large) - Hidden Power - TM10
  (710, 71002, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 17),
  -- Pumpkaboo (Large) - Sunny Day - TM11
  (710, 71002, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 18),
  -- Pumpkaboo (Large) - Light Screen - TM16
  (710, 71002, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 19),
  -- Pumpkaboo (Large) - Protect - TM17
  (710, 71002, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 20),
  -- Pumpkaboo (Large) - Safeguard - TM20
  (710, 71002, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 21),
  -- Pumpkaboo (Large) - Frustration - TM21
  (710, 71002, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 22),
  -- Pumpkaboo (Large) - Solar Beam - TM22
  (710, 71002, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 23),
  -- Pumpkaboo (Large) - Return - TM27
  (710, 71002, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 24),
  -- Pumpkaboo (Large) - Psychic - TM29
  (710, 71002, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 25),
  -- Pumpkaboo (Large) - Shadow Ball - TM30
  (710, 71002, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 26),
  -- Pumpkaboo (Large) - Double Team - TM32
  (710, 71002, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 27),
  -- Pumpkaboo (Large) - Flamethrower - TM35
  (710, 71002, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 28),
  -- Pumpkaboo (Large) - Sludge Bomb - TM36
  (710, 71002, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 29),
  -- Pumpkaboo (Large) - Fire Blast - TM38
  (710, 71002, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 30),
  -- Pumpkaboo (Large) - Facade - TM42
  (710, 71002, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 31),
  -- Pumpkaboo (Large) - Flame Charge - TM43
  (710, 71002, 488, 15, NULL, 2, NULL, NULL, 15002043, NULL, 32),
  -- Pumpkaboo (Large) - Rest - TM44
  (710, 71002, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 33),
  -- Pumpkaboo (Large) - Attract - TM45
  (710, 71002, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 34),
  -- Pumpkaboo (Large) - Thief - TM46
  (710, 71002, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 35),
  -- Pumpkaboo (Large) - Round - TM48
  (710, 71002, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 36),
  -- Pumpkaboo (Large) - Energy Ball - TM53
  (710, 71002, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 37),
  -- Pumpkaboo (Large) - Charge Beam - TM57
  (710, 71002, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 38),
  -- Pumpkaboo (Large) - Will-O-Wisp - TM61
  (710, 71002, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 39),
  -- Pumpkaboo (Large) - Explosion - TM64
  (710, 71002, 153, 15, NULL, 2, NULL, NULL, 15002064, NULL, 40),
  -- Pumpkaboo (Large) - Gyro Ball - TM74
  (710, 71002, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 41),
  -- Pumpkaboo (Large) - Rock Slide - TM80
  (710, 71002, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 42),
  -- Pumpkaboo (Large) - Dream Eater - TM85
  (710, 71002, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 43),
  -- Pumpkaboo (Large) - Grass Knot - TM86
  (710, 71002, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 44),
  -- Pumpkaboo (Large) - Swagger - TM87
  (710, 71002, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 45),
  -- Pumpkaboo (Large) - Sleep Talk - TM88
  (710, 71002, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 46),
  -- Pumpkaboo (Large) - Substitute - TM90
  (710, 71002, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 47),
  -- Pumpkaboo (Large) - Trick Room - TM92
  (710, 71002, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 48),
  -- Pumpkaboo (Large) - Nature Power - TM96
  (710, 71002, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 49),
  -- Pumpkaboo (Large) - Dark Pulse - TM97
  (710, 71002, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 50),
  -- Pumpkaboo (Large) - Confide - TM100
  (710, 71002, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 51),
  -- Pumpkaboo (Large) - Disable - Egg
  (710, 71002, 50, 15, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Pumpkaboo (Large) - Curse - Egg
  (710, 71002, 174, 15, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Pumpkaboo (Large) - Destiny Bond - Egg
  (710, 71002, 194, 15, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pumpkaboo (Large) - Bestow - Egg
  (710, 71002, 516, 15, NULL, 5, NULL, NULL, NULL, NULL, 55),

  -- Pumpkaboo (Super) - Confuse Ray - Level 1
  (710, 71003, 109, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pumpkaboo (Super) - Trick - Level 1
  (710, 71003, 271, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pumpkaboo (Super) - Astonish - Level 1
  (710, 71003, 310, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pumpkaboo (Super) - Scary Face - Level 4
  (710, 71003, 184, 15, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Pumpkaboo (Super) - Trick-or-Treat - Level 6
  (710, 71003, 567, 15, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Pumpkaboo (Super) - Worry Seed - Level 11
  (710, 71003, 388, 15, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Pumpkaboo (Super) - Razor Leaf - Level 16
  (710, 71003, 75, 15, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pumpkaboo (Super) - Leech Seed - Level 20
  (710, 71003, 73, 15, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Pumpkaboo (Super) - Trick-or-Treat - Level 23
  (710, 71003, 567, 15, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Pumpkaboo (Super) - Bullet Seed - Level 26
  (710, 71003, 331, 15, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Pumpkaboo (Super) - Shadow Sneak - Level 30
  (710, 71003, 425, 15, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Pumpkaboo (Super) - Shadow Ball - Level 36
  (710, 71003, 247, 15, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Pumpkaboo (Super) - Trick-or-Treat - Level 40
  (710, 71003, 567, 15, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Pumpkaboo (Super) - Pain Split - Level 42
  (710, 71003, 220, 15, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Pumpkaboo (Super) - Seed Bomb - Level 48
  (710, 71003, 402, 15, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Pumpkaboo (Super) - Toxic - TM06
  (710, 71003, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 16),
  -- Pumpkaboo (Super) - Hidden Power - TM10
  (710, 71003, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 17),
  -- Pumpkaboo (Super) - Sunny Day - TM11
  (710, 71003, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 18),
  -- Pumpkaboo (Super) - Light Screen - TM16
  (710, 71003, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 19),
  -- Pumpkaboo (Super) - Protect - TM17
  (710, 71003, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 20),
  -- Pumpkaboo (Super) - Safeguard - TM20
  (710, 71003, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 21),
  -- Pumpkaboo (Super) - Frustration - TM21
  (710, 71003, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 22),
  -- Pumpkaboo (Super) - Solar Beam - TM22
  (710, 71003, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 23),
  -- Pumpkaboo (Super) - Return - TM27
  (710, 71003, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 24),
  -- Pumpkaboo (Super) - Psychic - TM29
  (710, 71003, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 25),
  -- Pumpkaboo (Super) - Shadow Ball - TM30
  (710, 71003, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 26),
  -- Pumpkaboo (Super) - Double Team - TM32
  (710, 71003, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 27),
  -- Pumpkaboo (Super) - Flamethrower - TM35
  (710, 71003, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 28),
  -- Pumpkaboo (Super) - Sludge Bomb - TM36
  (710, 71003, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 29),
  -- Pumpkaboo (Super) - Fire Blast - TM38
  (710, 71003, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 30),
  -- Pumpkaboo (Super) - Facade - TM42
  (710, 71003, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 31),
  -- Pumpkaboo (Super) - Flame Charge - TM43
  (710, 71003, 488, 15, NULL, 2, NULL, NULL, 15002043, NULL, 32),
  -- Pumpkaboo (Super) - Rest - TM44
  (710, 71003, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 33),
  -- Pumpkaboo (Super) - Attract - TM45
  (710, 71003, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 34),
  -- Pumpkaboo (Super) - Thief - TM46
  (710, 71003, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 35),
  -- Pumpkaboo (Super) - Round - TM48
  (710, 71003, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 36),
  -- Pumpkaboo (Super) - Energy Ball - TM53
  (710, 71003, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 37),
  -- Pumpkaboo (Super) - Charge Beam - TM57
  (710, 71003, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 38),
  -- Pumpkaboo (Super) - Will-O-Wisp - TM61
  (710, 71003, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 39),
  -- Pumpkaboo (Super) - Explosion - TM64
  (710, 71003, 153, 15, NULL, 2, NULL, NULL, 15002064, NULL, 40),
  -- Pumpkaboo (Super) - Gyro Ball - TM74
  (710, 71003, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 41),
  -- Pumpkaboo (Super) - Rock Slide - TM80
  (710, 71003, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 42),
  -- Pumpkaboo (Super) - Dream Eater - TM85
  (710, 71003, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 43),
  -- Pumpkaboo (Super) - Grass Knot - TM86
  (710, 71003, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 44),
  -- Pumpkaboo (Super) - Swagger - TM87
  (710, 71003, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 45),
  -- Pumpkaboo (Super) - Sleep Talk - TM88
  (710, 71003, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 46),
  -- Pumpkaboo (Super) - Substitute - TM90
  (710, 71003, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 47),
  -- Pumpkaboo (Super) - Trick Room - TM92
  (710, 71003, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 48),
  -- Pumpkaboo (Super) - Nature Power - TM96
  (710, 71003, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 49),
  -- Pumpkaboo (Super) - Dark Pulse - TM97
  (710, 71003, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 50),
  -- Pumpkaboo (Super) - Confide - TM100
  (710, 71003, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 51),
  -- Pumpkaboo (Super) - Disable - Egg
  (710, 71003, 50, 15, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Pumpkaboo (Super) - Curse - Egg
  (710, 71003, 174, 15, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Pumpkaboo (Super) - Destiny Bond - Egg
  (710, 71003, 194, 15, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pumpkaboo (Super) - Bestow - Egg
  (710, 71003, 516, 15, NULL, 5, NULL, NULL, NULL, NULL, 55),

  -- Gourgeist (Small) - Confuse Ray - Level 1
  (711, 71101, 109, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gourgeist (Small) - Explosion - Level 1
  (711, 71101, 153, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gourgeist (Small) - Scary Face - Level 1
  (711, 71101, 184, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gourgeist (Small) - Trick - Level 1
  (711, 71101, 271, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gourgeist (Small) - Astonish - Level 1
  (711, 71101, 310, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gourgeist (Small) - Phantom Force - Level 1
  (711, 71101, 566, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gourgeist (Small) - Scary Face - Level 4
  (711, 71101, 184, 15, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Gourgeist (Small) - Trick-or-Treat - Level 6
  (711, 71101, 567, 15, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Gourgeist (Small) - Worry Seed - Level 11
  (711, 71101, 388, 15, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Gourgeist (Small) - Razor Leaf - Level 16
  (711, 71101, 75, 15, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Gourgeist (Small) - Leech Seed - Level 20
  (711, 71101, 73, 15, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Gourgeist (Small) - Trick-or-Treat - Level 23
  (711, 71101, 567, 15, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Gourgeist (Small) - Bullet Seed - Level 26
  (711, 71101, 331, 15, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Gourgeist (Small) - Shadow Sneak - Level 30
  (711, 71101, 425, 15, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Gourgeist (Small) - Shadow Ball - Level 36
  (711, 71101, 247, 15, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Gourgeist (Small) - Trick-or-Treat - Level 40
  (711, 71101, 567, 15, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Gourgeist (Small) - Pain Split - Level 42
  (711, 71101, 220, 15, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Gourgeist (Small) - Seed Bomb - Level 48
  (711, 71101, 402, 15, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Gourgeist (Small) - Phantom Force - Level 57
  (711, 71101, 566, 15, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Gourgeist (Small) - Trick-or-Treat - Level 63
  (711, 71101, 567, 15, NULL, 1, 63, NULL, NULL, NULL, 20),
  -- Gourgeist (Small) - Explosion - Level 70
  (711, 71101, 153, 15, NULL, 1, 70, NULL, NULL, NULL, 21),
  -- Gourgeist (Small) - Toxic - TM06
  (711, 71101, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 22),
  -- Gourgeist (Small) - Hidden Power - TM10
  (711, 71101, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 23),
  -- Gourgeist (Small) - Sunny Day - TM11
  (711, 71101, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 24),
  -- Gourgeist (Small) - Hyper Beam - TM15
  (711, 71101, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 25),
  -- Gourgeist (Small) - Light Screen - TM16
  (711, 71101, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 26),
  -- Gourgeist (Small) - Protect - TM17
  (711, 71101, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 27),
  -- Gourgeist (Small) - Safeguard - TM20
  (711, 71101, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 28),
  -- Gourgeist (Small) - Frustration - TM21
  (711, 71101, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 29),
  -- Gourgeist (Small) - Solar Beam - TM22
  (711, 71101, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 30),
  -- Gourgeist (Small) - Return - TM27
  (711, 71101, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 31),
  -- Gourgeist (Small) - Psychic - TM29
  (711, 71101, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 32),
  -- Gourgeist (Small) - Shadow Ball - TM30
  (711, 71101, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 33),
  -- Gourgeist (Small) - Double Team - TM32
  (711, 71101, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 34),
  -- Gourgeist (Small) - Flamethrower - TM35
  (711, 71101, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 35),
  -- Gourgeist (Small) - Sludge Bomb - TM36
  (711, 71101, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 36),
  -- Gourgeist (Small) - Fire Blast - TM38
  (711, 71101, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 37),
  -- Gourgeist (Small) - Facade - TM42
  (711, 71101, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 38),
  -- Gourgeist (Small) - Flame Charge - TM43
  (711, 71101, 488, 15, NULL, 2, NULL, NULL, 15002043, NULL, 39),
  -- Gourgeist (Small) - Rest - TM44
  (711, 71101, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 40),
  -- Gourgeist (Small) - Attract - TM45
  (711, 71101, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 41),
  -- Gourgeist (Small) - Thief - TM46
  (711, 71101, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 42),
  -- Gourgeist (Small) - Round - TM48
  (711, 71101, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 43),
  -- Gourgeist (Small) - Focus Blast - TM52
  (711, 71101, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 44),
  -- Gourgeist (Small) - Energy Ball - TM53
  (711, 71101, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 45),
  -- Gourgeist (Small) - Charge Beam - TM57
  (711, 71101, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 46),
  -- Gourgeist (Small) - Will-O-Wisp - TM61
  (711, 71101, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 47),
  -- Gourgeist (Small) - Explosion - TM64
  (711, 71101, 153, 15, NULL, 2, NULL, NULL, 15002064, NULL, 48),
  -- Gourgeist (Small) - Giga Impact - TM68
  (711, 71101, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 49),
  -- Gourgeist (Small) - Gyro Ball - TM74
  (711, 71101, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 50),
  -- Gourgeist (Small) - Rock Slide - TM80
  (711, 71101, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 51),
  -- Gourgeist (Small) - Dream Eater - TM85
  (711, 71101, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 52),
  -- Gourgeist (Small) - Grass Knot - TM86
  (711, 71101, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 53),
  -- Gourgeist (Small) - Swagger - TM87
  (711, 71101, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 54),
  -- Gourgeist (Small) - Sleep Talk - TM88
  (711, 71101, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 55),
  -- Gourgeist (Small) - Substitute - TM90
  (711, 71101, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 56),
  -- Gourgeist (Small) - Trick Room - TM92
  (711, 71101, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 57),
  -- Gourgeist (Small) - Nature Power - TM96
  (711, 71101, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 58),
  -- Gourgeist (Small) - Dark Pulse - TM97
  (711, 71101, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 59),
  -- Gourgeist (Small) - Confide - TM100
  (711, 71101, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 60),

  -- Gourgeist (Large) - Confuse Ray - Level 1
  (711, 71102, 109, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gourgeist (Large) - Explosion - Level 1
  (711, 71102, 153, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gourgeist (Large) - Scary Face - Level 1
  (711, 71102, 184, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gourgeist (Large) - Trick - Level 1
  (711, 71102, 271, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gourgeist (Large) - Astonish - Level 1
  (711, 71102, 310, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gourgeist (Large) - Phantom Force - Level 1
  (711, 71102, 566, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gourgeist (Large) - Scary Face - Level 4
  (711, 71102, 184, 15, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Gourgeist (Large) - Trick-or-Treat - Level 6
  (711, 71102, 567, 15, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Gourgeist (Large) - Worry Seed - Level 11
  (711, 71102, 388, 15, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Gourgeist (Large) - Razor Leaf - Level 16
  (711, 71102, 75, 15, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Gourgeist (Large) - Leech Seed - Level 20
  (711, 71102, 73, 15, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Gourgeist (Large) - Trick-or-Treat - Level 23
  (711, 71102, 567, 15, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Gourgeist (Large) - Bullet Seed - Level 26
  (711, 71102, 331, 15, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Gourgeist (Large) - Shadow Sneak - Level 30
  (711, 71102, 425, 15, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Gourgeist (Large) - Shadow Ball - Level 36
  (711, 71102, 247, 15, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Gourgeist (Large) - Trick-or-Treat - Level 40
  (711, 71102, 567, 15, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Gourgeist (Large) - Pain Split - Level 42
  (711, 71102, 220, 15, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Gourgeist (Large) - Seed Bomb - Level 48
  (711, 71102, 402, 15, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Gourgeist (Large) - Phantom Force - Level 57
  (711, 71102, 566, 15, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Gourgeist (Large) - Trick-or-Treat - Level 63
  (711, 71102, 567, 15, NULL, 1, 63, NULL, NULL, NULL, 20),
  -- Gourgeist (Large) - Explosion - Level 70
  (711, 71102, 153, 15, NULL, 1, 70, NULL, NULL, NULL, 21),
  -- Gourgeist (Large) - Toxic - TM06
  (711, 71102, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 22),
  -- Gourgeist (Large) - Hidden Power - TM10
  (711, 71102, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 23),
  -- Gourgeist (Large) - Sunny Day - TM11
  (711, 71102, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 24),
  -- Gourgeist (Large) - Hyper Beam - TM15
  (711, 71102, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 25),
  -- Gourgeist (Large) - Light Screen - TM16
  (711, 71102, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 26),
  -- Gourgeist (Large) - Protect - TM17
  (711, 71102, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 27),
  -- Gourgeist (Large) - Safeguard - TM20
  (711, 71102, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 28),
  -- Gourgeist (Large) - Frustration - TM21
  (711, 71102, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 29),
  -- Gourgeist (Large) - Solar Beam - TM22
  (711, 71102, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 30),
  -- Gourgeist (Large) - Return - TM27
  (711, 71102, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 31),
  -- Gourgeist (Large) - Psychic - TM29
  (711, 71102, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 32),
  -- Gourgeist (Large) - Shadow Ball - TM30
  (711, 71102, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 33),
  -- Gourgeist (Large) - Double Team - TM32
  (711, 71102, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 34),
  -- Gourgeist (Large) - Flamethrower - TM35
  (711, 71102, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 35),
  -- Gourgeist (Large) - Sludge Bomb - TM36
  (711, 71102, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 36),
  -- Gourgeist (Large) - Fire Blast - TM38
  (711, 71102, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 37),
  -- Gourgeist (Large) - Facade - TM42
  (711, 71102, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 38),
  -- Gourgeist (Large) - Flame Charge - TM43
  (711, 71102, 488, 15, NULL, 2, NULL, NULL, 15002043, NULL, 39),
  -- Gourgeist (Large) - Rest - TM44
  (711, 71102, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 40),
  -- Gourgeist (Large) - Attract - TM45
  (711, 71102, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 41),
  -- Gourgeist (Large) - Thief - TM46
  (711, 71102, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 42),
  -- Gourgeist (Large) - Round - TM48
  (711, 71102, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 43),
  -- Gourgeist (Large) - Focus Blast - TM52
  (711, 71102, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 44),
  -- Gourgeist (Large) - Energy Ball - TM53
  (711, 71102, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 45),
  -- Gourgeist (Large) - Charge Beam - TM57
  (711, 71102, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 46),
  -- Gourgeist (Large) - Will-O-Wisp - TM61
  (711, 71102, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 47),
  -- Gourgeist (Large) - Explosion - TM64
  (711, 71102, 153, 15, NULL, 2, NULL, NULL, 15002064, NULL, 48),
  -- Gourgeist (Large) - Giga Impact - TM68
  (711, 71102, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 49),
  -- Gourgeist (Large) - Gyro Ball - TM74
  (711, 71102, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 50),
  -- Gourgeist (Large) - Rock Slide - TM80
  (711, 71102, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 51),
  -- Gourgeist (Large) - Dream Eater - TM85
  (711, 71102, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 52),
  -- Gourgeist (Large) - Grass Knot - TM86
  (711, 71102, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 53),
  -- Gourgeist (Large) - Swagger - TM87
  (711, 71102, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 54),
  -- Gourgeist (Large) - Sleep Talk - TM88
  (711, 71102, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 55),
  -- Gourgeist (Large) - Substitute - TM90
  (711, 71102, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 56),
  -- Gourgeist (Large) - Trick Room - TM92
  (711, 71102, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 57),
  -- Gourgeist (Large) - Nature Power - TM96
  (711, 71102, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 58),
  -- Gourgeist (Large) - Dark Pulse - TM97
  (711, 71102, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 59),
  -- Gourgeist (Large) - Confide - TM100
  (711, 71102, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 60),

  -- Gourgeist (Super) - Confuse Ray - Level 1
  (711, 71103, 109, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gourgeist (Super) - Explosion - Level 1
  (711, 71103, 153, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gourgeist (Super) - Scary Face - Level 1
  (711, 71103, 184, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gourgeist (Super) - Trick - Level 1
  (711, 71103, 271, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gourgeist (Super) - Astonish - Level 1
  (711, 71103, 310, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gourgeist (Super) - Phantom Force - Level 1
  (711, 71103, 566, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gourgeist (Super) - Scary Face - Level 4
  (711, 71103, 184, 15, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Gourgeist (Super) - Trick-or-Treat - Level 6
  (711, 71103, 567, 15, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Gourgeist (Super) - Worry Seed - Level 11
  (711, 71103, 388, 15, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Gourgeist (Super) - Razor Leaf - Level 16
  (711, 71103, 75, 15, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Gourgeist (Super) - Leech Seed - Level 20
  (711, 71103, 73, 15, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Gourgeist (Super) - Trick-or-Treat - Level 23
  (711, 71103, 567, 15, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Gourgeist (Super) - Bullet Seed - Level 26
  (711, 71103, 331, 15, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Gourgeist (Super) - Shadow Sneak - Level 30
  (711, 71103, 425, 15, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Gourgeist (Super) - Shadow Ball - Level 36
  (711, 71103, 247, 15, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Gourgeist (Super) - Trick-or-Treat - Level 40
  (711, 71103, 567, 15, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Gourgeist (Super) - Pain Split - Level 42
  (711, 71103, 220, 15, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Gourgeist (Super) - Seed Bomb - Level 48
  (711, 71103, 402, 15, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Gourgeist (Super) - Phantom Force - Level 57
  (711, 71103, 566, 15, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Gourgeist (Super) - Trick-or-Treat - Level 63
  (711, 71103, 567, 15, NULL, 1, 63, NULL, NULL, NULL, 20),
  -- Gourgeist (Super) - Explosion - Level 70
  (711, 71103, 153, 15, NULL, 1, 70, NULL, NULL, NULL, 21),
  -- Gourgeist (Super) - Toxic - TM06
  (711, 71103, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 22),
  -- Gourgeist (Super) - Hidden Power - TM10
  (711, 71103, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 23),
  -- Gourgeist (Super) - Sunny Day - TM11
  (711, 71103, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 24),
  -- Gourgeist (Super) - Hyper Beam - TM15
  (711, 71103, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 25),
  -- Gourgeist (Super) - Light Screen - TM16
  (711, 71103, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 26),
  -- Gourgeist (Super) - Protect - TM17
  (711, 71103, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 27),
  -- Gourgeist (Super) - Safeguard - TM20
  (711, 71103, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 28),
  -- Gourgeist (Super) - Frustration - TM21
  (711, 71103, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 29),
  -- Gourgeist (Super) - Solar Beam - TM22
  (711, 71103, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 30),
  -- Gourgeist (Super) - Return - TM27
  (711, 71103, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 31),
  -- Gourgeist (Super) - Psychic - TM29
  (711, 71103, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 32),
  -- Gourgeist (Super) - Shadow Ball - TM30
  (711, 71103, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 33),
  -- Gourgeist (Super) - Double Team - TM32
  (711, 71103, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 34),
  -- Gourgeist (Super) - Flamethrower - TM35
  (711, 71103, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 35),
  -- Gourgeist (Super) - Sludge Bomb - TM36
  (711, 71103, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 36),
  -- Gourgeist (Super) - Fire Blast - TM38
  (711, 71103, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 37),
  -- Gourgeist (Super) - Facade - TM42
  (711, 71103, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 38),
  -- Gourgeist (Super) - Flame Charge - TM43
  (711, 71103, 488, 15, NULL, 2, NULL, NULL, 15002043, NULL, 39),
  -- Gourgeist (Super) - Rest - TM44
  (711, 71103, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 40),
  -- Gourgeist (Super) - Attract - TM45
  (711, 71103, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 41),
  -- Gourgeist (Super) - Thief - TM46
  (711, 71103, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 42),
  -- Gourgeist (Super) - Round - TM48
  (711, 71103, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 43),
  -- Gourgeist (Super) - Focus Blast - TM52
  (711, 71103, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 44),
  -- Gourgeist (Super) - Energy Ball - TM53
  (711, 71103, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 45),
  -- Gourgeist (Super) - Charge Beam - TM57
  (711, 71103, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 46),
  -- Gourgeist (Super) - Will-O-Wisp - TM61
  (711, 71103, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 47),
  -- Gourgeist (Super) - Explosion - TM64
  (711, 71103, 153, 15, NULL, 2, NULL, NULL, 15002064, NULL, 48),
  -- Gourgeist (Super) - Giga Impact - TM68
  (711, 71103, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 49),
  -- Gourgeist (Super) - Gyro Ball - TM74
  (711, 71103, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 50),
  -- Gourgeist (Super) - Rock Slide - TM80
  (711, 71103, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 51),
  -- Gourgeist (Super) - Dream Eater - TM85
  (711, 71103, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 52),
  -- Gourgeist (Super) - Grass Knot - TM86
  (711, 71103, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 53),
  -- Gourgeist (Super) - Swagger - TM87
  (711, 71103, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 54),
  -- Gourgeist (Super) - Sleep Talk - TM88
  (711, 71103, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 55),
  -- Gourgeist (Super) - Substitute - TM90
  (711, 71103, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 56),
  -- Gourgeist (Super) - Trick Room - TM92
  (711, 71103, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 57),
  -- Gourgeist (Super) - Nature Power - TM96
  (711, 71103, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 58),
  -- Gourgeist (Super) - Dark Pulse - TM97
  (711, 71103, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 59),
  -- Gourgeist (Super) - Confide - TM100
  (711, 71103, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 60),

  -- Zygarde (10% Forme) - Bite - Level 1
  (718, 71801, 44, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zygarde (10% Forme) - Glare - Level 1
  (718, 71801, 137, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zygarde (10% Forme) - Dragon Breath - Level 1
  (718, 71801, 225, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zygarde (10% Forme) - Bulldoze - Level 1
  (718, 71801, 523, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zygarde (10% Forme) - Safeguard - Level 5
  (718, 71801, 219, 15, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Zygarde (10% Forme) - Dig - Level 10
  (718, 71801, 91, 15, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Zygarde (10% Forme) - Bind - Level 18
  (718, 71801, 20, 15, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Zygarde (10% Forme) - Land's Wrath - Level 26
  (718, 71801, 616, 15, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Zygarde (10% Forme) - Sandstorm - Level 35
  (718, 71801, 201, 15, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Zygarde (10% Forme) - Haze - Level 44
  (718, 71801, 114, 15, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Zygarde (10% Forme) - Crunch - Level 51
  (718, 71801, 242, 15, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Zygarde (10% Forme) - Earthquake - Level 55
  (718, 71801, 89, 15, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Zygarde (10% Forme) - Camouflage - Level 59
  (718, 71801, 293, 15, NULL, 1, 59, NULL, NULL, NULL, 13),
  -- Zygarde (10% Forme) - Dragon Pulse - Level 63
  (718, 71801, 406, 15, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Zygarde (10% Forme) - Coil - Level 72
  (718, 71801, 489, 15, NULL, 1, 72, NULL, NULL, NULL, 15),
  -- Zygarde (10% Forme) - Outrage - Level 80
  (718, 71801, 200, 15, NULL, 1, 80, NULL, NULL, NULL, 16),
  -- Zygarde (10% Forme) - Toxic - TM06
  (718, 71801, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Zygarde (10% Forme) - Hidden Power - TM10
  (718, 71801, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Zygarde (10% Forme) - Sunny Day - TM11
  (718, 71801, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 19),
  -- Zygarde (10% Forme) - Hyper Beam - TM15
  (718, 71801, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 20),
  -- Zygarde (10% Forme) - Protect - TM17
  (718, 71801, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 21),
  -- Zygarde (10% Forme) - Safeguard - TM20
  (718, 71801, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 22),
  -- Zygarde (10% Forme) - Frustration - TM21
  (718, 71801, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 23),
  -- Zygarde (10% Forme) - Earthquake - TM26
  (718, 71801, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 24),
  -- Zygarde (10% Forme) - Return - TM27
  (718, 71801, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 25),
  -- Zygarde (10% Forme) - Brick Break - TM31
  (718, 71801, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 26),
  -- Zygarde (10% Forme) - Double Team - TM32
  (718, 71801, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 27),
  -- Zygarde (10% Forme) - Sludge Wave - TM34
  (718, 71801, 482, 15, NULL, 2, NULL, NULL, 15002034, NULL, 28),
  -- Zygarde (10% Forme) - Sandstorm - TM37
  (718, 71801, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 29),
  -- Zygarde (10% Forme) - Facade - TM42
  (718, 71801, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 30),
  -- Zygarde (10% Forme) - Rest - TM44
  (718, 71801, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 31),
  -- Zygarde (10% Forme) - Round - TM48
  (718, 71801, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 32),
  -- Zygarde (10% Forme) - Focus Blast - TM52
  (718, 71801, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 33),
  -- Zygarde (10% Forme) - Giga Impact - TM68
  (718, 71801, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 34),
  -- Zygarde (10% Forme) - Stone Edge - TM71
  (718, 71801, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 35),
  -- Zygarde (10% Forme) - Bulldoze - TM78
  (718, 71801, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 36),
  -- Zygarde (10% Forme) - Rock Slide - TM80
  (718, 71801, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 37),
  -- Zygarde (10% Forme) - Dragon Tail - TM82
  (718, 71801, 525, 15, NULL, 2, NULL, NULL, 15002082, NULL, 38),
  -- Zygarde (10% Forme) - Grass Knot - TM86
  (718, 71801, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 39),
  -- Zygarde (10% Forme) - Swagger - TM87
  (718, 71801, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 40),
  -- Zygarde (10% Forme) - Sleep Talk - TM88
  (718, 71801, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 41),
  -- Zygarde (10% Forme) - Substitute - TM90
  (718, 71801, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 42),
  -- Zygarde (10% Forme) - Confide - TM100
  (718, 71801, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 43),
  -- Zygarde (10% Forme) - Draco Meteor - Tutor
  (718, 71801, 434, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 44),

  -- Hoopa (Unbound) - Confusion - Level 1
  (720, 72001, 93, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hoopa (Unbound) - Destiny Bond - Level 1
  (720, 72001, 194, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hoopa (Unbound) - Trick - Level 1
  (720, 72001, 271, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hoopa (Unbound) - Ally Switch - Level 1
  (720, 72001, 502, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hoopa (Unbound) - Hyperspace Fury - Level 1
  (720, 72001, 621, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hoopa (Unbound) - Astonish - Level 6
  (720, 72001, 310, 15, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Hoopa (Unbound) - Magic Coat - Level 10
  (720, 72001, 277, 15, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Hoopa (Unbound) - Light Screen - Level 15
  (720, 72001, 113, 15, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Hoopa (Unbound) - Psybeam - Level 19
  (720, 72001, 60, 15, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Hoopa (Unbound) - Skill Swap - Level 25
  (720, 72001, 285, 15, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Hoopa (Unbound) - Guard Split - Level 29
  (720, 72001, 470, 15, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Hoopa (Unbound) - Power Split - Level 29
  (720, 72001, 471, 15, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Hoopa (Unbound) - Knock Off - Level 46
  (720, 72001, 282, 15, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Hoopa (Unbound) - Trick Room - Level 50
  (720, 72001, 433, 15, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Hoopa (Unbound) - Wonder Room - Level 50
  (720, 72001, 472, 15, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Hoopa (Unbound) - Dark Pulse - Level 55
  (720, 72001, 399, 15, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Hoopa (Unbound) - Psychic - Level 75
  (720, 72001, 94, 15, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Hoopa (Unbound) - Hyperspace Fury - Level 85
  (720, 72001, 621, 15, NULL, 1, 85, NULL, NULL, NULL, 18),
  -- Hoopa (Unbound) - Psyshock - TM03
  (720, 72001, 473, 15, NULL, 2, NULL, NULL, 15002003, NULL, 19),
  -- Hoopa (Unbound) - Calm Mind - TM04
  (720, 72001, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 20),
  -- Hoopa (Unbound) - Toxic - TM06
  (720, 72001, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 21),
  -- Hoopa (Unbound) - Hidden Power - TM10
  (720, 72001, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 22),
  -- Hoopa (Unbound) - Sunny Day - TM11
  (720, 72001, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 23),
  -- Hoopa (Unbound) - Taunt - TM12
  (720, 72001, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 24),
  -- Hoopa (Unbound) - Hyper Beam - TM15
  (720, 72001, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 25),
  -- Hoopa (Unbound) - Light Screen - TM16
  (720, 72001, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 26),
  -- Hoopa (Unbound) - Protect - TM17
  (720, 72001, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 27),
  -- Hoopa (Unbound) - Rain Dance - TM18
  (720, 72001, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 28),
  -- Hoopa (Unbound) - Safeguard - TM20
  (720, 72001, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 29),
  -- Hoopa (Unbound) - Frustration - TM21
  (720, 72001, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 30),
  -- Hoopa (Unbound) - Thunderbolt - TM24
  (720, 72001, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 31),
  -- Hoopa (Unbound) - Return - TM27
  (720, 72001, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 32),
  -- Hoopa (Unbound) - Psychic - TM29
  (720, 72001, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 33),
  -- Hoopa (Unbound) - Shadow Ball - TM30
  (720, 72001, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 34),
  -- Hoopa (Unbound) - Brick Break - TM31
  (720, 72001, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 35),
  -- Hoopa (Unbound) - Double Team - TM32
  (720, 72001, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 36),
  -- Hoopa (Unbound) - Reflect - TM33
  (720, 72001, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 37),
  -- Hoopa (Unbound) - Torment - TM41
  (720, 72001, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 38),
  -- Hoopa (Unbound) - Facade - TM42
  (720, 72001, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 39),
  -- Hoopa (Unbound) - Rest - TM44
  (720, 72001, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 40),
  -- Hoopa (Unbound) - Thief - TM46
  (720, 72001, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 41),
  -- Hoopa (Unbound) - Round - TM48
  (720, 72001, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 42),
  -- Hoopa (Unbound) - Focus Blast - TM52
  (720, 72001, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 43),
  -- Hoopa (Unbound) - Energy Ball - TM53
  (720, 72001, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 44),
  -- Hoopa (Unbound) - Fling - TM56
  (720, 72001, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 45),
  -- Hoopa (Unbound) - Charge Beam - TM57
  (720, 72001, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 46),
  -- Hoopa (Unbound) - Quash - TM60
  (720, 72001, 511, 15, NULL, 2, NULL, NULL, 15002060, NULL, 47),
  -- Hoopa (Unbound) - Embargo - TM63
  (720, 72001, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 48),
  -- Hoopa (Unbound) - Giga Impact - TM68
  (720, 72001, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 49),
  -- Hoopa (Unbound) - Thunder Wave - TM73
  (720, 72001, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 50),
  -- Hoopa (Unbound) - Psych Up - TM77
  (720, 72001, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 51),
  -- Hoopa (Unbound) - Dream Eater - TM85
  (720, 72001, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 52),
  -- Hoopa (Unbound) - Grass Knot - TM86
  (720, 72001, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 53),
  -- Hoopa (Unbound) - Swagger - TM87
  (720, 72001, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 54),
  -- Hoopa (Unbound) - Sleep Talk - TM88
  (720, 72001, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 55),
  -- Hoopa (Unbound) - Substitute - TM90
  (720, 72001, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 56),
  -- Hoopa (Unbound) - Trick Room - TM92
  (720, 72001, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 57),
  -- Hoopa (Unbound) - Dark Pulse - TM97
  (720, 72001, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 58),
  -- Hoopa (Unbound) - Confide - TM100
  (720, 72001, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 59),

  -- Oricorio (Pom-Pom) - Pound - Level 1
  (741, 74101, 1, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oricorio (Pom-Pom) - Growl - Level 4
  (741, 74101, 45, 15, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Oricorio (Pom-Pom) - Peck - Level 6
  (741, 74101, 64, 15, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Oricorio (Pom-Pom) - Helping Hand - Level 10
  (741, 74101, 270, 15, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Oricorio (Pom-Pom) - Air Cutter - Level 13
  (741, 74101, 314, 15, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Oricorio (Pom-Pom) - Baton Pass - Level 16
  (741, 74101, 226, 15, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Oricorio (Pom-Pom) - Feather Dance - Level 20
  (741, 74101, 297, 15, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Oricorio (Pom-Pom) - Double Slap - Level 23
  (741, 74101, 3, 15, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Oricorio (Pom-Pom) - Teeter Dance - Level 26
  (741, 74101, 298, 15, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Oricorio (Pom-Pom) - Roost - Level 30
  (741, 74101, 355, 15, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Oricorio (Pom-Pom) - Captivate - Level 33
  (741, 74101, 445, 15, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Oricorio (Pom-Pom) - Air Slash - Level 36
  (741, 74101, 403, 15, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Oricorio (Pom-Pom) - Revelation Dance - Level 40
  (741, 74101, 686, 15, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Oricorio (Pom-Pom) - Mirror Move - Level 43
  (741, 74101, 119, 15, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Oricorio (Pom-Pom) - Agility - Level 46
  (741, 74101, 97, 15, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Oricorio (Pom-Pom) - Hurricane - Level 50
  (741, 74101, 542, 15, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Oricorio (Pom-Pom) - Work Up - TM01
  (741, 74101, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 17),
  -- Oricorio (Pom-Pom) - Calm Mind - TM04
  (741, 74101, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 18),
  -- Oricorio (Pom-Pom) - Toxic - TM06
  (741, 74101, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Oricorio (Pom-Pom) - Hidden Power - TM10
  (741, 74101, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 20),
  -- Oricorio (Pom-Pom) - Taunt - TM12
  (741, 74101, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 21),
  -- Oricorio (Pom-Pom) - Protect - TM17
  (741, 74101, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 22),
  -- Oricorio (Pom-Pom) - Roost - TM19
  (741, 74101, 355, 15, NULL, 2, NULL, NULL, 15002019, NULL, 23),
  -- Oricorio (Pom-Pom) - Safeguard - TM20
  (741, 74101, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 24),
  -- Oricorio (Pom-Pom) - Frustration - TM21
  (741, 74101, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 25),
  -- Oricorio (Pom-Pom) - Return - TM27
  (741, 74101, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 26),
  -- Oricorio (Pom-Pom) - Double Team - TM32
  (741, 74101, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 27),
  -- Oricorio (Pom-Pom) - Sandstorm - TM37
  (741, 74101, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 28),
  -- Oricorio (Pom-Pom) - Aerial Ace - TM40
  (741, 74101, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 29),
  -- Oricorio (Pom-Pom) - Facade - TM42
  (741, 74101, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 30),
  -- Oricorio (Pom-Pom) - Rest - TM44
  (741, 74101, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 31),
  -- Oricorio (Pom-Pom) - Attract - TM45
  (741, 74101, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 32),
  -- Oricorio (Pom-Pom) - Round - TM48
  (741, 74101, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 33),
  -- Oricorio (Pom-Pom) - Steel Wing - TM51
  (741, 74101, 211, 15, NULL, 2, NULL, NULL, 15002051, NULL, 34),
  -- Oricorio (Pom-Pom) - Quash - TM60
  (741, 74101, 511, 15, NULL, 2, NULL, NULL, 15002060, NULL, 35),
  -- Oricorio (Pom-Pom) - Acrobatics - TM62
  (741, 74101, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 36),
  -- Oricorio (Pom-Pom) - Embargo - TM63
  (741, 74101, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 37),
  -- Oricorio (Pom-Pom) - Swords Dance - TM75
  (741, 74101, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 38),
  -- Oricorio (Pom-Pom) - Fly - TM76
  (741, 74101, 19, 15, NULL, 2, NULL, NULL, 15002076, NULL, 39),
  -- Oricorio (Pom-Pom) - Swagger - TM87
  (741, 74101, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 40),
  -- Oricorio (Pom-Pom) - Sleep Talk - TM88
  (741, 74101, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 41),
  -- Oricorio (Pom-Pom) - U-turn - TM89
  (741, 74101, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 42),
  -- Oricorio (Pom-Pom) - Substitute - TM90
  (741, 74101, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 43),
  -- Oricorio (Pom-Pom) - Confide - TM100
  (741, 74101, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 44),
  -- Oricorio (Pom-Pom) - Safeguard - Egg
  (741, 74101, 219, 15, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Oricorio (Pom-Pom) - Pluck - Egg
  (741, 74101, 365, 15, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Oricorio (Pom-Pom) - Tailwind - Egg
  (741, 74101, 366, 15, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Oricorio (Pom-Pom) - Captivate - Egg
  (741, 74101, 445, 15, NULL, 5, NULL, NULL, NULL, NULL, 48),

  -- Oricorio (Pa'u) - Pound - Level 1
  (741, 74102, 1, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oricorio (Pa'u) - Growl - Level 4
  (741, 74102, 45, 15, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Oricorio (Pa'u) - Peck - Level 6
  (741, 74102, 64, 15, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Oricorio (Pa'u) - Helping Hand - Level 10
  (741, 74102, 270, 15, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Oricorio (Pa'u) - Air Cutter - Level 13
  (741, 74102, 314, 15, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Oricorio (Pa'u) - Baton Pass - Level 16
  (741, 74102, 226, 15, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Oricorio (Pa'u) - Feather Dance - Level 20
  (741, 74102, 297, 15, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Oricorio (Pa'u) - Double Slap - Level 23
  (741, 74102, 3, 15, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Oricorio (Pa'u) - Teeter Dance - Level 26
  (741, 74102, 298, 15, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Oricorio (Pa'u) - Roost - Level 30
  (741, 74102, 355, 15, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Oricorio (Pa'u) - Captivate - Level 33
  (741, 74102, 445, 15, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Oricorio (Pa'u) - Air Slash - Level 36
  (741, 74102, 403, 15, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Oricorio (Pa'u) - Revelation Dance - Level 40
  (741, 74102, 686, 15, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Oricorio (Pa'u) - Mirror Move - Level 43
  (741, 74102, 119, 15, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Oricorio (Pa'u) - Agility - Level 46
  (741, 74102, 97, 15, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Oricorio (Pa'u) - Hurricane - Level 50
  (741, 74102, 542, 15, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Oricorio (Pa'u) - Work Up - TM01
  (741, 74102, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 17),
  -- Oricorio (Pa'u) - Calm Mind - TM04
  (741, 74102, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 18),
  -- Oricorio (Pa'u) - Toxic - TM06
  (741, 74102, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Oricorio (Pa'u) - Hidden Power - TM10
  (741, 74102, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 20),
  -- Oricorio (Pa'u) - Taunt - TM12
  (741, 74102, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 21),
  -- Oricorio (Pa'u) - Protect - TM17
  (741, 74102, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 22),
  -- Oricorio (Pa'u) - Roost - TM19
  (741, 74102, 355, 15, NULL, 2, NULL, NULL, 15002019, NULL, 23),
  -- Oricorio (Pa'u) - Safeguard - TM20
  (741, 74102, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 24),
  -- Oricorio (Pa'u) - Frustration - TM21
  (741, 74102, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 25),
  -- Oricorio (Pa'u) - Return - TM27
  (741, 74102, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 26),
  -- Oricorio (Pa'u) - Double Team - TM32
  (741, 74102, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 27),
  -- Oricorio (Pa'u) - Sandstorm - TM37
  (741, 74102, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 28),
  -- Oricorio (Pa'u) - Aerial Ace - TM40
  (741, 74102, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 29),
  -- Oricorio (Pa'u) - Facade - TM42
  (741, 74102, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 30),
  -- Oricorio (Pa'u) - Rest - TM44
  (741, 74102, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 31),
  -- Oricorio (Pa'u) - Attract - TM45
  (741, 74102, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 32),
  -- Oricorio (Pa'u) - Round - TM48
  (741, 74102, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 33),
  -- Oricorio (Pa'u) - Steel Wing - TM51
  (741, 74102, 211, 15, NULL, 2, NULL, NULL, 15002051, NULL, 34),
  -- Oricorio (Pa'u) - Quash - TM60
  (741, 74102, 511, 15, NULL, 2, NULL, NULL, 15002060, NULL, 35),
  -- Oricorio (Pa'u) - Acrobatics - TM62
  (741, 74102, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 36),
  -- Oricorio (Pa'u) - Embargo - TM63
  (741, 74102, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 37),
  -- Oricorio (Pa'u) - Swords Dance - TM75
  (741, 74102, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 38),
  -- Oricorio (Pa'u) - Fly - TM76
  (741, 74102, 19, 15, NULL, 2, NULL, NULL, 15002076, NULL, 39),
  -- Oricorio (Pa'u) - Swagger - TM87
  (741, 74102, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 40),
  -- Oricorio (Pa'u) - Sleep Talk - TM88
  (741, 74102, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 41),
  -- Oricorio (Pa'u) - U-turn - TM89
  (741, 74102, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 42),
  -- Oricorio (Pa'u) - Substitute - TM90
  (741, 74102, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 43),
  -- Oricorio (Pa'u) - Confide - TM100
  (741, 74102, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 44),
  -- Oricorio (Pa'u) - Safeguard - Egg
  (741, 74102, 219, 15, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Oricorio (Pa'u) - Pluck - Egg
  (741, 74102, 365, 15, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Oricorio (Pa'u) - Tailwind - Egg
  (741, 74102, 366, 15, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Oricorio (Pa'u) - Captivate - Egg
  (741, 74102, 445, 15, NULL, 5, NULL, NULL, NULL, NULL, 48),

  -- Oricorio (Sensu) - Pound - Level 1
  (741, 74103, 1, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oricorio (Sensu) - Growl - Level 4
  (741, 74103, 45, 15, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Oricorio (Sensu) - Peck - Level 6
  (741, 74103, 64, 15, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Oricorio (Sensu) - Helping Hand - Level 10
  (741, 74103, 270, 15, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Oricorio (Sensu) - Air Cutter - Level 13
  (741, 74103, 314, 15, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Oricorio (Sensu) - Baton Pass - Level 16
  (741, 74103, 226, 15, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Oricorio (Sensu) - Feather Dance - Level 20
  (741, 74103, 297, 15, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Oricorio (Sensu) - Double Slap - Level 23
  (741, 74103, 3, 15, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Oricorio (Sensu) - Teeter Dance - Level 26
  (741, 74103, 298, 15, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Oricorio (Sensu) - Roost - Level 30
  (741, 74103, 355, 15, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Oricorio (Sensu) - Captivate - Level 33
  (741, 74103, 445, 15, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Oricorio (Sensu) - Air Slash - Level 36
  (741, 74103, 403, 15, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Oricorio (Sensu) - Revelation Dance - Level 40
  (741, 74103, 686, 15, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Oricorio (Sensu) - Mirror Move - Level 43
  (741, 74103, 119, 15, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Oricorio (Sensu) - Agility - Level 46
  (741, 74103, 97, 15, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Oricorio (Sensu) - Hurricane - Level 50
  (741, 74103, 542, 15, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Oricorio (Sensu) - Work Up - TM01
  (741, 74103, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 17),
  -- Oricorio (Sensu) - Calm Mind - TM04
  (741, 74103, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 18),
  -- Oricorio (Sensu) - Toxic - TM06
  (741, 74103, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Oricorio (Sensu) - Hidden Power - TM10
  (741, 74103, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 20),
  -- Oricorio (Sensu) - Taunt - TM12
  (741, 74103, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 21),
  -- Oricorio (Sensu) - Protect - TM17
  (741, 74103, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 22),
  -- Oricorio (Sensu) - Roost - TM19
  (741, 74103, 355, 15, NULL, 2, NULL, NULL, 15002019, NULL, 23),
  -- Oricorio (Sensu) - Safeguard - TM20
  (741, 74103, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 24),
  -- Oricorio (Sensu) - Frustration - TM21
  (741, 74103, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 25),
  -- Oricorio (Sensu) - Return - TM27
  (741, 74103, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 26),
  -- Oricorio (Sensu) - Double Team - TM32
  (741, 74103, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 27),
  -- Oricorio (Sensu) - Sandstorm - TM37
  (741, 74103, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 28),
  -- Oricorio (Sensu) - Aerial Ace - TM40
  (741, 74103, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 29),
  -- Oricorio (Sensu) - Facade - TM42
  (741, 74103, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 30),
  -- Oricorio (Sensu) - Rest - TM44
  (741, 74103, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 31),
  -- Oricorio (Sensu) - Attract - TM45
  (741, 74103, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 32),
  -- Oricorio (Sensu) - Round - TM48
  (741, 74103, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 33),
  -- Oricorio (Sensu) - Steel Wing - TM51
  (741, 74103, 211, 15, NULL, 2, NULL, NULL, 15002051, NULL, 34),
  -- Oricorio (Sensu) - Quash - TM60
  (741, 74103, 511, 15, NULL, 2, NULL, NULL, 15002060, NULL, 35),
  -- Oricorio (Sensu) - Acrobatics - TM62
  (741, 74103, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 36),
  -- Oricorio (Sensu) - Embargo - TM63
  (741, 74103, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 37),
  -- Oricorio (Sensu) - Swords Dance - TM75
  (741, 74103, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 38),
  -- Oricorio (Sensu) - Fly - TM76
  (741, 74103, 19, 15, NULL, 2, NULL, NULL, 15002076, NULL, 39),
  -- Oricorio (Sensu) - Swagger - TM87
  (741, 74103, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 40),
  -- Oricorio (Sensu) - Sleep Talk - TM88
  (741, 74103, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 41),
  -- Oricorio (Sensu) - U-turn - TM89
  (741, 74103, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 42),
  -- Oricorio (Sensu) - Substitute - TM90
  (741, 74103, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 43),
  -- Oricorio (Sensu) - Confide - TM100
  (741, 74103, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 44),
  -- Oricorio (Sensu) - Safeguard - Egg
  (741, 74103, 219, 15, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Oricorio (Sensu) - Pluck - Egg
  (741, 74103, 365, 15, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Oricorio (Sensu) - Tailwind - Egg
  (741, 74103, 366, 15, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Oricorio (Sensu) - Captivate - Egg
  (741, 74103, 445, 15, NULL, 5, NULL, NULL, NULL, NULL, 48),

  -- Lycanroc (Midnight) - Sand Attack - Level 1
  (745, 74501, 28, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lycanroc (Midnight) - Tackle - Level 1
  (745, 74501, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lycanroc (Midnight) - Leer - Level 1
  (745, 74501, 43, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lycanroc (Midnight) - Bite - Level 1
  (745, 74501, 44, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lycanroc (Midnight) - Counter - Level 1
  (745, 74501, 68, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lycanroc (Midnight) - Reversal - Level 1
  (745, 74501, 179, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lycanroc (Midnight) - Taunt - Level 1
  (745, 74501, 269, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lycanroc (Midnight) - Sand Attack - Level 4
  (745, 74501, 28, 15, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Lycanroc (Midnight) - Bite - Level 7
  (745, 74501, 44, 15, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Lycanroc (Midnight) - Howl - Level 12
  (745, 74501, 336, 15, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Lycanroc (Midnight) - Rock Throw - Level 15
  (745, 74501, 88, 15, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Lycanroc (Midnight) - Odor Sleuth - Level 18
  (745, 74501, 316, 15, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Lycanroc (Midnight) - Rock Tomb - Level 23
  (745, 74501, 317, 15, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Lycanroc (Midnight) - Roar - Level 26
  (745, 74501, 46, 15, NULL, 1, 26, NULL, NULL, NULL, 14),
  -- Lycanroc (Midnight) - Stealth Rock - Level 29
  (745, 74501, 446, 15, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Lycanroc (Midnight) - Rock Slide - Level 34
  (745, 74501, 157, 15, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Lycanroc (Midnight) - Scary Face - Level 37
  (745, 74501, 184, 15, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Lycanroc (Midnight) - Crunch - Level 40
  (745, 74501, 242, 15, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Lycanroc (Midnight) - Rock Climb - Level 45
  (745, 74501, 431, 15, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Lycanroc (Midnight) - Stone Edge - Level 48
  (745, 74501, 444, 15, NULL, 1, 48, NULL, NULL, NULL, 20),
  -- Lycanroc (Midnight) - Roar - TM05
  (745, 74501, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 21),
  -- Lycanroc (Midnight) - Toxic - TM06
  (745, 74501, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 22),
  -- Lycanroc (Midnight) - Bulk Up - TM08
  (745, 74501, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 23),
  -- Lycanroc (Midnight) - Hidden Power - TM10
  (745, 74501, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 24),
  -- Lycanroc (Midnight) - Taunt - TM12
  (745, 74501, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 25),
  -- Lycanroc (Midnight) - Protect - TM17
  (745, 74501, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 26),
  -- Lycanroc (Midnight) - Frustration - TM21
  (745, 74501, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 27),
  -- Lycanroc (Midnight) - Return - TM27
  (745, 74501, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 28),
  -- Lycanroc (Midnight) - Brick Break - TM31
  (745, 74501, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 29),
  -- Lycanroc (Midnight) - Double Team - TM32
  (745, 74501, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 30),
  -- Lycanroc (Midnight) - Rock Tomb - TM39
  (745, 74501, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 31),
  -- Lycanroc (Midnight) - Facade - TM42
  (745, 74501, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 32),
  -- Lycanroc (Midnight) - Rest - TM44
  (745, 74501, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 33),
  -- Lycanroc (Midnight) - Attract - TM45
  (745, 74501, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 34),
  -- Lycanroc (Midnight) - Round - TM48
  (745, 74501, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 35),
  -- Lycanroc (Midnight) - Echoed Voice - TM49
  (745, 74501, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 36),
  -- Lycanroc (Midnight) - Rock Polish - TM69
  (745, 74501, 397, 15, NULL, 2, NULL, NULL, 15002069, NULL, 37),
  -- Lycanroc (Midnight) - Stone Edge - TM71
  (745, 74501, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 38),
  -- Lycanroc (Midnight) - Swords Dance - TM75
  (745, 74501, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 39),
  -- Lycanroc (Midnight) - Rock Slide - TM80
  (745, 74501, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 40),
  -- Lycanroc (Midnight) - Swagger - TM87
  (745, 74501, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 41),
  -- Lycanroc (Midnight) - Sleep Talk - TM88
  (745, 74501, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 42),
  -- Lycanroc (Midnight) - Substitute - TM90
  (745, 74501, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 43),
  -- Lycanroc (Midnight) - Snarl - TM95
  (745, 74501, 555, 15, NULL, 2, NULL, NULL, 15002095, NULL, 44),
  -- Lycanroc (Midnight) - Confide - TM100
  (745, 74501, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 45),
  -- Lycanroc (Midnight) - Counter - Evolution
  (745, 74501, 68, 15, NULL, 7, NULL, NULL, NULL, NULL, 46);
