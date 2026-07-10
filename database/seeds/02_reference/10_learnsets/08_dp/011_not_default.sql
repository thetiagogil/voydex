-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation IV Pokémon learnset raw pages, using Diamond / Pearl
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii Diamond / Pearl Pokedex learnset pages, Serebii Diamond / Pearl
-- Move Tutor pages, and PokemonDB Generation 4 Diamond / Pearl learnset pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Diamond / Pearl
-- Pokémon: not-default forms
-- Rows: 322
-- Scope: level-up, TM, HM, egg move, and Move Tutor acquisition rows.
-- Event, transfer, and prior-evolution sections are intentionally excluded from
-- this Diamond / Pearl seed.
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
  -- Deoxys (Attack) - Wrap - Level 1
  (386, 38601, 35, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Attack) - Leer - Level 1
  (386, 38601, 43, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Attack) - Night Shade - Level 9
  (386, 38601, 101, 8, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Deoxys (Attack) - Teleport - Level 17
  (386, 38601, 100, 8, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Deoxys (Attack) - Taunt - Level 25
  (386, 38601, 269, 8, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Deoxys (Attack) - Pursuit - Level 33
  (386, 38601, 228, 8, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Deoxys (Attack) - Psychic - Level 41
  (386, 38601, 94, 8, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Deoxys (Attack) - Superpower - Level 49
  (386, 38601, 276, 8, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Deoxys (Attack) - Psycho Shift - Level 57
  (386, 38601, 375, 8, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Deoxys (Attack) - Zen Headbutt - Level 65
  (386, 38601, 428, 8, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Deoxys (Attack) - Cosmic Power - Level 73
  (386, 38601, 322, 8, NULL, 1, 73, NULL, NULL, NULL, 11),
  -- Deoxys (Attack) - Zap Cannon - Level 81
  (386, 38601, 192, 8, NULL, 1, 81, NULL, NULL, NULL, 12),
  -- Deoxys (Attack) - Psycho Boost - Level 89
  (386, 38601, 354, 8, NULL, 1, 89, NULL, NULL, NULL, 13),
  -- Deoxys (Attack) - Hyper Beam - Level 97
  (386, 38601, 63, 8, NULL, 1, 97, NULL, NULL, NULL, 14),
  -- Deoxys (Attack) - Focus Punch - TM01
  (386, 38601, 264, 8, NULL, 2, NULL, NULL, 8002001, NULL, 15),
  -- Deoxys (Attack) - Water Pulse - TM03
  (386, 38601, 352, 8, NULL, 2, NULL, NULL, 8002003, NULL, 16),
  -- Deoxys (Attack) - Calm Mind - TM04
  (386, 38601, 347, 8, NULL, 2, NULL, NULL, 8002004, NULL, 17),
  -- Deoxys (Attack) - Toxic - TM06
  (386, 38601, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 18),
  -- Deoxys (Attack) - Hidden Power - TM10
  (386, 38601, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 19),
  -- Deoxys (Attack) - Sunny Day - TM11
  (386, 38601, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 20),
  -- Deoxys (Attack) - Taunt - TM12
  (386, 38601, 269, 8, NULL, 2, NULL, NULL, 8002012, NULL, 21),
  -- Deoxys (Attack) - Ice Beam - TM13
  (386, 38601, 58, 8, NULL, 2, NULL, NULL, 8002013, NULL, 22),
  -- Deoxys (Attack) - Hyper Beam - TM15
  (386, 38601, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 23),
  -- Deoxys (Attack) - Light Screen - TM16
  (386, 38601, 113, 8, NULL, 2, NULL, NULL, 8002016, NULL, 24),
  -- Deoxys (Attack) - Protect - TM17
  (386, 38601, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 25),
  -- Deoxys (Attack) - Rain Dance - TM18
  (386, 38601, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 26),
  -- Deoxys (Attack) - Safeguard - TM20
  (386, 38601, 219, 8, NULL, 2, NULL, NULL, 8002020, NULL, 27),
  -- Deoxys (Attack) - Frustration - TM21
  (386, 38601, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 28),
  -- Deoxys (Attack) - Solar Beam - TM22
  (386, 38601, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 29),
  -- Deoxys (Attack) - Thunderbolt - TM24
  (386, 38601, 85, 8, NULL, 2, NULL, NULL, 8002024, NULL, 30),
  -- Deoxys (Attack) - Thunder - TM25
  (386, 38601, 87, 8, NULL, 2, NULL, NULL, 8002025, NULL, 31),
  -- Deoxys (Attack) - Return - TM27
  (386, 38601, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 32),
  -- Deoxys (Attack) - Psychic - TM29
  (386, 38601, 94, 8, NULL, 2, NULL, NULL, 8002029, NULL, 33),
  -- Deoxys (Attack) - Shadow Ball - TM30
  (386, 38601, 247, 8, NULL, 2, NULL, NULL, 8002030, NULL, 34),
  -- Deoxys (Attack) - Brick Break - TM31
  (386, 38601, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 35),
  -- Deoxys (Attack) - Double Team - TM32
  (386, 38601, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 36),
  -- Deoxys (Attack) - Reflect - TM33
  (386, 38601, 115, 8, NULL, 2, NULL, NULL, 8002033, NULL, 37),
  -- Deoxys (Attack) - Shock Wave - TM34
  (386, 38601, 351, 8, NULL, 2, NULL, NULL, 8002034, NULL, 38),
  -- Deoxys (Attack) - Rock Tomb - TM39
  (386, 38601, 317, 8, NULL, 2, NULL, NULL, 8002039, NULL, 39),
  -- Deoxys (Attack) - Aerial Ace - TM40
  (386, 38601, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 40),
  -- Deoxys (Attack) - Torment - TM41
  (386, 38601, 259, 8, NULL, 2, NULL, NULL, 8002041, NULL, 41),
  -- Deoxys (Attack) - Facade - TM42
  (386, 38601, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 42),
  -- Deoxys (Attack) - Secret Power - TM43
  (386, 38601, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 43),
  -- Deoxys (Attack) - Rest - TM44
  (386, 38601, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 44),
  -- Deoxys (Attack) - Skill Swap - TM48
  (386, 38601, 285, 8, NULL, 2, NULL, NULL, 8002048, NULL, 45),
  -- Deoxys (Attack) - Snatch - TM49
  (386, 38601, 289, 8, NULL, 2, NULL, NULL, 8002049, NULL, 46),
  -- Deoxys (Attack) - Focus Blast - TM52
  (386, 38601, 411, 8, NULL, 2, NULL, NULL, 8002052, NULL, 47),
  -- Deoxys (Attack) - Energy Ball - TM53
  (386, 38601, 412, 8, NULL, 2, NULL, NULL, 8002053, NULL, 48),
  -- Deoxys (Attack) - Fling - TM56
  (386, 38601, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 49),
  -- Deoxys (Attack) - Charge Beam - TM57
  (386, 38601, 451, 8, NULL, 2, NULL, NULL, 8002057, NULL, 50),
  -- Deoxys (Attack) - Endure - TM58
  (386, 38601, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 51),
  -- Deoxys (Attack) - Drain Punch - TM60
  (386, 38601, 409, 8, NULL, 2, NULL, NULL, 8002060, NULL, 52),
  -- Deoxys (Attack) - Recycle - TM67
  (386, 38601, 278, 8, NULL, 2, NULL, NULL, 8002067, NULL, 53),
  -- Deoxys (Attack) - Giga Impact - TM68
  (386, 38601, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 54),
  -- Deoxys (Attack) - Flash - TM70
  (386, 38601, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 55),
  -- Deoxys (Attack) - Avalanche - TM72
  (386, 38601, 419, 8, NULL, 2, NULL, NULL, 8002072, NULL, 56),
  -- Deoxys (Attack) - Thunder Wave - TM73
  (386, 38601, 86, 8, NULL, 2, NULL, NULL, 8002073, NULL, 57),
  -- Deoxys (Attack) - Stealth Rock - TM76
  (386, 38601, 446, 8, NULL, 2, NULL, NULL, 8002076, NULL, 58),
  -- Deoxys (Attack) - Psych Up - TM77
  (386, 38601, 244, 8, NULL, 2, NULL, NULL, 8002077, NULL, 59),
  -- Deoxys (Attack) - Rock Slide - TM80
  (386, 38601, 157, 8, NULL, 2, NULL, NULL, 8002080, NULL, 60),
  -- Deoxys (Attack) - Sleep Talk - TM82
  (386, 38601, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 61),
  -- Deoxys (Attack) - Natural Gift - TM83
  (386, 38601, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 62),
  -- Deoxys (Attack) - Poison Jab - TM84
  (386, 38601, 398, 8, NULL, 2, NULL, NULL, 8002084, NULL, 63),
  -- Deoxys (Attack) - Dream Eater - TM85
  (386, 38601, 138, 8, NULL, 2, NULL, NULL, 8002085, NULL, 64),
  -- Deoxys (Attack) - Grass Knot - TM86
  (386, 38601, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 65),
  -- Deoxys (Attack) - Swagger - TM87
  (386, 38601, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 66),
  -- Deoxys (Attack) - Substitute - TM90
  (386, 38601, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 67),
  -- Deoxys (Attack) - Flash Cannon - TM91
  (386, 38601, 430, 8, NULL, 2, NULL, NULL, 8002091, NULL, 68),
  -- Deoxys (Attack) - Trick Room - TM92
  (386, 38601, 433, 8, NULL, 2, NULL, NULL, 8002092, NULL, 69),
  -- Deoxys (Attack) - Cut - HM01
  (386, 38601, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 70),
  -- Deoxys (Attack) - Strength - HM04
  (386, 38601, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 71),
  -- Deoxys (Attack) - Rock Smash - HM06
  (386, 38601, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 72),
  -- Deoxys (Defense) - Wrap - Level 1
  (386, 38602, 35, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Defense) - Leer - Level 1
  (386, 38602, 43, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Defense) - Night Shade - Level 9
  (386, 38602, 101, 8, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Deoxys (Defense) - Teleport - Level 17
  (386, 38602, 100, 8, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Deoxys (Defense) - Knock Off - Level 25
  (386, 38602, 282, 8, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Deoxys (Defense) - Spikes - Level 33
  (386, 38602, 191, 8, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Deoxys (Defense) - Psychic - Level 41
  (386, 38602, 94, 8, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Deoxys (Defense) - Snatch - Level 49
  (386, 38602, 289, 8, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Deoxys (Defense) - Psycho Shift - Level 57
  (386, 38602, 375, 8, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Deoxys (Defense) - Zen Headbutt - Level 65
  (386, 38602, 428, 8, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Deoxys (Defense) - Amnesia - Level 73
  (386, 38602, 133, 8, NULL, 1, 73, NULL, NULL, NULL, 11),
  -- Deoxys (Defense) - Iron Defense - Level 73
  (386, 38602, 334, 8, NULL, 1, 73, NULL, NULL, NULL, 12),
  -- Deoxys (Defense) - Recover - Level 81
  (386, 38602, 105, 8, NULL, 1, 81, NULL, NULL, NULL, 13),
  -- Deoxys (Defense) - Psycho Boost - Level 89
  (386, 38602, 354, 8, NULL, 1, 89, NULL, NULL, NULL, 14),
  -- Deoxys (Defense) - Counter - Level 97
  (386, 38602, 68, 8, NULL, 1, 97, NULL, NULL, NULL, 15),
  -- Deoxys (Defense) - Mirror Coat - Level 97
  (386, 38602, 243, 8, NULL, 1, 97, NULL, NULL, NULL, 16),
  -- Deoxys (Defense) - Focus Punch - TM01
  (386, 38602, 264, 8, NULL, 2, NULL, NULL, 8002001, NULL, 17),
  -- Deoxys (Defense) - Water Pulse - TM03
  (386, 38602, 352, 8, NULL, 2, NULL, NULL, 8002003, NULL, 18),
  -- Deoxys (Defense) - Calm Mind - TM04
  (386, 38602, 347, 8, NULL, 2, NULL, NULL, 8002004, NULL, 19),
  -- Deoxys (Defense) - Toxic - TM06
  (386, 38602, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 20),
  -- Deoxys (Defense) - Hidden Power - TM10
  (386, 38602, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 21),
  -- Deoxys (Defense) - Sunny Day - TM11
  (386, 38602, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 22),
  -- Deoxys (Defense) - Taunt - TM12
  (386, 38602, 269, 8, NULL, 2, NULL, NULL, 8002012, NULL, 23),
  -- Deoxys (Defense) - Ice Beam - TM13
  (386, 38602, 58, 8, NULL, 2, NULL, NULL, 8002013, NULL, 24),
  -- Deoxys (Defense) - Hyper Beam - TM15
  (386, 38602, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 25),
  -- Deoxys (Defense) - Light Screen - TM16
  (386, 38602, 113, 8, NULL, 2, NULL, NULL, 8002016, NULL, 26),
  -- Deoxys (Defense) - Protect - TM17
  (386, 38602, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 27),
  -- Deoxys (Defense) - Rain Dance - TM18
  (386, 38602, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 28),
  -- Deoxys (Defense) - Safeguard - TM20
  (386, 38602, 219, 8, NULL, 2, NULL, NULL, 8002020, NULL, 29),
  -- Deoxys (Defense) - Frustration - TM21
  (386, 38602, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 30),
  -- Deoxys (Defense) - Solar Beam - TM22
  (386, 38602, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 31),
  -- Deoxys (Defense) - Thunderbolt - TM24
  (386, 38602, 85, 8, NULL, 2, NULL, NULL, 8002024, NULL, 32),
  -- Deoxys (Defense) - Thunder - TM25
  (386, 38602, 87, 8, NULL, 2, NULL, NULL, 8002025, NULL, 33),
  -- Deoxys (Defense) - Return - TM27
  (386, 38602, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 34),
  -- Deoxys (Defense) - Psychic - TM29
  (386, 38602, 94, 8, NULL, 2, NULL, NULL, 8002029, NULL, 35),
  -- Deoxys (Defense) - Shadow Ball - TM30
  (386, 38602, 247, 8, NULL, 2, NULL, NULL, 8002030, NULL, 36),
  -- Deoxys (Defense) - Brick Break - TM31
  (386, 38602, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 37),
  -- Deoxys (Defense) - Double Team - TM32
  (386, 38602, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 38),
  -- Deoxys (Defense) - Reflect - TM33
  (386, 38602, 115, 8, NULL, 2, NULL, NULL, 8002033, NULL, 39),
  -- Deoxys (Defense) - Shock Wave - TM34
  (386, 38602, 351, 8, NULL, 2, NULL, NULL, 8002034, NULL, 40),
  -- Deoxys (Defense) - Rock Tomb - TM39
  (386, 38602, 317, 8, NULL, 2, NULL, NULL, 8002039, NULL, 41),
  -- Deoxys (Defense) - Aerial Ace - TM40
  (386, 38602, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 42),
  -- Deoxys (Defense) - Torment - TM41
  (386, 38602, 259, 8, NULL, 2, NULL, NULL, 8002041, NULL, 43),
  -- Deoxys (Defense) - Facade - TM42
  (386, 38602, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 44),
  -- Deoxys (Defense) - Secret Power - TM43
  (386, 38602, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 45),
  -- Deoxys (Defense) - Rest - TM44
  (386, 38602, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 46),
  -- Deoxys (Defense) - Skill Swap - TM48
  (386, 38602, 285, 8, NULL, 2, NULL, NULL, 8002048, NULL, 47),
  -- Deoxys (Defense) - Snatch - TM49
  (386, 38602, 289, 8, NULL, 2, NULL, NULL, 8002049, NULL, 48),
  -- Deoxys (Defense) - Focus Blast - TM52
  (386, 38602, 411, 8, NULL, 2, NULL, NULL, 8002052, NULL, 49),
  -- Deoxys (Defense) - Energy Ball - TM53
  (386, 38602, 412, 8, NULL, 2, NULL, NULL, 8002053, NULL, 50),
  -- Deoxys (Defense) - Fling - TM56
  (386, 38602, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 51),
  -- Deoxys (Defense) - Charge Beam - TM57
  (386, 38602, 451, 8, NULL, 2, NULL, NULL, 8002057, NULL, 52),
  -- Deoxys (Defense) - Endure - TM58
  (386, 38602, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 53),
  -- Deoxys (Defense) - Drain Punch - TM60
  (386, 38602, 409, 8, NULL, 2, NULL, NULL, 8002060, NULL, 54),
  -- Deoxys (Defense) - Recycle - TM67
  (386, 38602, 278, 8, NULL, 2, NULL, NULL, 8002067, NULL, 55),
  -- Deoxys (Defense) - Giga Impact - TM68
  (386, 38602, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 56),
  -- Deoxys (Defense) - Flash - TM70
  (386, 38602, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 57),
  -- Deoxys (Defense) - Avalanche - TM72
  (386, 38602, 419, 8, NULL, 2, NULL, NULL, 8002072, NULL, 58),
  -- Deoxys (Defense) - Thunder Wave - TM73
  (386, 38602, 86, 8, NULL, 2, NULL, NULL, 8002073, NULL, 59),
  -- Deoxys (Defense) - Stealth Rock - TM76
  (386, 38602, 446, 8, NULL, 2, NULL, NULL, 8002076, NULL, 60),
  -- Deoxys (Defense) - Psych Up - TM77
  (386, 38602, 244, 8, NULL, 2, NULL, NULL, 8002077, NULL, 61),
  -- Deoxys (Defense) - Rock Slide - TM80
  (386, 38602, 157, 8, NULL, 2, NULL, NULL, 8002080, NULL, 62),
  -- Deoxys (Defense) - Sleep Talk - TM82
  (386, 38602, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 63),
  -- Deoxys (Defense) - Natural Gift - TM83
  (386, 38602, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 64),
  -- Deoxys (Defense) - Poison Jab - TM84
  (386, 38602, 398, 8, NULL, 2, NULL, NULL, 8002084, NULL, 65),
  -- Deoxys (Defense) - Dream Eater - TM85
  (386, 38602, 138, 8, NULL, 2, NULL, NULL, 8002085, NULL, 66),
  -- Deoxys (Defense) - Grass Knot - TM86
  (386, 38602, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 67),
  -- Deoxys (Defense) - Swagger - TM87
  (386, 38602, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 68),
  -- Deoxys (Defense) - Substitute - TM90
  (386, 38602, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 69),
  -- Deoxys (Defense) - Flash Cannon - TM91
  (386, 38602, 430, 8, NULL, 2, NULL, NULL, 8002091, NULL, 70),
  -- Deoxys (Defense) - Trick Room - TM92
  (386, 38602, 433, 8, NULL, 2, NULL, NULL, 8002092, NULL, 71),
  -- Deoxys (Defense) - Cut - HM01
  (386, 38602, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 72),
  -- Deoxys (Defense) - Strength - HM04
  (386, 38602, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 73),
  -- Deoxys (Defense) - Rock Smash - HM06
  (386, 38602, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 74),
  -- Deoxys (Speed) - Wrap - Level 1
  (386, 38603, 35, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Speed) - Leer - Level 1
  (386, 38603, 43, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Speed) - Night Shade - Level 9
  (386, 38603, 101, 8, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Deoxys (Speed) - Double Team - Level 17
  (386, 38603, 104, 8, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Deoxys (Speed) - Knock Off - Level 25
  (386, 38603, 282, 8, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Deoxys (Speed) - Pursuit - Level 33
  (386, 38603, 228, 8, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Deoxys (Speed) - Psychic - Level 41
  (386, 38603, 94, 8, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Deoxys (Speed) - Swift - Level 49
  (386, 38603, 129, 8, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Deoxys (Speed) - Psycho Shift - Level 57
  (386, 38603, 375, 8, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Deoxys (Speed) - Zen Headbutt - Level 65
  (386, 38603, 428, 8, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Deoxys (Speed) - Agility - Level 73
  (386, 38603, 97, 8, NULL, 1, 73, NULL, NULL, NULL, 11),
  -- Deoxys (Speed) - Recover - Level 81
  (386, 38603, 105, 8, NULL, 1, 81, NULL, NULL, NULL, 12),
  -- Deoxys (Speed) - Psycho Boost - Level 89
  (386, 38603, 354, 8, NULL, 1, 89, NULL, NULL, NULL, 13),
  -- Deoxys (Speed) - Extreme Speed - Level 97
  (386, 38603, 245, 8, NULL, 1, 97, NULL, NULL, NULL, 14),
  -- Deoxys (Speed) - Focus Punch - TM01
  (386, 38603, 264, 8, NULL, 2, NULL, NULL, 8002001, NULL, 15),
  -- Deoxys (Speed) - Water Pulse - TM03
  (386, 38603, 352, 8, NULL, 2, NULL, NULL, 8002003, NULL, 16),
  -- Deoxys (Speed) - Calm Mind - TM04
  (386, 38603, 347, 8, NULL, 2, NULL, NULL, 8002004, NULL, 17),
  -- Deoxys (Speed) - Toxic - TM06
  (386, 38603, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 18),
  -- Deoxys (Speed) - Hidden Power - TM10
  (386, 38603, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 19),
  -- Deoxys (Speed) - Sunny Day - TM11
  (386, 38603, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 20),
  -- Deoxys (Speed) - Taunt - TM12
  (386, 38603, 269, 8, NULL, 2, NULL, NULL, 8002012, NULL, 21),
  -- Deoxys (Speed) - Ice Beam - TM13
  (386, 38603, 58, 8, NULL, 2, NULL, NULL, 8002013, NULL, 22),
  -- Deoxys (Speed) - Hyper Beam - TM15
  (386, 38603, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 23),
  -- Deoxys (Speed) - Light Screen - TM16
  (386, 38603, 113, 8, NULL, 2, NULL, NULL, 8002016, NULL, 24),
  -- Deoxys (Speed) - Protect - TM17
  (386, 38603, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 25),
  -- Deoxys (Speed) - Rain Dance - TM18
  (386, 38603, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 26),
  -- Deoxys (Speed) - Safeguard - TM20
  (386, 38603, 219, 8, NULL, 2, NULL, NULL, 8002020, NULL, 27),
  -- Deoxys (Speed) - Frustration - TM21
  (386, 38603, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 28),
  -- Deoxys (Speed) - Solar Beam - TM22
  (386, 38603, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 29),
  -- Deoxys (Speed) - Thunderbolt - TM24
  (386, 38603, 85, 8, NULL, 2, NULL, NULL, 8002024, NULL, 30),
  -- Deoxys (Speed) - Thunder - TM25
  (386, 38603, 87, 8, NULL, 2, NULL, NULL, 8002025, NULL, 31),
  -- Deoxys (Speed) - Return - TM27
  (386, 38603, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 32),
  -- Deoxys (Speed) - Psychic - TM29
  (386, 38603, 94, 8, NULL, 2, NULL, NULL, 8002029, NULL, 33),
  -- Deoxys (Speed) - Shadow Ball - TM30
  (386, 38603, 247, 8, NULL, 2, NULL, NULL, 8002030, NULL, 34),
  -- Deoxys (Speed) - Brick Break - TM31
  (386, 38603, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 35),
  -- Deoxys (Speed) - Double Team - TM32
  (386, 38603, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 36),
  -- Deoxys (Speed) - Reflect - TM33
  (386, 38603, 115, 8, NULL, 2, NULL, NULL, 8002033, NULL, 37),
  -- Deoxys (Speed) - Shock Wave - TM34
  (386, 38603, 351, 8, NULL, 2, NULL, NULL, 8002034, NULL, 38),
  -- Deoxys (Speed) - Rock Tomb - TM39
  (386, 38603, 317, 8, NULL, 2, NULL, NULL, 8002039, NULL, 39),
  -- Deoxys (Speed) - Aerial Ace - TM40
  (386, 38603, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 40),
  -- Deoxys (Speed) - Torment - TM41
  (386, 38603, 259, 8, NULL, 2, NULL, NULL, 8002041, NULL, 41),
  -- Deoxys (Speed) - Facade - TM42
  (386, 38603, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 42),
  -- Deoxys (Speed) - Secret Power - TM43
  (386, 38603, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 43),
  -- Deoxys (Speed) - Rest - TM44
  (386, 38603, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 44),
  -- Deoxys (Speed) - Skill Swap - TM48
  (386, 38603, 285, 8, NULL, 2, NULL, NULL, 8002048, NULL, 45),
  -- Deoxys (Speed) - Snatch - TM49
  (386, 38603, 289, 8, NULL, 2, NULL, NULL, 8002049, NULL, 46),
  -- Deoxys (Speed) - Focus Blast - TM52
  (386, 38603, 411, 8, NULL, 2, NULL, NULL, 8002052, NULL, 47),
  -- Deoxys (Speed) - Energy Ball - TM53
  (386, 38603, 412, 8, NULL, 2, NULL, NULL, 8002053, NULL, 48),
  -- Deoxys (Speed) - Fling - TM56
  (386, 38603, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 49),
  -- Deoxys (Speed) - Charge Beam - TM57
  (386, 38603, 451, 8, NULL, 2, NULL, NULL, 8002057, NULL, 50),
  -- Deoxys (Speed) - Endure - TM58
  (386, 38603, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 51),
  -- Deoxys (Speed) - Drain Punch - TM60
  (386, 38603, 409, 8, NULL, 2, NULL, NULL, 8002060, NULL, 52),
  -- Deoxys (Speed) - Recycle - TM67
  (386, 38603, 278, 8, NULL, 2, NULL, NULL, 8002067, NULL, 53),
  -- Deoxys (Speed) - Giga Impact - TM68
  (386, 38603, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 54),
  -- Deoxys (Speed) - Flash - TM70
  (386, 38603, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 55),
  -- Deoxys (Speed) - Avalanche - TM72
  (386, 38603, 419, 8, NULL, 2, NULL, NULL, 8002072, NULL, 56),
  -- Deoxys (Speed) - Thunder Wave - TM73
  (386, 38603, 86, 8, NULL, 2, NULL, NULL, 8002073, NULL, 57),
  -- Deoxys (Speed) - Stealth Rock - TM76
  (386, 38603, 446, 8, NULL, 2, NULL, NULL, 8002076, NULL, 58),
  -- Deoxys (Speed) - Psych Up - TM77
  (386, 38603, 244, 8, NULL, 2, NULL, NULL, 8002077, NULL, 59),
  -- Deoxys (Speed) - Rock Slide - TM80
  (386, 38603, 157, 8, NULL, 2, NULL, NULL, 8002080, NULL, 60),
  -- Deoxys (Speed) - Sleep Talk - TM82
  (386, 38603, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 61),
  -- Deoxys (Speed) - Natural Gift - TM83
  (386, 38603, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 62),
  -- Deoxys (Speed) - Poison Jab - TM84
  (386, 38603, 398, 8, NULL, 2, NULL, NULL, 8002084, NULL, 63),
  -- Deoxys (Speed) - Dream Eater - TM85
  (386, 38603, 138, 8, NULL, 2, NULL, NULL, 8002085, NULL, 64),
  -- Deoxys (Speed) - Grass Knot - TM86
  (386, 38603, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 65),
  -- Deoxys (Speed) - Swagger - TM87
  (386, 38603, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 66),
  -- Deoxys (Speed) - Substitute - TM90
  (386, 38603, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 67),
  -- Deoxys (Speed) - Flash Cannon - TM91
  (386, 38603, 430, 8, NULL, 2, NULL, NULL, 8002091, NULL, 68),
  -- Deoxys (Speed) - Trick Room - TM92
  (386, 38603, 433, 8, NULL, 2, NULL, NULL, 8002092, NULL, 69),
  -- Deoxys (Speed) - Cut - HM01
  (386, 38603, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 70),
  -- Deoxys (Speed) - Strength - HM04
  (386, 38603, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 71),
  -- Deoxys (Speed) - Rock Smash - HM06
  (386, 38603, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 72),
  -- Wormadam (Sandy Cloak) - Tackle - Level 1
  (413, 41301, 33, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam (Sandy Cloak) - Protect - Level 10
  (413, 41301, 182, 8, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Wormadam (Sandy Cloak) - Hidden Power - Level 20
  (413, 41301, 237, 8, NULL, 1, 20, NULL, NULL, NULL, 3),
  -- Wormadam (Sandy Cloak) - Confusion - Level 23
  (413, 41301, 93, 8, NULL, 1, 23, NULL, NULL, NULL, 4),
  -- Wormadam (Sandy Cloak) - Rock Blast - Level 26
  (413, 41301, 350, 8, NULL, 1, 26, NULL, NULL, NULL, 5),
  -- Wormadam (Sandy Cloak) - Harden - Level 29
  (413, 41301, 106, 8, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Wormadam (Sandy Cloak) - Psybeam - Level 32
  (413, 41301, 60, 8, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Wormadam (Sandy Cloak) - Captivate - Level 35
  (413, 41301, 445, 8, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Wormadam (Sandy Cloak) - Flail - Level 38
  (413, 41301, 175, 8, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Wormadam (Sandy Cloak) - Attract - Level 41
  (413, 41301, 213, 8, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Wormadam (Sandy Cloak) - Psychic - Level 44
  (413, 41301, 94, 8, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Wormadam (Sandy Cloak) - Fissure - Level 47
  (413, 41301, 90, 8, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Wormadam (Sandy Cloak) - Toxic - TM06
  (413, 41301, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 13),
  -- Wormadam (Sandy Cloak) - Bullet Seed - TM09
  (413, 41301, 331, 8, NULL, 2, NULL, NULL, 8002009, NULL, 14),
  -- Wormadam (Sandy Cloak) - Hidden Power - TM10
  (413, 41301, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 15),
  -- Wormadam (Sandy Cloak) - Sunny Day - TM11
  (413, 41301, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 16),
  -- Wormadam (Sandy Cloak) - Hyper Beam - TM15
  (413, 41301, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 17),
  -- Wormadam (Sandy Cloak) - Protect - TM17
  (413, 41301, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 18),
  -- Wormadam (Sandy Cloak) - Rain Dance - TM18
  (413, 41301, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 19),
  -- Wormadam (Sandy Cloak) - Giga Drain - TM19
  (413, 41301, 202, 8, NULL, 2, NULL, NULL, 8002019, NULL, 20),
  -- Wormadam (Sandy Cloak) - Safeguard - TM20
  (413, 41301, 219, 8, NULL, 2, NULL, NULL, 8002020, NULL, 21),
  -- Wormadam (Sandy Cloak) - Frustration - TM21
  (413, 41301, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 22),
  -- Wormadam (Sandy Cloak) - Solar Beam - TM22
  (413, 41301, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 23),
  -- Wormadam (Sandy Cloak) - Earthquake - TM26
  (413, 41301, 89, 8, NULL, 2, NULL, NULL, 8002026, NULL, 24),
  -- Wormadam (Sandy Cloak) - Return - TM27
  (413, 41301, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 25),
  -- Wormadam (Sandy Cloak) - Dig - TM28
  (413, 41301, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 26),
  -- Wormadam (Sandy Cloak) - Psychic - TM29
  (413, 41301, 94, 8, NULL, 2, NULL, NULL, 8002029, NULL, 27),
  -- Wormadam (Sandy Cloak) - Shadow Ball - TM30
  (413, 41301, 247, 8, NULL, 2, NULL, NULL, 8002030, NULL, 28),
  -- Wormadam (Sandy Cloak) - Double Team - TM32
  (413, 41301, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 29),
  -- Wormadam (Sandy Cloak) - Sandstorm - TM37
  (413, 41301, 201, 8, NULL, 2, NULL, NULL, 8002037, NULL, 30),
  -- Wormadam (Sandy Cloak) - Rock Tomb - TM39
  (413, 41301, 317, 8, NULL, 2, NULL, NULL, 8002039, NULL, 31),
  -- Wormadam (Sandy Cloak) - Facade - TM42
  (413, 41301, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 32),
  -- Wormadam (Sandy Cloak) - Secret Power - TM43
  (413, 41301, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 33),
  -- Wormadam (Sandy Cloak) - Rest - TM44
  (413, 41301, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 34),
  -- Wormadam (Sandy Cloak) - Attract - TM45
  (413, 41301, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 35),
  -- Wormadam (Sandy Cloak) - Thief - TM46
  (413, 41301, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 36),
  -- Wormadam (Sandy Cloak) - Skill Swap - TM48
  (413, 41301, 285, 8, NULL, 2, NULL, NULL, 8002048, NULL, 37),
  -- Wormadam (Sandy Cloak) - Energy Ball - TM53
  (413, 41301, 412, 8, NULL, 2, NULL, NULL, 8002053, NULL, 38),
  -- Wormadam (Sandy Cloak) - Endure - TM58
  (413, 41301, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 39),
  -- Wormadam (Sandy Cloak) - Giga Impact - TM68
  (413, 41301, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 40),
  -- Wormadam (Sandy Cloak) - Flash - TM70
  (413, 41301, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 41),
  -- Wormadam (Sandy Cloak) - Gyro Ball - TM74
  (413, 41301, 360, 8, NULL, 2, NULL, NULL, 8002074, NULL, 42),
  -- Wormadam (Sandy Cloak) - Stealth Rock - TM76
  (413, 41301, 446, 8, NULL, 2, NULL, NULL, 8002076, NULL, 43),
  -- Wormadam (Sandy Cloak) - Psych Up - TM77
  (413, 41301, 244, 8, NULL, 2, NULL, NULL, 8002077, NULL, 44),
  -- Wormadam (Sandy Cloak) - Captivate - TM78
  (413, 41301, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 45),
  -- Wormadam (Sandy Cloak) - Sleep Talk - TM82
  (413, 41301, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 46),
  -- Wormadam (Sandy Cloak) - Natural Gift - TM83
  (413, 41301, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 47),
  -- Wormadam (Sandy Cloak) - Dream Eater - TM85
  (413, 41301, 138, 8, NULL, 2, NULL, NULL, 8002085, NULL, 48),
  -- Wormadam (Sandy Cloak) - Grass Knot - TM86
  (413, 41301, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 49),
  -- Wormadam (Sandy Cloak) - Swagger - TM87
  (413, 41301, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 50),
  -- Wormadam (Sandy Cloak) - Substitute - TM90
  (413, 41301, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 51),
  -- Wormadam (Sandy Cloak) - Flash Cannon - TM91
  (413, 41301, 430, 8, NULL, 2, NULL, NULL, 8002091, NULL, 52),
  -- Wormadam (Trash Cloak) - Tackle - Level 1
  (413, 41302, 33, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam (Trash Cloak) - Protect - Level 10
  (413, 41302, 182, 8, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Wormadam (Trash Cloak) - Hidden Power - Level 20
  (413, 41302, 237, 8, NULL, 1, 20, NULL, NULL, NULL, 3),
  -- Wormadam (Trash Cloak) - Confusion - Level 23
  (413, 41302, 93, 8, NULL, 1, 23, NULL, NULL, NULL, 4),
  -- Wormadam (Trash Cloak) - Mirror Shot - Level 26
  (413, 41302, 429, 8, NULL, 1, 26, NULL, NULL, NULL, 5),
  -- Wormadam (Trash Cloak) - Metal Sound - Level 29
  (413, 41302, 319, 8, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Wormadam (Trash Cloak) - Psybeam - Level 32
  (413, 41302, 60, 8, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Wormadam (Trash Cloak) - Captivate - Level 35
  (413, 41302, 445, 8, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Wormadam (Trash Cloak) - Flail - Level 38
  (413, 41302, 175, 8, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Wormadam (Trash Cloak) - Attract - Level 41
  (413, 41302, 213, 8, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Wormadam (Trash Cloak) - Psychic - Level 44
  (413, 41302, 94, 8, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Wormadam (Trash Cloak) - Iron Head - Level 47
  (413, 41302, 442, 8, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Wormadam (Trash Cloak) - Toxic - TM06
  (413, 41302, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 13),
  -- Wormadam (Trash Cloak) - Bullet Seed - TM09
  (413, 41302, 331, 8, NULL, 2, NULL, NULL, 8002009, NULL, 14),
  -- Wormadam (Trash Cloak) - Hidden Power - TM10
  (413, 41302, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 15),
  -- Wormadam (Trash Cloak) - Sunny Day - TM11
  (413, 41302, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 16),
  -- Wormadam (Trash Cloak) - Hyper Beam - TM15
  (413, 41302, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 17),
  -- Wormadam (Trash Cloak) - Protect - TM17
  (413, 41302, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 18),
  -- Wormadam (Trash Cloak) - Rain Dance - TM18
  (413, 41302, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 19),
  -- Wormadam (Trash Cloak) - Giga Drain - TM19
  (413, 41302, 202, 8, NULL, 2, NULL, NULL, 8002019, NULL, 20),
  -- Wormadam (Trash Cloak) - Safeguard - TM20
  (413, 41302, 219, 8, NULL, 2, NULL, NULL, 8002020, NULL, 21),
  -- Wormadam (Trash Cloak) - Frustration - TM21
  (413, 41302, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 22),
  -- Wormadam (Trash Cloak) - Solar Beam - TM22
  (413, 41302, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 23),
  -- Wormadam (Trash Cloak) - Earthquake - TM26
  (413, 41302, 89, 8, NULL, 2, NULL, NULL, 8002026, NULL, 24),
  -- Wormadam (Trash Cloak) - Return - TM27
  (413, 41302, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 25),
  -- Wormadam (Trash Cloak) - Dig - TM28
  (413, 41302, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 26),
  -- Wormadam (Trash Cloak) - Psychic - TM29
  (413, 41302, 94, 8, NULL, 2, NULL, NULL, 8002029, NULL, 27),
  -- Wormadam (Trash Cloak) - Shadow Ball - TM30
  (413, 41302, 247, 8, NULL, 2, NULL, NULL, 8002030, NULL, 28),
  -- Wormadam (Trash Cloak) - Double Team - TM32
  (413, 41302, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 29),
  -- Wormadam (Trash Cloak) - Sandstorm - TM37
  (413, 41302, 201, 8, NULL, 2, NULL, NULL, 8002037, NULL, 30),
  -- Wormadam (Trash Cloak) - Rock Tomb - TM39
  (413, 41302, 317, 8, NULL, 2, NULL, NULL, 8002039, NULL, 31),
  -- Wormadam (Trash Cloak) - Facade - TM42
  (413, 41302, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 32),
  -- Wormadam (Trash Cloak) - Secret Power - TM43
  (413, 41302, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 33),
  -- Wormadam (Trash Cloak) - Rest - TM44
  (413, 41302, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 34),
  -- Wormadam (Trash Cloak) - Attract - TM45
  (413, 41302, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 35),
  -- Wormadam (Trash Cloak) - Thief - TM46
  (413, 41302, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 36),
  -- Wormadam (Trash Cloak) - Skill Swap - TM48
  (413, 41302, 285, 8, NULL, 2, NULL, NULL, 8002048, NULL, 37),
  -- Wormadam (Trash Cloak) - Energy Ball - TM53
  (413, 41302, 412, 8, NULL, 2, NULL, NULL, 8002053, NULL, 38),
  -- Wormadam (Trash Cloak) - Endure - TM58
  (413, 41302, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 39),
  -- Wormadam (Trash Cloak) - Giga Impact - TM68
  (413, 41302, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 40),
  -- Wormadam (Trash Cloak) - Flash - TM70
  (413, 41302, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 41),
  -- Wormadam (Trash Cloak) - Gyro Ball - TM74
  (413, 41302, 360, 8, NULL, 2, NULL, NULL, 8002074, NULL, 42),
  -- Wormadam (Trash Cloak) - Stealth Rock - TM76
  (413, 41302, 446, 8, NULL, 2, NULL, NULL, 8002076, NULL, 43),
  -- Wormadam (Trash Cloak) - Psych Up - TM77
  (413, 41302, 244, 8, NULL, 2, NULL, NULL, 8002077, NULL, 44),
  -- Wormadam (Trash Cloak) - Captivate - TM78
  (413, 41302, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 45),
  -- Wormadam (Trash Cloak) - Sleep Talk - TM82
  (413, 41302, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 46),
  -- Wormadam (Trash Cloak) - Natural Gift - TM83
  (413, 41302, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 47),
  -- Wormadam (Trash Cloak) - Dream Eater - TM85
  (413, 41302, 138, 8, NULL, 2, NULL, NULL, 8002085, NULL, 48),
  -- Wormadam (Trash Cloak) - Grass Knot - TM86
  (413, 41302, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 49),
  -- Wormadam (Trash Cloak) - Swagger - TM87
  (413, 41302, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 50),
  -- Wormadam (Trash Cloak) - Substitute - TM90
  (413, 41302, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 51),
  -- Wormadam (Trash Cloak) - Flash Cannon - TM91
  (413, 41302, 430, 8, NULL, 2, NULL, NULL, 8002091, NULL, 52);
