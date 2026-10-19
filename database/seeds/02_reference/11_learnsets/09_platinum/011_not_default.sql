-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation IV Pokémon learnset raw pages, using Platinum
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii Platinum Pokedex learnset pages, Serebii Platinum
-- Move Tutor pages, and PokemonDB Generation 4 Platinum learnset pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Platinum
-- Pokémon: not-default forms
-- Rows: 726
-- Scope: level-up, TM, HM, egg move, and Move Tutor acquisition rows.
-- Event, transfer, and prior-evolution sections are intentionally excluded from
-- this Platinum seed.
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
  (386, 38601, 35, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Attack) - Leer - Level 1
  (386, 38601, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Attack) - Night Shade - Level 9
  (386, 38601, 101, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Deoxys (Attack) - Teleport - Level 17
  (386, 38601, 100, 9, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Deoxys (Attack) - Taunt - Level 25
  (386, 38601, 269, 9, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Deoxys (Attack) - Pursuit - Level 33
  (386, 38601, 228, 9, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Deoxys (Attack) - Psychic - Level 41
  (386, 38601, 94, 9, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Deoxys (Attack) - Superpower - Level 49
  (386, 38601, 276, 9, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Deoxys (Attack) - Psycho Shift - Level 57
  (386, 38601, 375, 9, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Deoxys (Attack) - Zen Headbutt - Level 65
  (386, 38601, 428, 9, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Deoxys (Attack) - Cosmic Power - Level 73
  (386, 38601, 322, 9, NULL, 1, 73, NULL, NULL, NULL, 11),
  -- Deoxys (Attack) - Zap Cannon - Level 81
  (386, 38601, 192, 9, NULL, 1, 81, NULL, NULL, NULL, 12),
  -- Deoxys (Attack) - Psycho Boost - Level 89
  (386, 38601, 354, 9, NULL, 1, 89, NULL, NULL, NULL, 13),
  -- Deoxys (Attack) - Hyper Beam - Level 97
  (386, 38601, 63, 9, NULL, 1, 97, NULL, NULL, NULL, 14),
  -- Deoxys (Attack) - Focus Punch - TM01
  (386, 38601, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Deoxys (Attack) - Water Pulse - TM03
  (386, 38601, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Deoxys (Attack) - Calm Mind - TM04
  (386, 38601, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 17),
  -- Deoxys (Attack) - Toxic - TM06
  (386, 38601, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Deoxys (Attack) - Hidden Power - TM10
  (386, 38601, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Deoxys (Attack) - Sunny Day - TM11
  (386, 38601, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Deoxys (Attack) - Taunt - TM12
  (386, 38601, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 21),
  -- Deoxys (Attack) - Ice Beam - TM13
  (386, 38601, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 22),
  -- Deoxys (Attack) - Hyper Beam - TM15
  (386, 38601, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Deoxys (Attack) - Light Screen - TM16
  (386, 38601, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 24),
  -- Deoxys (Attack) - Protect - TM17
  (386, 38601, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Deoxys (Attack) - Rain Dance - TM18
  (386, 38601, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Deoxys (Attack) - Safeguard - TM20
  (386, 38601, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 27),
  -- Deoxys (Attack) - Frustration - TM21
  (386, 38601, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Deoxys (Attack) - Solar Beam - TM22
  (386, 38601, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 29),
  -- Deoxys (Attack) - Thunderbolt - TM24
  (386, 38601, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 30),
  -- Deoxys (Attack) - Thunder - TM25
  (386, 38601, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 31),
  -- Deoxys (Attack) - Return - TM27
  (386, 38601, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 32),
  -- Deoxys (Attack) - Psychic - TM29
  (386, 38601, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 33),
  -- Deoxys (Attack) - Shadow Ball - TM30
  (386, 38601, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 34),
  -- Deoxys (Attack) - Brick Break - TM31
  (386, 38601, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 35),
  -- Deoxys (Attack) - Double Team - TM32
  (386, 38601, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 36),
  -- Deoxys (Attack) - Reflect - TM33
  (386, 38601, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 37),
  -- Deoxys (Attack) - Shock Wave - TM34
  (386, 38601, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 38),
  -- Deoxys (Attack) - Rock Tomb - TM39
  (386, 38601, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 39),
  -- Deoxys (Attack) - Aerial Ace - TM40
  (386, 38601, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 40),
  -- Deoxys (Attack) - Torment - TM41
  (386, 38601, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 41),
  -- Deoxys (Attack) - Facade - TM42
  (386, 38601, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 42),
  -- Deoxys (Attack) - Secret Power - TM43
  (386, 38601, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 43),
  -- Deoxys (Attack) - Rest - TM44
  (386, 38601, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 44),
  -- Deoxys (Attack) - Skill Swap - TM48
  (386, 38601, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 45),
  -- Deoxys (Attack) - Snatch - TM49
  (386, 38601, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 46),
  -- Deoxys (Attack) - Focus Blast - TM52
  (386, 38601, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 47),
  -- Deoxys (Attack) - Energy Ball - TM53
  (386, 38601, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 48),
  -- Deoxys (Attack) - Fling - TM56
  (386, 38601, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 49),
  -- Deoxys (Attack) - Charge Beam - TM57
  (386, 38601, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 50),
  -- Deoxys (Attack) - Endure - TM58
  (386, 38601, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 51),
  -- Deoxys (Attack) - Drain Punch - TM60
  (386, 38601, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 52),
  -- Deoxys (Attack) - Recycle - TM67
  (386, 38601, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 53),
  -- Deoxys (Attack) - Giga Impact - TM68
  (386, 38601, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 54),
  -- Deoxys (Attack) - Flash - TM70
  (386, 38601, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 55),
  -- Deoxys (Attack) - Avalanche - TM72
  (386, 38601, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 56),
  -- Deoxys (Attack) - Thunder Wave - TM73
  (386, 38601, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 57),
  -- Deoxys (Attack) - Stealth Rock - TM76
  (386, 38601, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 58),
  -- Deoxys (Attack) - Psych Up - TM77
  (386, 38601, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 59),
  -- Deoxys (Attack) - Rock Slide - TM80
  (386, 38601, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 60),
  -- Deoxys (Attack) - Sleep Talk - TM82
  (386, 38601, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 61),
  -- Deoxys (Attack) - Natural Gift - TM83
  (386, 38601, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 62),
  -- Deoxys (Attack) - Poison Jab - TM84
  (386, 38601, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 63),
  -- Deoxys (Attack) - Dream Eater - TM85
  (386, 38601, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 64),
  -- Deoxys (Attack) - Grass Knot - TM86
  (386, 38601, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 65),
  -- Deoxys (Attack) - Swagger - TM87
  (386, 38601, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 66),
  -- Deoxys (Attack) - Substitute - TM90
  (386, 38601, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 67),
  -- Deoxys (Attack) - Flash Cannon - TM91
  (386, 38601, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 68),
  -- Deoxys (Attack) - Trick Room - TM92
  (386, 38601, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 69),
  -- Deoxys (Attack) - Cut - HM01
  (386, 38601, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 70),
  -- Deoxys (Attack) - Strength - HM04
  (386, 38601, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 71),
  -- Deoxys (Attack) - Rock Smash - HM06
  (386, 38601, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 72),
  -- Deoxys (Attack) - Snore - Tutor
  (386, 38601, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Deoxys (Attack) - Mud-Slap - Tutor
  (386, 38601, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Deoxys (Attack) - Trick - Tutor
  (386, 38601, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Deoxys (Attack) - Superpower - Tutor
  (386, 38601, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Deoxys (Attack) - Signal Beam - Tutor
  (386, 38601, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Deoxys (Attack) - Zen Headbutt - Tutor
  (386, 38601, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Deoxys (Defense) - Wrap - Level 1
  (386, 38602, 35, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Defense) - Leer - Level 1
  (386, 38602, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Defense) - Night Shade - Level 9
  (386, 38602, 101, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Deoxys (Defense) - Teleport - Level 17
  (386, 38602, 100, 9, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Deoxys (Defense) - Knock Off - Level 25
  (386, 38602, 282, 9, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Deoxys (Defense) - Spikes - Level 33
  (386, 38602, 191, 9, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Deoxys (Defense) - Psychic - Level 41
  (386, 38602, 94, 9, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Deoxys (Defense) - Snatch - Level 49
  (386, 38602, 289, 9, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Deoxys (Defense) - Psycho Shift - Level 57
  (386, 38602, 375, 9, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Deoxys (Defense) - Zen Headbutt - Level 65
  (386, 38602, 428, 9, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Deoxys (Defense) - Amnesia - Level 73
  (386, 38602, 133, 9, NULL, 1, 73, NULL, NULL, NULL, 11),
  -- Deoxys (Defense) - Iron Defense - Level 73
  (386, 38602, 334, 9, NULL, 1, 73, NULL, NULL, NULL, 12),
  -- Deoxys (Defense) - Recover - Level 81
  (386, 38602, 105, 9, NULL, 1, 81, NULL, NULL, NULL, 13),
  -- Deoxys (Defense) - Psycho Boost - Level 89
  (386, 38602, 354, 9, NULL, 1, 89, NULL, NULL, NULL, 14),
  -- Deoxys (Defense) - Counter - Level 97
  (386, 38602, 68, 9, NULL, 1, 97, NULL, NULL, NULL, 15),
  -- Deoxys (Defense) - Mirror Coat - Level 97
  (386, 38602, 243, 9, NULL, 1, 97, NULL, NULL, NULL, 16),
  -- Deoxys (Defense) - Focus Punch - TM01
  (386, 38602, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 17),
  -- Deoxys (Defense) - Water Pulse - TM03
  (386, 38602, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 18),
  -- Deoxys (Defense) - Calm Mind - TM04
  (386, 38602, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 19),
  -- Deoxys (Defense) - Toxic - TM06
  (386, 38602, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Deoxys (Defense) - Hidden Power - TM10
  (386, 38602, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Deoxys (Defense) - Sunny Day - TM11
  (386, 38602, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 22),
  -- Deoxys (Defense) - Taunt - TM12
  (386, 38602, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 23),
  -- Deoxys (Defense) - Ice Beam - TM13
  (386, 38602, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 24),
  -- Deoxys (Defense) - Hyper Beam - TM15
  (386, 38602, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 25),
  -- Deoxys (Defense) - Light Screen - TM16
  (386, 38602, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 26),
  -- Deoxys (Defense) - Protect - TM17
  (386, 38602, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 27),
  -- Deoxys (Defense) - Rain Dance - TM18
  (386, 38602, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 28),
  -- Deoxys (Defense) - Safeguard - TM20
  (386, 38602, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 29),
  -- Deoxys (Defense) - Frustration - TM21
  (386, 38602, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 30),
  -- Deoxys (Defense) - Solar Beam - TM22
  (386, 38602, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 31),
  -- Deoxys (Defense) - Thunderbolt - TM24
  (386, 38602, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 32),
  -- Deoxys (Defense) - Thunder - TM25
  (386, 38602, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 33),
  -- Deoxys (Defense) - Return - TM27
  (386, 38602, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 34),
  -- Deoxys (Defense) - Psychic - TM29
  (386, 38602, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 35),
  -- Deoxys (Defense) - Shadow Ball - TM30
  (386, 38602, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 36),
  -- Deoxys (Defense) - Brick Break - TM31
  (386, 38602, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 37),
  -- Deoxys (Defense) - Double Team - TM32
  (386, 38602, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 38),
  -- Deoxys (Defense) - Reflect - TM33
  (386, 38602, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 39),
  -- Deoxys (Defense) - Shock Wave - TM34
  (386, 38602, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 40),
  -- Deoxys (Defense) - Rock Tomb - TM39
  (386, 38602, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 41),
  -- Deoxys (Defense) - Aerial Ace - TM40
  (386, 38602, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 42),
  -- Deoxys (Defense) - Torment - TM41
  (386, 38602, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 43),
  -- Deoxys (Defense) - Facade - TM42
  (386, 38602, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 44),
  -- Deoxys (Defense) - Secret Power - TM43
  (386, 38602, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 45),
  -- Deoxys (Defense) - Rest - TM44
  (386, 38602, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 46),
  -- Deoxys (Defense) - Skill Swap - TM48
  (386, 38602, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 47),
  -- Deoxys (Defense) - Snatch - TM49
  (386, 38602, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 48),
  -- Deoxys (Defense) - Focus Blast - TM52
  (386, 38602, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 49),
  -- Deoxys (Defense) - Energy Ball - TM53
  (386, 38602, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 50),
  -- Deoxys (Defense) - Fling - TM56
  (386, 38602, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 51),
  -- Deoxys (Defense) - Charge Beam - TM57
  (386, 38602, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 52),
  -- Deoxys (Defense) - Endure - TM58
  (386, 38602, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 53),
  -- Deoxys (Defense) - Drain Punch - TM60
  (386, 38602, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 54),
  -- Deoxys (Defense) - Recycle - TM67
  (386, 38602, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 55),
  -- Deoxys (Defense) - Giga Impact - TM68
  (386, 38602, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 56),
  -- Deoxys (Defense) - Flash - TM70
  (386, 38602, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 57),
  -- Deoxys (Defense) - Avalanche - TM72
  (386, 38602, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 58),
  -- Deoxys (Defense) - Thunder Wave - TM73
  (386, 38602, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 59),
  -- Deoxys (Defense) - Stealth Rock - TM76
  (386, 38602, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 60),
  -- Deoxys (Defense) - Psych Up - TM77
  (386, 38602, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 61),
  -- Deoxys (Defense) - Rock Slide - TM80
  (386, 38602, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 62),
  -- Deoxys (Defense) - Sleep Talk - TM82
  (386, 38602, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 63),
  -- Deoxys (Defense) - Natural Gift - TM83
  (386, 38602, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 64),
  -- Deoxys (Defense) - Poison Jab - TM84
  (386, 38602, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 65),
  -- Deoxys (Defense) - Dream Eater - TM85
  (386, 38602, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 66),
  -- Deoxys (Defense) - Grass Knot - TM86
  (386, 38602, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 67),
  -- Deoxys (Defense) - Swagger - TM87
  (386, 38602, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 68),
  -- Deoxys (Defense) - Substitute - TM90
  (386, 38602, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 69),
  -- Deoxys (Defense) - Flash Cannon - TM91
  (386, 38602, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 70),
  -- Deoxys (Defense) - Trick Room - TM92
  (386, 38602, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 71),
  -- Deoxys (Defense) - Cut - HM01
  (386, 38602, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 72),
  -- Deoxys (Defense) - Strength - HM04
  (386, 38602, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 73),
  -- Deoxys (Defense) - Rock Smash - HM06
  (386, 38602, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 74),
  -- Deoxys (Defense) - Snore - Tutor
  (386, 38602, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Deoxys (Defense) - Mud-Slap - Tutor
  (386, 38602, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Deoxys (Defense) - Trick - Tutor
  (386, 38602, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Deoxys (Defense) - Knock Off - Tutor
  (386, 38602, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Deoxys (Defense) - Signal Beam - Tutor
  (386, 38602, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Deoxys (Defense) - Iron Defense - Tutor
  (386, 38602, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Deoxys (Defense) - Zen Headbutt - Tutor
  (386, 38602, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 81),
  -- Deoxys (Speed) - Wrap - Level 1
  (386, 38603, 35, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Speed) - Leer - Level 1
  (386, 38603, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Speed) - Night Shade - Level 9
  (386, 38603, 101, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Deoxys (Speed) - Double Team - Level 17
  (386, 38603, 104, 9, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Deoxys (Speed) - Knock Off - Level 25
  (386, 38603, 282, 9, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Deoxys (Speed) - Pursuit - Level 33
  (386, 38603, 228, 9, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Deoxys (Speed) - Psychic - Level 41
  (386, 38603, 94, 9, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Deoxys (Speed) - Swift - Level 49
  (386, 38603, 129, 9, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Deoxys (Speed) - Psycho Shift - Level 57
  (386, 38603, 375, 9, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Deoxys (Speed) - Zen Headbutt - Level 65
  (386, 38603, 428, 9, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Deoxys (Speed) - Agility - Level 73
  (386, 38603, 97, 9, NULL, 1, 73, NULL, NULL, NULL, 11),
  -- Deoxys (Speed) - Recover - Level 81
  (386, 38603, 105, 9, NULL, 1, 81, NULL, NULL, NULL, 12),
  -- Deoxys (Speed) - Psycho Boost - Level 89
  (386, 38603, 354, 9, NULL, 1, 89, NULL, NULL, NULL, 13),
  -- Deoxys (Speed) - Extreme Speed - Level 97
  (386, 38603, 245, 9, NULL, 1, 97, NULL, NULL, NULL, 14),
  -- Deoxys (Speed) - Focus Punch - TM01
  (386, 38603, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Deoxys (Speed) - Water Pulse - TM03
  (386, 38603, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Deoxys (Speed) - Calm Mind - TM04
  (386, 38603, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 17),
  -- Deoxys (Speed) - Toxic - TM06
  (386, 38603, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Deoxys (Speed) - Hidden Power - TM10
  (386, 38603, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Deoxys (Speed) - Sunny Day - TM11
  (386, 38603, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Deoxys (Speed) - Taunt - TM12
  (386, 38603, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 21),
  -- Deoxys (Speed) - Ice Beam - TM13
  (386, 38603, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 22),
  -- Deoxys (Speed) - Hyper Beam - TM15
  (386, 38603, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Deoxys (Speed) - Light Screen - TM16
  (386, 38603, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 24),
  -- Deoxys (Speed) - Protect - TM17
  (386, 38603, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Deoxys (Speed) - Rain Dance - TM18
  (386, 38603, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Deoxys (Speed) - Safeguard - TM20
  (386, 38603, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 27),
  -- Deoxys (Speed) - Frustration - TM21
  (386, 38603, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Deoxys (Speed) - Solar Beam - TM22
  (386, 38603, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 29),
  -- Deoxys (Speed) - Thunderbolt - TM24
  (386, 38603, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 30),
  -- Deoxys (Speed) - Thunder - TM25
  (386, 38603, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 31),
  -- Deoxys (Speed) - Return - TM27
  (386, 38603, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 32),
  -- Deoxys (Speed) - Psychic - TM29
  (386, 38603, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 33),
  -- Deoxys (Speed) - Shadow Ball - TM30
  (386, 38603, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 34),
  -- Deoxys (Speed) - Brick Break - TM31
  (386, 38603, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 35),
  -- Deoxys (Speed) - Double Team - TM32
  (386, 38603, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 36),
  -- Deoxys (Speed) - Reflect - TM33
  (386, 38603, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 37),
  -- Deoxys (Speed) - Shock Wave - TM34
  (386, 38603, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 38),
  -- Deoxys (Speed) - Rock Tomb - TM39
  (386, 38603, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 39),
  -- Deoxys (Speed) - Aerial Ace - TM40
  (386, 38603, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 40),
  -- Deoxys (Speed) - Torment - TM41
  (386, 38603, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 41),
  -- Deoxys (Speed) - Facade - TM42
  (386, 38603, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 42),
  -- Deoxys (Speed) - Secret Power - TM43
  (386, 38603, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 43),
  -- Deoxys (Speed) - Rest - TM44
  (386, 38603, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 44),
  -- Deoxys (Speed) - Skill Swap - TM48
  (386, 38603, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 45),
  -- Deoxys (Speed) - Snatch - TM49
  (386, 38603, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 46),
  -- Deoxys (Speed) - Focus Blast - TM52
  (386, 38603, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 47),
  -- Deoxys (Speed) - Energy Ball - TM53
  (386, 38603, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 48),
  -- Deoxys (Speed) - Fling - TM56
  (386, 38603, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 49),
  -- Deoxys (Speed) - Charge Beam - TM57
  (386, 38603, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 50),
  -- Deoxys (Speed) - Endure - TM58
  (386, 38603, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 51),
  -- Deoxys (Speed) - Drain Punch - TM60
  (386, 38603, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 52),
  -- Deoxys (Speed) - Recycle - TM67
  (386, 38603, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 53),
  -- Deoxys (Speed) - Giga Impact - TM68
  (386, 38603, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 54),
  -- Deoxys (Speed) - Flash - TM70
  (386, 38603, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 55),
  -- Deoxys (Speed) - Avalanche - TM72
  (386, 38603, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 56),
  -- Deoxys (Speed) - Thunder Wave - TM73
  (386, 38603, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 57),
  -- Deoxys (Speed) - Stealth Rock - TM76
  (386, 38603, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 58),
  -- Deoxys (Speed) - Psych Up - TM77
  (386, 38603, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 59),
  -- Deoxys (Speed) - Rock Slide - TM80
  (386, 38603, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 60),
  -- Deoxys (Speed) - Sleep Talk - TM82
  (386, 38603, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 61),
  -- Deoxys (Speed) - Natural Gift - TM83
  (386, 38603, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 62),
  -- Deoxys (Speed) - Poison Jab - TM84
  (386, 38603, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 63),
  -- Deoxys (Speed) - Dream Eater - TM85
  (386, 38603, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 64),
  -- Deoxys (Speed) - Grass Knot - TM86
  (386, 38603, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 65),
  -- Deoxys (Speed) - Swagger - TM87
  (386, 38603, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 66),
  -- Deoxys (Speed) - Substitute - TM90
  (386, 38603, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 67),
  -- Deoxys (Speed) - Flash Cannon - TM91
  (386, 38603, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 68),
  -- Deoxys (Speed) - Trick Room - TM92
  (386, 38603, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 69),
  -- Deoxys (Speed) - Cut - HM01
  (386, 38603, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 70),
  -- Deoxys (Speed) - Strength - HM04
  (386, 38603, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 71),
  -- Deoxys (Speed) - Rock Smash - HM06
  (386, 38603, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 72),
  -- Deoxys (Speed) - Swift - Tutor
  (386, 38603, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Deoxys (Speed) - Snore - Tutor
  (386, 38603, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Deoxys (Speed) - Mud-Slap - Tutor
  (386, 38603, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Deoxys (Speed) - Trick - Tutor
  (386, 38603, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Deoxys (Speed) - Knock Off - Tutor
  (386, 38603, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Deoxys (Speed) - Signal Beam - Tutor
  (386, 38603, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Deoxys (Speed) - Zen Headbutt - Tutor
  (386, 38603, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Wormadam (Sandy Cloak) - Tackle - Level 1
  (413, 41301, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam (Sandy Cloak) - Protect - Level 10
  (413, 41301, 182, 9, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Wormadam (Sandy Cloak) - Bug Bite - Level 15
  (413, 41301, 450, 9, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Wormadam (Sandy Cloak) - Hidden Power - Level 20
  (413, 41301, 237, 9, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Wormadam (Sandy Cloak) - Confusion - Level 23
  (413, 41301, 93, 9, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Wormadam (Sandy Cloak) - Rock Blast - Level 26
  (413, 41301, 350, 9, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Wormadam (Sandy Cloak) - Harden - Level 29
  (413, 41301, 106, 9, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Wormadam (Sandy Cloak) - Psybeam - Level 32
  (413, 41301, 60, 9, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Wormadam (Sandy Cloak) - Captivate - Level 35
  (413, 41301, 445, 9, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Wormadam (Sandy Cloak) - Flail - Level 38
  (413, 41301, 175, 9, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Wormadam (Sandy Cloak) - Attract - Level 41
  (413, 41301, 213, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Wormadam (Sandy Cloak) - Psychic - Level 44
  (413, 41301, 94, 9, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Wormadam (Sandy Cloak) - Fissure - Level 47
  (413, 41301, 90, 9, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Wormadam (Sandy Cloak) - Toxic - TM06
  (413, 41301, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Wormadam (Sandy Cloak) - Hidden Power - TM10
  (413, 41301, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Wormadam (Sandy Cloak) - Sunny Day - TM11
  (413, 41301, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Wormadam (Sandy Cloak) - Hyper Beam - TM15
  (413, 41301, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 17),
  -- Wormadam (Sandy Cloak) - Protect - TM17
  (413, 41301, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Wormadam (Sandy Cloak) - Rain Dance - TM18
  (413, 41301, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 19),
  -- Wormadam (Sandy Cloak) - Safeguard - TM20
  (413, 41301, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 20),
  -- Wormadam (Sandy Cloak) - Frustration - TM21
  (413, 41301, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Wormadam (Sandy Cloak) - Earthquake - TM26
  (413, 41301, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 22),
  -- Wormadam (Sandy Cloak) - Return - TM27
  (413, 41301, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Wormadam (Sandy Cloak) - Dig - TM28
  (413, 41301, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 24),
  -- Wormadam (Sandy Cloak) - Psychic - TM29
  (413, 41301, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 25),
  -- Wormadam (Sandy Cloak) - Shadow Ball - TM30
  (413, 41301, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 26),
  -- Wormadam (Sandy Cloak) - Double Team - TM32
  (413, 41301, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Wormadam (Sandy Cloak) - Sandstorm - TM37
  (413, 41301, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 28),
  -- Wormadam (Sandy Cloak) - Rock Tomb - TM39
  (413, 41301, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 29),
  -- Wormadam (Sandy Cloak) - Facade - TM42
  (413, 41301, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Wormadam (Sandy Cloak) - Secret Power - TM43
  (413, 41301, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Wormadam (Sandy Cloak) - Rest - TM44
  (413, 41301, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Wormadam (Sandy Cloak) - Attract - TM45
  (413, 41301, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Wormadam (Sandy Cloak) - Thief - TM46
  (413, 41301, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 34),
  -- Wormadam (Sandy Cloak) - Skill Swap - TM48
  (413, 41301, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 35),
  -- Wormadam (Sandy Cloak) - Endure - TM58
  (413, 41301, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Wormadam (Sandy Cloak) - Giga Impact - TM68
  (413, 41301, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 37),
  -- Wormadam (Sandy Cloak) - Flash - TM70
  (413, 41301, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 38),
  -- Wormadam (Sandy Cloak) - Psych Up - TM77
  (413, 41301, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 39),
  -- Wormadam (Sandy Cloak) - Captivate - TM78
  (413, 41301, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 40),
  -- Wormadam (Sandy Cloak) - Sleep Talk - TM82
  (413, 41301, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 41),
  -- Wormadam (Sandy Cloak) - Natural Gift - TM83
  (413, 41301, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 42),
  -- Wormadam (Sandy Cloak) - Dream Eater - TM85
  (413, 41301, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 43),
  -- Wormadam (Sandy Cloak) - Swagger - TM87
  (413, 41301, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 44),
  -- Wormadam (Sandy Cloak) - Substitute - TM90
  (413, 41301, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Wormadam (Sandy Cloak) - Snore - Tutor
  (413, 41301, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Wormadam (Sandy Cloak) - Mud-Slap - Tutor
  (413, 41301, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Wormadam (Sandy Cloak) - Uproar - Tutor
  (413, 41301, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Wormadam (Sandy Cloak) - Endeavor - Tutor
  (413, 41301, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Wormadam (Sandy Cloak) - Signal Beam - Tutor
  (413, 41301, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Wormadam (Sandy Cloak) - Sucker Punch - Tutor
  (413, 41301, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Wormadam (Sandy Cloak) - Earth Power - Tutor
  (413, 41301, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Wormadam (Trash Cloak) - Tackle - Level 1
  (413, 41302, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam (Trash Cloak) - Protect - Level 10
  (413, 41302, 182, 9, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Wormadam (Trash Cloak) - Bug Bite - Level 15
  (413, 41302, 450, 9, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Wormadam (Trash Cloak) - Hidden Power - Level 20
  (413, 41302, 237, 9, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Wormadam (Trash Cloak) - Confusion - Level 23
  (413, 41302, 93, 9, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Wormadam (Trash Cloak) - Mirror Shot - Level 26
  (413, 41302, 429, 9, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Wormadam (Trash Cloak) - Metal Sound - Level 29
  (413, 41302, 319, 9, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Wormadam (Trash Cloak) - Psybeam - Level 32
  (413, 41302, 60, 9, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Wormadam (Trash Cloak) - Captivate - Level 35
  (413, 41302, 445, 9, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Wormadam (Trash Cloak) - Flail - Level 38
  (413, 41302, 175, 9, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Wormadam (Trash Cloak) - Attract - Level 41
  (413, 41302, 213, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Wormadam (Trash Cloak) - Psychic - Level 44
  (413, 41302, 94, 9, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Wormadam (Trash Cloak) - Iron Head - Level 47
  (413, 41302, 442, 9, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Wormadam (Trash Cloak) - Toxic - TM06
  (413, 41302, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Wormadam (Trash Cloak) - Hidden Power - TM10
  (413, 41302, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Wormadam (Trash Cloak) - Sunny Day - TM11
  (413, 41302, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Wormadam (Trash Cloak) - Hyper Beam - TM15
  (413, 41302, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 17),
  -- Wormadam (Trash Cloak) - Protect - TM17
  (413, 41302, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Wormadam (Trash Cloak) - Rain Dance - TM18
  (413, 41302, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 19),
  -- Wormadam (Trash Cloak) - Safeguard - TM20
  (413, 41302, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 20),
  -- Wormadam (Trash Cloak) - Frustration - TM21
  (413, 41302, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Wormadam (Trash Cloak) - Return - TM27
  (413, 41302, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Wormadam (Trash Cloak) - Psychic - TM29
  (413, 41302, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 23),
  -- Wormadam (Trash Cloak) - Shadow Ball - TM30
  (413, 41302, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 24),
  -- Wormadam (Trash Cloak) - Double Team - TM32
  (413, 41302, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Wormadam (Trash Cloak) - Facade - TM42
  (413, 41302, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 26),
  -- Wormadam (Trash Cloak) - Secret Power - TM43
  (413, 41302, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 27),
  -- Wormadam (Trash Cloak) - Rest - TM44
  (413, 41302, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 28),
  -- Wormadam (Trash Cloak) - Attract - TM45
  (413, 41302, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 29),
  -- Wormadam (Trash Cloak) - Thief - TM46
  (413, 41302, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 30),
  -- Wormadam (Trash Cloak) - Skill Swap - TM48
  (413, 41302, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 31),
  -- Wormadam (Trash Cloak) - Endure - TM58
  (413, 41302, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 32),
  -- Wormadam (Trash Cloak) - Giga Impact - TM68
  (413, 41302, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 33),
  -- Wormadam (Trash Cloak) - Flash - TM70
  (413, 41302, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 34),
  -- Wormadam (Trash Cloak) - Gyro Ball - TM74
  (413, 41302, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 35),
  -- Wormadam (Trash Cloak) - Stealth Rock - TM76
  (413, 41302, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 36),
  -- Wormadam (Trash Cloak) - Psych Up - TM77
  (413, 41302, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 37),
  -- Wormadam (Trash Cloak) - Captivate - TM78
  (413, 41302, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 38),
  -- Wormadam (Trash Cloak) - Sleep Talk - TM82
  (413, 41302, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 39),
  -- Wormadam (Trash Cloak) - Natural Gift - TM83
  (413, 41302, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 40),
  -- Wormadam (Trash Cloak) - Dream Eater - TM85
  (413, 41302, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 41),
  -- Wormadam (Trash Cloak) - Swagger - TM87
  (413, 41302, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 42),
  -- Wormadam (Trash Cloak) - Substitute - TM90
  (413, 41302, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 43),
  -- Wormadam (Trash Cloak) - Flash Cannon - TM91
  (413, 41302, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 44),
  -- Wormadam (Trash Cloak) - Snore - Tutor
  (413, 41302, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Wormadam (Trash Cloak) - Uproar - Tutor
  (413, 41302, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Wormadam (Trash Cloak) - Endeavor - Tutor
  (413, 41302, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Wormadam (Trash Cloak) - Signal Beam - Tutor
  (413, 41302, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Wormadam (Trash Cloak) - Iron Defense - Tutor
  (413, 41302, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Wormadam (Trash Cloak) - Sucker Punch - Tutor
  (413, 41302, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Wormadam (Trash Cloak) - Magnet Rise - Tutor
  (413, 41302, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Wormadam (Trash Cloak) - Gunk Shot - Tutor
  (413, 41302, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Wormadam (Trash Cloak) - Iron Head - Tutor
  (413, 41302, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Rotom (Heat) - Thunder Shock - Level 1
  (479, 47901, 84, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Heat) - Thunder Wave - Level 1
  (479, 47901, 86, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Heat) - Confuse Ray - Level 1
  (479, 47901, 109, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Heat) - Trick - Level 1
  (479, 47901, 271, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Heat) - Astonish - Level 1
  (479, 47901, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Heat) - Uproar - Level 8
  (479, 47901, 253, 9, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Rotom (Heat) - Double Team - Level 15
  (479, 47901, 104, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rotom (Heat) - Shock Wave - Level 22
  (479, 47901, 351, 9, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Rotom (Heat) - Ominous Wind - Level 29
  (479, 47901, 466, 9, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Rotom (Heat) - Substitute - Level 36
  (479, 47901, 164, 9, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rotom (Heat) - Charge - Level 43
  (479, 47901, 268, 9, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rotom (Heat) - Discharge - Level 50
  (479, 47901, 435, 9, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Heat) - Toxic - TM06
  (479, 47901, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Rotom (Heat) - Hidden Power - TM10
  (479, 47901, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Rotom (Heat) - Sunny Day - TM11
  (479, 47901, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Rotom (Heat) - Light Screen - TM16
  (479, 47901, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 16),
  -- Rotom (Heat) - Protect - TM17
  (479, 47901, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 17),
  -- Rotom (Heat) - Rain Dance - TM18
  (479, 47901, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 18),
  -- Rotom (Heat) - Frustration - TM21
  (479, 47901, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Rotom (Heat) - Thunderbolt - TM24
  (479, 47901, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 20),
  -- Rotom (Heat) - Thunder - TM25
  (479, 47901, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 21),
  -- Rotom (Heat) - Return - TM27
  (479, 47901, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Rotom (Heat) - Shadow Ball - TM30
  (479, 47901, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 23),
  -- Rotom (Heat) - Double Team - TM32
  (479, 47901, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 24),
  -- Rotom (Heat) - Reflect - TM33
  (479, 47901, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 25),
  -- Rotom (Heat) - Shock Wave - TM34
  (479, 47901, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 26),
  -- Rotom (Heat) - Facade - TM42
  (479, 47901, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 27),
  -- Rotom (Heat) - Secret Power - TM43
  (479, 47901, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 28),
  -- Rotom (Heat) - Rest - TM44
  (479, 47901, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 29),
  -- Rotom (Heat) - Thief - TM46
  (479, 47901, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 30),
  -- Rotom (Heat) - Snatch - TM49
  (479, 47901, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 31),
  -- Rotom (Heat) - Charge Beam - TM57
  (479, 47901, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 32),
  -- Rotom (Heat) - Endure - TM58
  (479, 47901, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 33),
  -- Rotom (Heat) - Will-O-Wisp - TM61
  (479, 47901, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 34),
  -- Rotom (Heat) - Flash - TM70
  (479, 47901, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 35),
  -- Rotom (Heat) - Thunder Wave - TM73
  (479, 47901, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 36),
  -- Rotom (Heat) - Psych Up - TM77
  (479, 47901, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 37),
  -- Rotom (Heat) - Dark Pulse - TM79
  (479, 47901, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 38),
  -- Rotom (Heat) - Sleep Talk - TM82
  (479, 47901, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 39),
  -- Rotom (Heat) - Natural Gift - TM83
  (479, 47901, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 40),
  -- Rotom (Heat) - Dream Eater - TM85
  (479, 47901, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 41),
  -- Rotom (Heat) - Swagger - TM87
  (479, 47901, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 42),
  -- Rotom (Heat) - Substitute - TM90
  (479, 47901, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 43),
  -- Rotom (Heat) - Swift - Tutor
  (479, 47901, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Rotom (Heat) - Snore - Tutor
  (479, 47901, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Rotom (Heat) - Spite - Tutor
  (479, 47901, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Rotom (Heat) - Mud-Slap - Tutor
  (479, 47901, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Rotom (Heat) - Uproar - Tutor
  (479, 47901, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Rotom (Heat) - Trick - Tutor
  (479, 47901, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Rotom (Heat) - Signal Beam - Tutor
  (479, 47901, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Rotom (Heat) - Sucker Punch - Tutor
  (479, 47901, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Rotom (Heat) - Ominous Wind - Tutor
  (479, 47901, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Rotom (Wash) - Thunder Shock - Level 1
  (479, 47902, 84, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Wash) - Thunder Wave - Level 1
  (479, 47902, 86, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Wash) - Confuse Ray - Level 1
  (479, 47902, 109, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Wash) - Trick - Level 1
  (479, 47902, 271, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Wash) - Astonish - Level 1
  (479, 47902, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Wash) - Uproar - Level 8
  (479, 47902, 253, 9, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Rotom (Wash) - Double Team - Level 15
  (479, 47902, 104, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rotom (Wash) - Shock Wave - Level 22
  (479, 47902, 351, 9, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Rotom (Wash) - Ominous Wind - Level 29
  (479, 47902, 466, 9, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Rotom (Wash) - Substitute - Level 36
  (479, 47902, 164, 9, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rotom (Wash) - Charge - Level 43
  (479, 47902, 268, 9, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rotom (Wash) - Discharge - Level 50
  (479, 47902, 435, 9, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Wash) - Toxic - TM06
  (479, 47902, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Rotom (Wash) - Hidden Power - TM10
  (479, 47902, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Rotom (Wash) - Sunny Day - TM11
  (479, 47902, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Rotom (Wash) - Light Screen - TM16
  (479, 47902, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 16),
  -- Rotom (Wash) - Protect - TM17
  (479, 47902, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 17),
  -- Rotom (Wash) - Rain Dance - TM18
  (479, 47902, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 18),
  -- Rotom (Wash) - Frustration - TM21
  (479, 47902, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Rotom (Wash) - Thunderbolt - TM24
  (479, 47902, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 20),
  -- Rotom (Wash) - Thunder - TM25
  (479, 47902, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 21),
  -- Rotom (Wash) - Return - TM27
  (479, 47902, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Rotom (Wash) - Shadow Ball - TM30
  (479, 47902, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 23),
  -- Rotom (Wash) - Double Team - TM32
  (479, 47902, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 24),
  -- Rotom (Wash) - Reflect - TM33
  (479, 47902, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 25),
  -- Rotom (Wash) - Shock Wave - TM34
  (479, 47902, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 26),
  -- Rotom (Wash) - Facade - TM42
  (479, 47902, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 27),
  -- Rotom (Wash) - Secret Power - TM43
  (479, 47902, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 28),
  -- Rotom (Wash) - Rest - TM44
  (479, 47902, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 29),
  -- Rotom (Wash) - Thief - TM46
  (479, 47902, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 30),
  -- Rotom (Wash) - Snatch - TM49
  (479, 47902, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 31),
  -- Rotom (Wash) - Charge Beam - TM57
  (479, 47902, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 32),
  -- Rotom (Wash) - Endure - TM58
  (479, 47902, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 33),
  -- Rotom (Wash) - Will-O-Wisp - TM61
  (479, 47902, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 34),
  -- Rotom (Wash) - Flash - TM70
  (479, 47902, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 35),
  -- Rotom (Wash) - Thunder Wave - TM73
  (479, 47902, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 36),
  -- Rotom (Wash) - Psych Up - TM77
  (479, 47902, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 37),
  -- Rotom (Wash) - Dark Pulse - TM79
  (479, 47902, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 38),
  -- Rotom (Wash) - Sleep Talk - TM82
  (479, 47902, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 39),
  -- Rotom (Wash) - Natural Gift - TM83
  (479, 47902, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 40),
  -- Rotom (Wash) - Dream Eater - TM85
  (479, 47902, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 41),
  -- Rotom (Wash) - Swagger - TM87
  (479, 47902, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 42),
  -- Rotom (Wash) - Substitute - TM90
  (479, 47902, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 43),
  -- Rotom (Wash) - Swift - Tutor
  (479, 47902, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Rotom (Wash) - Snore - Tutor
  (479, 47902, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Rotom (Wash) - Spite - Tutor
  (479, 47902, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Rotom (Wash) - Mud-Slap - Tutor
  (479, 47902, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Rotom (Wash) - Uproar - Tutor
  (479, 47902, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Rotom (Wash) - Trick - Tutor
  (479, 47902, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Rotom (Wash) - Signal Beam - Tutor
  (479, 47902, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Rotom (Wash) - Sucker Punch - Tutor
  (479, 47902, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Rotom (Wash) - Ominous Wind - Tutor
  (479, 47902, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Rotom (Frost) - Thunder Shock - Level 1
  (479, 47903, 84, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Frost) - Thunder Wave - Level 1
  (479, 47903, 86, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Frost) - Confuse Ray - Level 1
  (479, 47903, 109, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Frost) - Trick - Level 1
  (479, 47903, 271, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Frost) - Astonish - Level 1
  (479, 47903, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Frost) - Uproar - Level 8
  (479, 47903, 253, 9, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Rotom (Frost) - Double Team - Level 15
  (479, 47903, 104, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rotom (Frost) - Shock Wave - Level 22
  (479, 47903, 351, 9, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Rotom (Frost) - Ominous Wind - Level 29
  (479, 47903, 466, 9, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Rotom (Frost) - Substitute - Level 36
  (479, 47903, 164, 9, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rotom (Frost) - Charge - Level 43
  (479, 47903, 268, 9, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rotom (Frost) - Discharge - Level 50
  (479, 47903, 435, 9, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Frost) - Toxic - TM06
  (479, 47903, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Rotom (Frost) - Hidden Power - TM10
  (479, 47903, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Rotom (Frost) - Sunny Day - TM11
  (479, 47903, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Rotom (Frost) - Light Screen - TM16
  (479, 47903, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 16),
  -- Rotom (Frost) - Protect - TM17
  (479, 47903, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 17),
  -- Rotom (Frost) - Rain Dance - TM18
  (479, 47903, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 18),
  -- Rotom (Frost) - Frustration - TM21
  (479, 47903, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Rotom (Frost) - Thunderbolt - TM24
  (479, 47903, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 20),
  -- Rotom (Frost) - Thunder - TM25
  (479, 47903, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 21),
  -- Rotom (Frost) - Return - TM27
  (479, 47903, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Rotom (Frost) - Shadow Ball - TM30
  (479, 47903, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 23),
  -- Rotom (Frost) - Double Team - TM32
  (479, 47903, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 24),
  -- Rotom (Frost) - Reflect - TM33
  (479, 47903, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 25),
  -- Rotom (Frost) - Shock Wave - TM34
  (479, 47903, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 26),
  -- Rotom (Frost) - Facade - TM42
  (479, 47903, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 27),
  -- Rotom (Frost) - Secret Power - TM43
  (479, 47903, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 28),
  -- Rotom (Frost) - Rest - TM44
  (479, 47903, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 29),
  -- Rotom (Frost) - Thief - TM46
  (479, 47903, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 30),
  -- Rotom (Frost) - Snatch - TM49
  (479, 47903, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 31),
  -- Rotom (Frost) - Charge Beam - TM57
  (479, 47903, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 32),
  -- Rotom (Frost) - Endure - TM58
  (479, 47903, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 33),
  -- Rotom (Frost) - Will-O-Wisp - TM61
  (479, 47903, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 34),
  -- Rotom (Frost) - Flash - TM70
  (479, 47903, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 35),
  -- Rotom (Frost) - Thunder Wave - TM73
  (479, 47903, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 36),
  -- Rotom (Frost) - Psych Up - TM77
  (479, 47903, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 37),
  -- Rotom (Frost) - Dark Pulse - TM79
  (479, 47903, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 38),
  -- Rotom (Frost) - Sleep Talk - TM82
  (479, 47903, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 39),
  -- Rotom (Frost) - Natural Gift - TM83
  (479, 47903, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 40),
  -- Rotom (Frost) - Dream Eater - TM85
  (479, 47903, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 41),
  -- Rotom (Frost) - Swagger - TM87
  (479, 47903, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 42),
  -- Rotom (Frost) - Substitute - TM90
  (479, 47903, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 43),
  -- Rotom (Frost) - Swift - Tutor
  (479, 47903, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Rotom (Frost) - Snore - Tutor
  (479, 47903, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Rotom (Frost) - Spite - Tutor
  (479, 47903, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Rotom (Frost) - Mud-Slap - Tutor
  (479, 47903, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Rotom (Frost) - Uproar - Tutor
  (479, 47903, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Rotom (Frost) - Trick - Tutor
  (479, 47903, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Rotom (Frost) - Signal Beam - Tutor
  (479, 47903, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Rotom (Frost) - Sucker Punch - Tutor
  (479, 47903, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Rotom (Frost) - Ominous Wind - Tutor
  (479, 47903, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Rotom (Fan) - Thunder Shock - Level 1
  (479, 47904, 84, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Fan) - Thunder Wave - Level 1
  (479, 47904, 86, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Fan) - Confuse Ray - Level 1
  (479, 47904, 109, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Fan) - Trick - Level 1
  (479, 47904, 271, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Fan) - Astonish - Level 1
  (479, 47904, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Fan) - Uproar - Level 8
  (479, 47904, 253, 9, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Rotom (Fan) - Double Team - Level 15
  (479, 47904, 104, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rotom (Fan) - Shock Wave - Level 22
  (479, 47904, 351, 9, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Rotom (Fan) - Ominous Wind - Level 29
  (479, 47904, 466, 9, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Rotom (Fan) - Substitute - Level 36
  (479, 47904, 164, 9, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rotom (Fan) - Charge - Level 43
  (479, 47904, 268, 9, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rotom (Fan) - Discharge - Level 50
  (479, 47904, 435, 9, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Fan) - Toxic - TM06
  (479, 47904, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Rotom (Fan) - Hidden Power - TM10
  (479, 47904, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Rotom (Fan) - Sunny Day - TM11
  (479, 47904, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Rotom (Fan) - Light Screen - TM16
  (479, 47904, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 16),
  -- Rotom (Fan) - Protect - TM17
  (479, 47904, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 17),
  -- Rotom (Fan) - Rain Dance - TM18
  (479, 47904, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 18),
  -- Rotom (Fan) - Frustration - TM21
  (479, 47904, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Rotom (Fan) - Thunderbolt - TM24
  (479, 47904, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 20),
  -- Rotom (Fan) - Thunder - TM25
  (479, 47904, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 21),
  -- Rotom (Fan) - Return - TM27
  (479, 47904, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Rotom (Fan) - Shadow Ball - TM30
  (479, 47904, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 23),
  -- Rotom (Fan) - Double Team - TM32
  (479, 47904, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 24),
  -- Rotom (Fan) - Reflect - TM33
  (479, 47904, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 25),
  -- Rotom (Fan) - Shock Wave - TM34
  (479, 47904, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 26),
  -- Rotom (Fan) - Facade - TM42
  (479, 47904, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 27),
  -- Rotom (Fan) - Secret Power - TM43
  (479, 47904, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 28),
  -- Rotom (Fan) - Rest - TM44
  (479, 47904, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 29),
  -- Rotom (Fan) - Thief - TM46
  (479, 47904, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 30),
  -- Rotom (Fan) - Snatch - TM49
  (479, 47904, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 31),
  -- Rotom (Fan) - Charge Beam - TM57
  (479, 47904, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 32),
  -- Rotom (Fan) - Endure - TM58
  (479, 47904, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 33),
  -- Rotom (Fan) - Will-O-Wisp - TM61
  (479, 47904, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 34),
  -- Rotom (Fan) - Flash - TM70
  (479, 47904, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 35),
  -- Rotom (Fan) - Thunder Wave - TM73
  (479, 47904, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 36),
  -- Rotom (Fan) - Psych Up - TM77
  (479, 47904, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 37),
  -- Rotom (Fan) - Dark Pulse - TM79
  (479, 47904, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 38),
  -- Rotom (Fan) - Sleep Talk - TM82
  (479, 47904, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 39),
  -- Rotom (Fan) - Natural Gift - TM83
  (479, 47904, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 40),
  -- Rotom (Fan) - Dream Eater - TM85
  (479, 47904, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 41),
  -- Rotom (Fan) - Swagger - TM87
  (479, 47904, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 42),
  -- Rotom (Fan) - Substitute - TM90
  (479, 47904, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 43),
  -- Rotom (Fan) - Swift - Tutor
  (479, 47904, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Rotom (Fan) - Snore - Tutor
  (479, 47904, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Rotom (Fan) - Spite - Tutor
  (479, 47904, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Rotom (Fan) - Mud-Slap - Tutor
  (479, 47904, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Rotom (Fan) - Uproar - Tutor
  (479, 47904, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Rotom (Fan) - Trick - Tutor
  (479, 47904, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Rotom (Fan) - Signal Beam - Tutor
  (479, 47904, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Rotom (Fan) - Sucker Punch - Tutor
  (479, 47904, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Rotom (Fan) - Ominous Wind - Tutor
  (479, 47904, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Rotom (Mow) - Thunder Shock - Level 1
  (479, 47905, 84, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Mow) - Thunder Wave - Level 1
  (479, 47905, 86, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Mow) - Confuse Ray - Level 1
  (479, 47905, 109, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Mow) - Trick - Level 1
  (479, 47905, 271, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Mow) - Astonish - Level 1
  (479, 47905, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Mow) - Uproar - Level 8
  (479, 47905, 253, 9, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Rotom (Mow) - Double Team - Level 15
  (479, 47905, 104, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rotom (Mow) - Shock Wave - Level 22
  (479, 47905, 351, 9, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Rotom (Mow) - Ominous Wind - Level 29
  (479, 47905, 466, 9, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Rotom (Mow) - Substitute - Level 36
  (479, 47905, 164, 9, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rotom (Mow) - Charge - Level 43
  (479, 47905, 268, 9, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rotom (Mow) - Discharge - Level 50
  (479, 47905, 435, 9, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Mow) - Toxic - TM06
  (479, 47905, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Rotom (Mow) - Hidden Power - TM10
  (479, 47905, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Rotom (Mow) - Sunny Day - TM11
  (479, 47905, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Rotom (Mow) - Light Screen - TM16
  (479, 47905, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 16),
  -- Rotom (Mow) - Protect - TM17
  (479, 47905, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 17),
  -- Rotom (Mow) - Rain Dance - TM18
  (479, 47905, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 18),
  -- Rotom (Mow) - Frustration - TM21
  (479, 47905, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Rotom (Mow) - Thunderbolt - TM24
  (479, 47905, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 20),
  -- Rotom (Mow) - Thunder - TM25
  (479, 47905, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 21),
  -- Rotom (Mow) - Return - TM27
  (479, 47905, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Rotom (Mow) - Shadow Ball - TM30
  (479, 47905, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 23),
  -- Rotom (Mow) - Double Team - TM32
  (479, 47905, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 24),
  -- Rotom (Mow) - Reflect - TM33
  (479, 47905, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 25),
  -- Rotom (Mow) - Shock Wave - TM34
  (479, 47905, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 26),
  -- Rotom (Mow) - Facade - TM42
  (479, 47905, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 27),
  -- Rotom (Mow) - Secret Power - TM43
  (479, 47905, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 28),
  -- Rotom (Mow) - Rest - TM44
  (479, 47905, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 29),
  -- Rotom (Mow) - Thief - TM46
  (479, 47905, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 30),
  -- Rotom (Mow) - Snatch - TM49
  (479, 47905, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 31),
  -- Rotom (Mow) - Charge Beam - TM57
  (479, 47905, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 32),
  -- Rotom (Mow) - Endure - TM58
  (479, 47905, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 33),
  -- Rotom (Mow) - Will-O-Wisp - TM61
  (479, 47905, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 34),
  -- Rotom (Mow) - Flash - TM70
  (479, 47905, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 35),
  -- Rotom (Mow) - Thunder Wave - TM73
  (479, 47905, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 36),
  -- Rotom (Mow) - Psych Up - TM77
  (479, 47905, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 37),
  -- Rotom (Mow) - Dark Pulse - TM79
  (479, 47905, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 38),
  -- Rotom (Mow) - Sleep Talk - TM82
  (479, 47905, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 39),
  -- Rotom (Mow) - Natural Gift - TM83
  (479, 47905, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 40),
  -- Rotom (Mow) - Dream Eater - TM85
  (479, 47905, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 41),
  -- Rotom (Mow) - Swagger - TM87
  (479, 47905, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 42),
  -- Rotom (Mow) - Substitute - TM90
  (479, 47905, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 43),
  -- Rotom (Mow) - Swift - Tutor
  (479, 47905, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Rotom (Mow) - Snore - Tutor
  (479, 47905, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Rotom (Mow) - Spite - Tutor
  (479, 47905, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Rotom (Mow) - Mud-Slap - Tutor
  (479, 47905, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Rotom (Mow) - Uproar - Tutor
  (479, 47905, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Rotom (Mow) - Trick - Tutor
  (479, 47905, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Rotom (Mow) - Signal Beam - Tutor
  (479, 47905, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Rotom (Mow) - Sucker Punch - Tutor
  (479, 47905, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Rotom (Mow) - Ominous Wind - Tutor
  (479, 47905, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Giratina (Origin) - Scary Face - Level 1
  (487, 48701, 184, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Giratina (Origin) - Dragon Breath - Level 1
  (487, 48701, 225, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Giratina (Origin) - Ominous Wind - Level 10
  (487, 48701, 466, 9, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Giratina (Origin) - Ancient Power - Level 20
  (487, 48701, 246, 9, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Giratina (Origin) - Dragon Claw - Level 30
  (487, 48701, 337, 9, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Giratina (Origin) - Shadow Force - Level 40
  (487, 48701, 467, 9, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Giratina (Origin) - Heal Block - Level 50
  (487, 48701, 377, 9, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Giratina (Origin) - Earth Power - Level 60
  (487, 48701, 414, 9, NULL, 1, 60, NULL, NULL, NULL, 8),
  -- Giratina (Origin) - Slash - Level 70
  (487, 48701, 163, 9, NULL, 1, 70, NULL, NULL, NULL, 9),
  -- Giratina (Origin) - Shadow Claw - Level 80
  (487, 48701, 421, 9, NULL, 1, 80, NULL, NULL, NULL, 10),
  -- Giratina (Origin) - Aura Sphere - Level 90
  (487, 48701, 396, 9, NULL, 1, 90, NULL, NULL, NULL, 11),
  -- Giratina (Origin) - Dragon Claw - TM02
  (487, 48701, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 12),
  -- Giratina (Origin) - Calm Mind - TM04
  (487, 48701, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 13),
  -- Giratina (Origin) - Roar - TM05
  (487, 48701, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 14),
  -- Giratina (Origin) - Toxic - TM06
  (487, 48701, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Giratina (Origin) - Hidden Power - TM10
  (487, 48701, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Giratina (Origin) - Sunny Day - TM11
  (487, 48701, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Giratina (Origin) - Hyper Beam - TM15
  (487, 48701, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 18),
  -- Giratina (Origin) - Protect - TM17
  (487, 48701, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Giratina (Origin) - Rain Dance - TM18
  (487, 48701, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Giratina (Origin) - Safeguard - TM20
  (487, 48701, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 21),
  -- Giratina (Origin) - Frustration - TM21
  (487, 48701, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Giratina (Origin) - Iron Tail - TM23
  (487, 48701, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 23),
  -- Giratina (Origin) - Thunderbolt - TM24
  (487, 48701, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 24),
  -- Giratina (Origin) - Thunder - TM25
  (487, 48701, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 25),
  -- Giratina (Origin) - Earthquake - TM26
  (487, 48701, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 26),
  -- Giratina (Origin) - Return - TM27
  (487, 48701, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Giratina (Origin) - Psychic - TM29
  (487, 48701, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 28),
  -- Giratina (Origin) - Shadow Ball - TM30
  (487, 48701, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 29),
  -- Giratina (Origin) - Double Team - TM32
  (487, 48701, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Giratina (Origin) - Shock Wave - TM34
  (487, 48701, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 31),
  -- Giratina (Origin) - Aerial Ace - TM40
  (487, 48701, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 32),
  -- Giratina (Origin) - Facade - TM42
  (487, 48701, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 33),
  -- Giratina (Origin) - Secret Power - TM43
  (487, 48701, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 34),
  -- Giratina (Origin) - Rest - TM44
  (487, 48701, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 35),
  -- Giratina (Origin) - Steel Wing - TM47
  (487, 48701, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 36),
  -- Giratina (Origin) - Energy Ball - TM53
  (487, 48701, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 37),
  -- Giratina (Origin) - Charge Beam - TM57
  (487, 48701, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 38),
  -- Giratina (Origin) - Endure - TM58
  (487, 48701, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Giratina (Origin) - Dragon Pulse - TM59
  (487, 48701, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 40),
  -- Giratina (Origin) - Will-O-Wisp - TM61
  (487, 48701, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 41),
  -- Giratina (Origin) - Silver Wind - TM62
  (487, 48701, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 42),
  -- Giratina (Origin) - Shadow Claw - TM65
  (487, 48701, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 43),
  -- Giratina (Origin) - Payback - TM66
  (487, 48701, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 44),
  -- Giratina (Origin) - Giga Impact - TM68
  (487, 48701, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 45),
  -- Giratina (Origin) - Stone Edge - TM71
  (487, 48701, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 46),
  -- Giratina (Origin) - Thunder Wave - TM73
  (487, 48701, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 47),
  -- Giratina (Origin) - Psych Up - TM77
  (487, 48701, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 48),
  -- Giratina (Origin) - Dark Pulse - TM79
  (487, 48701, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 49),
  -- Giratina (Origin) - Sleep Talk - TM82
  (487, 48701, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 50),
  -- Giratina (Origin) - Natural Gift - TM83
  (487, 48701, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 51),
  -- Giratina (Origin) - Dream Eater - TM85
  (487, 48701, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 52),
  -- Giratina (Origin) - Swagger - TM87
  (487, 48701, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 53),
  -- Giratina (Origin) - Substitute - TM90
  (487, 48701, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 54),
  -- Giratina (Origin) - Cut - HM01
  (487, 48701, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 55),
  -- Giratina (Origin) - Fly - HM02
  (487, 48701, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 56),
  -- Giratina (Origin) - Strength - HM04
  (487, 48701, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 57),
  -- Giratina (Origin) - Defog - HM05
  (487, 48701, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 58),
  -- Giratina (Origin) - Rock Smash - HM06
  (487, 48701, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 59),
  -- Giratina (Origin) - Rock Climb - HM08
  (487, 48701, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 60),
  -- Giratina (Origin) - Swift - Tutor
  (487, 48701, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Giratina (Origin) - Snore - Tutor
  (487, 48701, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Giratina (Origin) - Spite - Tutor
  (487, 48701, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Giratina (Origin) - Mud-Slap - Tutor
  (487, 48701, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Giratina (Origin) - Icy Wind - Tutor
  (487, 48701, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Giratina (Origin) - Outrage - Tutor
  (487, 48701, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Giratina (Origin) - Fury Cutter - Tutor
  (487, 48701, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Giratina (Origin) - Twister - Tutor
  (487, 48701, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Giratina (Origin) - Ancient Power - Tutor
  (487, 48701, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Giratina (Origin) - Air Cutter - Tutor
  (487, 48701, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Giratina (Origin) - Aqua Tail - Tutor
  (487, 48701, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Giratina (Origin) - Earth Power - Tutor
  (487, 48701, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Giratina (Origin) - Draco Meteor - Tutor
  (487, 48701, 434, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Giratina (Origin) - Iron Head - Tutor
  (487, 48701, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Giratina (Origin) - Ominous Wind - Tutor
  (487, 48701, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Shaymin (Sky) - Growth - Level 1
  (492, 49201, 74, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shaymin (Sky) - Magical Leaf - Level 10
  (492, 49201, 345, 9, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Shaymin (Sky) - Leech Seed - Level 19
  (492, 49201, 73, 9, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Shaymin (Sky) - Quick Attack - Level 28
  (492, 49201, 98, 9, NULL, 1, 28, NULL, NULL, NULL, 4),
  -- Shaymin (Sky) - Sweet Scent - Level 37
  (492, 49201, 230, 9, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Shaymin (Sky) - Natural Gift - Level 46
  (492, 49201, 363, 9, NULL, 1, 46, NULL, NULL, NULL, 6),
  -- Shaymin (Sky) - Worry Seed - Level 55
  (492, 49201, 388, 9, NULL, 1, 55, NULL, NULL, NULL, 7),
  -- Shaymin (Sky) - Air Slash - Level 64
  (492, 49201, 403, 9, NULL, 1, 64, NULL, NULL, NULL, 8),
  -- Shaymin (Sky) - Energy Ball - Level 73
  (492, 49201, 412, 9, NULL, 1, 73, NULL, NULL, NULL, 9),
  -- Shaymin (Sky) - Sweet Kiss - Level 82
  (492, 49201, 186, 9, NULL, 1, 82, NULL, NULL, NULL, 10),
  -- Shaymin (Sky) - Leaf Storm - Level 91
  (492, 49201, 437, 9, NULL, 1, 91, NULL, NULL, NULL, 11),
  -- Shaymin (Sky) - Seed Flare - Level 100
  (492, 49201, 465, 9, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Shaymin (Sky) - Toxic - TM06
  (492, 49201, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Shaymin (Sky) - Bullet Seed - TM09
  (492, 49201, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 14),
  -- Shaymin (Sky) - Hidden Power - TM10
  (492, 49201, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Shaymin (Sky) - Sunny Day - TM11
  (492, 49201, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Shaymin (Sky) - Hyper Beam - TM15
  (492, 49201, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 17),
  -- Shaymin (Sky) - Protect - TM17
  (492, 49201, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Shaymin (Sky) - Giga Drain - TM19
  (492, 49201, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 19),
  -- Shaymin (Sky) - Safeguard - TM20
  (492, 49201, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 20),
  -- Shaymin (Sky) - Frustration - TM21
  (492, 49201, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Shaymin (Sky) - Solar Beam - TM22
  (492, 49201, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 22),
  -- Shaymin (Sky) - Return - TM27
  (492, 49201, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Shaymin (Sky) - Psychic - TM29
  (492, 49201, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 24),
  -- Shaymin (Sky) - Double Team - TM32
  (492, 49201, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Shaymin (Sky) - Facade - TM42
  (492, 49201, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 26),
  -- Shaymin (Sky) - Secret Power - TM43
  (492, 49201, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 27),
  -- Shaymin (Sky) - Rest - TM44
  (492, 49201, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 28),
  -- Shaymin (Sky) - Energy Ball - TM53
  (492, 49201, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 29),
  -- Shaymin (Sky) - Endure - TM58
  (492, 49201, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 30),
  -- Shaymin (Sky) - Giga Impact - TM68
  (492, 49201, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 31),
  -- Shaymin (Sky) - Flash - TM70
  (492, 49201, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 32),
  -- Shaymin (Sky) - Swords Dance - TM75
  (492, 49201, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 33),
  -- Shaymin (Sky) - Psych Up - TM77
  (492, 49201, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 34),
  -- Shaymin (Sky) - Sleep Talk - TM82
  (492, 49201, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 35),
  -- Shaymin (Sky) - Natural Gift - TM83
  (492, 49201, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 36),
  -- Shaymin (Sky) - Grass Knot - TM86
  (492, 49201, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 37),
  -- Shaymin (Sky) - Swagger - TM87
  (492, 49201, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 38),
  -- Shaymin (Sky) - Substitute - TM90
  (492, 49201, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 39),
  -- Shaymin (Sky) - Swift - Tutor
  (492, 49201, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 40),
  -- Shaymin (Sky) - Snore - Tutor
  (492, 49201, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 41),
  -- Shaymin (Sky) - Mud-Slap - Tutor
  (492, 49201, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 42),
  -- Shaymin (Sky) - Synthesis - Tutor
  (492, 49201, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 43),
  -- Shaymin (Sky) - Air Cutter - Tutor
  (492, 49201, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Shaymin (Sky) - Last Resort - Tutor
  (492, 49201, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Shaymin (Sky) - Seed Bomb - Tutor
  (492, 49201, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Shaymin (Sky) - Zen Headbutt - Tutor
  (492, 49201, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Shaymin (Sky) - Ominous Wind - Tutor
  (492, 49201, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48);
