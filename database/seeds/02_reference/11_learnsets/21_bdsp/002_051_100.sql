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
-- Brilliant Diamond / Shining Pearl learnsets for default forms, species 051-100.
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
  -- Voltorb - Charge - Starting Move
  (100, 10000, 268, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Voltorb - Tackle - Starting Move
  (100, 10000, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Voltorb - Thunder Shock - Level 4
  (100, 10000, 84, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Voltorb - Eerie Impulse - Level 6
  (100, 10000, 598, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Voltorb - Spark - Level 9
  (100, 10000, 209, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Voltorb - Rollout - Level 11
  (100, 10000, 205, 21, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Voltorb - Screech - Level 13
  (100, 10000, 103, 21, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Voltorb - Charge Beam - Level 16
  (100, 10000, 451, 21, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Voltorb - Swift - Level 20
  (100, 10000, 129, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Voltorb - Electro Ball - Level 22
  (100, 10000, 486, 21, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Voltorb - Self-Destruct - Level 26
  (100, 10000, 120, 21, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Voltorb - Light Screen - Level 29
  (100, 10000, 113, 21, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Voltorb - Magnet Rise - Level 34
  (100, 10000, 393, 21, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Voltorb - Discharge - Level 37
  (100, 10000, 435, 21, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Voltorb - Explosion - Level 41
  (100, 10000, 153, 21, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Voltorb - Gyro Ball - Level 46
  (100, 10000, 360, 21, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Voltorb - Mirror Coat - Level 48
  (100, 10000, 243, 21, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Voltorb - Taunt - TM12
  (100, 10000, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 18),
  -- Voltorb - Light Screen - TM16
  (100, 10000, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 19),
  -- Voltorb - Protect - TM17
  (100, 10000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Voltorb - Rain Dance - TM18
  (100, 10000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Voltorb - Thunderbolt - TM24
  (100, 10000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 22),
  -- Voltorb - Thunder - TM25
  (100, 10000, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 23),
  -- Voltorb - Double Team - TM32
  (100, 10000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Voltorb - Shock Wave - TM34
  (100, 10000, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 25),
  -- Voltorb - Torment - TM41
  (100, 10000, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 26),
  -- Voltorb - Facade - TM42
  (100, 10000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Voltorb - Volt Switch - TM43
  (100, 10000, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 28),
  -- Voltorb - Rest - TM44
  (100, 10000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Voltorb - Thief - TM46
  (100, 10000, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 30),
  -- Voltorb - Charge Beam - TM57
  (100, 10000, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 31),
  -- Voltorb - Endure - TM58
  (100, 10000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Voltorb - Explosion - TM64
  (100, 10000, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 33),
  -- Voltorb - Flash - TM70
  (100, 10000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 34),
  -- Voltorb - Thunder Wave - TM73
  (100, 10000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 35),
  -- Voltorb - Gyro Ball - TM74
  (100, 10000, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 36),
  -- Voltorb - Sleep Talk - TM82
  (100, 10000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 37),
  -- Voltorb - Swagger - TM87
  (100, 10000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 38),
  -- Voltorb - Substitute - TM90
  (100, 10000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 39),
  -- Dugtrio - Sand Tomb - Starting Move
  (51, 5100, 328, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Dugtrio - Night Slash - Starting Move
  (51, 5100, 400, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Dugtrio - Tri Attack - Starting Move
  (51, 5100, 161, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Dugtrio - Sand Attack - Starting Move
  (51, 5100, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Dugtrio - Scratch - Starting Move
  (51, 5100, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Dugtrio - Growl - Starting Move
  (51, 5100, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Dugtrio - Astonish - Starting Move
  (51, 5100, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Dugtrio - Sand Tomb - Evolution
  (51, 5100, 328, 21, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Dugtrio - Mud-Slap - Level 12
  (51, 5100, 189, 21, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Dugtrio - Bulldoze - Level 16
  (51, 5100, 523, 21, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Dugtrio - Sucker Punch - Level 20
  (51, 5100, 389, 21, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Dugtrio - Slash - Level 24
  (51, 5100, 163, 21, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Dugtrio - Sandstorm - Level 30
  (51, 5100, 201, 21, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Dugtrio - Dig - Level 36
  (51, 5100, 91, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Dugtrio - Earth Power - Level 42
  (51, 5100, 414, 21, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Dugtrio - Earthquake - Level 48
  (51, 5100, 89, 21, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Dugtrio - Fissure - Level 54
  (51, 5100, 90, 21, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Dugtrio - Work Up - TM10
  (51, 5100, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 18),
  -- Dugtrio - Sunny Day - TM11
  (51, 5100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Dugtrio - Hyper Beam - TM15
  (51, 5100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Dugtrio - Protect - TM17
  (51, 5100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Dugtrio - Earthquake - TM26
  (51, 5100, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 22),
  -- Dugtrio - Dig - TM28
  (51, 5100, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 23),
  -- Dugtrio - Double Team - TM32
  (51, 5100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Dugtrio - Sludge Bomb - TM36
  (51, 5100, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 25),
  -- Dugtrio - Sandstorm - TM37
  (51, 5100, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 26),
  -- Dugtrio - Rock Tomb - TM39
  (51, 5100, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 27),
  -- Dugtrio - Aerial Ace - TM40
  (51, 5100, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 28),
  -- Dugtrio - Facade - TM42
  (51, 5100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Dugtrio - Rest - TM44
  (51, 5100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Dugtrio - Attract - TM45
  (51, 5100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Dugtrio - Thief - TM46
  (51, 5100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 32),
  -- Dugtrio - Endure - TM58
  (51, 5100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Dugtrio - Shadow Claw - TM65
  (51, 5100, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 34),
  -- Dugtrio - Giga Impact - TM68
  (51, 5100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 35),
  -- Dugtrio - Stone Edge - TM71
  (51, 5100, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 36),
  -- Dugtrio - Stealth Rock - TM76
  (51, 5100, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 37),
  -- Dugtrio - Rock Slide - TM80
  (51, 5100, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 38),
  -- Dugtrio - Sleep Talk - TM82
  (51, 5100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Dugtrio - Bulldoze - TM83
  (51, 5100, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 40),
  -- Dugtrio - Swagger - TM87
  (51, 5100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 41),
  -- Dugtrio - Substitute - TM90
  (51, 5100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 42),
  -- Dugtrio - Cut - TM93
  (51, 5100, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 43),
  -- Dugtrio - Rock Smash - TM98
  (51, 5100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 44),
  -- Dugtrio - Ancient Power - Egg
  (51, 5100, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Dugtrio - Astonish - Egg
  (51, 5100, 310, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Dugtrio - Beat Up - Egg
  (51, 5100, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Dugtrio - Final Gambit - Egg
  (51, 5100, 515, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Dugtrio - Headbutt - Egg
  (51, 5100, 29, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Dugtrio - Hone Claws - Egg
  (51, 5100, 468, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Dugtrio - Memento - Egg
  (51, 5100, 262, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Dugtrio - Reversal - Egg
  (51, 5100, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Dugtrio - Screech - Egg
  (51, 5100, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Dugtrio - Uproar - Egg
  (51, 5100, 253, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Meowth - Fake Out - Starting Move
  (52, 5200, 252, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Meowth - Growl - Starting Move
  (52, 5200, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Meowth - Feint - Level 4
  (52, 5200, 364, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Meowth - Scratch - Level 8
  (52, 5200, 10, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Meowth - Pay Day - Level 12
  (52, 5200, 6, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Meowth - Bite - Level 16
  (52, 5200, 44, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Meowth - Taunt - Level 20
  (52, 5200, 269, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Meowth - Assurance - Level 24
  (52, 5200, 372, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Meowth - Fury Swipes - Level 29
  (52, 5200, 154, 21, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Meowth - Screech - Level 32
  (52, 5200, 103, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Meowth - Slash - Level 36
  (52, 5200, 163, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Meowth - Nasty Plot - Level 40
  (52, 5200, 417, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Meowth - Play Rough - Level 44
  (52, 5200, 583, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Meowth - Water Pulse - TM03
  (52, 5200, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Meowth - Work Up - TM10
  (52, 5200, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 15),
  -- Meowth - Sunny Day - TM11
  (52, 5200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Meowth - Taunt - TM12
  (52, 5200, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 17),
  -- Meowth - Protect - TM17
  (52, 5200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Meowth - Rain Dance - TM18
  (52, 5200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 19),
  -- Meowth - Iron Tail - TM23
  (52, 5200, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 20),
  -- Meowth - Thunderbolt - TM24
  (52, 5200, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 21),
  -- Meowth - Thunder - TM25
  (52, 5200, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 22),
  -- Meowth - Dig - TM28
  (52, 5200, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 23),
  -- Meowth - Shadow Ball - TM30
  (52, 5200, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 24),
  -- Meowth - Double Team - TM32
  (52, 5200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Meowth - Shock Wave - TM34
  (52, 5200, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 26),
  -- Meowth - Aerial Ace - TM40
  (52, 5200, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 27),
  -- Meowth - Torment - TM41
  (52, 5200, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 28),
  -- Meowth - Facade - TM42
  (52, 5200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Meowth - Rest - TM44
  (52, 5200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Meowth - Attract - TM45
  (52, 5200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Meowth - Thief - TM46
  (52, 5200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 32),
  -- Meowth - Endure - TM58
  (52, 5200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Meowth - Nasty Plot - TM63
  (52, 5200, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 34),
  -- Meowth - Shadow Claw - TM65
  (52, 5200, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 35),
  -- Meowth - Payback - TM66
  (52, 5200, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 36),
  -- Meowth - Flash - TM70
  (52, 5200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 37),
  -- Meowth - Psych Up - TM77
  (52, 5200, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 38),
  -- Meowth - Dark Pulse - TM79
  (52, 5200, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 39),
  -- Meowth - Sleep Talk - TM82
  (52, 5200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Meowth - Dream Eater - TM85
  (52, 5200, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 41),
  -- Meowth - Swagger - TM87
  (52, 5200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Meowth - U-turn - TM89
  (52, 5200, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 43),
  -- Meowth - Substitute - TM90
  (52, 5200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Meowth - Cut - TM93
  (52, 5200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 45),
  -- Meowth - Amnesia - Egg
  (52, 5200, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Meowth - Charm - Egg
  (52, 5200, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Meowth - Covet - Egg
  (52, 5200, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Meowth - Flail - Egg
  (52, 5200, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Meowth - Foul Play - Egg
  (52, 5200, 492, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Meowth - Hypnosis - Egg
  (52, 5200, 95, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Meowth - Last Resort - Egg
  (52, 5200, 387, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Meowth - Spite - Egg
  (52, 5200, 180, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Meowth - Tail Whip - Egg
  (52, 5200, 39, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Persian - Power Gem - Starting Move
  (53, 5300, 408, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Persian - Switcheroo - Starting Move
  (53, 5300, 415, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Persian - Fake Out - Starting Move
  (53, 5300, 252, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Persian - Growl - Starting Move
  (53, 5300, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Persian - Feint - Starting Move
  (53, 5300, 364, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Persian - Scratch - Starting Move
  (53, 5300, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Persian - Power Gem - Evolution
  (53, 5300, 408, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Persian - Pay Day - Level 12
  (53, 5300, 6, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Persian - Bite - Level 16
  (53, 5300, 44, 21, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Persian - Taunt - Level 20
  (53, 5300, 269, 21, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Persian - Assurance - Level 24
  (53, 5300, 372, 21, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Persian - Fury Swipes - Level 31
  (53, 5300, 154, 21, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Persian - Screech - Level 36
  (53, 5300, 103, 21, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Persian - Slash - Level 42
  (53, 5300, 163, 21, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Persian - Nasty Plot - Level 48
  (53, 5300, 417, 21, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Persian - Play Rough - Level 54
  (53, 5300, 583, 21, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Persian - Water Pulse - TM03
  (53, 5300, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 17),
  -- Persian - Roar - TM05
  (53, 5300, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 18),
  -- Persian - Work Up - TM10
  (53, 5300, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 19),
  -- Persian - Sunny Day - TM11
  (53, 5300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Persian - Taunt - TM12
  (53, 5300, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 21),
  -- Persian - Hyper Beam - TM15
  (53, 5300, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 22),
  -- Persian - Protect - TM17
  (53, 5300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Persian - Rain Dance - TM18
  (53, 5300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Persian - Iron Tail - TM23
  (53, 5300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Persian - Thunderbolt - TM24
  (53, 5300, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 26),
  -- Persian - Thunder - TM25
  (53, 5300, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 27),
  -- Persian - Dig - TM28
  (53, 5300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 28),
  -- Persian - Shadow Ball - TM30
  (53, 5300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 29),
  -- Persian - Double Team - TM32
  (53, 5300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Persian - Shock Wave - TM34
  (53, 5300, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 31),
  -- Persian - Aerial Ace - TM40
  (53, 5300, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 32),
  -- Persian - Torment - TM41
  (53, 5300, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 33),
  -- Persian - Facade - TM42
  (53, 5300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Persian - Rest - TM44
  (53, 5300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Persian - Attract - TM45
  (53, 5300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Persian - Thief - TM46
  (53, 5300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 37),
  -- Persian - Endure - TM58
  (53, 5300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Persian - Nasty Plot - TM63
  (53, 5300, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 39),
  -- Persian - Shadow Claw - TM65
  (53, 5300, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 40),
  -- Persian - Payback - TM66
  (53, 5300, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 41),
  -- Persian - Giga Impact - TM68
  (53, 5300, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 42),
  -- Persian - Flash - TM70
  (53, 5300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 43),
  -- Persian - Psych Up - TM77
  (53, 5300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 44),
  -- Persian - Dark Pulse - TM79
  (53, 5300, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 45),
  -- Persian - Sleep Talk - TM82
  (53, 5300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Persian - Dream Eater - TM85
  (53, 5300, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 47),
  -- Persian - Swagger - TM87
  (53, 5300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Persian - U-turn - TM89
  (53, 5300, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 49),
  -- Persian - Substitute - TM90
  (53, 5300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 50),
  -- Persian - Cut - TM93
  (53, 5300, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 51),
  -- Persian - Amnesia - Egg
  (53, 5300, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Persian - Charm - Egg
  (53, 5300, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Persian - Covet - Egg
  (53, 5300, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Persian - Flail - Egg
  (53, 5300, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Persian - Foul Play - Egg
  (53, 5300, 492, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Persian - Hypnosis - Egg
  (53, 5300, 95, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Persian - Last Resort - Egg
  (53, 5300, 387, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Persian - Spite - Egg
  (53, 5300, 180, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Persian - Tail Whip - Egg
  (53, 5300, 39, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Psyduck - Scratch - Starting Move
  (54, 5400, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Psyduck - Tail Whip - Starting Move
  (54, 5400, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Psyduck - Water Gun - Level 3
  (54, 5400, 55, 21, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Psyduck - Confusion - Level 6
  (54, 5400, 93, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Psyduck - Fury Swipes - Level 9
  (54, 5400, 154, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Psyduck - Water Pulse - Level 12
  (54, 5400, 352, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Psyduck - Disable - Level 15
  (54, 5400, 50, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Psyduck - Zen Headbutt - Level 18
  (54, 5400, 428, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Psyduck - Screech - Level 21
  (54, 5400, 103, 21, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Psyduck - Aqua Tail - Level 24
  (54, 5400, 401, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Psyduck - Soak - Level 27
  (54, 5400, 487, 21, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Psyduck - Psych Up - Level 30
  (54, 5400, 244, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Psyduck - Amnesia - Level 34
  (54, 5400, 133, 21, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Psyduck - Hydro Pump - Level 36
  (54, 5400, 56, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Psyduck - Wonder Room - Level 39
  (54, 5400, 472, 21, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Psyduck - Focus Punch - TM01
  (54, 5400, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 16),
  -- Psyduck - Water Pulse - TM03
  (54, 5400, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 17),
  -- Psyduck - Calm Mind - TM04
  (54, 5400, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 18),
  -- Psyduck - Hail - TM07
  (54, 5400, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 19),
  -- Psyduck - Ice Beam - TM13
  (54, 5400, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 20),
  -- Psyduck - Blizzard - TM14
  (54, 5400, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 21),
  -- Psyduck - Light Screen - TM16
  (54, 5400, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 22),
  -- Psyduck - Protect - TM17
  (54, 5400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Psyduck - Rain Dance - TM18
  (54, 5400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Psyduck - Iron Tail - TM23
  (54, 5400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Psyduck - Dig - TM28
  (54, 5400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 26),
  -- Psyduck - Psychic - TM29
  (54, 5400, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 27),
  -- Psyduck - Brick Break - TM31
  (54, 5400, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 28),
  -- Psyduck - Double Team - TM32
  (54, 5400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Psyduck - Aerial Ace - TM40
  (54, 5400, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 30),
  -- Psyduck - Facade - TM42
  (54, 5400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Psyduck - Rest - TM44
  (54, 5400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Psyduck - Attract - TM45
  (54, 5400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Psyduck - Scald - TM49
  (54, 5400, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 34),
  -- Psyduck - Brine - TM55
  (54, 5400, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 35),
  -- Psyduck - Fling - TM56
  (54, 5400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 36),
  -- Psyduck - Endure - TM58
  (54, 5400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Psyduck - Shadow Claw - TM65
  (54, 5400, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 38),
  -- Psyduck - Flash - TM70
  (54, 5400, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 39),
  -- Psyduck - Psych Up - TM77
  (54, 5400, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 40),
  -- Psyduck - Sleep Talk - TM82
  (54, 5400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Psyduck - Swagger - TM87
  (54, 5400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Psyduck - Substitute - TM90
  (54, 5400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Psyduck - Surf - TM95
  (54, 5400, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 44),
  -- Psyduck - Strength - TM96
  (54, 5400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 45),
  -- Psyduck - Rock Smash - TM98
  (54, 5400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 46),
  -- Psyduck - Waterfall - TM99
  (54, 5400, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 47),
  -- Psyduck - Clear Smog - Egg
  (54, 5400, 499, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Psyduck - Confuse Ray - Egg
  (54, 5400, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Psyduck - Cross Chop - Egg
  (54, 5400, 238, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Psyduck - Encore - Egg
  (54, 5400, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Psyduck - Future Sight - Egg
  (54, 5400, 248, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Psyduck - Hypnosis - Egg
  (54, 5400, 95, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Psyduck - Psybeam - Egg
  (54, 5400, 60, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Psyduck - Simple Beam - Egg
  (54, 5400, 493, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Psyduck - Yawn - Egg
  (54, 5400, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Golduck - Aqua Jet - Starting Move
  (55, 5500, 453, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Golduck - Scratch - Starting Move
  (55, 5500, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Golduck - Tail Whip - Starting Move
  (55, 5500, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Golduck - Water Gun - Starting Move
  (55, 5500, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Golduck - Confusion - Starting Move
  (55, 5500, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Golduck - Fury Swipes - Level 9
  (55, 5500, 154, 21, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Golduck - Water Pulse - Level 12
  (55, 5500, 352, 21, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Golduck - Disable - Level 15
  (55, 5500, 50, 21, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Golduck - Zen Headbutt - Level 18
  (55, 5500, 428, 21, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Golduck - Screech - Level 21
  (55, 5500, 103, 21, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Golduck - Aqua Tail - Level 24
  (55, 5500, 401, 21, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Golduck - Soak - Level 27
  (55, 5500, 487, 21, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Golduck - Psych Up - Level 30
  (55, 5500, 244, 21, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Golduck - Amnesia - Level 36
  (55, 5500, 133, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Golduck - Hydro Pump - Level 40
  (55, 5500, 56, 21, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Golduck - Wonder Room - Level 45
  (55, 5500, 472, 21, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Golduck - Focus Punch - TM01
  (55, 5500, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Golduck - Water Pulse - TM03
  (55, 5500, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Golduck - Calm Mind - TM04
  (55, 5500, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 19),
  -- Golduck - Hail - TM07
  (55, 5500, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 20),
  -- Golduck - Ice Beam - TM13
  (55, 5500, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 21),
  -- Golduck - Blizzard - TM14
  (55, 5500, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 22),
  -- Golduck - Hyper Beam - TM15
  (55, 5500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Golduck - Light Screen - TM16
  (55, 5500, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 24),
  -- Golduck - Protect - TM17
  (55, 5500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Golduck - Rain Dance - TM18
  (55, 5500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Golduck - Iron Tail - TM23
  (55, 5500, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 27),
  -- Golduck - Low Sweep - TM27
  (55, 5500, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 28),
  -- Golduck - Dig - TM28
  (55, 5500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 29),
  -- Golduck - Psychic - TM29
  (55, 5500, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 30),
  -- Golduck - Brick Break - TM31
  (55, 5500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 31),
  -- Golduck - Double Team - TM32
  (55, 5500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Golduck - Aerial Ace - TM40
  (55, 5500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 33),
  -- Golduck - Facade - TM42
  (55, 5500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Golduck - Rest - TM44
  (55, 5500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Golduck - Attract - TM45
  (55, 5500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Golduck - Scald - TM49
  (55, 5500, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 37),
  -- Golduck - Focus Blast - TM52
  (55, 5500, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 38),
  -- Golduck - Brine - TM55
  (55, 5500, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 39),
  -- Golduck - Fling - TM56
  (55, 5500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 40),
  -- Golduck - Endure - TM58
  (55, 5500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 41),
  -- Golduck - Shadow Claw - TM65
  (55, 5500, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 42),
  -- Golduck - Giga Impact - TM68
  (55, 5500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 43),
  -- Golduck - Flash - TM70
  (55, 5500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 44),
  -- Golduck - Psych Up - TM77
  (55, 5500, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 45),
  -- Golduck - Sleep Talk - TM82
  (55, 5500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Golduck - Swagger - TM87
  (55, 5500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 47),
  -- Golduck - Substitute - TM90
  (55, 5500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Golduck - Surf - TM95
  (55, 5500, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 49),
  -- Golduck - Strength - TM96
  (55, 5500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 50),
  -- Golduck - Rock Smash - TM98
  (55, 5500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 51),
  -- Golduck - Waterfall - TM99
  (55, 5500, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 52),
  -- Golduck - Rock Climb - TM100
  (55, 5500, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 53),
  -- Golduck - Clear Smog - Egg
  (55, 5500, 499, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Golduck - Confuse Ray - Egg
  (55, 5500, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Golduck - Cross Chop - Egg
  (55, 5500, 238, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Golduck - Encore - Egg
  (55, 5500, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Golduck - Future Sight - Egg
  (55, 5500, 248, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Golduck - Hypnosis - Egg
  (55, 5500, 95, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Golduck - Psybeam - Egg
  (55, 5500, 60, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Golduck - Simple Beam - Egg
  (55, 5500, 493, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Golduck - Yawn - Egg
  (55, 5500, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Mankey - Covet - Starting Move
  (56, 5600, 343, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Mankey - Scratch - Starting Move
  (56, 5600, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Mankey - Low Kick - Starting Move
  (56, 5600, 67, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Mankey - Leer - Starting Move
  (56, 5600, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Mankey - Focus Energy - Starting Move
  (56, 5600, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Mankey - Fury Swipes - Level 5
  (56, 5600, 154, 21, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Mankey - Mud-Slap - Level 8
  (56, 5600, 189, 21, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Mankey - Seismic Toss - Level 12
  (56, 5600, 69, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Mankey - Retaliate - Level 15
  (56, 5600, 514, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Mankey - Swagger - Level 19
  (56, 5600, 207, 21, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Mankey - Cross Chop - Level 22
  (56, 5600, 238, 21, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Mankey - Assurance - Level 26
  (56, 5600, 372, 21, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Mankey - Skull Bash - Level 29
  (56, 5600, 130, 21, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Mankey - Thrash - Level 33
  (56, 5600, 37, 21, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Mankey - Close Combat - Level 36
  (56, 5600, 370, 21, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Mankey - Screech - Level 40
  (56, 5600, 103, 21, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Mankey - Stomping Tantrum - Level 43
  (56, 5600, 707, 21, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Mankey - Outrage - Level 47
  (56, 5600, 200, 21, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Mankey - Final Gambit - Level 50
  (56, 5600, 515, 21, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Mankey - Focus Punch - TM01
  (56, 5600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 20),
  -- Mankey - Bulk Up - TM08
  (56, 5600, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 21),
  -- Mankey - Work Up - TM10
  (56, 5600, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 22),
  -- Mankey - Sunny Day - TM11
  (56, 5600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Mankey - Taunt - TM12
  (56, 5600, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 24),
  -- Mankey - Protect - TM17
  (56, 5600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Mankey - Rain Dance - TM18
  (56, 5600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Mankey - Iron Tail - TM23
  (56, 5600, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 27),
  -- Mankey - Thunderbolt - TM24
  (56, 5600, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 28),
  -- Mankey - Thunder - TM25
  (56, 5600, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 29),
  -- Mankey - Earthquake - TM26
  (56, 5600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 30),
  -- Mankey - Low Sweep - TM27
  (56, 5600, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 31),
  -- Mankey - Dig - TM28
  (56, 5600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 32),
  -- Mankey - Brick Break - TM31
  (56, 5600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 33),
  -- Mankey - Double Team - TM32
  (56, 5600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 34),
  -- Mankey - Rock Tomb - TM39
  (56, 5600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 35),
  -- Mankey - Aerial Ace - TM40
  (56, 5600, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 36),
  -- Mankey - Facade - TM42
  (56, 5600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 37),
  -- Mankey - Rest - TM44
  (56, 5600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 38),
  -- Mankey - Attract - TM45
  (56, 5600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 39),
  -- Mankey - Thief - TM46
  (56, 5600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 40),
  -- Mankey - Overheat - TM50
  (56, 5600, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 41),
  -- Mankey - Focus Blast - TM52
  (56, 5600, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 42),
  -- Mankey - Fling - TM56
  (56, 5600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 43),
  -- Mankey - Endure - TM58
  (56, 5600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 44),
  -- Mankey - Payback - TM66
  (56, 5600, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 45),
  -- Mankey - Rock Slide - TM80
  (56, 5600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 46),
  -- Mankey - Sleep Talk - TM82
  (56, 5600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 47),
  -- Mankey - Bulldoze - TM83
  (56, 5600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 48),
  -- Mankey - Poison Jab - TM84
  (56, 5600, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 49),
  -- Mankey - Swagger - TM87
  (56, 5600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 50),
  -- Mankey - U-turn - TM89
  (56, 5600, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 51),
  -- Mankey - Substitute - TM90
  (56, 5600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 52),
  -- Mankey - Strength - TM96
  (56, 5600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 53),
  -- Mankey - Rock Smash - TM98
  (56, 5600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 54),
  -- Mankey - Rock Climb - TM100
  (56, 5600, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 55),
  -- Mankey - Beat Up - Egg
  (56, 5600, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Mankey - Close Combat - Egg
  (56, 5600, 370, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Mankey - Counter - Egg
  (56, 5600, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Mankey - Encore - Egg
  (56, 5600, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mankey - Night Slash - Egg
  (56, 5600, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mankey - Revenge - Egg
  (56, 5600, 279, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mankey - Reversal - Egg
  (56, 5600, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Primeape - Final Gambit - Starting Move
  (57, 5700, 515, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Primeape - Fling - Starting Move
  (57, 5700, 374, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Primeape - Covet - Starting Move
  (57, 5700, 343, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Primeape - Scratch - Starting Move
  (57, 5700, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Primeape - Low Kick - Starting Move
  (57, 5700, 67, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Primeape - Leer - Starting Move
  (57, 5700, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Primeape - Focus Energy - Starting Move
  (57, 5700, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Primeape - Fury Swipes - Level 5
  (57, 5700, 154, 21, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Primeape - Mud-Slap - Level 8
  (57, 5700, 189, 21, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Primeape - Seismic Toss - Level 12
  (57, 5700, 69, 21, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Primeape - Retaliate - Level 15
  (57, 5700, 514, 21, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Primeape - Swagger - Level 19
  (57, 5700, 207, 21, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Primeape - Cross Chop - Level 22
  (57, 5700, 238, 21, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Primeape - Assurance - Level 26
  (57, 5700, 372, 21, NULL, 1, 26, NULL, NULL, NULL, 14),
  -- Primeape - Skull Bash - Level 30
  (57, 5700, 130, 21, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Primeape - Thrash - Level 35
  (57, 5700, 37, 21, NULL, 1, 35, NULL, NULL, NULL, 16),
  -- Primeape - Close Combat - Level 39
  (57, 5700, 370, 21, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Primeape - Screech - Level 44
  (57, 5700, 103, 21, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Primeape - Stomping Tantrum - Level 48
  (57, 5700, 707, 21, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Primeape - Outrage - Level 53
  (57, 5700, 200, 21, NULL, 1, 53, NULL, NULL, NULL, 20),
  -- Primeape - Final Gambit - Level 57
  (57, 5700, 515, 21, NULL, 1, 57, NULL, NULL, NULL, 21),
  -- Primeape - Focus Punch - TM01
  (57, 5700, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 22),
  -- Primeape - Bulk Up - TM08
  (57, 5700, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 23),
  -- Primeape - Work Up - TM10
  (57, 5700, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 24),
  -- Primeape - Sunny Day - TM11
  (57, 5700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 25),
  -- Primeape - Taunt - TM12
  (57, 5700, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 26),
  -- Primeape - Hyper Beam - TM15
  (57, 5700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 27),
  -- Primeape - Protect - TM17
  (57, 5700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 28),
  -- Primeape - Rain Dance - TM18
  (57, 5700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 29),
  -- Primeape - Iron Tail - TM23
  (57, 5700, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 30),
  -- Primeape - Thunderbolt - TM24
  (57, 5700, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 31),
  -- Primeape - Thunder - TM25
  (57, 5700, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 32),
  -- Primeape - Earthquake - TM26
  (57, 5700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 33),
  -- Primeape - Low Sweep - TM27
  (57, 5700, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 34),
  -- Primeape - Dig - TM28
  (57, 5700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 35),
  -- Primeape - Brick Break - TM31
  (57, 5700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 36),
  -- Primeape - Double Team - TM32
  (57, 5700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 37),
  -- Primeape - Rock Tomb - TM39
  (57, 5700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 38),
  -- Primeape - Aerial Ace - TM40
  (57, 5700, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 39),
  -- Primeape - Facade - TM42
  (57, 5700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 40),
  -- Primeape - Rest - TM44
  (57, 5700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 41),
  -- Primeape - Attract - TM45
  (57, 5700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 42),
  -- Primeape - Thief - TM46
  (57, 5700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 43),
  -- Primeape - Overheat - TM50
  (57, 5700, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 44),
  -- Primeape - Focus Blast - TM52
  (57, 5700, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 45),
  -- Primeape - Fling - TM56
  (57, 5700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 46),
  -- Primeape - Endure - TM58
  (57, 5700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 47),
  -- Primeape - Payback - TM66
  (57, 5700, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 48),
  -- Primeape - Giga Impact - TM68
  (57, 5700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 49),
  -- Primeape - Stone Edge - TM71
  (57, 5700, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 50),
  -- Primeape - Rock Slide - TM80
  (57, 5700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 51),
  -- Primeape - Sleep Talk - TM82
  (57, 5700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 52),
  -- Primeape - Bulldoze - TM83
  (57, 5700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 53),
  -- Primeape - Poison Jab - TM84
  (57, 5700, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 54),
  -- Primeape - Swagger - TM87
  (57, 5700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 55),
  -- Primeape - U-turn - TM89
  (57, 5700, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 56),
  -- Primeape - Substitute - TM90
  (57, 5700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 57),
  -- Primeape - Strength - TM96
  (57, 5700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 58),
  -- Primeape - Rock Smash - TM98
  (57, 5700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 59),
  -- Primeape - Rock Climb - TM100
  (57, 5700, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 60),
  -- Primeape - Beat Up - Egg
  (57, 5700, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Primeape - Close Combat - Egg
  (57, 5700, 370, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Primeape - Counter - Egg
  (57, 5700, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Primeape - Encore - Egg
  (57, 5700, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Primeape - Night Slash - Egg
  (57, 5700, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Primeape - Revenge - Egg
  (57, 5700, 279, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Primeape - Reversal - Egg
  (57, 5700, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Growlithe - Ember - Starting Move
  (58, 5800, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Growlithe - Leer - Starting Move
  (58, 5800, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Growlithe - Howl - Level 4
  (58, 5800, 336, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Growlithe - Bite - Level 8
  (58, 5800, 44, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Growlithe - Flame Wheel - Level 12
  (58, 5800, 172, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Growlithe - Helping Hand - Level 16
  (58, 5800, 270, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Growlithe - Agility - Level 20
  (58, 5800, 97, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Growlithe - Fire Fang - Level 24
  (58, 5800, 424, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Growlithe - Retaliate - Level 28
  (58, 5800, 514, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Growlithe - Crunch - Level 32
  (58, 5800, 242, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Growlithe - Take Down - Level 36
  (58, 5800, 36, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Growlithe - Flamethrower - Level 40
  (58, 5800, 53, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Growlithe - Roar - Level 44
  (58, 5800, 46, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Growlithe - Play Rough - Level 48
  (58, 5800, 583, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Growlithe - Reversal - Level 52
  (58, 5800, 179, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Growlithe - Flare Blitz - Level 56
  (58, 5800, 394, 21, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Growlithe - Roar - TM05
  (58, 5800, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 17),
  -- Growlithe - Sunny Day - TM11
  (58, 5800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Growlithe - Protect - TM17
  (58, 5800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Growlithe - Safeguard - TM20
  (58, 5800, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 20),
  -- Growlithe - Iron Tail - TM23
  (58, 5800, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 21),
  -- Growlithe - Dig - TM28
  (58, 5800, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 22),
  -- Growlithe - Double Team - TM32
  (58, 5800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Growlithe - Flamethrower - TM35
  (58, 5800, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 24),
  -- Growlithe - Fire Blast - TM38
  (58, 5800, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 25),
  -- Growlithe - Aerial Ace - TM40
  (58, 5800, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 26),
  -- Growlithe - Facade - TM42
  (58, 5800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Growlithe - Rest - TM44
  (58, 5800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Growlithe - Attract - TM45
  (58, 5800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Growlithe - Thief - TM46
  (58, 5800, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 30),
  -- Growlithe - Overheat - TM50
  (58, 5800, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 31),
  -- Growlithe - Endure - TM58
  (58, 5800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Growlithe - Will-O-Wisp - TM61
  (58, 5800, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 33),
  -- Growlithe - Snarl - TM78
  (58, 5800, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 34),
  -- Growlithe - Sleep Talk - TM82
  (58, 5800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Growlithe - Swagger - TM87
  (58, 5800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 36),
  -- Growlithe - Substitute - TM90
  (58, 5800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 37),
  -- Growlithe - Strength - TM96
  (58, 5800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 38),
  -- Growlithe - Rock Smash - TM98
  (58, 5800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 39),
  -- Growlithe - Body Slam - Egg
  (58, 5800, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Growlithe - Burn Up - Egg
  (58, 5800, 682, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Growlithe - Close Combat - Egg
  (58, 5800, 370, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Growlithe - Covet - Egg
  (58, 5800, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Growlithe - Crunch - Egg
  (58, 5800, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Growlithe - Double Kick - Egg
  (58, 5800, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Growlithe - Double-Edge - Egg
  (58, 5800, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Growlithe - Fire Spin - Egg
  (58, 5800, 83, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Growlithe - Flare Blitz - Egg
  (58, 5800, 394, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Growlithe - Heat Wave - Egg
  (58, 5800, 257, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Growlithe - Howl - Egg
  (58, 5800, 336, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Growlithe - Morning Sun - Egg
  (58, 5800, 234, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Growlithe - Thrash - Egg
  (58, 5800, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Arcanine - Extreme Speed - Starting Move
  (59, 5900, 245, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Arcanine - Burn Up - Starting Move
  (59, 5900, 682, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Arcanine - Flame Wheel - Starting Move
  (59, 5900, 172, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Arcanine - Helping Hand - Starting Move
  (59, 5900, 270, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Arcanine - Agility - Starting Move
  (59, 5900, 97, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Arcanine - Fire Fang - Starting Move
  (59, 5900, 424, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Arcanine - Retaliate - Starting Move
  (59, 5900, 514, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Arcanine - Crunch - Starting Move
  (59, 5900, 242, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Arcanine - Take Down - Starting Move
  (59, 5900, 36, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Arcanine - Flamethrower - Starting Move
  (59, 5900, 53, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Arcanine - Roar - Starting Move
  (59, 5900, 46, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Arcanine - Play Rough - Starting Move
  (59, 5900, 583, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Arcanine - Reversal - Starting Move
  (59, 5900, 179, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Arcanine - Flare Blitz - Starting Move
  (59, 5900, 394, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Arcanine - Ember - Starting Move
  (59, 5900, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Arcanine - Leer - Starting Move
  (59, 5900, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 16),
  -- Arcanine - Howl - Starting Move
  (59, 5900, 336, 21, NULL, 8, NULL, NULL, NULL, NULL, 17),
  -- Arcanine - Bite - Starting Move
  (59, 5900, 44, 21, NULL, 8, NULL, NULL, NULL, NULL, 18),
  -- Arcanine - Extreme Speed - Evolution
  (59, 5900, 245, 21, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Arcanine - Roar - TM05
  (59, 5900, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 20),
  -- Arcanine - Sunny Day - TM11
  (59, 5900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Arcanine - Hyper Beam - TM15
  (59, 5900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 22),
  -- Arcanine - Protect - TM17
  (59, 5900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Arcanine - Safeguard - TM20
  (59, 5900, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 24),
  -- Arcanine - Solar Beam - TM22
  (59, 5900, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 25),
  -- Arcanine - Iron Tail - TM23
  (59, 5900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 26),
  -- Arcanine - Dig - TM28
  (59, 5900, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 27),
  -- Arcanine - Double Team - TM32
  (59, 5900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Arcanine - Flamethrower - TM35
  (59, 5900, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 29),
  -- Arcanine - Fire Blast - TM38
  (59, 5900, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 30),
  -- Arcanine - Aerial Ace - TM40
  (59, 5900, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 31),
  -- Arcanine - Facade - TM42
  (59, 5900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Arcanine - Rest - TM44
  (59, 5900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Arcanine - Attract - TM45
  (59, 5900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Arcanine - Thief - TM46
  (59, 5900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 35),
  -- Arcanine - Overheat - TM50
  (59, 5900, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 36),
  -- Arcanine - Endure - TM58
  (59, 5900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Arcanine - Dragon Pulse - TM59
  (59, 5900, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 38),
  -- Arcanine - Will-O-Wisp - TM61
  (59, 5900, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 39),
  -- Arcanine - Giga Impact - TM68
  (59, 5900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 40),
  -- Arcanine - Snarl - TM78
  (59, 5900, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 41),
  -- Arcanine - Sleep Talk - TM82
  (59, 5900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Arcanine - Bulldoze - TM83
  (59, 5900, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 43),
  -- Arcanine - Swagger - TM87
  (59, 5900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Arcanine - Substitute - TM90
  (59, 5900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Arcanine - Strength - TM96
  (59, 5900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 46),
  -- Arcanine - Rock Smash - TM98
  (59, 5900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 47),
  -- Arcanine - Rock Climb - TM100
  (59, 5900, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 48),
  -- Arcanine - Body Slam - Egg
  (59, 5900, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Arcanine - Burn Up - Egg
  (59, 5900, 682, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Arcanine - Close Combat - Egg
  (59, 5900, 370, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Arcanine - Covet - Egg
  (59, 5900, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Arcanine - Crunch - Egg
  (59, 5900, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Arcanine - Double Kick - Egg
  (59, 5900, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Arcanine - Double-Edge - Egg
  (59, 5900, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Arcanine - Fire Spin - Egg
  (59, 5900, 83, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Arcanine - Flare Blitz - Egg
  (59, 5900, 394, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Arcanine - Heat Wave - Egg
  (59, 5900, 257, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Arcanine - Howl - Egg
  (59, 5900, 336, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Arcanine - Morning Sun - Egg
  (59, 5900, 234, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Arcanine - Thrash - Egg
  (59, 5900, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Poliwag - Water Gun - Starting Move
  (60, 6000, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Poliwag - Hypnosis - Starting Move
  (60, 6000, 95, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Poliwag - Pound - Level 6
  (60, 6000, 1, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Poliwag - Mud Shot - Level 12
  (60, 6000, 341, 21, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Poliwag - Bubble Beam - Level 18
  (60, 6000, 61, 21, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Poliwag - Rain Dance - Level 24
  (60, 6000, 240, 21, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Poliwag - Body Slam - Level 30
  (60, 6000, 34, 21, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Poliwag - Earth Power - Level 36
  (60, 6000, 414, 21, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Poliwag - Hydro Pump - Level 42
  (60, 6000, 56, 21, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Poliwag - Belly Drum - Level 48
  (60, 6000, 187, 21, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Poliwag - Double-Edge - Level 54
  (60, 6000, 38, 21, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Poliwag - Water Pulse - TM03
  (60, 6000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 12),
  -- Poliwag - Hail - TM07
  (60, 6000, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 13),
  -- Poliwag - Ice Beam - TM13
  (60, 6000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 14),
  -- Poliwag - Blizzard - TM14
  (60, 6000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 15),
  -- Poliwag - Protect - TM17
  (60, 6000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Poliwag - Rain Dance - TM18
  (60, 6000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 17),
  -- Poliwag - Dig - TM28
  (60, 6000, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 18),
  -- Poliwag - Psychic - TM29
  (60, 6000, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 19),
  -- Poliwag - Double Team - TM32
  (60, 6000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 20),
  -- Poliwag - Facade - TM42
  (60, 6000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 21),
  -- Poliwag - Rest - TM44
  (60, 6000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 22),
  -- Poliwag - Attract - TM45
  (60, 6000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 23),
  -- Poliwag - Thief - TM46
  (60, 6000, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 24),
  -- Poliwag - Scald - TM49
  (60, 6000, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 25),
  -- Poliwag - Endure - TM58
  (60, 6000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 26),
  -- Poliwag - Sleep Talk - TM82
  (60, 6000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 27),
  -- Poliwag - Bulldoze - TM83
  (60, 6000, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 28),
  -- Poliwag - Swagger - TM87
  (60, 6000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 29),
  -- Poliwag - Substitute - TM90
  (60, 6000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 30),
  -- Poliwag - Surf - TM95
  (60, 6000, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 31),
  -- Poliwag - Waterfall - TM99
  (60, 6000, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 32),
  -- Poliwag - Bubble Beam - Egg
  (60, 6000, 61, 21, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Poliwag - Encore - Egg
  (60, 6000, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Poliwag - Endeavor - Egg
  (60, 6000, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Poliwag - Haze - Egg
  (60, 6000, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Poliwag - Mind Reader - Egg
  (60, 6000, 170, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Poliwag - Mist - Egg
  (60, 6000, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Poliwag - Mud Shot - Egg
  (60, 6000, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Poliwag - Splash - Egg
  (60, 6000, 150, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Poliwhirl - Water Gun - Starting Move
  (61, 6100, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Poliwhirl - Hypnosis - Starting Move
  (61, 6100, 95, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Poliwhirl - Pound - Starting Move
  (61, 6100, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Poliwhirl - Mud Shot - Starting Move
  (61, 6100, 341, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Poliwhirl - Bubble Beam - Level 18
  (61, 6100, 61, 21, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Poliwhirl - Rain Dance - Level 24
  (61, 6100, 240, 21, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Poliwhirl - Body Slam - Level 32
  (61, 6100, 34, 21, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Poliwhirl - Earth Power - Level 40
  (61, 6100, 414, 21, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Poliwhirl - Hydro Pump - Level 48
  (61, 6100, 56, 21, NULL, 1, 48, NULL, NULL, NULL, 9),
  -- Poliwhirl - Belly Drum - Level 56
  (61, 6100, 187, 21, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Poliwhirl - Double-Edge - Level 66
  (61, 6100, 38, 21, NULL, 1, 66, NULL, NULL, NULL, 11),
  -- Poliwhirl - Focus Punch - TM01
  (61, 6100, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 12),
  -- Poliwhirl - Water Pulse - TM03
  (61, 6100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 13),
  -- Poliwhirl - Hail - TM07
  (61, 6100, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 14),
  -- Poliwhirl - Ice Beam - TM13
  (61, 6100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 15),
  -- Poliwhirl - Blizzard - TM14
  (61, 6100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 16),
  -- Poliwhirl - Protect - TM17
  (61, 6100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Poliwhirl - Rain Dance - TM18
  (61, 6100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 18),
  -- Poliwhirl - Earthquake - TM26
  (61, 6100, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 19),
  -- Poliwhirl - Dig - TM28
  (61, 6100, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 20),
  -- Poliwhirl - Psychic - TM29
  (61, 6100, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 21),
  -- Poliwhirl - Brick Break - TM31
  (61, 6100, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 22),
  -- Poliwhirl - Double Team - TM32
  (61, 6100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Poliwhirl - Facade - TM42
  (61, 6100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 24),
  -- Poliwhirl - Rest - TM44
  (61, 6100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 25),
  -- Poliwhirl - Attract - TM45
  (61, 6100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 26),
  -- Poliwhirl - Thief - TM46
  (61, 6100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 27),
  -- Poliwhirl - Scald - TM49
  (61, 6100, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 28),
  -- Poliwhirl - Fling - TM56
  (61, 6100, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 29),
  -- Poliwhirl - Endure - TM58
  (61, 6100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 30),
  -- Poliwhirl - Sleep Talk - TM82
  (61, 6100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 31),
  -- Poliwhirl - Bulldoze - TM83
  (61, 6100, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 32),
  -- Poliwhirl - Swagger - TM87
  (61, 6100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 33),
  -- Poliwhirl - Substitute - TM90
  (61, 6100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 34),
  -- Poliwhirl - Surf - TM95
  (61, 6100, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 35),
  -- Poliwhirl - Strength - TM96
  (61, 6100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 36),
  -- Poliwhirl - Rock Smash - TM98
  (61, 6100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 37),
  -- Poliwhirl - Waterfall - TM99
  (61, 6100, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 38),
  -- Poliwhirl - Bubble Beam - Egg
  (61, 6100, 61, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Poliwhirl - Encore - Egg
  (61, 6100, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Poliwhirl - Endeavor - Egg
  (61, 6100, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Poliwhirl - Haze - Egg
  (61, 6100, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Poliwhirl - Mind Reader - Egg
  (61, 6100, 170, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Poliwhirl - Mist - Egg
  (61, 6100, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Poliwhirl - Mud Shot - Egg
  (61, 6100, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Poliwhirl - Splash - Egg
  (61, 6100, 150, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Poliwrath - Submission - Starting Move
  (62, 6200, 66, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Poliwrath - Circle Throw - Starting Move
  (62, 6200, 509, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Poliwrath - Mind Reader - Starting Move
  (62, 6200, 170, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Poliwrath - Dynamic Punch - Starting Move
  (62, 6200, 223, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Poliwrath - Bubble Beam - Starting Move
  (62, 6200, 61, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Poliwrath - Rain Dance - Starting Move
  (62, 6200, 240, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Poliwrath - Body Slam - Starting Move
  (62, 6200, 34, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Poliwrath - Earth Power - Starting Move
  (62, 6200, 414, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Poliwrath - Hydro Pump - Starting Move
  (62, 6200, 56, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Poliwrath - Belly Drum - Starting Move
  (62, 6200, 187, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Poliwrath - Double-Edge - Starting Move
  (62, 6200, 38, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Poliwrath - Water Gun - Starting Move
  (62, 6200, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Poliwrath - Hypnosis - Starting Move
  (62, 6200, 95, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Poliwrath - Pound - Starting Move
  (62, 6200, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Poliwrath - Mud Shot - Starting Move
  (62, 6200, 341, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Poliwrath - Submission - Evolution
  (62, 6200, 66, 21, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Poliwrath - Focus Punch - TM01
  (62, 6200, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Poliwrath - Water Pulse - TM03
  (62, 6200, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Poliwrath - Hail - TM07
  (62, 6200, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 19),
  -- Poliwrath - Bulk Up - TM08
  (62, 6200, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 20),
  -- Poliwrath - Work Up - TM10
  (62, 6200, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 21),
  -- Poliwrath - Ice Beam - TM13
  (62, 6200, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 22),
  -- Poliwrath - Blizzard - TM14
  (62, 6200, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 23),
  -- Poliwrath - Hyper Beam - TM15
  (62, 6200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Poliwrath - Protect - TM17
  (62, 6200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Poliwrath - Rain Dance - TM18
  (62, 6200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Poliwrath - Earthquake - TM26
  (62, 6200, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 27),
  -- Poliwrath - Low Sweep - TM27
  (62, 6200, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 28),
  -- Poliwrath - Dig - TM28
  (62, 6200, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 29),
  -- Poliwrath - Psychic - TM29
  (62, 6200, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 30),
  -- Poliwrath - Brick Break - TM31
  (62, 6200, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 31),
  -- Poliwrath - Double Team - TM32
  (62, 6200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Poliwrath - Rock Tomb - TM39
  (62, 6200, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 33),
  -- Poliwrath - Facade - TM42
  (62, 6200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Poliwrath - Rest - TM44
  (62, 6200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Poliwrath - Attract - TM45
  (62, 6200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Poliwrath - Thief - TM46
  (62, 6200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 37),
  -- Poliwrath - Scald - TM49
  (62, 6200, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 38),
  -- Poliwrath - Focus Blast - TM52
  (62, 6200, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 39),
  -- Poliwrath - Fling - TM56
  (62, 6200, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 40),
  -- Poliwrath - Endure - TM58
  (62, 6200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 41),
  -- Poliwrath - Drain Punch - TM60
  (62, 6200, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 42),
  -- Poliwrath - Payback - TM66
  (62, 6200, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 43),
  -- Poliwrath - Giga Impact - TM68
  (62, 6200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 44),
  -- Poliwrath - Rock Slide - TM80
  (62, 6200, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 45),
  -- Poliwrath - Sleep Talk - TM82
  (62, 6200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Poliwrath - Bulldoze - TM83
  (62, 6200, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 47),
  -- Poliwrath - Poison Jab - TM84
  (62, 6200, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 48),
  -- Poliwrath - Swagger - TM87
  (62, 6200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 49),
  -- Poliwrath - Substitute - TM90
  (62, 6200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 50),
  -- Poliwrath - Surf - TM95
  (62, 6200, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 51),
  -- Poliwrath - Strength - TM96
  (62, 6200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 52),
  -- Poliwrath - Rock Smash - TM98
  (62, 6200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 53),
  -- Poliwrath - Waterfall - TM99
  (62, 6200, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 54),
  -- Poliwrath - Rock Climb - TM100
  (62, 6200, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 55),
  -- Poliwrath - Bubble Beam - Egg
  (62, 6200, 61, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Poliwrath - Encore - Egg
  (62, 6200, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Poliwrath - Endeavor - Egg
  (62, 6200, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Poliwrath - Haze - Egg
  (62, 6200, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Poliwrath - Mind Reader - Egg
  (62, 6200, 170, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Poliwrath - Mist - Egg
  (62, 6200, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Poliwrath - Mud Shot - Egg
  (62, 6200, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Poliwrath - Splash - Egg
  (62, 6200, 150, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Abra - Teleport - Starting Move
  (63, 6300, 100, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Abra - Focus Punch - TM01
  (63, 6300, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 2),
  -- Abra - Calm Mind - TM04
  (63, 6300, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 3),
  -- Abra - Sunny Day - TM11
  (63, 6300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 4),
  -- Abra - Taunt - TM12
  (63, 6300, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 5),
  -- Abra - Light Screen - TM16
  (63, 6300, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 6),
  -- Abra - Protect - TM17
  (63, 6300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 7),
  -- Abra - Rain Dance - TM18
  (63, 6300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 8),
  -- Abra - Safeguard - TM20
  (63, 6300, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 9),
  -- Abra - Dazzling Gleam - TM21
  (63, 6300, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 10),
  -- Abra - Iron Tail - TM23
  (63, 6300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 11),
  -- Abra - Psychic - TM29
  (63, 6300, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 12),
  -- Abra - Shadow Ball - TM30
  (63, 6300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 13),
  -- Abra - Double Team - TM32
  (63, 6300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 14),
  -- Abra - Reflect - TM33
  (63, 6300, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 15),
  -- Abra - Shock Wave - TM34
  (63, 6300, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 16),
  -- Abra - Torment - TM41
  (63, 6300, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 17),
  -- Abra - Facade - TM42
  (63, 6300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 18),
  -- Abra - Rest - TM44
  (63, 6300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 19),
  -- Abra - Attract - TM45
  (63, 6300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 20),
  -- Abra - Thief - TM46
  (63, 6300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 21),
  -- Abra - Skill Swap - TM48
  (63, 6300, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 22),
  -- Abra - Energy Ball - TM53
  (63, 6300, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 23),
  -- Abra - Fling - TM56
  (63, 6300, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 24),
  -- Abra - Charge Beam - TM57
  (63, 6300, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 25),
  -- Abra - Endure - TM58
  (63, 6300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 26),
  -- Abra - Drain Punch - TM60
  (63, 6300, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 27),
  -- Abra - Recycle - TM67
  (63, 6300, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 28),
  -- Abra - Flash - TM70
  (63, 6300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 29),
  -- Abra - Thunder Wave - TM73
  (63, 6300, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 30),
  -- Abra - Psych Up - TM77
  (63, 6300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 31),
  -- Abra - Sleep Talk - TM82
  (63, 6300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 32),
  -- Abra - Dream Eater - TM85
  (63, 6300, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 33),
  -- Abra - Grass Knot - TM86
  (63, 6300, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 34),
  -- Abra - Swagger - TM87
  (63, 6300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Abra - Substitute - TM90
  (63, 6300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 36),
  -- Abra - Trick Room - TM92
  (63, 6300, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 37),
  -- Abra - Ally Switch - Egg
  (63, 6300, 502, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Abra - Confusion - Egg
  (63, 6300, 93, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Abra - Encore - Egg
  (63, 6300, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Abra - Fire Punch - Egg
  (63, 6300, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Abra - Guard Split - Egg
  (63, 6300, 470, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Abra - Guard Swap - Egg
  (63, 6300, 385, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Abra - Ice Punch - Egg
  (63, 6300, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Abra - Knock Off - Egg
  (63, 6300, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Abra - Magic Coat - Egg
  (63, 6300, 277, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Abra - Power Trick - Egg
  (63, 6300, 379, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Abra - Psycho Shift - Egg
  (63, 6300, 375, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Abra - Thunder Punch - Egg
  (63, 6300, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Kadabra - Confusion - Starting Move
  (64, 6400, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Kadabra - Kinesis - Starting Move
  (64, 6400, 134, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Kadabra - Disable - Starting Move
  (64, 6400, 50, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Kadabra - Teleport - Starting Move
  (64, 6400, 100, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Kadabra - Confusion - Evolution
  (64, 6400, 93, 21, NULL, 7, NULL, NULL, NULL, NULL, 5),
  -- Kadabra - Psybeam - Level 5
  (64, 6400, 60, 21, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Kadabra - Reflect - Level 10
  (64, 6400, 115, 21, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Kadabra - Ally Switch - Level 15
  (64, 6400, 502, 21, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Kadabra - Psycho Cut - Level 20
  (64, 6400, 427, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Kadabra - Recover - Level 25
  (64, 6400, 105, 21, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Kadabra - Psyshock - Level 30
  (64, 6400, 473, 21, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Kadabra - Psychic - Level 35
  (64, 6400, 94, 21, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Kadabra - Role Play - Level 40
  (64, 6400, 272, 21, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Kadabra - Future Sight - Level 45
  (64, 6400, 248, 21, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Kadabra - Calm Mind - Level 50
  (64, 6400, 347, 21, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Kadabra - Focus Punch - TM01
  (64, 6400, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 16),
  -- Kadabra - Calm Mind - TM04
  (64, 6400, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 17),
  -- Kadabra - Sunny Day - TM11
  (64, 6400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Kadabra - Taunt - TM12
  (64, 6400, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 19),
  -- Kadabra - Light Screen - TM16
  (64, 6400, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 20),
  -- Kadabra - Protect - TM17
  (64, 6400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Kadabra - Rain Dance - TM18
  (64, 6400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Kadabra - Safeguard - TM20
  (64, 6400, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 23),
  -- Kadabra - Dazzling Gleam - TM21
  (64, 6400, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 24),
  -- Kadabra - Iron Tail - TM23
  (64, 6400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Kadabra - Psychic - TM29
  (64, 6400, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 26),
  -- Kadabra - Shadow Ball - TM30
  (64, 6400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 27),
  -- Kadabra - Double Team - TM32
  (64, 6400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Kadabra - Reflect - TM33
  (64, 6400, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 29),
  -- Kadabra - Shock Wave - TM34
  (64, 6400, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 30),
  -- Kadabra - Torment - TM41
  (64, 6400, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 31),
  -- Kadabra - Facade - TM42
  (64, 6400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Kadabra - Rest - TM44
  (64, 6400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Kadabra - Attract - TM45
  (64, 6400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Kadabra - Thief - TM46
  (64, 6400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 35),
  -- Kadabra - Skill Swap - TM48
  (64, 6400, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 36),
  -- Kadabra - Energy Ball - TM53
  (64, 6400, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 37),
  -- Kadabra - Fling - TM56
  (64, 6400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 38),
  -- Kadabra - Charge Beam - TM57
  (64, 6400, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 39),
  -- Kadabra - Endure - TM58
  (64, 6400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Kadabra - Drain Punch - TM60
  (64, 6400, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 41),
  -- Kadabra - Recycle - TM67
  (64, 6400, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 42),
  -- Kadabra - Flash - TM70
  (64, 6400, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 43),
  -- Kadabra - Thunder Wave - TM73
  (64, 6400, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 44),
  -- Kadabra - Psych Up - TM77
  (64, 6400, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 45),
  -- Kadabra - Sleep Talk - TM82
  (64, 6400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Kadabra - Dream Eater - TM85
  (64, 6400, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 47),
  -- Kadabra - Grass Knot - TM86
  (64, 6400, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 48),
  -- Kadabra - Swagger - TM87
  (64, 6400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 49),
  -- Kadabra - Substitute - TM90
  (64, 6400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 50),
  -- Kadabra - Trick Room - TM92
  (64, 6400, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 51),
  -- Kadabra - Ally Switch - Egg
  (64, 6400, 502, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Kadabra - Confusion - Egg
  (64, 6400, 93, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Kadabra - Encore - Egg
  (64, 6400, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Kadabra - Fire Punch - Egg
  (64, 6400, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Kadabra - Guard Split - Egg
  (64, 6400, 470, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Kadabra - Guard Swap - Egg
  (64, 6400, 385, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Kadabra - Ice Punch - Egg
  (64, 6400, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Kadabra - Knock Off - Egg
  (64, 6400, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Kadabra - Magic Coat - Egg
  (64, 6400, 277, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Kadabra - Power Trick - Egg
  (64, 6400, 379, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Kadabra - Psycho Shift - Egg
  (64, 6400, 375, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Kadabra - Thunder Punch - Egg
  (64, 6400, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Alakazam - Confusion - Starting Move
  (65, 6500, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Alakazam - Kinesis - Starting Move
  (65, 6500, 134, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Alakazam - Disable - Starting Move
  (65, 6500, 50, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Alakazam - Teleport - Starting Move
  (65, 6500, 100, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Alakazam - Psybeam - Level 5
  (65, 6500, 60, 21, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Alakazam - Reflect - Level 10
  (65, 6500, 115, 21, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Alakazam - Ally Switch - Level 15
  (65, 6500, 502, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Alakazam - Psycho Cut - Level 20
  (65, 6500, 427, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Alakazam - Recover - Level 25
  (65, 6500, 105, 21, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Alakazam - Psyshock - Level 30
  (65, 6500, 473, 21, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Alakazam - Psychic - Level 35
  (65, 6500, 94, 21, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Alakazam - Role Play - Level 40
  (65, 6500, 272, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Alakazam - Future Sight - Level 45
  (65, 6500, 248, 21, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Alakazam - Calm Mind - Level 50
  (65, 6500, 347, 21, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Alakazam - Focus Punch - TM01
  (65, 6500, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 15),
  -- Alakazam - Calm Mind - TM04
  (65, 6500, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 16),
  -- Alakazam - Sunny Day - TM11
  (65, 6500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Alakazam - Taunt - TM12
  (65, 6500, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 18),
  -- Alakazam - Hyper Beam - TM15
  (65, 6500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Alakazam - Light Screen - TM16
  (65, 6500, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 20),
  -- Alakazam - Protect - TM17
  (65, 6500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Alakazam - Rain Dance - TM18
  (65, 6500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Alakazam - Safeguard - TM20
  (65, 6500, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 23),
  -- Alakazam - Dazzling Gleam - TM21
  (65, 6500, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 24),
  -- Alakazam - Iron Tail - TM23
  (65, 6500, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Alakazam - Psychic - TM29
  (65, 6500, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 26),
  -- Alakazam - Shadow Ball - TM30
  (65, 6500, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 27),
  -- Alakazam - Double Team - TM32
  (65, 6500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Alakazam - Reflect - TM33
  (65, 6500, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 29),
  -- Alakazam - Shock Wave - TM34
  (65, 6500, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 30),
  -- Alakazam - Torment - TM41
  (65, 6500, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 31),
  -- Alakazam - Facade - TM42
  (65, 6500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Alakazam - Rest - TM44
  (65, 6500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Alakazam - Attract - TM45
  (65, 6500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Alakazam - Thief - TM46
  (65, 6500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 35),
  -- Alakazam - Skill Swap - TM48
  (65, 6500, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 36),
  -- Alakazam - Focus Blast - TM52
  (65, 6500, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 37),
  -- Alakazam - Energy Ball - TM53
  (65, 6500, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 38),
  -- Alakazam - Fling - TM56
  (65, 6500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 39),
  -- Alakazam - Charge Beam - TM57
  (65, 6500, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 40),
  -- Alakazam - Endure - TM58
  (65, 6500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 41),
  -- Alakazam - Drain Punch - TM60
  (65, 6500, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 42),
  -- Alakazam - Nasty Plot - TM63
  (65, 6500, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 43),
  -- Alakazam - Recycle - TM67
  (65, 6500, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 44),
  -- Alakazam - Giga Impact - TM68
  (65, 6500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 45),
  -- Alakazam - Flash - TM70
  (65, 6500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 46),
  -- Alakazam - Thunder Wave - TM73
  (65, 6500, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 47),
  -- Alakazam - Psych Up - TM77
  (65, 6500, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 48),
  -- Alakazam - Sleep Talk - TM82
  (65, 6500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 49),
  -- Alakazam - Dream Eater - TM85
  (65, 6500, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 50),
  -- Alakazam - Grass Knot - TM86
  (65, 6500, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 51),
  -- Alakazam - Swagger - TM87
  (65, 6500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 52),
  -- Alakazam - Substitute - TM90
  (65, 6500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 53),
  -- Alakazam - Trick Room - TM92
  (65, 6500, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 54),
  -- Alakazam - Ally Switch - Egg
  (65, 6500, 502, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Alakazam - Confusion - Egg
  (65, 6500, 93, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Alakazam - Encore - Egg
  (65, 6500, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Alakazam - Fire Punch - Egg
  (65, 6500, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Alakazam - Guard Split - Egg
  (65, 6500, 470, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Alakazam - Guard Swap - Egg
  (65, 6500, 385, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Alakazam - Ice Punch - Egg
  (65, 6500, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Alakazam - Knock Off - Egg
  (65, 6500, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Alakazam - Magic Coat - Egg
  (65, 6500, 277, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Alakazam - Power Trick - Egg
  (65, 6500, 379, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Alakazam - Psycho Shift - Egg
  (65, 6500, 375, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Alakazam - Thunder Punch - Egg
  (65, 6500, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Machop - Low Kick - Starting Move
  (66, 6600, 67, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Machop - Leer - Starting Move
  (66, 6600, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Machop - Focus Energy - Level 4
  (66, 6600, 116, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Machop - Revenge - Level 8
  (66, 6600, 279, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Machop - Low Sweep - Level 12
  (66, 6600, 490, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Machop - Knock Off - Level 16
  (66, 6600, 282, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Machop - Scary Face - Level 20
  (66, 6600, 184, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Machop - Vital Throw - Level 24
  (66, 6600, 233, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Machop - Strength - Level 29
  (66, 6600, 70, 21, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Machop - Dual Chop - Level 32
  (66, 6600, 530, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Machop - Bulk Up - Level 36
  (66, 6600, 339, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Machop - Seismic Toss - Level 40
  (66, 6600, 69, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Machop - Dynamic Punch - Level 44
  (66, 6600, 223, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Machop - Cross Chop - Level 48
  (66, 6600, 238, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Machop - Double-Edge - Level 52
  (66, 6600, 38, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Machop - Focus Punch - TM01
  (66, 6600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 16),
  -- Machop - Bulk Up - TM08
  (66, 6600, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 17),
  -- Machop - Work Up - TM10
  (66, 6600, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 18),
  -- Machop - Sunny Day - TM11
  (66, 6600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Machop - Light Screen - TM16
  (66, 6600, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 20),
  -- Machop - Protect - TM17
  (66, 6600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Machop - Rain Dance - TM18
  (66, 6600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Machop - Earthquake - TM26
  (66, 6600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 23),
  -- Machop - Low Sweep - TM27
  (66, 6600, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 24),
  -- Machop - Dig - TM28
  (66, 6600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 25),
  -- Machop - Brick Break - TM31
  (66, 6600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 26),
  -- Machop - Double Team - TM32
  (66, 6600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Machop - Flamethrower - TM35
  (66, 6600, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 28),
  -- Machop - Fire Blast - TM38
  (66, 6600, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 29),
  -- Machop - Rock Tomb - TM39
  (66, 6600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Machop - Facade - TM42
  (66, 6600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Machop - Rest - TM44
  (66, 6600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Machop - Attract - TM45
  (66, 6600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Machop - Thief - TM46
  (66, 6600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 34),
  -- Machop - Focus Blast - TM52
  (66, 6600, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 35),
  -- Machop - Fling - TM56
  (66, 6600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 36),
  -- Machop - Endure - TM58
  (66, 6600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Machop - Payback - TM66
  (66, 6600, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 38),
  -- Machop - Rock Slide - TM80
  (66, 6600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 39),
  -- Machop - Sleep Talk - TM82
  (66, 6600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Machop - Bulldoze - TM83
  (66, 6600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 41),
  -- Machop - Poison Jab - TM84
  (66, 6600, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 42),
  -- Machop - Swagger - TM87
  (66, 6600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 43),
  -- Machop - Substitute - TM90
  (66, 6600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Machop - Strength - TM96
  (66, 6600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 45),
  -- Machop - Rock Smash - TM98
  (66, 6600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 46),
  -- Machop - Rock Climb - TM100
  (66, 6600, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 47),
  -- Machop - Bullet Punch - Egg
  (66, 6600, 418, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Machop - Close Combat - Egg
  (66, 6600, 370, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Machop - Counter - Egg
  (66, 6600, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Machop - Encore - Egg
  (66, 6600, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Machop - Fire Punch - Egg
  (66, 6600, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Machop - Heavy Slam - Egg
  (66, 6600, 484, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Machop - Ice Punch - Egg
  (66, 6600, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Machop - Knock Off - Egg
  (66, 6600, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Machop - Power Trick - Egg
  (66, 6600, 379, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Machop - Quick Guard - Egg
  (66, 6600, 501, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Machop - Submission - Egg
  (66, 6600, 66, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Machop - Thunder Punch - Egg
  (66, 6600, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Machop - Tickle - Egg
  (66, 6600, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Machoke - Low Kick - Starting Move
  (67, 6700, 67, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Machoke - Leer - Starting Move
  (67, 6700, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Machoke - Focus Energy - Starting Move
  (67, 6700, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Machoke - Revenge - Starting Move
  (67, 6700, 279, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Machoke - Low Sweep - Level 12
  (67, 6700, 490, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Machoke - Knock Off - Level 16
  (67, 6700, 282, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Machoke - Scary Face - Level 20
  (67, 6700, 184, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Machoke - Vital Throw - Level 24
  (67, 6700, 233, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Machoke - Strength - Level 31
  (67, 6700, 70, 21, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Machoke - Dual Chop - Level 36
  (67, 6700, 530, 21, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Machoke - Bulk Up - Level 42
  (67, 6700, 339, 21, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Machoke - Seismic Toss - Level 48
  (67, 6700, 69, 21, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Machoke - Dynamic Punch - Level 54
  (67, 6700, 223, 21, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Machoke - Cross Chop - Level 60
  (67, 6700, 238, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Machoke - Double-Edge - Level 66
  (67, 6700, 38, 21, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Machoke - Focus Punch - TM01
  (67, 6700, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 16),
  -- Machoke - Bulk Up - TM08
  (67, 6700, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 17),
  -- Machoke - Work Up - TM10
  (67, 6700, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 18),
  -- Machoke - Sunny Day - TM11
  (67, 6700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Machoke - Light Screen - TM16
  (67, 6700, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 20),
  -- Machoke - Protect - TM17
  (67, 6700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Machoke - Rain Dance - TM18
  (67, 6700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Machoke - Earthquake - TM26
  (67, 6700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 23),
  -- Machoke - Low Sweep - TM27
  (67, 6700, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 24),
  -- Machoke - Dig - TM28
  (67, 6700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 25),
  -- Machoke - Brick Break - TM31
  (67, 6700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 26),
  -- Machoke - Double Team - TM32
  (67, 6700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Machoke - Flamethrower - TM35
  (67, 6700, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 28),
  -- Machoke - Fire Blast - TM38
  (67, 6700, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 29),
  -- Machoke - Rock Tomb - TM39
  (67, 6700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Machoke - Facade - TM42
  (67, 6700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Machoke - Rest - TM44
  (67, 6700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Machoke - Attract - TM45
  (67, 6700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Machoke - Thief - TM46
  (67, 6700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 34),
  -- Machoke - Focus Blast - TM52
  (67, 6700, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 35),
  -- Machoke - Fling - TM56
  (67, 6700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 36),
  -- Machoke - Endure - TM58
  (67, 6700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Machoke - Payback - TM66
  (67, 6700, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 38),
  -- Machoke - Rock Slide - TM80
  (67, 6700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 39),
  -- Machoke - Sleep Talk - TM82
  (67, 6700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Machoke - Bulldoze - TM83
  (67, 6700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 41),
  -- Machoke - Poison Jab - TM84
  (67, 6700, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 42),
  -- Machoke - Swagger - TM87
  (67, 6700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 43),
  -- Machoke - Substitute - TM90
  (67, 6700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Machoke - Strength - TM96
  (67, 6700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 45),
  -- Machoke - Rock Smash - TM98
  (67, 6700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 46),
  -- Machoke - Rock Climb - TM100
  (67, 6700, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 47),
  -- Machoke - Bullet Punch - Egg
  (67, 6700, 418, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Machoke - Close Combat - Egg
  (67, 6700, 370, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Machoke - Counter - Egg
  (67, 6700, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Machoke - Encore - Egg
  (67, 6700, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Machoke - Fire Punch - Egg
  (67, 6700, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Machoke - Heavy Slam - Egg
  (67, 6700, 484, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Machoke - Ice Punch - Egg
  (67, 6700, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Machoke - Knock Off - Egg
  (67, 6700, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Machoke - Power Trick - Egg
  (67, 6700, 379, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Machoke - Quick Guard - Egg
  (67, 6700, 501, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Machoke - Submission - Egg
  (67, 6700, 66, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Machoke - Thunder Punch - Egg
  (67, 6700, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Machoke - Tickle - Egg
  (67, 6700, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Machamp - Wide Guard - Starting Move
  (68, 6800, 469, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Machamp - Low Kick - Starting Move
  (68, 6800, 67, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Machamp - Leer - Starting Move
  (68, 6800, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Machamp - Focus Energy - Starting Move
  (68, 6800, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Machamp - Revenge - Starting Move
  (68, 6800, 279, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Machamp - Low Sweep - Level 12
  (68, 6800, 490, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Machamp - Knock Off - Level 16
  (68, 6800, 282, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Machamp - Scary Face - Level 20
  (68, 6800, 184, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Machamp - Vital Throw - Level 24
  (68, 6800, 233, 21, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Machamp - Strength - Level 31
  (68, 6800, 70, 21, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Machamp - Dual Chop - Level 36
  (68, 6800, 530, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Machamp - Bulk Up - Level 42
  (68, 6800, 339, 21, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Machamp - Seismic Toss - Level 48
  (68, 6800, 69, 21, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Machamp - Dynamic Punch - Level 54
  (68, 6800, 223, 21, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Machamp - Cross Chop - Level 60
  (68, 6800, 238, 21, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Machamp - Double-Edge - Level 66
  (68, 6800, 38, 21, NULL, 1, 66, NULL, NULL, NULL, 16),
  -- Machamp - Focus Punch - TM01
  (68, 6800, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Machamp - Bulk Up - TM08
  (68, 6800, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 18),
  -- Machamp - Work Up - TM10
  (68, 6800, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 19),
  -- Machamp - Sunny Day - TM11
  (68, 6800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Machamp - Hyper Beam - TM15
  (68, 6800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Machamp - Light Screen - TM16
  (68, 6800, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 22),
  -- Machamp - Protect - TM17
  (68, 6800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Machamp - Rain Dance - TM18
  (68, 6800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Machamp - Earthquake - TM26
  (68, 6800, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 25),
  -- Machamp - Low Sweep - TM27
  (68, 6800, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 26),
  -- Machamp - Dig - TM28
  (68, 6800, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 27),
  -- Machamp - Brick Break - TM31
  (68, 6800, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 28),
  -- Machamp - Double Team - TM32
  (68, 6800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Machamp - Flamethrower - TM35
  (68, 6800, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 30),
  -- Machamp - Fire Blast - TM38
  (68, 6800, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 31),
  -- Machamp - Rock Tomb - TM39
  (68, 6800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 32),
  -- Machamp - Facade - TM42
  (68, 6800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Machamp - Rest - TM44
  (68, 6800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Machamp - Attract - TM45
  (68, 6800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Machamp - Thief - TM46
  (68, 6800, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 36),
  -- Machamp - Focus Blast - TM52
  (68, 6800, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 37),
  -- Machamp - Fling - TM56
  (68, 6800, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 38),
  -- Machamp - Endure - TM58
  (68, 6800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Machamp - Payback - TM66
  (68, 6800, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 40),
  -- Machamp - Giga Impact - TM68
  (68, 6800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 41),
  -- Machamp - Stone Edge - TM71
  (68, 6800, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 42),
  -- Machamp - Rock Slide - TM80
  (68, 6800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 43),
  -- Machamp - Sleep Talk - TM82
  (68, 6800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Machamp - Bulldoze - TM83
  (68, 6800, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 45),
  -- Machamp - Poison Jab - TM84
  (68, 6800, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 46),
  -- Machamp - Swagger - TM87
  (68, 6800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 47),
  -- Machamp - Substitute - TM90
  (68, 6800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Machamp - Strength - TM96
  (68, 6800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 49),
  -- Machamp - Rock Smash - TM98
  (68, 6800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 50),
  -- Machamp - Rock Climb - TM100
  (68, 6800, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 51),
  -- Machamp - Bullet Punch - Egg
  (68, 6800, 418, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Machamp - Close Combat - Egg
  (68, 6800, 370, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Machamp - Counter - Egg
  (68, 6800, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Machamp - Encore - Egg
  (68, 6800, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Machamp - Fire Punch - Egg
  (68, 6800, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Machamp - Heavy Slam - Egg
  (68, 6800, 484, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Machamp - Ice Punch - Egg
  (68, 6800, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Machamp - Knock Off - Egg
  (68, 6800, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Machamp - Power Trick - Egg
  (68, 6800, 379, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Machamp - Quick Guard - Egg
  (68, 6800, 501, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Machamp - Submission - Egg
  (68, 6800, 66, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Machamp - Thunder Punch - Egg
  (68, 6800, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Machamp - Tickle - Egg
  (68, 6800, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Bellsprout - Vine Whip - Starting Move
  (69, 6900, 22, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Bellsprout - Growth - Level 7
  (69, 6900, 74, 21, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Bellsprout - Wrap - Level 11
  (69, 6900, 35, 21, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Bellsprout - Sleep Powder - Level 13
  (69, 6900, 79, 21, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Bellsprout - Poison Powder - Level 15
  (69, 6900, 77, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Bellsprout - Stun Spore - Level 17
  (69, 6900, 78, 21, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Bellsprout - Acid - Level 23
  (69, 6900, 51, 21, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Bellsprout - Knock Off - Level 27
  (69, 6900, 282, 21, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Bellsprout - Sweet Scent - Level 29
  (69, 6900, 230, 21, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Bellsprout - Gastro Acid - Level 35
  (69, 6900, 380, 21, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Bellsprout - Razor Leaf - Level 39
  (69, 6900, 75, 21, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Bellsprout - Poison Jab - Level 41
  (69, 6900, 398, 21, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Bellsprout - Slam - Level 47
  (69, 6900, 21, 21, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Bellsprout - Bullet Seed - TM09
  (69, 6900, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 14),
  -- Bellsprout - Sunny Day - TM11
  (69, 6900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Bellsprout - Protect - TM17
  (69, 6900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Bellsprout - Giga Drain - TM19
  (69, 6900, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 17),
  -- Bellsprout - Solar Beam - TM22
  (69, 6900, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 18),
  -- Bellsprout - Double Team - TM32
  (69, 6900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 19),
  -- Bellsprout - Reflect - TM33
  (69, 6900, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 20),
  -- Bellsprout - Sludge Bomb - TM36
  (69, 6900, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 21),
  -- Bellsprout - Facade - TM42
  (69, 6900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 22),
  -- Bellsprout - Rest - TM44
  (69, 6900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 23),
  -- Bellsprout - Attract - TM45
  (69, 6900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 24),
  -- Bellsprout - Thief - TM46
  (69, 6900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 25),
  -- Bellsprout - Energy Ball - TM53
  (69, 6900, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 26),
  -- Bellsprout - Endure - TM58
  (69, 6900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 27),
  -- Bellsprout - Flash - TM70
  (69, 6900, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 28),
  -- Bellsprout - Swords Dance - TM75
  (69, 6900, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 29),
  -- Bellsprout - Sleep Talk - TM82
  (69, 6900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 30),
  -- Bellsprout - Poison Jab - TM84
  (69, 6900, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 31),
  -- Bellsprout - Grass Knot - TM86
  (69, 6900, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 32),
  -- Bellsprout - Swagger - TM87
  (69, 6900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 33),
  -- Bellsprout - Substitute - TM90
  (69, 6900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 34),
  -- Bellsprout - Cut - TM93
  (69, 6900, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 35),
  -- Bellsprout - Acid Spray - Egg
  (69, 6900, 491, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Bellsprout - Belch - Egg
  (69, 6900, 562, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Bellsprout - Clear Smog - Egg
  (69, 6900, 499, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Bellsprout - Encore - Egg
  (69, 6900, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Bellsprout - Ingrain - Egg
  (69, 6900, 275, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Bellsprout - Leech Life - Egg
  (69, 6900, 141, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Bellsprout - Magical Leaf - Egg
  (69, 6900, 345, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Bellsprout - Power Whip - Egg
  (69, 6900, 438, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bellsprout - Strength Sap - Egg
  (69, 6900, 668, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bellsprout - Synthesis - Egg
  (69, 6900, 235, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bellsprout - Tickle - Egg
  (69, 6900, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bellsprout - Weather Ball - Egg
  (69, 6900, 311, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bellsprout - Worry Seed - Egg
  (69, 6900, 388, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Weepinbell - Vine Whip - Starting Move
  (70, 7000, 22, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Weepinbell - Growth - Starting Move
  (70, 7000, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Weepinbell - Wrap - Starting Move
  (70, 7000, 35, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Weepinbell - Growth - Level 7
  (70, 7000, 74, 21, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Weepinbell - Wrap - Level 11
  (70, 7000, 35, 21, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Weepinbell - Sleep Powder - Level 13
  (70, 7000, 79, 21, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Weepinbell - Poison Powder - Level 15
  (70, 7000, 77, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Weepinbell - Stun Spore - Level 17
  (70, 7000, 78, 21, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Weepinbell - Acid - Level 24
  (70, 7000, 51, 21, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Weepinbell - Knock Off - Level 29
  (70, 7000, 282, 21, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Weepinbell - Sweet Scent - Level 32
  (70, 7000, 230, 21, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Weepinbell - Gastro Acid - Level 39
  (70, 7000, 380, 21, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Weepinbell - Razor Leaf - Level 44
  (70, 7000, 75, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Weepinbell - Poison Jab - Level 47
  (70, 7000, 398, 21, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Weepinbell - Slam - Level 54
  (70, 7000, 21, 21, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Weepinbell - Bullet Seed - TM09
  (70, 7000, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 16),
  -- Weepinbell - Sunny Day - TM11
  (70, 7000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Weepinbell - Protect - TM17
  (70, 7000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Weepinbell - Giga Drain - TM19
  (70, 7000, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 19),
  -- Weepinbell - Solar Beam - TM22
  (70, 7000, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 20),
  -- Weepinbell - Double Team - TM32
  (70, 7000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Weepinbell - Reflect - TM33
  (70, 7000, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 22),
  -- Weepinbell - Sludge Bomb - TM36
  (70, 7000, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 23),
  -- Weepinbell - Facade - TM42
  (70, 7000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 24),
  -- Weepinbell - Rest - TM44
  (70, 7000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 25),
  -- Weepinbell - Attract - TM45
  (70, 7000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 26),
  -- Weepinbell - Thief - TM46
  (70, 7000, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 27),
  -- Weepinbell - Energy Ball - TM53
  (70, 7000, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 28),
  -- Weepinbell - Endure - TM58
  (70, 7000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Weepinbell - Flash - TM70
  (70, 7000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 30),
  -- Weepinbell - Swords Dance - TM75
  (70, 7000, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 31),
  -- Weepinbell - Sleep Talk - TM82
  (70, 7000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 32),
  -- Weepinbell - Poison Jab - TM84
  (70, 7000, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 33),
  -- Weepinbell - Grass Knot - TM86
  (70, 7000, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 34),
  -- Weepinbell - Swagger - TM87
  (70, 7000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Weepinbell - Substitute - TM90
  (70, 7000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 36),
  -- Weepinbell - Cut - TM93
  (70, 7000, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 37),
  -- Weepinbell - Acid Spray - Egg
  (70, 7000, 491, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Weepinbell - Belch - Egg
  (70, 7000, 562, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Weepinbell - Clear Smog - Egg
  (70, 7000, 499, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Weepinbell - Encore - Egg
  (70, 7000, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Weepinbell - Ingrain - Egg
  (70, 7000, 275, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Weepinbell - Leech Life - Egg
  (70, 7000, 141, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Weepinbell - Magical Leaf - Egg
  (70, 7000, 345, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Weepinbell - Power Whip - Egg
  (70, 7000, 438, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Weepinbell - Strength Sap - Egg
  (70, 7000, 668, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Weepinbell - Synthesis - Egg
  (70, 7000, 235, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Weepinbell - Tickle - Egg
  (70, 7000, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Weepinbell - Weather Ball - Egg
  (70, 7000, 311, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Weepinbell - Worry Seed - Egg
  (70, 7000, 388, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Victreebel - Leaf Tornado - Starting Move
  (71, 7100, 536, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Victreebel - Stockpile - Starting Move
  (71, 7100, 254, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Victreebel - Swallow - Starting Move
  (71, 7100, 256, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Victreebel - Spit Up - Starting Move
  (71, 7100, 255, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Victreebel - Growth - Starting Move
  (71, 7100, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Victreebel - Wrap - Starting Move
  (71, 7100, 35, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Victreebel - Poison Powder - Starting Move
  (71, 7100, 77, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Victreebel - Stun Spore - Starting Move
  (71, 7100, 78, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Victreebel - Acid - Starting Move
  (71, 7100, 51, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Victreebel - Knock Off - Starting Move
  (71, 7100, 282, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Victreebel - Gastro Acid - Starting Move
  (71, 7100, 380, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Victreebel - Poison Jab - Starting Move
  (71, 7100, 398, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Victreebel - Slam - Starting Move
  (71, 7100, 21, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Victreebel - Vine Whip - Starting Move
  (71, 7100, 22, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Victreebel - Sleep Powder - Starting Move
  (71, 7100, 79, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Victreebel - Sweet Scent - Starting Move
  (71, 7100, 230, 21, NULL, 8, NULL, NULL, NULL, NULL, 16),
  -- Victreebel - Razor Leaf - Starting Move
  (71, 7100, 75, 21, NULL, 8, NULL, NULL, NULL, NULL, 17),
  -- Victreebel - Leaf Tornado - Evolution
  (71, 7100, 536, 21, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Victreebel - Leaf Storm - Level 32
  (71, 7100, 437, 21, NULL, 1, 32, NULL, NULL, NULL, 19),
  -- Victreebel - Leaf Blade - Level 44
  (71, 7100, 348, 21, NULL, 1, 44, NULL, NULL, NULL, 20),
  -- Victreebel - Bullet Seed - TM09
  (71, 7100, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 21),
  -- Victreebel - Sunny Day - TM11
  (71, 7100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Victreebel - Hyper Beam - TM15
  (71, 7100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Victreebel - Protect - TM17
  (71, 7100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Victreebel - Giga Drain - TM19
  (71, 7100, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 25),
  -- Victreebel - Solar Beam - TM22
  (71, 7100, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 26),
  -- Victreebel - Double Team - TM32
  (71, 7100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Victreebel - Reflect - TM33
  (71, 7100, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 28),
  -- Victreebel - Sludge Bomb - TM36
  (71, 7100, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 29),
  -- Victreebel - Facade - TM42
  (71, 7100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Victreebel - Rest - TM44
  (71, 7100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Victreebel - Attract - TM45
  (71, 7100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Victreebel - Thief - TM46
  (71, 7100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 33),
  -- Victreebel - Energy Ball - TM53
  (71, 7100, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 34),
  -- Victreebel - Endure - TM58
  (71, 7100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Victreebel - Giga Impact - TM68
  (71, 7100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 36),
  -- Victreebel - Flash - TM70
  (71, 7100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 37),
  -- Victreebel - Swords Dance - TM75
  (71, 7100, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 38),
  -- Victreebel - Sleep Talk - TM82
  (71, 7100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Victreebel - Poison Jab - TM84
  (71, 7100, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 40),
  -- Victreebel - Grass Knot - TM86
  (71, 7100, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 41),
  -- Victreebel - Swagger - TM87
  (71, 7100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Victreebel - Substitute - TM90
  (71, 7100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Victreebel - Cut - TM93
  (71, 7100, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 44),
  -- Victreebel - Acid Spray - Egg
  (71, 7100, 491, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Victreebel - Belch - Egg
  (71, 7100, 562, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Victreebel - Clear Smog - Egg
  (71, 7100, 499, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Victreebel - Encore - Egg
  (71, 7100, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Victreebel - Ingrain - Egg
  (71, 7100, 275, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Victreebel - Leech Life - Egg
  (71, 7100, 141, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Victreebel - Magical Leaf - Egg
  (71, 7100, 345, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Victreebel - Power Whip - Egg
  (71, 7100, 438, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Victreebel - Strength Sap - Egg
  (71, 7100, 668, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Victreebel - Synthesis - Egg
  (71, 7100, 235, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Victreebel - Tickle - Egg
  (71, 7100, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Victreebel - Weather Ball - Egg
  (71, 7100, 311, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Victreebel - Worry Seed - Egg
  (71, 7100, 388, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tentacool - Poison Sting - Starting Move
  (72, 7200, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Tentacool - Water Gun - Starting Move
  (72, 7200, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Tentacool - Acid - Level 4
  (72, 7200, 51, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Tentacool - Wrap - Level 8
  (72, 7200, 35, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Tentacool - Supersonic - Level 12
  (72, 7200, 48, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Tentacool - Water Pulse - Level 16
  (72, 7200, 352, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Tentacool - Screech - Level 20
  (72, 7200, 103, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Tentacool - Bubble Beam - Level 24
  (72, 7200, 61, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Tentacool - Hex - Level 28
  (72, 7200, 506, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Tentacool - Acid Armor - Level 32
  (72, 7200, 151, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Tentacool - Poison Jab - Level 36
  (72, 7200, 398, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Tentacool - Surf - Level 40
  (72, 7200, 57, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Tentacool - Sludge Wave - Level 44
  (72, 7200, 482, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Tentacool - Hydro Pump - Level 48
  (72, 7200, 56, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Tentacool - Water Pulse - TM03
  (72, 7200, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Tentacool - Hail - TM07
  (72, 7200, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 16),
  -- Tentacool - Ice Beam - TM13
  (72, 7200, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Tentacool - Blizzard - TM14
  (72, 7200, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Tentacool - Protect - TM17
  (72, 7200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Tentacool - Rain Dance - TM18
  (72, 7200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Tentacool - Giga Drain - TM19
  (72, 7200, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 21),
  -- Tentacool - Safeguard - TM20
  (72, 7200, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 22),
  -- Tentacool - Dazzling Gleam - TM21
  (72, 7200, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 23),
  -- Tentacool - Double Team - TM32
  (72, 7200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Tentacool - Sludge Bomb - TM36
  (72, 7200, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 25),
  -- Tentacool - Facade - TM42
  (72, 7200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Tentacool - Rest - TM44
  (72, 7200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Tentacool - Attract - TM45
  (72, 7200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Tentacool - Thief - TM46
  (72, 7200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 29),
  -- Tentacool - Scald - TM49
  (72, 7200, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 30),
  -- Tentacool - Brine - TM55
  (72, 7200, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 31),
  -- Tentacool - Endure - TM58
  (72, 7200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Tentacool - Payback - TM66
  (72, 7200, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 33),
  -- Tentacool - Swords Dance - TM75
  (72, 7200, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 34),
  -- Tentacool - Sleep Talk - TM82
  (72, 7200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Tentacool - Poison Jab - TM84
  (72, 7200, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 36),
  -- Tentacool - Swagger - TM87
  (72, 7200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 37),
  -- Tentacool - Substitute - TM90
  (72, 7200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Tentacool - Cut - TM93
  (72, 7200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 39),
  -- Tentacool - Surf - TM95
  (72, 7200, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 40),
  -- Tentacool - Waterfall - TM99
  (72, 7200, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 41),
  -- Tentacool - Acupressure - Egg
  (72, 7200, 367, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Tentacool - Aqua Ring - Egg
  (72, 7200, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Tentacool - Aurora Beam - Egg
  (72, 7200, 62, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Tentacool - Confuse Ray - Egg
  (72, 7200, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Tentacool - Haze - Egg
  (72, 7200, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Tentacool - Knock Off - Egg
  (72, 7200, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Tentacool - Mirror Coat - Egg
  (72, 7200, 243, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Tentacool - Muddy Water - Egg
  (72, 7200, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Tentacool - Rapid Spin - Egg
  (72, 7200, 229, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tentacool - Tickle - Egg
  (72, 7200, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tentacruel - Reflect Type - Starting Move
  (73, 7300, 513, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Tentacruel - Poison Sting - Starting Move
  (73, 7300, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Tentacruel - Water Gun - Starting Move
  (73, 7300, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Tentacruel - Acid - Starting Move
  (73, 7300, 51, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Tentacruel - Wrap - Starting Move
  (73, 7300, 35, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Tentacruel - Supersonic - Level 12
  (73, 7300, 48, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Tentacruel - Water Pulse - Level 16
  (73, 7300, 352, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Tentacruel - Screech - Level 20
  (73, 7300, 103, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Tentacruel - Bubble Beam - Level 24
  (73, 7300, 61, 21, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Tentacruel - Hex - Level 28
  (73, 7300, 506, 21, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Tentacruel - Acid Armor - Level 34
  (73, 7300, 151, 21, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Tentacruel - Poison Jab - Level 40
  (73, 7300, 398, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Tentacruel - Surf - Level 46
  (73, 7300, 57, 21, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Tentacruel - Sludge Wave - Level 52
  (73, 7300, 482, 21, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Tentacruel - Hydro Pump - Level 58
  (73, 7300, 56, 21, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Tentacruel - Water Pulse - TM03
  (73, 7300, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 16),
  -- Tentacruel - Hail - TM07
  (73, 7300, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 17),
  -- Tentacruel - Ice Beam - TM13
  (73, 7300, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 18),
  -- Tentacruel - Blizzard - TM14
  (73, 7300, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 19),
  -- Tentacruel - Hyper Beam - TM15
  (73, 7300, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Tentacruel - Protect - TM17
  (73, 7300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Tentacruel - Rain Dance - TM18
  (73, 7300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Tentacruel - Giga Drain - TM19
  (73, 7300, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 23),
  -- Tentacruel - Safeguard - TM20
  (73, 7300, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 24),
  -- Tentacruel - Dazzling Gleam - TM21
  (73, 7300, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 25),
  -- Tentacruel - Double Team - TM32
  (73, 7300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Tentacruel - Sludge Bomb - TM36
  (73, 7300, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 27),
  -- Tentacruel - Facade - TM42
  (73, 7300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Tentacruel - Rest - TM44
  (73, 7300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Tentacruel - Attract - TM45
  (73, 7300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Tentacruel - Thief - TM46
  (73, 7300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 31),
  -- Tentacruel - Scald - TM49
  (73, 7300, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 32),
  -- Tentacruel - Brine - TM55
  (73, 7300, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 33),
  -- Tentacruel - Endure - TM58
  (73, 7300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Tentacruel - Payback - TM66
  (73, 7300, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 35),
  -- Tentacruel - Giga Impact - TM68
  (73, 7300, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 36),
  -- Tentacruel - Swords Dance - TM75
  (73, 7300, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 37),
  -- Tentacruel - Sleep Talk - TM82
  (73, 7300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 38),
  -- Tentacruel - Poison Jab - TM84
  (73, 7300, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 39),
  -- Tentacruel - Swagger - TM87
  (73, 7300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 40),
  -- Tentacruel - Substitute - TM90
  (73, 7300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 41),
  -- Tentacruel - Cut - TM93
  (73, 7300, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 42),
  -- Tentacruel - Surf - TM95
  (73, 7300, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 43),
  -- Tentacruel - Waterfall - TM99
  (73, 7300, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 44),
  -- Tentacruel - Acupressure - Egg
  (73, 7300, 367, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Tentacruel - Aqua Ring - Egg
  (73, 7300, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Tentacruel - Aurora Beam - Egg
  (73, 7300, 62, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Tentacruel - Confuse Ray - Egg
  (73, 7300, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Tentacruel - Haze - Egg
  (73, 7300, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Tentacruel - Knock Off - Egg
  (73, 7300, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tentacruel - Mirror Coat - Egg
  (73, 7300, 243, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tentacruel - Muddy Water - Egg
  (73, 7300, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tentacruel - Rapid Spin - Egg
  (73, 7300, 229, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tentacruel - Tickle - Egg
  (73, 7300, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Geodude - Tackle - Starting Move
  (74, 7400, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Geodude - Defense Curl - Starting Move
  (74, 7400, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Geodude - Sandstorm - Level 4
  (74, 7400, 201, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Geodude - Rock Polish - Level 6
  (74, 7400, 397, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Geodude - Rollout - Level 10
  (74, 7400, 205, 21, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Geodude - Harden - Level 12
  (74, 7400, 106, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Geodude - Rock Throw - Level 16
  (74, 7400, 88, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Geodude - Smack Down - Level 18
  (74, 7400, 479, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Geodude - Bulldoze - Level 22
  (74, 7400, 523, 21, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Geodude - Self-Destruct - Level 24
  (74, 7400, 120, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Geodude - Stealth Rock - Level 28
  (74, 7400, 446, 21, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Geodude - Rock Blast - Level 30
  (74, 7400, 350, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Geodude - Earthquake - Level 34
  (74, 7400, 89, 21, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Geodude - Explosion - Level 36
  (74, 7400, 153, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Geodude - Double-Edge - Level 40
  (74, 7400, 38, 21, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Geodude - Stone Edge - Level 42
  (74, 7400, 444, 21, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Geodude - Focus Punch - TM01
  (74, 7400, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Geodude - Sunny Day - TM11
  (74, 7400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Geodude - Protect - TM17
  (74, 7400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Geodude - Earthquake - TM26
  (74, 7400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 20),
  -- Geodude - Dig - TM28
  (74, 7400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 21),
  -- Geodude - Brick Break - TM31
  (74, 7400, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 22),
  -- Geodude - Double Team - TM32
  (74, 7400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Geodude - Flamethrower - TM35
  (74, 7400, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 24),
  -- Geodude - Sandstorm - TM37
  (74, 7400, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 25),
  -- Geodude - Fire Blast - TM38
  (74, 7400, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 26),
  -- Geodude - Rock Tomb - TM39
  (74, 7400, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 27),
  -- Geodude - Facade - TM42
  (74, 7400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Geodude - Rest - TM44
  (74, 7400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Geodude - Attract - TM45
  (74, 7400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Geodude - Fling - TM56
  (74, 7400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 31),
  -- Geodude - Endure - TM58
  (74, 7400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Geodude - Explosion - TM64
  (74, 7400, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 33),
  -- Geodude - Rock Polish - TM69
  (74, 7400, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 34),
  -- Geodude - Stone Edge - TM71
  (74, 7400, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 35),
  -- Geodude - Gyro Ball - TM74
  (74, 7400, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 36),
  -- Geodude - Stealth Rock - TM76
  (74, 7400, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 37),
  -- Geodude - Rock Slide - TM80
  (74, 7400, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 38),
  -- Geodude - Sleep Talk - TM82
  (74, 7400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Geodude - Bulldoze - TM83
  (74, 7400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 40),
  -- Geodude - Swagger - TM87
  (74, 7400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 41),
  -- Geodude - Substitute - TM90
  (74, 7400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 42),
  -- Geodude - Strength - TM96
  (74, 7400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 43),
  -- Geodude - Rock Smash - TM98
  (74, 7400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 44),
  -- Geodude - Rock Climb - TM100
  (74, 7400, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 45),
  -- Geodude - Autotomize - Egg
  (74, 7400, 475, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Geodude - Block - Egg
  (74, 7400, 335, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Geodude - Curse - Egg
  (74, 7400, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Geodude - Flail - Egg
  (74, 7400, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Geodude - Hammer Arm - Egg
  (74, 7400, 359, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Geodude - Mega Punch - Egg
  (74, 7400, 5, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Geodude - Wide Guard - Egg
  (74, 7400, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Graveler - Tackle - Starting Move
  (75, 7500, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Graveler - Defense Curl - Starting Move
  (75, 7500, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Graveler - Rock Polish - Starting Move
  (75, 7500, 397, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Graveler - Sandstorm - Level 4
  (75, 7500, 201, 21, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Graveler - Rock Polish - Level 6
  (75, 7500, 397, 21, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Graveler - Rollout - Level 10
  (75, 7500, 205, 21, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Graveler - Harden - Level 12
  (75, 7500, 106, 21, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Graveler - Rock Throw - Level 16
  (75, 7500, 88, 21, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Graveler - Smack Down - Level 18
  (75, 7500, 479, 21, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Graveler - Bulldoze - Level 22
  (75, 7500, 523, 21, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Graveler - Self-Destruct - Level 24
  (75, 7500, 120, 21, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Graveler - Stealth Rock - Level 30
  (75, 7500, 446, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Graveler - Rock Blast - Level 34
  (75, 7500, 350, 21, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Graveler - Earthquake - Level 40
  (75, 7500, 89, 21, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Graveler - Explosion - Level 44
  (75, 7500, 153, 21, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Graveler - Double-Edge - Level 50
  (75, 7500, 38, 21, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Graveler - Stone Edge - Level 54
  (75, 7500, 444, 21, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Graveler - Focus Punch - TM01
  (75, 7500, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 18),
  -- Graveler - Sunny Day - TM11
  (75, 7500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Graveler - Protect - TM17
  (75, 7500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Graveler - Earthquake - TM26
  (75, 7500, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 21),
  -- Graveler - Dig - TM28
  (75, 7500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 22),
  -- Graveler - Brick Break - TM31
  (75, 7500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 23),
  -- Graveler - Double Team - TM32
  (75, 7500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Graveler - Flamethrower - TM35
  (75, 7500, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 25),
  -- Graveler - Sandstorm - TM37
  (75, 7500, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 26),
  -- Graveler - Fire Blast - TM38
  (75, 7500, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 27),
  -- Graveler - Rock Tomb - TM39
  (75, 7500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 28),
  -- Graveler - Facade - TM42
  (75, 7500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Graveler - Rest - TM44
  (75, 7500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Graveler - Attract - TM45
  (75, 7500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Graveler - Fling - TM56
  (75, 7500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 32),
  -- Graveler - Endure - TM58
  (75, 7500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Graveler - Explosion - TM64
  (75, 7500, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 34),
  -- Graveler - Rock Polish - TM69
  (75, 7500, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 35),
  -- Graveler - Stone Edge - TM71
  (75, 7500, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 36),
  -- Graveler - Gyro Ball - TM74
  (75, 7500, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 37),
  -- Graveler - Stealth Rock - TM76
  (75, 7500, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 38),
  -- Graveler - Rock Slide - TM80
  (75, 7500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 39),
  -- Graveler - Sleep Talk - TM82
  (75, 7500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Graveler - Bulldoze - TM83
  (75, 7500, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 41),
  -- Graveler - Swagger - TM87
  (75, 7500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Graveler - Substitute - TM90
  (75, 7500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Graveler - Strength - TM96
  (75, 7500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 44),
  -- Graveler - Rock Smash - TM98
  (75, 7500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 45),
  -- Graveler - Rock Climb - TM100
  (75, 7500, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 46),
  -- Graveler - Autotomize - Egg
  (75, 7500, 475, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Graveler - Block - Egg
  (75, 7500, 335, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Graveler - Curse - Egg
  (75, 7500, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Graveler - Flail - Egg
  (75, 7500, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Graveler - Hammer Arm - Egg
  (75, 7500, 359, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Graveler - Mega Punch - Egg
  (75, 7500, 5, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Graveler - Wide Guard - Egg
  (75, 7500, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Golem - Heavy Slam - Starting Move
  (76, 7600, 484, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Golem - Tackle - Starting Move
  (76, 7600, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Golem - Defense Curl - Starting Move
  (76, 7600, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Golem - Rock Polish - Starting Move
  (76, 7600, 397, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Golem - Sandstorm - Level 4
  (76, 7600, 201, 21, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Golem - Rock Polish - Level 6
  (76, 7600, 397, 21, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Golem - Rollout - Level 10
  (76, 7600, 205, 21, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Golem - Harden - Level 12
  (76, 7600, 106, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Golem - Rock Throw - Level 16
  (76, 7600, 88, 21, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Golem - Smack Down - Level 18
  (76, 7600, 479, 21, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Golem - Bulldoze - Level 22
  (76, 7600, 523, 21, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Golem - Self-Destruct - Level 24
  (76, 7600, 120, 21, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Golem - Stealth Rock - Level 30
  (76, 7600, 446, 21, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Golem - Rock Blast - Level 34
  (76, 7600, 350, 21, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Golem - Earthquake - Level 40
  (76, 7600, 89, 21, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Golem - Explosion - Level 44
  (76, 7600, 153, 21, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Golem - Double-Edge - Level 50
  (76, 7600, 38, 21, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Golem - Stone Edge - Level 54
  (76, 7600, 444, 21, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Golem - Heavy Slam - Level 60
  (76, 7600, 484, 21, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Golem - Focus Punch - TM01
  (76, 7600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 20),
  -- Golem - Roar - TM05
  (76, 7600, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 21),
  -- Golem - Sunny Day - TM11
  (76, 7600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Golem - Hyper Beam - TM15
  (76, 7600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Golem - Protect - TM17
  (76, 7600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Golem - Earthquake - TM26
  (76, 7600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 25),
  -- Golem - Dig - TM28
  (76, 7600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 26),
  -- Golem - Brick Break - TM31
  (76, 7600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 27),
  -- Golem - Double Team - TM32
  (76, 7600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Golem - Flamethrower - TM35
  (76, 7600, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 29),
  -- Golem - Sandstorm - TM37
  (76, 7600, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 30),
  -- Golem - Fire Blast - TM38
  (76, 7600, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 31),
  -- Golem - Rock Tomb - TM39
  (76, 7600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 32),
  -- Golem - Facade - TM42
  (76, 7600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Golem - Rest - TM44
  (76, 7600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Golem - Attract - TM45
  (76, 7600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Golem - Focus Blast - TM52
  (76, 7600, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 36),
  -- Golem - Fling - TM56
  (76, 7600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 37),
  -- Golem - Endure - TM58
  (76, 7600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Golem - Explosion - TM64
  (76, 7600, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 39),
  -- Golem - Giga Impact - TM68
  (76, 7600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 40),
  -- Golem - Rock Polish - TM69
  (76, 7600, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 41),
  -- Golem - Stone Edge - TM71
  (76, 7600, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 42),
  -- Golem - Gyro Ball - TM74
  (76, 7600, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 43),
  -- Golem - Stealth Rock - TM76
  (76, 7600, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 44),
  -- Golem - Rock Slide - TM80
  (76, 7600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 45),
  -- Golem - Sleep Talk - TM82
  (76, 7600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Golem - Bulldoze - TM83
  (76, 7600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 47),
  -- Golem - Swagger - TM87
  (76, 7600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Golem - Substitute - TM90
  (76, 7600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 49),
  -- Golem - Strength - TM96
  (76, 7600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 50),
  -- Golem - Rock Smash - TM98
  (76, 7600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 51),
  -- Golem - Rock Climb - TM100
  (76, 7600, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 52),
  -- Golem - Autotomize - Egg
  (76, 7600, 475, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Golem - Block - Egg
  (76, 7600, 335, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Golem - Curse - Egg
  (76, 7600, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Golem - Flail - Egg
  (76, 7600, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Golem - Hammer Arm - Egg
  (76, 7600, 359, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Golem - Mega Punch - Egg
  (76, 7600, 5, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Golem - Wide Guard - Egg
  (76, 7600, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Ponyta - Tackle - Starting Move
  (77, 7700, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Ponyta - Growl - Starting Move
  (77, 7700, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Ponyta - Tail Whip - Level 5
  (77, 7700, 39, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Ponyta - Ember - Level 10
  (77, 7700, 52, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Ponyta - Flame Charge - Level 15
  (77, 7700, 488, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Ponyta - Agility - Level 20
  (77, 7700, 97, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Ponyta - Flame Wheel - Level 25
  (77, 7700, 172, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Ponyta - Stomp - Level 30
  (77, 7700, 23, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Ponyta - Fire Spin - Level 35
  (77, 7700, 83, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Ponyta - Take Down - Level 41
  (77, 7700, 36, 21, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Ponyta - Inferno - Level 45
  (77, 7700, 517, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Ponyta - Fire Blast - Level 50
  (77, 7700, 126, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Ponyta - Flare Blitz - Level 55
  (77, 7700, 394, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Ponyta - Sunny Day - TM11
  (77, 7700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 14),
  -- Ponyta - Protect - TM17
  (77, 7700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 15),
  -- Ponyta - Solar Beam - TM22
  (77, 7700, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 16),
  -- Ponyta - Iron Tail - TM23
  (77, 7700, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 17),
  -- Ponyta - Double Team - TM32
  (77, 7700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 18),
  -- Ponyta - Flamethrower - TM35
  (77, 7700, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 19),
  -- Ponyta - Fire Blast - TM38
  (77, 7700, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 20),
  -- Ponyta - Facade - TM42
  (77, 7700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 21),
  -- Ponyta - Rest - TM44
  (77, 7700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 22),
  -- Ponyta - Attract - TM45
  (77, 7700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 23),
  -- Ponyta - Overheat - TM50
  (77, 7700, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 24),
  -- Ponyta - Endure - TM58
  (77, 7700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 25),
  -- Ponyta - Will-O-Wisp - TM61
  (77, 7700, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 26),
  -- Ponyta - Sleep Talk - TM82
  (77, 7700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 27),
  -- Ponyta - Swagger - TM87
  (77, 7700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 28),
  -- Ponyta - Substitute - TM90
  (77, 7700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 29),
  -- Ponyta - Strength - TM96
  (77, 7700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 30),
  -- Ponyta - Ally Switch - Egg
  (77, 7700, 502, 21, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Ponyta - Charm - Egg
  (77, 7700, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Ponyta - Double Kick - Egg
  (77, 7700, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Ponyta - Double-Edge - Egg
  (77, 7700, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Ponyta - Flame Wheel - Egg
  (77, 7700, 172, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Ponyta - High Horsepower - Egg
  (77, 7700, 667, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Ponyta - Horn Drill - Egg
  (77, 7700, 32, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Ponyta - Hypnosis - Egg
  (77, 7700, 95, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Ponyta - Low Kick - Egg
  (77, 7700, 67, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Ponyta - Morning Sun - Egg
  (77, 7700, 234, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Ponyta - Thrash - Egg
  (77, 7700, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Rapidash - Smart Strike - Starting Move
  (78, 7800, 684, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Rapidash - Megahorn - Starting Move
  (78, 7800, 224, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Rapidash - Poison Jab - Starting Move
  (78, 7800, 398, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Rapidash - Tackle - Starting Move
  (78, 7800, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Rapidash - Quick Attack - Starting Move
  (78, 7800, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Rapidash - Growl - Starting Move
  (78, 7800, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Rapidash - Tail Whip - Starting Move
  (78, 7800, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Rapidash - Ember - Starting Move
  (78, 7800, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Rapidash - Smart Strike - Evolution
  (78, 7800, 684, 21, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Rapidash - Flame Charge - Level 15
  (78, 7800, 488, 21, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Rapidash - Agility - Level 20
  (78, 7800, 97, 21, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Rapidash - Flame Wheel - Level 25
  (78, 7800, 172, 21, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Rapidash - Stomp - Level 30
  (78, 7800, 23, 21, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Rapidash - Fire Spin - Level 35
  (78, 7800, 83, 21, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Rapidash - Take Down - Level 43
  (78, 7800, 36, 21, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Rapidash - Inferno - Level 49
  (78, 7800, 517, 21, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Rapidash - Fire Blast - Level 56
  (78, 7800, 126, 21, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Rapidash - Flare Blitz - Level 63
  (78, 7800, 394, 21, NULL, 1, 63, NULL, NULL, NULL, 18),
  -- Rapidash - Sunny Day - TM11
  (78, 7800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Rapidash - Hyper Beam - TM15
  (78, 7800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Rapidash - Protect - TM17
  (78, 7800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Rapidash - Solar Beam - TM22
  (78, 7800, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 22),
  -- Rapidash - Iron Tail - TM23
  (78, 7800, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 23),
  -- Rapidash - Double Team - TM32
  (78, 7800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Rapidash - Flamethrower - TM35
  (78, 7800, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 25),
  -- Rapidash - Fire Blast - TM38
  (78, 7800, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 26),
  -- Rapidash - Facade - TM42
  (78, 7800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Rapidash - Rest - TM44
  (78, 7800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Rapidash - Attract - TM45
  (78, 7800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Rapidash - Overheat - TM50
  (78, 7800, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 30),
  -- Rapidash - Endure - TM58
  (78, 7800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 31),
  -- Rapidash - Will-O-Wisp - TM61
  (78, 7800, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 32),
  -- Rapidash - Giga Impact - TM68
  (78, 7800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 33),
  -- Rapidash - Swords Dance - TM75
  (78, 7800, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 34),
  -- Rapidash - Sleep Talk - TM82
  (78, 7800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Rapidash - Poison Jab - TM84
  (78, 7800, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 36),
  -- Rapidash - Swagger - TM87
  (78, 7800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 37),
  -- Rapidash - Substitute - TM90
  (78, 7800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Rapidash - Strength - TM96
  (78, 7800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 39),
  -- Rapidash - Ally Switch - Egg
  (78, 7800, 502, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Rapidash - Charm - Egg
  (78, 7800, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Rapidash - Double Kick - Egg
  (78, 7800, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Rapidash - Double-Edge - Egg
  (78, 7800, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Rapidash - Flame Wheel - Egg
  (78, 7800, 172, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Rapidash - High Horsepower - Egg
  (78, 7800, 667, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Rapidash - Horn Drill - Egg
  (78, 7800, 32, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Rapidash - Hypnosis - Egg
  (78, 7800, 95, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Rapidash - Low Kick - Egg
  (78, 7800, 67, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Rapidash - Morning Sun - Egg
  (78, 7800, 234, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Rapidash - Thrash - Egg
  (78, 7800, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Slowpoke - Tackle - Starting Move
  (79, 7900, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Slowpoke - Curse - Starting Move
  (79, 7900, 174, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Slowpoke - Growl - Level 3
  (79, 7900, 45, 21, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Slowpoke - Water Gun - Level 6
  (79, 7900, 55, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Slowpoke - Yawn - Level 9
  (79, 7900, 281, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Slowpoke - Confusion - Level 12
  (79, 7900, 93, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Slowpoke - Disable - Level 15
  (79, 7900, 50, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Slowpoke - Water Pulse - Level 18
  (79, 7900, 352, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Slowpoke - Headbutt - Level 21
  (79, 7900, 29, 21, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Slowpoke - Zen Headbutt - Level 24
  (79, 7900, 428, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Slowpoke - Amnesia - Level 27
  (79, 7900, 133, 21, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Slowpoke - Surf - Level 30
  (79, 7900, 57, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Slowpoke - Slack Off - Level 33
  (79, 7900, 303, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Slowpoke - Psychic - Level 36
  (79, 7900, 94, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Slowpoke - Psych Up - Level 39
  (79, 7900, 244, 21, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Slowpoke - Rain Dance - Level 42
  (79, 7900, 240, 21, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Slowpoke - Heal Pulse - Level 45
  (79, 7900, 505, 21, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Slowpoke - Water Pulse - TM03
  (79, 7900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Slowpoke - Calm Mind - TM04
  (79, 7900, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 19),
  -- Slowpoke - Hail - TM07
  (79, 7900, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 20),
  -- Slowpoke - Sunny Day - TM11
  (79, 7900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Slowpoke - Ice Beam - TM13
  (79, 7900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 22),
  -- Slowpoke - Blizzard - TM14
  (79, 7900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 23),
  -- Slowpoke - Light Screen - TM16
  (79, 7900, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 24),
  -- Slowpoke - Protect - TM17
  (79, 7900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Slowpoke - Rain Dance - TM18
  (79, 7900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Slowpoke - Safeguard - TM20
  (79, 7900, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 27),
  -- Slowpoke - Iron Tail - TM23
  (79, 7900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 28),
  -- Slowpoke - Earthquake - TM26
  (79, 7900, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 29),
  -- Slowpoke - Dig - TM28
  (79, 7900, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 30),
  -- Slowpoke - Psychic - TM29
  (79, 7900, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 31),
  -- Slowpoke - Shadow Ball - TM30
  (79, 7900, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 32),
  -- Slowpoke - Double Team - TM32
  (79, 7900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 33),
  -- Slowpoke - Flamethrower - TM35
  (79, 7900, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 34),
  -- Slowpoke - Fire Blast - TM38
  (79, 7900, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 35),
  -- Slowpoke - Facade - TM42
  (79, 7900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 36),
  -- Slowpoke - Rest - TM44
  (79, 7900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 37),
  -- Slowpoke - Attract - TM45
  (79, 7900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 38),
  -- Slowpoke - Skill Swap - TM48
  (79, 7900, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 39),
  -- Slowpoke - Scald - TM49
  (79, 7900, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 40),
  -- Slowpoke - Brine - TM55
  (79, 7900, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 41),
  -- Slowpoke - Endure - TM58
  (79, 7900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Slowpoke - Recycle - TM67
  (79, 7900, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 43),
  -- Slowpoke - Flash - TM70
  (79, 7900, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 44),
  -- Slowpoke - Thunder Wave - TM73
  (79, 7900, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 45),
  -- Slowpoke - Psych Up - TM77
  (79, 7900, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 46),
  -- Slowpoke - Sleep Talk - TM82
  (79, 7900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 47),
  -- Slowpoke - Bulldoze - TM83
  (79, 7900, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 48),
  -- Slowpoke - Dream Eater - TM85
  (79, 7900, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 49),
  -- Slowpoke - Grass Knot - TM86
  (79, 7900, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 50),
  -- Slowpoke - Swagger - TM87
  (79, 7900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 51),
  -- Slowpoke - Substitute - TM90
  (79, 7900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 52),
  -- Slowpoke - Trick Room - TM92
  (79, 7900, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 53),
  -- Slowpoke - Surf - TM95
  (79, 7900, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 54),
  -- Slowpoke - Strength - TM96
  (79, 7900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 55),
  -- Slowpoke - Belch - Egg
  (79, 7900, 562, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Slowpoke - Belly Drum - Egg
  (79, 7900, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Slowpoke - Block - Egg
  (79, 7900, 335, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Slowpoke - Future Sight - Egg
  (79, 7900, 248, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Slowpoke - Snore - Egg
  (79, 7900, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Slowpoke - Stomp - Egg
  (79, 7900, 23, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Slowpoke - Wonder Room - Egg
  (79, 7900, 472, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Slowpoke - Zen Headbutt - Egg
  (79, 7900, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Slowbro - Withdraw - Starting Move
  (80, 8000, 110, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Slowbro - Tackle - Starting Move
  (80, 8000, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Slowbro - Curse - Starting Move
  (80, 8000, 174, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Slowbro - Growl - Starting Move
  (80, 8000, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Slowbro - Water Gun - Starting Move
  (80, 8000, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Slowbro - Yawn - Level 9
  (80, 8000, 281, 21, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Slowbro - Confusion - Level 12
  (80, 8000, 93, 21, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Slowbro - Disable - Level 15
  (80, 8000, 50, 21, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Slowbro - Water Pulse - Level 18
  (80, 8000, 352, 21, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Slowbro - Headbutt - Level 21
  (80, 8000, 29, 21, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Slowbro - Zen Headbutt - Level 24
  (80, 8000, 428, 21, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Slowbro - Amnesia - Level 27
  (80, 8000, 133, 21, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Slowbro - Surf - Level 30
  (80, 8000, 57, 21, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Slowbro - Slack Off - Level 33
  (80, 8000, 303, 21, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Slowbro - Psychic - Level 36
  (80, 8000, 94, 21, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Slowbro - Psych Up - Level 41
  (80, 8000, 244, 21, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Slowbro - Rain Dance - Level 46
  (80, 8000, 240, 21, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Slowbro - Heal Pulse - Level 51
  (80, 8000, 505, 21, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Slowbro - Focus Punch - TM01
  (80, 8000, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 19),
  -- Slowbro - Water Pulse - TM03
  (80, 8000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 20),
  -- Slowbro - Calm Mind - TM04
  (80, 8000, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 21),
  -- Slowbro - Hail - TM07
  (80, 8000, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 22),
  -- Slowbro - Sunny Day - TM11
  (80, 8000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Slowbro - Ice Beam - TM13
  (80, 8000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 24),
  -- Slowbro - Blizzard - TM14
  (80, 8000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 25),
  -- Slowbro - Hyper Beam - TM15
  (80, 8000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 26),
  -- Slowbro - Light Screen - TM16
  (80, 8000, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 27),
  -- Slowbro - Protect - TM17
  (80, 8000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 28),
  -- Slowbro - Rain Dance - TM18
  (80, 8000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 29),
  -- Slowbro - Safeguard - TM20
  (80, 8000, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 30),
  -- Slowbro - Iron Tail - TM23
  (80, 8000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 31),
  -- Slowbro - Earthquake - TM26
  (80, 8000, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 32),
  -- Slowbro - Dig - TM28
  (80, 8000, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 33),
  -- Slowbro - Psychic - TM29
  (80, 8000, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 34),
  -- Slowbro - Shadow Ball - TM30
  (80, 8000, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 35),
  -- Slowbro - Brick Break - TM31
  (80, 8000, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 36),
  -- Slowbro - Double Team - TM32
  (80, 8000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 37),
  -- Slowbro - Flamethrower - TM35
  (80, 8000, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 38),
  -- Slowbro - Fire Blast - TM38
  (80, 8000, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 39),
  -- Slowbro - Aerial Ace - TM40
  (80, 8000, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 40),
  -- Slowbro - Facade - TM42
  (80, 8000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 41),
  -- Slowbro - Rest - TM44
  (80, 8000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 42),
  -- Slowbro - Attract - TM45
  (80, 8000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 43),
  -- Slowbro - Skill Swap - TM48
  (80, 8000, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 44),
  -- Slowbro - Scald - TM49
  (80, 8000, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 45),
  -- Slowbro - Focus Blast - TM52
  (80, 8000, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 46),
  -- Slowbro - Brine - TM55
  (80, 8000, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 47),
  -- Slowbro - Fling - TM56
  (80, 8000, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 48),
  -- Slowbro - Endure - TM58
  (80, 8000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 49),
  -- Slowbro - Drain Punch - TM60
  (80, 8000, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 50),
  -- Slowbro - Nasty Plot - TM63
  (80, 8000, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 51),
  -- Slowbro - Recycle - TM67
  (80, 8000, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 52),
  -- Slowbro - Giga Impact - TM68
  (80, 8000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 53),
  -- Slowbro - Flash - TM70
  (80, 8000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 54),
  -- Slowbro - Avalanche - TM72
  (80, 8000, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 55),
  -- Slowbro - Thunder Wave - TM73
  (80, 8000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 56),
  -- Slowbro - Psych Up - TM77
  (80, 8000, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 57),
  -- Slowbro - Sleep Talk - TM82
  (80, 8000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 58),
  -- Slowbro - Bulldoze - TM83
  (80, 8000, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 59),
  -- Slowbro - Dream Eater - TM85
  (80, 8000, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 60),
  -- Slowbro - Grass Knot - TM86
  (80, 8000, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 61),
  -- Slowbro - Swagger - TM87
  (80, 8000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 62),
  -- Slowbro - Substitute - TM90
  (80, 8000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 63),
  -- Slowbro - Trick Room - TM92
  (80, 8000, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 64),
  -- Slowbro - Surf - TM95
  (80, 8000, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 65),
  -- Slowbro - Strength - TM96
  (80, 8000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 66),
  -- Slowbro - Rock Smash - TM98
  (80, 8000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 67),
  -- Slowbro - Belch - Egg
  (80, 8000, 562, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Slowbro - Belly Drum - Egg
  (80, 8000, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Slowbro - Block - Egg
  (80, 8000, 335, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Slowbro - Future Sight - Egg
  (80, 8000, 248, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Slowbro - Snore - Egg
  (80, 8000, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Slowbro - Stomp - Egg
  (80, 8000, 23, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Slowbro - Wonder Room - Egg
  (80, 8000, 472, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Slowbro - Zen Headbutt - Egg
  (80, 8000, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Magnemite - Thunder Shock - Starting Move
  (81, 8100, 84, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Magnemite - Tackle - Starting Move
  (81, 8100, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Magnemite - Supersonic - Level 4
  (81, 8100, 48, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Magnemite - Thunder Wave - Level 8
  (81, 8100, 86, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Magnemite - Electro Ball - Level 12
  (81, 8100, 486, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Magnemite - Gyro Ball - Level 16
  (81, 8100, 360, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Magnemite - Spark - Level 20
  (81, 8100, 209, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Magnemite - Screech - Level 24
  (81, 8100, 103, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Magnemite - Magnet Rise - Level 28
  (81, 8100, 393, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Magnemite - Flash Cannon - Level 32
  (81, 8100, 430, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Magnemite - Discharge - Level 36
  (81, 8100, 435, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Magnemite - Metal Sound - Level 40
  (81, 8100, 319, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Magnemite - Light Screen - Level 44
  (81, 8100, 113, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Magnemite - Lock-On - Level 48
  (81, 8100, 199, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Magnemite - Zap Cannon - Level 52
  (81, 8100, 192, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Magnemite - Sunny Day - TM11
  (81, 8100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Magnemite - Light Screen - TM16
  (81, 8100, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 17),
  -- Magnemite - Protect - TM17
  (81, 8100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Magnemite - Rain Dance - TM18
  (81, 8100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 19),
  -- Magnemite - Thunderbolt - TM24
  (81, 8100, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 20),
  -- Magnemite - Thunder - TM25
  (81, 8100, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 21),
  -- Magnemite - Double Team - TM32
  (81, 8100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 22),
  -- Magnemite - Reflect - TM33
  (81, 8100, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 23),
  -- Magnemite - Shock Wave - TM34
  (81, 8100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 24),
  -- Magnemite - Facade - TM42
  (81, 8100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Magnemite - Volt Switch - TM43
  (81, 8100, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 26),
  -- Magnemite - Rest - TM44
  (81, 8100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Magnemite - Charge Beam - TM57
  (81, 8100, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 28),
  -- Magnemite - Endure - TM58
  (81, 8100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Magnemite - Explosion - TM64
  (81, 8100, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 30),
  -- Magnemite - Recycle - TM67
  (81, 8100, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 31),
  -- Magnemite - Flash - TM70
  (81, 8100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 32),
  -- Magnemite - Thunder Wave - TM73
  (81, 8100, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 33),
  -- Magnemite - Gyro Ball - TM74
  (81, 8100, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 34),
  -- Magnemite - Psych Up - TM77
  (81, 8100, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 35),
  -- Magnemite - Sleep Talk - TM82
  (81, 8100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 36),
  -- Magnemite - Swagger - TM87
  (81, 8100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 37),
  -- Magnemite - Substitute - TM90
  (81, 8100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Magnemite - Flash Cannon - TM91
  (81, 8100, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 39),
  -- Magneton - Tri Attack - Starting Move
  (82, 8200, 161, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Magneton - Electric Terrain - Starting Move
  (82, 8200, 604, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Magneton - Thunder Shock - Starting Move
  (82, 8200, 84, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Magneton - Tackle - Starting Move
  (82, 8200, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Magneton - Supersonic - Starting Move
  (82, 8200, 48, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Magneton - Thunder Wave - Starting Move
  (82, 8200, 86, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Magneton - Tri Attack - Evolution
  (82, 8200, 161, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Magneton - Electro Ball - Level 12
  (82, 8200, 486, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Magneton - Gyro Ball - Level 16
  (82, 8200, 360, 21, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Magneton - Spark - Level 20
  (82, 8200, 209, 21, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Magneton - Screech - Level 24
  (82, 8200, 103, 21, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Magneton - Magnet Rise - Level 28
  (82, 8200, 393, 21, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Magneton - Flash Cannon - Level 34
  (82, 8200, 430, 21, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Magneton - Discharge - Level 40
  (82, 8200, 435, 21, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Magneton - Metal Sound - Level 46
  (82, 8200, 319, 21, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Magneton - Light Screen - Level 52
  (82, 8200, 113, 21, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Magneton - Lock-On - Level 58
  (82, 8200, 199, 21, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Magneton - Zap Cannon - Level 64
  (82, 8200, 192, 21, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Magneton - Sunny Day - TM11
  (82, 8200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Magneton - Hyper Beam - TM15
  (82, 8200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Magneton - Light Screen - TM16
  (82, 8200, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 21),
  -- Magneton - Protect - TM17
  (82, 8200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Magneton - Rain Dance - TM18
  (82, 8200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Magneton - Thunderbolt - TM24
  (82, 8200, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 24),
  -- Magneton - Thunder - TM25
  (82, 8200, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 25),
  -- Magneton - Double Team - TM32
  (82, 8200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Magneton - Reflect - TM33
  (82, 8200, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 27),
  -- Magneton - Shock Wave - TM34
  (82, 8200, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 28),
  -- Magneton - Facade - TM42
  (82, 8200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Magneton - Volt Switch - TM43
  (82, 8200, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 30),
  -- Magneton - Rest - TM44
  (82, 8200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Magneton - Charge Beam - TM57
  (82, 8200, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 32),
  -- Magneton - Endure - TM58
  (82, 8200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Magneton - Explosion - TM64
  (82, 8200, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 34),
  -- Magneton - Recycle - TM67
  (82, 8200, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 35),
  -- Magneton - Giga Impact - TM68
  (82, 8200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 36),
  -- Magneton - Flash - TM70
  (82, 8200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 37),
  -- Magneton - Thunder Wave - TM73
  (82, 8200, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 38),
  -- Magneton - Gyro Ball - TM74
  (82, 8200, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 39),
  -- Magneton - Psych Up - TM77
  (82, 8200, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 40),
  -- Magneton - Sleep Talk - TM82
  (82, 8200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Magneton - Swagger - TM87
  (82, 8200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Magneton - Substitute - TM90
  (82, 8200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Magneton - Flash Cannon - TM91
  (82, 8200, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 44),
  -- Farfetch'd - Peck - Starting Move
  (83, 8300, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Farfetch'd - Sand Attack - Starting Move
  (83, 8300, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Farfetch'd - Leer - Level 5
  (83, 8300, 43, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Farfetch'd - Fury Cutter - Level 10
  (83, 8300, 210, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Farfetch'd - Cut - Level 15
  (83, 8300, 15, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Farfetch'd - Aerial Ace - Level 20
  (83, 8300, 332, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Farfetch'd - Air Cutter - Level 25
  (83, 8300, 314, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Farfetch'd - Knock Off - Level 30
  (83, 8300, 282, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Farfetch'd - False Swipe - Level 35
  (83, 8300, 206, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Farfetch'd - Slash - Level 40
  (83, 8300, 163, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Farfetch'd - Swords Dance - Level 45
  (83, 8300, 14, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Farfetch'd - Air Slash - Level 50
  (83, 8300, 403, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Farfetch'd - Leaf Blade - Level 55
  (83, 8300, 348, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Farfetch'd - Agility - Level 60
  (83, 8300, 97, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Farfetch'd - Brave Bird - Level 65
  (83, 8300, 413, 21, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Farfetch'd - Work Up - TM10
  (83, 8300, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 16),
  -- Farfetch'd - Sunny Day - TM11
  (83, 8300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Farfetch'd - Protect - TM17
  (83, 8300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Farfetch'd - Iron Tail - TM23
  (83, 8300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 19),
  -- Farfetch'd - Double Team - TM32
  (83, 8300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 20),
  -- Farfetch'd - Aerial Ace - TM40
  (83, 8300, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 21),
  -- Farfetch'd - Facade - TM42
  (83, 8300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 22),
  -- Farfetch'd - Rest - TM44
  (83, 8300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 23),
  -- Farfetch'd - Attract - TM45
  (83, 8300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 24),
  -- Farfetch'd - Thief - TM46
  (83, 8300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 25),
  -- Farfetch'd - Steel Wing - TM47
  (83, 8300, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 26),
  -- Farfetch'd - Roost - TM51
  (83, 8300, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 27),
  -- Farfetch'd - False Swipe - TM54
  (83, 8300, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 28),
  -- Farfetch'd - Endure - TM58
  (83, 8300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Farfetch'd - Swords Dance - TM75
  (83, 8300, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 30),
  -- Farfetch'd - Psych Up - TM77
  (83, 8300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 31),
  -- Farfetch'd - Sleep Talk - TM82
  (83, 8300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 32),
  -- Farfetch'd - Poison Jab - TM84
  (83, 8300, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 33),
  -- Farfetch'd - Swagger - TM87
  (83, 8300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 34),
  -- Farfetch'd - Pluck - TM88
  (83, 8300, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 35),
  -- Farfetch'd - U-turn - TM89
  (83, 8300, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 36),
  -- Farfetch'd - Substitute - TM90
  (83, 8300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 37),
  -- Farfetch'd - Cut - TM93
  (83, 8300, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 38),
  -- Farfetch'd - Fly - TM94
  (83, 8300, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 39),
  -- Farfetch'd - Defog - TM97
  (83, 8300, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 40),
  -- Farfetch'd - Covet - Egg
  (83, 8300, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Farfetch'd - Curse - Egg
  (83, 8300, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Farfetch'd - Feather Dance - Egg
  (83, 8300, 297, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Farfetch'd - Feint - Egg
  (83, 8300, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Farfetch'd - Final Gambit - Egg
  (83, 8300, 515, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Farfetch'd - Flail - Egg
  (83, 8300, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Farfetch'd - Gust - Egg
  (83, 8300, 16, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Farfetch'd - Leaf Blade - Egg
  (83, 8300, 348, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Farfetch'd - Mud-Slap - Egg
  (83, 8300, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Farfetch'd - Night Slash - Egg
  (83, 8300, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Farfetch'd - Quick Attack - Egg
  (83, 8300, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Farfetch'd - Revenge - Egg
  (83, 8300, 279, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Farfetch'd - Simple Beam - Egg
  (83, 8300, 493, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Farfetch'd - Sky Attack - Egg
  (83, 8300, 143, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Doduo - Peck - Starting Move
  (84, 8400, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Doduo - Growl - Starting Move
  (84, 8400, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Doduo - Quick Attack - Level 5
  (84, 8400, 98, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Doduo - Leer - Level 8
  (84, 8400, 43, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Doduo - Fury Attack - Level 12
  (84, 8400, 31, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Doduo - Wing Attack - Level 15
  (84, 8400, 17, 21, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Doduo - Pluck - Level 19
  (84, 8400, 365, 21, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Doduo - Double Hit - Level 22
  (84, 8400, 458, 21, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Doduo - Agility - Level 26
  (84, 8400, 97, 21, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Doduo - Uproar - Level 29
  (84, 8400, 253, 21, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Doduo - Acupressure - Level 33
  (84, 8400, 367, 21, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Doduo - Swords Dance - Level 36
  (84, 8400, 14, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Doduo - Lunge - Level 40
  (84, 8400, 679, 21, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Doduo - Drill Peck - Level 43
  (84, 8400, 65, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Doduo - Endeavor - Level 47
  (84, 8400, 283, 21, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Doduo - Thrash - Level 50
  (84, 8400, 37, 21, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Doduo - Work Up - TM10
  (84, 8400, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 17),
  -- Doduo - Sunny Day - TM11
  (84, 8400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Doduo - Protect - TM17
  (84, 8400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Doduo - Double Team - TM32
  (84, 8400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 20),
  -- Doduo - Aerial Ace - TM40
  (84, 8400, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 21),
  -- Doduo - Facade - TM42
  (84, 8400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 22),
  -- Doduo - Rest - TM44
  (84, 8400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 23),
  -- Doduo - Attract - TM45
  (84, 8400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 24),
  -- Doduo - Thief - TM46
  (84, 8400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 25),
  -- Doduo - Steel Wing - TM47
  (84, 8400, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 26),
  -- Doduo - Roost - TM51
  (84, 8400, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 27),
  -- Doduo - Endure - TM58
  (84, 8400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 28),
  -- Doduo - Swords Dance - TM75
  (84, 8400, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 29),
  -- Doduo - Sleep Talk - TM82
  (84, 8400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 30),
  -- Doduo - Swagger - TM87
  (84, 8400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 31),
  -- Doduo - Pluck - TM88
  (84, 8400, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 32),
  -- Doduo - Substitute - TM90
  (84, 8400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 33),
  -- Doduo - Fly - TM94
  (84, 8400, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 34),
  -- Doduo - Assurance - Egg
  (84, 8400, 372, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Doduo - Brave Bird - Egg
  (84, 8400, 413, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Doduo - Endeavor - Egg
  (84, 8400, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Doduo - Flail - Egg
  (84, 8400, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Doduo - Haze - Egg
  (84, 8400, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Doduo - Quick Attack - Egg
  (84, 8400, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Doduo - Supersonic - Egg
  (84, 8400, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Dodrio - Tri Attack - Starting Move
  (85, 8500, 161, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Dodrio - Peck - Starting Move
  (85, 8500, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Dodrio - Growl - Starting Move
  (85, 8500, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Dodrio - Quick Attack - Starting Move
  (85, 8500, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Dodrio - Tri Attack - Evolution
  (85, 8500, 161, 21, NULL, 7, NULL, NULL, NULL, NULL, 5),
  -- Dodrio - Quick Attack - Level 5
  (85, 8500, 98, 21, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Dodrio - Leer - Level 8
  (85, 8500, 43, 21, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Dodrio - Fury Attack - Level 12
  (85, 8500, 31, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Dodrio - Wing Attack - Level 15
  (85, 8500, 17, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Dodrio - Pluck - Level 19
  (85, 8500, 365, 21, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Dodrio - Double Hit - Level 22
  (85, 8500, 458, 21, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Dodrio - Agility - Level 26
  (85, 8500, 97, 21, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Dodrio - Uproar - Level 29
  (85, 8500, 253, 21, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Dodrio - Acupressure - Level 34
  (85, 8500, 367, 21, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Dodrio - Swords Dance - Level 38
  (85, 8500, 14, 21, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Dodrio - Lunge - Level 43
  (85, 8500, 679, 21, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Dodrio - Drill Peck - Level 47
  (85, 8500, 65, 21, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Dodrio - Endeavor - Level 52
  (85, 8500, 283, 21, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Dodrio - Thrash - Level 56
  (85, 8500, 37, 21, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Dodrio - Work Up - TM10
  (85, 8500, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 20),
  -- Dodrio - Sunny Day - TM11
  (85, 8500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Dodrio - Taunt - TM12
  (85, 8500, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 22),
  -- Dodrio - Hyper Beam - TM15
  (85, 8500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Dodrio - Protect - TM17
  (85, 8500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Dodrio - Double Team - TM32
  (85, 8500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Dodrio - Aerial Ace - TM40
  (85, 8500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 26),
  -- Dodrio - Torment - TM41
  (85, 8500, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 27),
  -- Dodrio - Facade - TM42
  (85, 8500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Dodrio - Rest - TM44
  (85, 8500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Dodrio - Attract - TM45
  (85, 8500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Dodrio - Thief - TM46
  (85, 8500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 31),
  -- Dodrio - Steel Wing - TM47
  (85, 8500, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 32),
  -- Dodrio - Roost - TM51
  (85, 8500, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 33),
  -- Dodrio - Endure - TM58
  (85, 8500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Dodrio - Payback - TM66
  (85, 8500, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 35),
  -- Dodrio - Giga Impact - TM68
  (85, 8500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 36),
  -- Dodrio - Swords Dance - TM75
  (85, 8500, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 37),
  -- Dodrio - Sleep Talk - TM82
  (85, 8500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 38),
  -- Dodrio - Swagger - TM87
  (85, 8500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 39),
  -- Dodrio - Pluck - TM88
  (85, 8500, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 40),
  -- Dodrio - Substitute - TM90
  (85, 8500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 41),
  -- Dodrio - Fly - TM94
  (85, 8500, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 42),
  -- Dodrio - Assurance - Egg
  (85, 8500, 372, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Dodrio - Brave Bird - Egg
  (85, 8500, 413, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Dodrio - Endeavor - Egg
  (85, 8500, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Dodrio - Flail - Egg
  (85, 8500, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Dodrio - Haze - Egg
  (85, 8500, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Dodrio - Quick Attack - Egg
  (85, 8500, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Dodrio - Supersonic - Egg
  (85, 8500, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Seel - Headbutt - Starting Move
  (86, 8600, 29, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Seel - Growl - Level 3
  (86, 8600, 45, 21, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Seel - Water Gun - Level 7
  (86, 8600, 55, 21, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Seel - Icy Wind - Level 11
  (86, 8600, 196, 21, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Seel - Encore - Level 13
  (86, 8600, 227, 21, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Seel - Ice Shard - Level 17
  (86, 8600, 420, 21, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Seel - Rest - Level 21
  (86, 8600, 156, 21, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Seel - Aqua Ring - Level 23
  (86, 8600, 392, 21, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Seel - Aurora Beam - Level 27
  (86, 8600, 62, 21, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Seel - Aqua Jet - Level 31
  (86, 8600, 453, 21, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Seel - Brine - Level 33
  (86, 8600, 362, 21, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Seel - Take Down - Level 37
  (86, 8600, 36, 21, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Seel - Dive - Level 41
  (86, 8600, 291, 21, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Seel - Aqua Tail - Level 43
  (86, 8600, 401, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Seel - Ice Beam - Level 47
  (86, 8600, 58, 21, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Seel - Safeguard - Level 51
  (86, 8600, 219, 21, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Seel - Hail - Level 53
  (86, 8600, 258, 21, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Seel - Water Pulse - TM03
  (86, 8600, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Seel - Hail - TM07
  (86, 8600, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 19),
  -- Seel - Ice Beam - TM13
  (86, 8600, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 20),
  -- Seel - Blizzard - TM14
  (86, 8600, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 21),
  -- Seel - Protect - TM17
  (86, 8600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Seel - Rain Dance - TM18
  (86, 8600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Seel - Safeguard - TM20
  (86, 8600, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 24),
  -- Seel - Iron Tail - TM23
  (86, 8600, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Seel - Double Team - TM32
  (86, 8600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Seel - Facade - TM42
  (86, 8600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Seel - Rest - TM44
  (86, 8600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Seel - Attract - TM45
  (86, 8600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Seel - Thief - TM46
  (86, 8600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 30),
  -- Seel - Brine - TM55
  (86, 8600, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 31),
  -- Seel - Fling - TM56
  (86, 8600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 32),
  -- Seel - Endure - TM58
  (86, 8600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Seel - Sleep Talk - TM82
  (86, 8600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Seel - Swagger - TM87
  (86, 8600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Seel - Substitute - TM90
  (86, 8600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 36),
  -- Seel - Surf - TM95
  (86, 8600, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 37),
  -- Seel - Waterfall - TM99
  (86, 8600, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 38),
  -- Seel - Belch - Egg
  (86, 8600, 562, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Seel - Disable - Egg
  (86, 8600, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Seel - Encore - Egg
  (86, 8600, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Seel - Entrainment - Egg
  (86, 8600, 494, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Seel - Fake Out - Egg
  (86, 8600, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Seel - Horn Drill - Egg
  (86, 8600, 32, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Seel - Icicle Spear - Egg
  (86, 8600, 333, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Seel - Lick - Egg
  (86, 8600, 122, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Seel - Perish Song - Egg
  (86, 8600, 195, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Seel - Slam - Egg
  (86, 8600, 21, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Seel - Spit Up - Egg
  (86, 8600, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Seel - Stockpile - Egg
  (86, 8600, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Seel - Swallow - Egg
  (86, 8600, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Dewgong - Sheer Cold - Starting Move
  (87, 8700, 329, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Dewgong - Headbutt - Starting Move
  (87, 8700, 29, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Dewgong - Growl - Starting Move
  (87, 8700, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Dewgong - Bubble Beam - Starting Move
  (87, 8700, 61, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Dewgong - Icy Wind - Starting Move
  (87, 8700, 196, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Dewgong - Water Gun - Starting Move
  (87, 8700, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Dewgong - Sheer Cold - Evolution
  (87, 8700, 329, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Dewgong - Growl - Level 3
  (87, 8700, 45, 21, NULL, 1, 3, NULL, NULL, NULL, 8),
  -- Dewgong - Bubble Beam - Level 7
  (87, 8700, 61, 21, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Dewgong - Icy Wind - Level 11
  (87, 8700, 196, 21, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Dewgong - Encore - Level 13
  (87, 8700, 227, 21, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Dewgong - Ice Shard - Level 17
  (87, 8700, 420, 21, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Dewgong - Rest - Level 21
  (87, 8700, 156, 21, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Dewgong - Aqua Ring - Level 23
  (87, 8700, 392, 21, NULL, 1, 23, NULL, NULL, NULL, 14),
  -- Dewgong - Aurora Beam - Level 27
  (87, 8700, 62, 21, NULL, 1, 27, NULL, NULL, NULL, 15),
  -- Dewgong - Aqua Jet - Level 31
  (87, 8700, 453, 21, NULL, 1, 31, NULL, NULL, NULL, 16),
  -- Dewgong - Brine - Level 33
  (87, 8700, 362, 21, NULL, 1, 33, NULL, NULL, NULL, 17),
  -- Dewgong - Take Down - Level 39
  (87, 8700, 36, 21, NULL, 1, 39, NULL, NULL, NULL, 18),
  -- Dewgong - Dive - Level 45
  (87, 8700, 291, 21, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Dewgong - Aqua Tail - Level 49
  (87, 8700, 401, 21, NULL, 1, 49, NULL, NULL, NULL, 20),
  -- Dewgong - Ice Beam - Level 55
  (87, 8700, 58, 21, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Dewgong - Safeguard - Level 61
  (87, 8700, 219, 21, NULL, 1, 61, NULL, NULL, NULL, 22),
  -- Dewgong - Hail - Level 65
  (87, 8700, 258, 21, NULL, 1, 65, NULL, NULL, NULL, 23),
  -- Dewgong - Water Pulse - TM03
  (87, 8700, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 24),
  -- Dewgong - Hail - TM07
  (87, 8700, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 25),
  -- Dewgong - Ice Beam - TM13
  (87, 8700, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 26),
  -- Dewgong - Blizzard - TM14
  (87, 8700, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 27),
  -- Dewgong - Hyper Beam - TM15
  (87, 8700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 28),
  -- Dewgong - Protect - TM17
  (87, 8700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 29),
  -- Dewgong - Rain Dance - TM18
  (87, 8700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 30),
  -- Dewgong - Safeguard - TM20
  (87, 8700, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 31),
  -- Dewgong - Iron Tail - TM23
  (87, 8700, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 32),
  -- Dewgong - Double Team - TM32
  (87, 8700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 33),
  -- Dewgong - Facade - TM42
  (87, 8700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Dewgong - Rest - TM44
  (87, 8700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Dewgong - Attract - TM45
  (87, 8700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Dewgong - Thief - TM46
  (87, 8700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 37),
  -- Dewgong - Brine - TM55
  (87, 8700, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 38),
  -- Dewgong - Fling - TM56
  (87, 8700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 39),
  -- Dewgong - Endure - TM58
  (87, 8700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Dewgong - Giga Impact - TM68
  (87, 8700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 41),
  -- Dewgong - Avalanche - TM72
  (87, 8700, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 42),
  -- Dewgong - Sleep Talk - TM82
  (87, 8700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Dewgong - Swagger - TM87
  (87, 8700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Dewgong - Substitute - TM90
  (87, 8700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Dewgong - Surf - TM95
  (87, 8700, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 46),
  -- Dewgong - Waterfall - TM99
  (87, 8700, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 47),
  -- Dewgong - Belch - Egg
  (87, 8700, 562, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Dewgong - Disable - Egg
  (87, 8700, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Dewgong - Encore - Egg
  (87, 8700, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Dewgong - Entrainment - Egg
  (87, 8700, 494, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Dewgong - Fake Out - Egg
  (87, 8700, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Dewgong - Horn Drill - Egg
  (87, 8700, 32, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Dewgong - Icicle Spear - Egg
  (87, 8700, 333, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Dewgong - Lick - Egg
  (87, 8700, 122, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Dewgong - Perish Song - Egg
  (87, 8700, 195, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Dewgong - Slam - Egg
  (87, 8700, 21, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Dewgong - Spit Up - Egg
  (87, 8700, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Dewgong - Stockpile - Egg
  (87, 8700, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Dewgong - Swallow - Egg
  (87, 8700, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Grimer - Pound - Starting Move
  (88, 8800, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Grimer - Poison Gas - Starting Move
  (88, 8800, 139, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Grimer - Harden - Level 4
  (88, 8800, 106, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Grimer - Mud-Slap - Level 7
  (88, 8800, 189, 21, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Grimer - Disable - Level 12
  (88, 8800, 50, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Grimer - Sludge - Level 15
  (88, 8800, 124, 21, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Grimer - Smog - Level 18
  (88, 8800, 123, 21, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Grimer - Minimize - Level 21
  (88, 8800, 107, 21, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Grimer - Fling - Level 26
  (88, 8800, 374, 21, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Grimer - Sludge Bomb - Level 29
  (88, 8800, 188, 21, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Grimer - Sludge Wave - Level 32
  (88, 8800, 482, 21, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Grimer - Screech - Level 37
  (88, 8800, 103, 21, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Grimer - Gunk Shot - Level 40
  (88, 8800, 441, 21, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Grimer - Acid Armor - Level 43
  (88, 8800, 151, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Grimer - Belch - Level 46
  (88, 8800, 562, 21, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Grimer - Memento - Level 48
  (88, 8800, 262, 21, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Grimer - Sunny Day - TM11
  (88, 8800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Grimer - Taunt - TM12
  (88, 8800, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 18),
  -- Grimer - Protect - TM17
  (88, 8800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Grimer - Rain Dance - TM18
  (88, 8800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Grimer - Giga Drain - TM19
  (88, 8800, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 21),
  -- Grimer - Thunderbolt - TM24
  (88, 8800, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 22),
  -- Grimer - Thunder - TM25
  (88, 8800, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 23),
  -- Grimer - Dig - TM28
  (88, 8800, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Grimer - Shadow Ball - TM30
  (88, 8800, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 25),
  -- Grimer - Double Team - TM32
  (88, 8800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Grimer - Shock Wave - TM34
  (88, 8800, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 27),
  -- Grimer - Flamethrower - TM35
  (88, 8800, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 28),
  -- Grimer - Sludge Bomb - TM36
  (88, 8800, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 29),
  -- Grimer - Fire Blast - TM38
  (88, 8800, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 30),
  -- Grimer - Rock Tomb - TM39
  (88, 8800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 31),
  -- Grimer - Torment - TM41
  (88, 8800, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 32),
  -- Grimer - Facade - TM42
  (88, 8800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Grimer - Rest - TM44
  (88, 8800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Grimer - Attract - TM45
  (88, 8800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Grimer - Thief - TM46
  (88, 8800, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 36),
  -- Grimer - Fling - TM56
  (88, 8800, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 37),
  -- Grimer - Endure - TM58
  (88, 8800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Grimer - Explosion - TM64
  (88, 8800, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 39),
  -- Grimer - Payback - TM66
  (88, 8800, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 40),
  -- Grimer - Rock Slide - TM80
  (88, 8800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 41),
  -- Grimer - Sleep Talk - TM82
  (88, 8800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Grimer - Poison Jab - TM84
  (88, 8800, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 43),
  -- Grimer - Swagger - TM87
  (88, 8800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Grimer - Substitute - TM90
  (88, 8800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Grimer - Strength - TM96
  (88, 8800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 46),
  -- Grimer - Acid Spray - Egg
  (88, 8800, 491, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Grimer - Curse - Egg
  (88, 8800, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Grimer - Haze - Egg
  (88, 8800, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Grimer - Imprison - Egg
  (88, 8800, 286, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Grimer - Lick - Egg
  (88, 8800, 122, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Grimer - Mean Look - Egg
  (88, 8800, 212, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Grimer - Power-Up Punch - Egg
  (88, 8800, 612, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Grimer - Scary Face - Egg
  (88, 8800, 184, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Grimer - Shadow Punch - Egg
  (88, 8800, 325, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Grimer - Shadow Sneak - Egg
  (88, 8800, 425, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Grimer - Spit Up - Egg
  (88, 8800, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Grimer - Stockpile - Egg
  (88, 8800, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Grimer - Swallow - Egg
  (88, 8800, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Muk - Venom Drench - Starting Move
  (89, 8900, 599, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Muk - Pound - Starting Move
  (89, 8900, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Muk - Poison Gas - Starting Move
  (89, 8900, 139, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Muk - Harden - Starting Move
  (89, 8900, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Muk - Mud-Slap - Starting Move
  (89, 8900, 189, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Muk - Venom Drench - Evolution
  (89, 8900, 599, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Muk - Harden - Level 4
  (89, 8900, 106, 21, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Muk - Mud-Slap - Level 7
  (89, 8900, 189, 21, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Muk - Disable - Level 12
  (89, 8900, 50, 21, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Muk - Sludge - Level 15
  (89, 8900, 124, 21, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Muk - Smog - Level 18
  (89, 8900, 123, 21, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Muk - Minimize - Level 21
  (89, 8900, 107, 21, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Muk - Fling - Level 26
  (89, 8900, 374, 21, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Muk - Sludge Bomb - Level 29
  (89, 8900, 188, 21, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Muk - Sludge Wave - Level 32
  (89, 8900, 482, 21, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Muk - Screech - Level 37
  (89, 8900, 103, 21, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Muk - Gunk Shot - Level 40
  (89, 8900, 441, 21, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Muk - Acid Armor - Level 46
  (89, 8900, 151, 21, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Muk - Belch - Level 52
  (89, 8900, 562, 21, NULL, 1, 52, NULL, NULL, NULL, 19),
  -- Muk - Memento - Level 57
  (89, 8900, 262, 21, NULL, 1, 57, NULL, NULL, NULL, 20),
  -- Muk - Focus Punch - TM01
  (89, 8900, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 21),
  -- Muk - Sunny Day - TM11
  (89, 8900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Muk - Taunt - TM12
  (89, 8900, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 23),
  -- Muk - Hyper Beam - TM15
  (89, 8900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Muk - Protect - TM17
  (89, 8900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Muk - Rain Dance - TM18
  (89, 8900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Muk - Giga Drain - TM19
  (89, 8900, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 27),
  -- Muk - Thunderbolt - TM24
  (89, 8900, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 28),
  -- Muk - Thunder - TM25
  (89, 8900, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 29),
  -- Muk - Dig - TM28
  (89, 8900, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 30),
  -- Muk - Shadow Ball - TM30
  (89, 8900, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 31),
  -- Muk - Brick Break - TM31
  (89, 8900, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 32),
  -- Muk - Double Team - TM32
  (89, 8900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 33),
  -- Muk - Shock Wave - TM34
  (89, 8900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 34),
  -- Muk - Flamethrower - TM35
  (89, 8900, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 35),
  -- Muk - Sludge Bomb - TM36
  (89, 8900, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 36),
  -- Muk - Fire Blast - TM38
  (89, 8900, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 37),
  -- Muk - Rock Tomb - TM39
  (89, 8900, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 38),
  -- Muk - Torment - TM41
  (89, 8900, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 39),
  -- Muk - Facade - TM42
  (89, 8900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 40),
  -- Muk - Rest - TM44
  (89, 8900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 41),
  -- Muk - Attract - TM45
  (89, 8900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 42),
  -- Muk - Thief - TM46
  (89, 8900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 43),
  -- Muk - Focus Blast - TM52
  (89, 8900, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 44),
  -- Muk - Fling - TM56
  (89, 8900, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 45),
  -- Muk - Endure - TM58
  (89, 8900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 46),
  -- Muk - Explosion - TM64
  (89, 8900, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 47),
  -- Muk - Payback - TM66
  (89, 8900, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 48),
  -- Muk - Giga Impact - TM68
  (89, 8900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 49),
  -- Muk - Dark Pulse - TM79
  (89, 8900, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 50),
  -- Muk - Rock Slide - TM80
  (89, 8900, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 51),
  -- Muk - Sleep Talk - TM82
  (89, 8900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 52),
  -- Muk - Poison Jab - TM84
  (89, 8900, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 53),
  -- Muk - Swagger - TM87
  (89, 8900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 54),
  -- Muk - Substitute - TM90
  (89, 8900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 55),
  -- Muk - Strength - TM96
  (89, 8900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 56),
  -- Muk - Rock Smash - TM98
  (89, 8900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 57),
  -- Muk - Acid Spray - Egg
  (89, 8900, 491, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Muk - Curse - Egg
  (89, 8900, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Muk - Haze - Egg
  (89, 8900, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Muk - Imprison - Egg
  (89, 8900, 286, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Muk - Lick - Egg
  (89, 8900, 122, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Muk - Mean Look - Egg
  (89, 8900, 212, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Muk - Power-Up Punch - Egg
  (89, 8900, 612, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Muk - Scary Face - Egg
  (89, 8900, 184, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Muk - Shadow Punch - Egg
  (89, 8900, 325, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Muk - Shadow Sneak - Egg
  (89, 8900, 425, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Muk - Spit Up - Egg
  (89, 8900, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Muk - Stockpile - Egg
  (89, 8900, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Muk - Swallow - Egg
  (89, 8900, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Shellder - Tackle - Starting Move
  (90, 9000, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Shellder - Water Gun - Starting Move
  (90, 9000, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Shellder - Withdraw - Level 4
  (90, 9000, 110, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Shellder - Ice Shard - Level 8
  (90, 9000, 420, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Shellder - Leer - Level 12
  (90, 9000, 43, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Shellder - Whirlpool - Level 16
  (90, 9000, 250, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Shellder - Supersonic - Level 20
  (90, 9000, 48, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Shellder - Aurora Beam - Level 24
  (90, 9000, 62, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Shellder - Protect - Level 28
  (90, 9000, 182, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Shellder - Razor Shell - Level 32
  (90, 9000, 534, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Shellder - Iron Defense - Level 36
  (90, 9000, 334, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Shellder - Ice Beam - Level 40
  (90, 9000, 58, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Shellder - Shell Smash - Level 44
  (90, 9000, 504, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Shellder - Hydro Pump - Level 48
  (90, 9000, 56, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Shellder - Water Pulse - TM03
  (90, 9000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Shellder - Hail - TM07
  (90, 9000, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 16),
  -- Shellder - Ice Beam - TM13
  (90, 9000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Shellder - Blizzard - TM14
  (90, 9000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Shellder - Protect - TM17
  (90, 9000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Shellder - Rain Dance - TM18
  (90, 9000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Shellder - Double Team - TM32
  (90, 9000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Shellder - Facade - TM42
  (90, 9000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 22),
  -- Shellder - Rest - TM44
  (90, 9000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 23),
  -- Shellder - Attract - TM45
  (90, 9000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 24),
  -- Shellder - Brine - TM55
  (90, 9000, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 25),
  -- Shellder - Endure - TM58
  (90, 9000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 26),
  -- Shellder - Explosion - TM64
  (90, 9000, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 27),
  -- Shellder - Payback - TM66
  (90, 9000, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 28),
  -- Shellder - Avalanche - TM72
  (90, 9000, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 29),
  -- Shellder - Sleep Talk - TM82
  (90, 9000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 30),
  -- Shellder - Swagger - TM87
  (90, 9000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 31),
  -- Shellder - Substitute - TM90
  (90, 9000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 32),
  -- Shellder - Surf - TM95
  (90, 9000, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 33),
  -- Shellder - Aqua Ring - Egg
  (90, 9000, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Shellder - Bubble Beam - Egg
  (90, 9000, 61, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Shellder - Icicle Spear - Egg
  (90, 9000, 333, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Shellder - Life Dew - Egg
  (90, 9000, 791, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Shellder - Mud Shot - Egg
  (90, 9000, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Shellder - Rapid Spin - Egg
  (90, 9000, 229, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Shellder - Rock Blast - Egg
  (90, 9000, 350, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shellder - Screech - Egg
  (90, 9000, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shellder - Take Down - Egg
  (90, 9000, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cloyster - Icicle Spear - Starting Move
  (91, 9100, 333, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Cloyster - Icicle Crash - Starting Move
  (91, 9100, 556, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Cloyster - Toxic Spikes - Starting Move
  (91, 9100, 390, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Cloyster - Spikes - Starting Move
  (91, 9100, 191, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Cloyster - Leer - Starting Move
  (91, 9100, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Cloyster - Whirlpool - Starting Move
  (91, 9100, 250, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Cloyster - Supersonic - Starting Move
  (91, 9100, 48, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Cloyster - Aurora Beam - Starting Move
  (91, 9100, 62, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Cloyster - Protect - Starting Move
  (91, 9100, 182, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Cloyster - Razor Shell - Starting Move
  (91, 9100, 534, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Cloyster - Iron Defense - Starting Move
  (91, 9100, 334, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Cloyster - Ice Beam - Starting Move
  (91, 9100, 58, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Cloyster - Shell Smash - Starting Move
  (91, 9100, 504, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Cloyster - Hydro Pump - Starting Move
  (91, 9100, 56, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Cloyster - Tackle - Starting Move
  (91, 9100, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Cloyster - Water Gun - Starting Move
  (91, 9100, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 16),
  -- Cloyster - Withdraw - Starting Move
  (91, 9100, 110, 21, NULL, 8, NULL, NULL, NULL, NULL, 17),
  -- Cloyster - Ice Shard - Starting Move
  (91, 9100, 420, 21, NULL, 8, NULL, NULL, NULL, NULL, 18),
  -- Cloyster - Icicle Spear - Evolution
  (91, 9100, 333, 21, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Cloyster - Water Pulse - TM03
  (91, 9100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 20),
  -- Cloyster - Hail - TM07
  (91, 9100, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 21),
  -- Cloyster - Ice Beam - TM13
  (91, 9100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 22),
  -- Cloyster - Blizzard - TM14
  (91, 9100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 23),
  -- Cloyster - Hyper Beam - TM15
  (91, 9100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Cloyster - Light Screen - TM16
  (91, 9100, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 25),
  -- Cloyster - Protect - TM17
  (91, 9100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Cloyster - Rain Dance - TM18
  (91, 9100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 27),
  -- Cloyster - Double Team - TM32
  (91, 9100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Cloyster - Torment - TM41
  (91, 9100, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 29),
  -- Cloyster - Facade - TM42
  (91, 9100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Cloyster - Rest - TM44
  (91, 9100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Cloyster - Attract - TM45
  (91, 9100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Cloyster - Brine - TM55
  (91, 9100, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 33),
  -- Cloyster - Endure - TM58
  (91, 9100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Cloyster - Explosion - TM64
  (91, 9100, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 35),
  -- Cloyster - Payback - TM66
  (91, 9100, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 36),
  -- Cloyster - Giga Impact - TM68
  (91, 9100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 37),
  -- Cloyster - Avalanche - TM72
  (91, 9100, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 38),
  -- Cloyster - Sleep Talk - TM82
  (91, 9100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Cloyster - Poison Jab - TM84
  (91, 9100, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 40),
  -- Cloyster - Swagger - TM87
  (91, 9100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 41),
  -- Cloyster - Substitute - TM90
  (91, 9100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 42),
  -- Cloyster - Surf - TM95
  (91, 9100, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 43),
  -- Cloyster - Aqua Ring - Egg
  (91, 9100, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Cloyster - Bubble Beam - Egg
  (91, 9100, 61, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cloyster - Icicle Spear - Egg
  (91, 9100, 333, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cloyster - Life Dew - Egg
  (91, 9100, 791, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cloyster - Mud Shot - Egg
  (91, 9100, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cloyster - Rapid Spin - Egg
  (91, 9100, 229, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cloyster - Rock Blast - Egg
  (91, 9100, 350, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cloyster - Screech - Egg
  (91, 9100, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cloyster - Take Down - Egg
  (91, 9100, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Gastly - Lick - Starting Move
  (92, 9200, 122, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Gastly - Confuse Ray - Starting Move
  (92, 9200, 109, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Gastly - Hypnosis - Level 4
  (92, 9200, 95, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Gastly - Mean Look - Level 8
  (92, 9200, 212, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Gastly - Payback - Level 12
  (92, 9200, 371, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gastly - Spite - Level 16
  (92, 9200, 180, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gastly - Curse - Level 20
  (92, 9200, 174, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Gastly - Hex - Level 24
  (92, 9200, 506, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Gastly - Night Shade - Level 28
  (92, 9200, 101, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Gastly - Sucker Punch - Level 32
  (92, 9200, 389, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Gastly - Dark Pulse - Level 36
  (92, 9200, 399, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Gastly - Shadow Ball - Level 40
  (92, 9200, 247, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Gastly - Destiny Bond - Level 44
  (92, 9200, 194, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Gastly - Dream Eater - Level 48
  (92, 9200, 138, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Gastly - Toxic - TM06
  (92, 9200, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 15),
  -- Gastly - Sunny Day - TM11
  (92, 9200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Gastly - Taunt - TM12
  (92, 9200, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 17),
  -- Gastly - Protect - TM17
  (92, 9200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Gastly - Rain Dance - TM18
  (92, 9200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 19),
  -- Gastly - Giga Drain - TM19
  (92, 9200, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 20),
  -- Gastly - Dazzling Gleam - TM21
  (92, 9200, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 21),
  -- Gastly - Thunderbolt - TM24
  (92, 9200, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 22),
  -- Gastly - Psychic - TM29
  (92, 9200, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 23),
  -- Gastly - Shadow Ball - TM30
  (92, 9200, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 24),
  -- Gastly - Double Team - TM32
  (92, 9200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Gastly - Sludge Bomb - TM36
  (92, 9200, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 26),
  -- Gastly - Torment - TM41
  (92, 9200, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 27),
  -- Gastly - Facade - TM42
  (92, 9200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Gastly - Rest - TM44
  (92, 9200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Gastly - Attract - TM45
  (92, 9200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Gastly - Thief - TM46
  (92, 9200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 31),
  -- Gastly - Skill Swap - TM48
  (92, 9200, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 32),
  -- Gastly - Energy Ball - TM53
  (92, 9200, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 33),
  -- Gastly - Endure - TM58
  (92, 9200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Gastly - Will-O-Wisp - TM61
  (92, 9200, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 35),
  -- Gastly - Explosion - TM64
  (92, 9200, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 36),
  -- Gastly - Payback - TM66
  (92, 9200, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 37),
  -- Gastly - Psych Up - TM77
  (92, 9200, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 38),
  -- Gastly - Dark Pulse - TM79
  (92, 9200, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 39),
  -- Gastly - Sleep Talk - TM82
  (92, 9200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Gastly - Poison Jab - TM84
  (92, 9200, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 41),
  -- Gastly - Dream Eater - TM85
  (92, 9200, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 42),
  -- Gastly - Swagger - TM87
  (92, 9200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 43),
  -- Gastly - Substitute - TM90
  (92, 9200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Gastly - Trick Room - TM92
  (92, 9200, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 45),
  -- Gastly - Astonish - Egg
  (92, 9200, 310, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Gastly - Clear Smog - Egg
  (92, 9200, 499, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Gastly - Disable - Egg
  (92, 9200, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Gastly - Fire Punch - Egg
  (92, 9200, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Gastly - Grudge - Egg
  (92, 9200, 288, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Gastly - Haze - Egg
  (92, 9200, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Gastly - Ice Punch - Egg
  (92, 9200, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Gastly - Perish Song - Egg
  (92, 9200, 195, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Gastly - Reflect Type - Egg
  (92, 9200, 513, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Gastly - Scary Face - Egg
  (92, 9200, 184, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Gastly - Smog - Egg
  (92, 9200, 123, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Gastly - Thunder Punch - Egg
  (92, 9200, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Haunter - Shadow Punch - Starting Move
  (93, 9300, 325, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Haunter - Lick - Starting Move
  (93, 9300, 122, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Haunter - Confuse Ray - Starting Move
  (93, 9300, 109, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Haunter - Hypnosis - Starting Move
  (93, 9300, 95, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Haunter - Mean Look - Starting Move
  (93, 9300, 212, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Haunter - Shadow Punch - Evolution
  (93, 9300, 325, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Haunter - Payback - Level 12
  (93, 9300, 371, 21, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Haunter - Spite - Level 16
  (93, 9300, 180, 21, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Haunter - Curse - Level 20
  (93, 9300, 174, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Haunter - Hex - Level 24
  (93, 9300, 506, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Haunter - Night Shade - Level 30
  (93, 9300, 101, 21, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Haunter - Sucker Punch - Level 36
  (93, 9300, 389, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Haunter - Dark Pulse - Level 42
  (93, 9300, 399, 21, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Haunter - Shadow Ball - Level 48
  (93, 9300, 247, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Haunter - Destiny Bond - Level 54
  (93, 9300, 194, 21, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Haunter - Dream Eater - Level 60
  (93, 9300, 138, 21, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Haunter - Toxic - TM06
  (93, 9300, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 17),
  -- Haunter - Sunny Day - TM11
  (93, 9300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Haunter - Taunt - TM12
  (93, 9300, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 19),
  -- Haunter - Protect - TM17
  (93, 9300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Haunter - Rain Dance - TM18
  (93, 9300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Haunter - Giga Drain - TM19
  (93, 9300, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 22),
  -- Haunter - Dazzling Gleam - TM21
  (93, 9300, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 23),
  -- Haunter - Thunderbolt - TM24
  (93, 9300, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 24),
  -- Haunter - Psychic - TM29
  (93, 9300, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 25),
  -- Haunter - Shadow Ball - TM30
  (93, 9300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 26),
  -- Haunter - Double Team - TM32
  (93, 9300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Haunter - Sludge Bomb - TM36
  (93, 9300, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 28),
  -- Haunter - Torment - TM41
  (93, 9300, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 29),
  -- Haunter - Facade - TM42
  (93, 9300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Haunter - Rest - TM44
  (93, 9300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Haunter - Attract - TM45
  (93, 9300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Haunter - Thief - TM46
  (93, 9300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 33),
  -- Haunter - Skill Swap - TM48
  (93, 9300, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 34),
  -- Haunter - Energy Ball - TM53
  (93, 9300, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 35),
  -- Haunter - Fling - TM56
  (93, 9300, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 36),
  -- Haunter - Endure - TM58
  (93, 9300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Haunter - Will-O-Wisp - TM61
  (93, 9300, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 38),
  -- Haunter - Explosion - TM64
  (93, 9300, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 39),
  -- Haunter - Shadow Claw - TM65
  (93, 9300, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 40),
  -- Haunter - Payback - TM66
  (93, 9300, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 41),
  -- Haunter - Psych Up - TM77
  (93, 9300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 42),
  -- Haunter - Dark Pulse - TM79
  (93, 9300, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 43),
  -- Haunter - Sleep Talk - TM82
  (93, 9300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Haunter - Poison Jab - TM84
  (93, 9300, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 45),
  -- Haunter - Dream Eater - TM85
  (93, 9300, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 46),
  -- Haunter - Swagger - TM87
  (93, 9300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 47),
  -- Haunter - Substitute - TM90
  (93, 9300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Haunter - Trick Room - TM92
  (93, 9300, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 49),
  -- Haunter - Astonish - Egg
  (93, 9300, 310, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Haunter - Clear Smog - Egg
  (93, 9300, 499, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Haunter - Disable - Egg
  (93, 9300, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Haunter - Fire Punch - Egg
  (93, 9300, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Haunter - Grudge - Egg
  (93, 9300, 288, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Haunter - Haze - Egg
  (93, 9300, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Haunter - Ice Punch - Egg
  (93, 9300, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Haunter - Perish Song - Egg
  (93, 9300, 195, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Haunter - Reflect Type - Egg
  (93, 9300, 513, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Haunter - Scary Face - Egg
  (93, 9300, 184, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Haunter - Smog - Egg
  (93, 9300, 123, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Haunter - Thunder Punch - Egg
  (93, 9300, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gengar - Shadow Punch - Starting Move
  (94, 9400, 325, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Gengar - Perish Song - Starting Move
  (94, 9400, 195, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Gengar - Reflect Type - Starting Move
  (94, 9400, 513, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Gengar - Lick - Starting Move
  (94, 9400, 122, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Gengar - Confuse Ray - Starting Move
  (94, 9400, 109, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Gengar - Hypnosis - Starting Move
  (94, 9400, 95, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Gengar - Mean Look - Starting Move
  (94, 9400, 212, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Gengar - Payback - Level 12
  (94, 9400, 371, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Gengar - Spite - Level 16
  (94, 9400, 180, 21, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gengar - Curse - Level 20
  (94, 9400, 174, 21, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Gengar - Hex - Level 24
  (94, 9400, 506, 21, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Gengar - Night Shade - Level 30
  (94, 9400, 101, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Gengar - Sucker Punch - Level 36
  (94, 9400, 389, 21, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Gengar - Dark Pulse - Level 42
  (94, 9400, 399, 21, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Gengar - Shadow Ball - Level 48
  (94, 9400, 247, 21, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Gengar - Destiny Bond - Level 54
  (94, 9400, 194, 21, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Gengar - Dream Eater - Level 60
  (94, 9400, 138, 21, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Gengar - Focus Punch - TM01
  (94, 9400, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 18),
  -- Gengar - Toxic - TM06
  (94, 9400, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 19),
  -- Gengar - Sunny Day - TM11
  (94, 9400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Gengar - Taunt - TM12
  (94, 9400, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 21),
  -- Gengar - Hyper Beam - TM15
  (94, 9400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 22),
  -- Gengar - Protect - TM17
  (94, 9400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Gengar - Rain Dance - TM18
  (94, 9400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Gengar - Giga Drain - TM19
  (94, 9400, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 25),
  -- Gengar - Dazzling Gleam - TM21
  (94, 9400, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 26),
  -- Gengar - Thunderbolt - TM24
  (94, 9400, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 27),
  -- Gengar - Thunder - TM25
  (94, 9400, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 28),
  -- Gengar - Psychic - TM29
  (94, 9400, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 29),
  -- Gengar - Shadow Ball - TM30
  (94, 9400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 30),
  -- Gengar - Brick Break - TM31
  (94, 9400, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 31),
  -- Gengar - Double Team - TM32
  (94, 9400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Gengar - Sludge Bomb - TM36
  (94, 9400, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 33),
  -- Gengar - Torment - TM41
  (94, 9400, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 34),
  -- Gengar - Facade - TM42
  (94, 9400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 35),
  -- Gengar - Rest - TM44
  (94, 9400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 36),
  -- Gengar - Attract - TM45
  (94, 9400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 37),
  -- Gengar - Thief - TM46
  (94, 9400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 38),
  -- Gengar - Skill Swap - TM48
  (94, 9400, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 39),
  -- Gengar - Focus Blast - TM52
  (94, 9400, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 40),
  -- Gengar - Energy Ball - TM53
  (94, 9400, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 41),
  -- Gengar - Fling - TM56
  (94, 9400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 42),
  -- Gengar - Endure - TM58
  (94, 9400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 43),
  -- Gengar - Drain Punch - TM60
  (94, 9400, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 44),
  -- Gengar - Will-O-Wisp - TM61
  (94, 9400, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 45),
  -- Gengar - Nasty Plot - TM63
  (94, 9400, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 46),
  -- Gengar - Explosion - TM64
  (94, 9400, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 47),
  -- Gengar - Shadow Claw - TM65
  (94, 9400, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 48),
  -- Gengar - Payback - TM66
  (94, 9400, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 49),
  -- Gengar - Giga Impact - TM68
  (94, 9400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 50),
  -- Gengar - Psych Up - TM77
  (94, 9400, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 51),
  -- Gengar - Dark Pulse - TM79
  (94, 9400, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 52),
  -- Gengar - Sleep Talk - TM82
  (94, 9400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 53),
  -- Gengar - Poison Jab - TM84
  (94, 9400, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 54),
  -- Gengar - Dream Eater - TM85
  (94, 9400, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 55),
  -- Gengar - Swagger - TM87
  (94, 9400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 56),
  -- Gengar - Substitute - TM90
  (94, 9400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 57),
  -- Gengar - Trick Room - TM92
  (94, 9400, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 58),
  -- Gengar - Strength - TM96
  (94, 9400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 59),
  -- Gengar - Rock Smash - TM98
  (94, 9400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 60),
  -- Gengar - Astonish - Egg
  (94, 9400, 310, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gengar - Clear Smog - Egg
  (94, 9400, 499, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Gengar - Disable - Egg
  (94, 9400, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Gengar - Fire Punch - Egg
  (94, 9400, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Gengar - Grudge - Egg
  (94, 9400, 288, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Gengar - Haze - Egg
  (94, 9400, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Gengar - Ice Punch - Egg
  (94, 9400, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Gengar - Perish Song - Egg
  (94, 9400, 195, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Gengar - Reflect Type - Egg
  (94, 9400, 513, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Gengar - Scary Face - Egg
  (94, 9400, 184, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Gengar - Smog - Egg
  (94, 9400, 123, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Gengar - Thunder Punch - Egg
  (94, 9400, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Onix - Tackle - Starting Move
  (95, 9500, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Onix - Harden - Starting Move
  (95, 9500, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Onix - Bind - Starting Move
  (95, 9500, 20, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Onix - Rock Throw - Starting Move
  (95, 9500, 88, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Onix - Smack Down - Level 4
  (95, 9500, 479, 21, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Onix - Rock Polish - Level 8
  (95, 9500, 397, 21, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Onix - Dragon Breath - Level 12
  (95, 9500, 225, 21, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Onix - Curse - Level 16
  (95, 9500, 174, 21, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Onix - Rock Slide - Level 20
  (95, 9500, 157, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Onix - Screech - Level 24
  (95, 9500, 103, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Onix - Sand Tomb - Level 28
  (95, 9500, 328, 21, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Onix - Stealth Rock - Level 32
  (95, 9500, 446, 21, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Onix - Slam - Level 36
  (95, 9500, 21, 21, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Onix - Sandstorm - Level 40
  (95, 9500, 201, 21, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Onix - Dig - Level 44
  (95, 9500, 91, 21, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Onix - Iron Tail - Level 48
  (95, 9500, 231, 21, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Onix - Stone Edge - Level 52
  (95, 9500, 444, 21, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Onix - Double-Edge - Level 56
  (95, 9500, 38, 21, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Onix - Roar - TM05
  (95, 9500, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 19),
  -- Onix - Sunny Day - TM11
  (95, 9500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Onix - Taunt - TM12
  (95, 9500, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 21),
  -- Onix - Protect - TM17
  (95, 9500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Onix - Iron Tail - TM23
  (95, 9500, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 23),
  -- Onix - Earthquake - TM26
  (95, 9500, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 24),
  -- Onix - Dig - TM28
  (95, 9500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 25),
  -- Onix - Double Team - TM32
  (95, 9500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Onix - Sandstorm - TM37
  (95, 9500, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 27),
  -- Onix - Rock Tomb - TM39
  (95, 9500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 28),
  -- Onix - Torment - TM41
  (95, 9500, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 29),
  -- Onix - Facade - TM42
  (95, 9500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Onix - Rest - TM44
  (95, 9500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Onix - Attract - TM45
  (95, 9500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Onix - Endure - TM58
  (95, 9500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Onix - Dragon Pulse - TM59
  (95, 9500, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 34),
  -- Onix - Explosion - TM64
  (95, 9500, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 35),
  -- Onix - Payback - TM66
  (95, 9500, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 36),
  -- Onix - Rock Polish - TM69
  (95, 9500, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 37),
  -- Onix - Stone Edge - TM71
  (95, 9500, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 38),
  -- Onix - Gyro Ball - TM74
  (95, 9500, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 39),
  -- Onix - Stealth Rock - TM76
  (95, 9500, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 40),
  -- Onix - Psych Up - TM77
  (95, 9500, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 41),
  -- Onix - Rock Slide - TM80
  (95, 9500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 42),
  -- Onix - Sleep Talk - TM82
  (95, 9500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Onix - Bulldoze - TM83
  (95, 9500, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 44),
  -- Onix - Swagger - TM87
  (95, 9500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Onix - Substitute - TM90
  (95, 9500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Onix - Flash Cannon - TM91
  (95, 9500, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 47),
  -- Onix - Strength - TM96
  (95, 9500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 48),
  -- Onix - Rock Smash - TM98
  (95, 9500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 49),
  -- Onix - Rock Climb - TM100
  (95, 9500, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 50),
  -- Onix - Block - Egg
  (95, 9500, 335, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Onix - Defense Curl - Egg
  (95, 9500, 111, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Onix - Dragon Tail - Egg
  (95, 9500, 525, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Onix - Flail - Egg
  (95, 9500, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Onix - Head Smash - Egg
  (95, 9500, 457, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Onix - Heavy Slam - Egg
  (95, 9500, 484, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Onix - Rock Blast - Egg
  (95, 9500, 350, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Onix - Rollout - Egg
  (95, 9500, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Onix - Wide Guard - Egg
  (95, 9500, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Drowzee - Pound - Starting Move
  (96, 9600, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Drowzee - Hypnosis - Starting Move
  (96, 9600, 95, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Drowzee - Disable - Level 5
  (96, 9600, 50, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Drowzee - Confusion - Level 9
  (96, 9600, 93, 21, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Drowzee - Headbutt - Level 13
  (96, 9600, 29, 21, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Drowzee - Poison Gas - Level 17
  (96, 9600, 139, 21, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Drowzee - Hypnosis - Level 21
  (96, 9600, 95, 21, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Drowzee - Psybeam - Level 25
  (96, 9600, 60, 21, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Drowzee - Mind Reader - Level 29
  (96, 9600, 170, 21, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Drowzee - Psych Up - Level 33
  (96, 9600, 244, 21, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Drowzee - Hypnosis - Level 37
  (96, 9600, 95, 21, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Drowzee - Zen Headbutt - Level 41
  (96, 9600, 428, 21, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Drowzee - Swagger - Level 45
  (96, 9600, 207, 21, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Drowzee - Psychic - Level 49
  (96, 9600, 94, 21, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Drowzee - Nasty Plot - Level 53
  (96, 9600, 417, 21, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Drowzee - Psyshock - Level 57
  (96, 9600, 473, 21, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Drowzee - Future Sight - Level 61
  (96, 9600, 248, 21, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Drowzee - Focus Punch - TM01
  (96, 9600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 18),
  -- Drowzee - Calm Mind - TM04
  (96, 9600, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 19),
  -- Drowzee - Sunny Day - TM11
  (96, 9600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Drowzee - Taunt - TM12
  (96, 9600, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 21),
  -- Drowzee - Light Screen - TM16
  (96, 9600, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 22),
  -- Drowzee - Protect - TM17
  (96, 9600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Drowzee - Rain Dance - TM18
  (96, 9600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Drowzee - Safeguard - TM20
  (96, 9600, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 25),
  -- Drowzee - Dazzling Gleam - TM21
  (96, 9600, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 26),
  -- Drowzee - Low Sweep - TM27
  (96, 9600, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 27),
  -- Drowzee - Psychic - TM29
  (96, 9600, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 28),
  -- Drowzee - Shadow Ball - TM30
  (96, 9600, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 29),
  -- Drowzee - Brick Break - TM31
  (96, 9600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 30),
  -- Drowzee - Double Team - TM32
  (96, 9600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Drowzee - Reflect - TM33
  (96, 9600, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 32),
  -- Drowzee - Torment - TM41
  (96, 9600, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 33),
  -- Drowzee - Facade - TM42
  (96, 9600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Drowzee - Rest - TM44
  (96, 9600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Drowzee - Attract - TM45
  (96, 9600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Drowzee - Thief - TM46
  (96, 9600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 37),
  -- Drowzee - Skill Swap - TM48
  (96, 9600, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 38),
  -- Drowzee - Fling - TM56
  (96, 9600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 39),
  -- Drowzee - Endure - TM58
  (96, 9600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Drowzee - Drain Punch - TM60
  (96, 9600, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 41),
  -- Drowzee - Nasty Plot - TM63
  (96, 9600, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 42),
  -- Drowzee - Recycle - TM67
  (96, 9600, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 43),
  -- Drowzee - Flash - TM70
  (96, 9600, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 44),
  -- Drowzee - Thunder Wave - TM73
  (96, 9600, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 45),
  -- Drowzee - Psych Up - TM77
  (96, 9600, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 46),
  -- Drowzee - Sleep Talk - TM82
  (96, 9600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 47),
  -- Drowzee - Dream Eater - TM85
  (96, 9600, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 48),
  -- Drowzee - Grass Knot - TM86
  (96, 9600, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 49),
  -- Drowzee - Swagger - TM87
  (96, 9600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 50),
  -- Drowzee - Substitute - TM90
  (96, 9600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 51),
  -- Drowzee - Trick Room - TM92
  (96, 9600, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 52),
  -- Drowzee - Fire Punch - Egg
  (96, 9600, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Drowzee - Flatter - Egg
  (96, 9600, 260, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Drowzee - Guard Swap - Egg
  (96, 9600, 385, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Drowzee - Ice Punch - Egg
  (96, 9600, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Drowzee - Power Split - Egg
  (96, 9600, 471, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Drowzee - Psycho Cut - Egg
  (96, 9600, 427, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Drowzee - Role Play - Egg
  (96, 9600, 272, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Drowzee - Thunder Punch - Egg
  (96, 9600, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Hypno - Future Sight - Starting Move
  (97, 9700, 248, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Hypno - Nasty Plot - Starting Move
  (97, 9700, 417, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Hypno - Switcheroo - Starting Move
  (97, 9700, 415, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Hypno - Pound - Starting Move
  (97, 9700, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Hypno - Hypnosis - Starting Move
  (97, 9700, 95, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Hypno - Disable - Starting Move
  (97, 9700, 50, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Hypno - Confusion - Starting Move
  (97, 9700, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Hypno - Disable - Level 5
  (97, 9700, 50, 21, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Hypno - Confusion - Level 9
  (97, 9700, 93, 21, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Hypno - Headbutt - Level 13
  (97, 9700, 29, 21, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Hypno - Poison Gas - Level 17
  (97, 9700, 139, 21, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Hypno - Hypnosis - Level 21
  (97, 9700, 95, 21, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Hypno - Psybeam - Level 25
  (97, 9700, 60, 21, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Hypno - Mind Reader - Level 29
  (97, 9700, 170, 21, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Hypno - Psych Up - Level 33
  (97, 9700, 244, 21, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Hypno - Hypnosis - Level 37
  (97, 9700, 95, 21, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Hypno - Zen Headbutt - Level 41
  (97, 9700, 428, 21, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Hypno - Swagger - Level 45
  (97, 9700, 207, 21, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Hypno - Psychic - Level 49
  (97, 9700, 94, 21, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Hypno - Nasty Plot - Level 53
  (97, 9700, 417, 21, NULL, 1, 53, NULL, NULL, NULL, 20),
  -- Hypno - Psyshock - Level 57
  (97, 9700, 473, 21, NULL, 1, 57, NULL, NULL, NULL, 21),
  -- Hypno - Future Sight - Level 61
  (97, 9700, 248, 21, NULL, 1, 61, NULL, NULL, NULL, 22),
  -- Hypno - Focus Punch - TM01
  (97, 9700, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 23),
  -- Hypno - Calm Mind - TM04
  (97, 9700, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 24),
  -- Hypno - Sunny Day - TM11
  (97, 9700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 25),
  -- Hypno - Taunt - TM12
  (97, 9700, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 26),
  -- Hypno - Hyper Beam - TM15
  (97, 9700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 27),
  -- Hypno - Light Screen - TM16
  (97, 9700, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 28),
  -- Hypno - Protect - TM17
  (97, 9700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 29),
  -- Hypno - Rain Dance - TM18
  (97, 9700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 30),
  -- Hypno - Safeguard - TM20
  (97, 9700, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 31),
  -- Hypno - Dazzling Gleam - TM21
  (97, 9700, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 32),
  -- Hypno - Low Sweep - TM27
  (97, 9700, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 33),
  -- Hypno - Psychic - TM29
  (97, 9700, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 34),
  -- Hypno - Shadow Ball - TM30
  (97, 9700, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 35),
  -- Hypno - Brick Break - TM31
  (97, 9700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 36),
  -- Hypno - Double Team - TM32
  (97, 9700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 37),
  -- Hypno - Reflect - TM33
  (97, 9700, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 38),
  -- Hypno - Torment - TM41
  (97, 9700, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 39),
  -- Hypno - Facade - TM42
  (97, 9700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 40),
  -- Hypno - Rest - TM44
  (97, 9700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 41),
  -- Hypno - Attract - TM45
  (97, 9700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 42),
  -- Hypno - Thief - TM46
  (97, 9700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 43),
  -- Hypno - Skill Swap - TM48
  (97, 9700, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 44),
  -- Hypno - Focus Blast - TM52
  (97, 9700, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 45),
  -- Hypno - Fling - TM56
  (97, 9700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 46),
  -- Hypno - Endure - TM58
  (97, 9700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 47),
  -- Hypno - Drain Punch - TM60
  (97, 9700, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 48),
  -- Hypno - Nasty Plot - TM63
  (97, 9700, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 49),
  -- Hypno - Recycle - TM67
  (97, 9700, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 50),
  -- Hypno - Giga Impact - TM68
  (97, 9700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 51),
  -- Hypno - Flash - TM70
  (97, 9700, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 52),
  -- Hypno - Thunder Wave - TM73
  (97, 9700, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 53),
  -- Hypno - Psych Up - TM77
  (97, 9700, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 54),
  -- Hypno - Sleep Talk - TM82
  (97, 9700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 55),
  -- Hypno - Dream Eater - TM85
  (97, 9700, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 56),
  -- Hypno - Grass Knot - TM86
  (97, 9700, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 57),
  -- Hypno - Swagger - TM87
  (97, 9700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 58),
  -- Hypno - Substitute - TM90
  (97, 9700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 59),
  -- Hypno - Trick Room - TM92
  (97, 9700, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 60),
  -- Hypno - Fire Punch - Egg
  (97, 9700, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Hypno - Flatter - Egg
  (97, 9700, 260, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Hypno - Guard Swap - Egg
  (97, 9700, 385, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Hypno - Ice Punch - Egg
  (97, 9700, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Hypno - Power Split - Egg
  (97, 9700, 471, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Hypno - Psycho Cut - Egg
  (97, 9700, 427, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Hypno - Role Play - Egg
  (97, 9700, 272, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Hypno - Thunder Punch - Egg
  (97, 9700, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Krabby - Water Gun - Starting Move
  (98, 9800, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Krabby - Leer - Starting Move
  (98, 9800, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Krabby - Harden - Level 4
  (98, 9800, 106, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Krabby - Metal Claw - Level 8
  (98, 9800, 232, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Krabby - Mud Shot - Level 12
  (98, 9800, 341, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Krabby - Protect - Level 16
  (98, 9800, 182, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Krabby - Bubble Beam - Level 20
  (98, 9800, 61, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Krabby - Stomp - Level 24
  (98, 9800, 23, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Krabby - Flail - Level 29
  (98, 9800, 175, 21, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Krabby - Razor Shell - Level 32
  (98, 9800, 534, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Krabby - Slam - Level 36
  (98, 9800, 21, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Krabby - Swords Dance - Level 40
  (98, 9800, 14, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Krabby - Crabhammer - Level 44
  (98, 9800, 152, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Krabby - Guillotine - Level 48
  (98, 9800, 12, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Krabby - Water Pulse - TM03
  (98, 9800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Krabby - Hail - TM07
  (98, 9800, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 16),
  -- Krabby - Ice Beam - TM13
  (98, 9800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Krabby - Blizzard - TM14
  (98, 9800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Krabby - Protect - TM17
  (98, 9800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Krabby - Rain Dance - TM18
  (98, 9800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Krabby - Dig - TM28
  (98, 9800, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 21),
  -- Krabby - Brick Break - TM31
  (98, 9800, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 22),
  -- Krabby - Double Team - TM32
  (98, 9800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Krabby - Rock Tomb - TM39
  (98, 9800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 24),
  -- Krabby - Facade - TM42
  (98, 9800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Krabby - Rest - TM44
  (98, 9800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Krabby - Attract - TM45
  (98, 9800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Krabby - Thief - TM46
  (98, 9800, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 28),
  -- Krabby - Scald - TM49
  (98, 9800, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 29),
  -- Krabby - False Swipe - TM54
  (98, 9800, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 30),
  -- Krabby - Brine - TM55
  (98, 9800, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 31),
  -- Krabby - Fling - TM56
  (98, 9800, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 32),
  -- Krabby - Endure - TM58
  (98, 9800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Krabby - Swords Dance - TM75
  (98, 9800, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 34),
  -- Krabby - Rock Slide - TM80
  (98, 9800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 35),
  -- Krabby - X-Scissor - TM81
  (98, 9800, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 36),
  -- Krabby - Sleep Talk - TM82
  (98, 9800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 37),
  -- Krabby - Swagger - TM87
  (98, 9800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 38),
  -- Krabby - Substitute - TM90
  (98, 9800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 39),
  -- Krabby - Cut - TM93
  (98, 9800, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 40),
  -- Krabby - Surf - TM95
  (98, 9800, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 41),
  -- Krabby - Strength - TM96
  (98, 9800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 42),
  -- Krabby - Rock Smash - TM98
  (98, 9800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 43),
  -- Krabby - Agility - Egg
  (98, 9800, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Krabby - Ally Switch - Egg
  (98, 9800, 502, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Krabby - Amnesia - Egg
  (98, 9800, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Krabby - Ancient Power - Egg
  (98, 9800, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Krabby - Flail - Egg
  (98, 9800, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Krabby - Hammer Arm - Egg
  (98, 9800, 359, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Krabby - Haze - Egg
  (98, 9800, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Krabby - Knock Off - Egg
  (98, 9800, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Krabby - Night Slash - Egg
  (98, 9800, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Krabby - Slam - Egg
  (98, 9800, 21, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Krabby - Slash - Egg
  (98, 9800, 163, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Krabby - Tickle - Egg
  (98, 9800, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Kingler - Wide Guard - Starting Move
  (99, 9900, 469, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Kingler - Hammer Arm - Starting Move
  (99, 9900, 359, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Kingler - Water Gun - Starting Move
  (99, 9900, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Kingler - Leer - Starting Move
  (99, 9900, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Kingler - Harden - Starting Move
  (99, 9900, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Kingler - Metal Claw - Starting Move
  (99, 9900, 232, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Kingler - Mud Shot - Level 12
  (99, 9900, 341, 21, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Kingler - Protect - Level 16
  (99, 9900, 182, 21, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Kingler - Bubble Beam - Level 20
  (99, 9900, 61, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Kingler - Stomp - Level 24
  (99, 9900, 23, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Kingler - Flail - Level 31
  (99, 9900, 175, 21, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Kingler - Razor Shell - Level 36
  (99, 9900, 534, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Kingler - Slam - Level 42
  (99, 9900, 21, 21, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Kingler - Swords Dance - Level 48
  (99, 9900, 14, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Kingler - Crabhammer - Level 54
  (99, 9900, 152, 21, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Kingler - Guillotine - Level 60
  (99, 9900, 12, 21, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Kingler - Water Pulse - TM03
  (99, 9900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 17),
  -- Kingler - Hail - TM07
  (99, 9900, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 18),
  -- Kingler - Ice Beam - TM13
  (99, 9900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 19),
  -- Kingler - Blizzard - TM14
  (99, 9900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 20),
  -- Kingler - Hyper Beam - TM15
  (99, 9900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Kingler - Protect - TM17
  (99, 9900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Kingler - Rain Dance - TM18
  (99, 9900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Kingler - Dig - TM28
  (99, 9900, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Kingler - Brick Break - TM31
  (99, 9900, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 25),
  -- Kingler - Double Team - TM32
  (99, 9900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Kingler - Rock Tomb - TM39
  (99, 9900, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 27),
  -- Kingler - Facade - TM42
  (99, 9900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Kingler - Rest - TM44
  (99, 9900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Kingler - Attract - TM45
  (99, 9900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Kingler - Thief - TM46
  (99, 9900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 31),
  -- Kingler - Scald - TM49
  (99, 9900, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 32),
  -- Kingler - False Swipe - TM54
  (99, 9900, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 33),
  -- Kingler - Brine - TM55
  (99, 9900, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 34),
  -- Kingler - Fling - TM56
  (99, 9900, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 35),
  -- Kingler - Endure - TM58
  (99, 9900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Kingler - Giga Impact - TM68
  (99, 9900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 37),
  -- Kingler - Swords Dance - TM75
  (99, 9900, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 38),
  -- Kingler - Rock Slide - TM80
  (99, 9900, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 39),
  -- Kingler - X-Scissor - TM81
  (99, 9900, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 40),
  -- Kingler - Sleep Talk - TM82
  (99, 9900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Kingler - Swagger - TM87
  (99, 9900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Kingler - Substitute - TM90
  (99, 9900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Kingler - Cut - TM93
  (99, 9900, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 44),
  -- Kingler - Surf - TM95
  (99, 9900, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 45),
  -- Kingler - Strength - TM96
  (99, 9900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 46),
  -- Kingler - Rock Smash - TM98
  (99, 9900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 47),
  -- Kingler - Agility - Egg
  (99, 9900, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Kingler - Ally Switch - Egg
  (99, 9900, 502, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Kingler - Amnesia - Egg
  (99, 9900, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Kingler - Ancient Power - Egg
  (99, 9900, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Kingler - Flail - Egg
  (99, 9900, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Kingler - Hammer Arm - Egg
  (99, 9900, 359, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Kingler - Haze - Egg
  (99, 9900, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Kingler - Knock Off - Egg
  (99, 9900, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Kingler - Night Slash - Egg
  (99, 9900, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Kingler - Slam - Egg
  (99, 9900, 21, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Kingler - Slash - Egg
  (99, 9900, 163, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Kingler - Tickle - Egg
  (99, 9900, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 59);
