-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VI raw learnset pages.
-- Cross-check: PokemonDB Omega Ruby / Alpha Sapphire learnset pages and legacy Voydex Generation VI learnset seeds.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Omega Ruby / Alpha Sapphire learnsets for non-default forms.
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
  -- Deoxys (Attack) - Wrap - Level 1
  (386, 38601, 35, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Attack) - Leer - Level 1
  (386, 38601, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Attack) - Night Shade - Level 7
  (386, 38601, 101, 14, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Deoxys (Attack) - Teleport - Level 13
  (386, 38601, 100, 14, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Deoxys (Attack) - Taunt - Level 19
  (386, 38601, 269, 14, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Deoxys (Attack) - Pursuit - Level 25
  (386, 38601, 228, 14, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Deoxys (Attack) - Psychic - Level 31
  (386, 38601, 94, 14, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Deoxys (Attack) - Superpower - Level 37
  (386, 38601, 276, 14, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Deoxys (Attack) - Psycho Shift - Level 43
  (386, 38601, 375, 14, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Deoxys (Attack) - Zen Headbutt - Level 49
  (386, 38601, 428, 14, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Deoxys (Attack) - Cosmic Power - Level 55
  (386, 38601, 322, 14, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Deoxys (Attack) - Zap Cannon - Level 61
  (386, 38601, 192, 14, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Deoxys (Attack) - Psycho Boost - Level 67
  (386, 38601, 354, 14, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Deoxys (Attack) - Hyper Beam - Level 73
  (386, 38601, 63, 14, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Deoxys (Attack) - Psyshock - TM03
  (386, 38601, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 15),
  -- Deoxys (Attack) - Calm Mind - TM04
  (386, 38601, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 16),
  -- Deoxys (Attack) - Toxic - TM06
  (386, 38601, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Deoxys (Attack) - Hidden Power - TM10
  (386, 38601, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Deoxys (Attack) - Sunny Day - TM11
  (386, 38601, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 19),
  -- Deoxys (Attack) - Taunt - TM12
  (386, 38601, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 20),
  -- Deoxys (Attack) - Ice Beam - TM13
  (386, 38601, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 21),
  -- Deoxys (Attack) - Hyper Beam - TM15
  (386, 38601, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 22),
  -- Deoxys (Attack) - Light Screen - TM16
  (386, 38601, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 23),
  -- Deoxys (Attack) - Protect - TM17
  (386, 38601, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 24),
  -- Deoxys (Attack) - Rain Dance - TM18
  (386, 38601, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 25),
  -- Deoxys (Attack) - Safeguard - TM20
  (386, 38601, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 26),
  -- Deoxys (Attack) - Frustration - TM21
  (386, 38601, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 27),
  -- Deoxys (Attack) - Solar Beam - TM22
  (386, 38601, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 28),
  -- Deoxys (Attack) - Thunderbolt - TM24
  (386, 38601, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 29),
  -- Deoxys (Attack) - Thunder - TM25
  (386, 38601, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 30),
  -- Deoxys (Attack) - Return - TM27
  (386, 38601, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 31),
  -- Deoxys (Attack) - Psychic - TM29
  (386, 38601, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 32),
  -- Deoxys (Attack) - Shadow Ball - TM30
  (386, 38601, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 33),
  -- Deoxys (Attack) - Brick Break - TM31
  (386, 38601, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 34),
  -- Deoxys (Attack) - Double Team - TM32
  (386, 38601, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 35),
  -- Deoxys (Attack) - Reflect - TM33
  (386, 38601, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 36),
  -- Deoxys (Attack) - Rock Tomb - TM39
  (386, 38601, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 37),
  -- Deoxys (Attack) - Aerial Ace - TM40
  (386, 38601, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 38),
  -- Deoxys (Attack) - Torment - TM41
  (386, 38601, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 39),
  -- Deoxys (Attack) - Facade - TM42
  (386, 38601, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 40),
  -- Deoxys (Attack) - Rest - TM44
  (386, 38601, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 41),
  -- Deoxys (Attack) - Low Sweep - TM47
  (386, 38601, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 42),
  -- Deoxys (Attack) - Round - TM48
  (386, 38601, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 43),
  -- Deoxys (Attack) - Focus Blast - TM52
  (386, 38601, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 44),
  -- Deoxys (Attack) - Energy Ball - TM53
  (386, 38601, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 45),
  -- Deoxys (Attack) - Fling - TM56
  (386, 38601, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 46),
  -- Deoxys (Attack) - Charge Beam - TM57
  (386, 38601, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 47),
  -- Deoxys (Attack) - Giga Impact - TM68
  (386, 38601, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 48),
  -- Deoxys (Attack) - Flash - TM70
  (386, 38601, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 49),
  -- Deoxys (Attack) - Thunder Wave - TM73
  (386, 38601, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 50),
  -- Deoxys (Attack) - Psych Up - TM77
  (386, 38601, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 51),
  -- Deoxys (Attack) - Rock Slide - TM80
  (386, 38601, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 52),
  -- Deoxys (Attack) - Poison Jab - TM84
  (386, 38601, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 53),
  -- Deoxys (Attack) - Dream Eater - TM85
  (386, 38601, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 54),
  -- Deoxys (Attack) - Grass Knot - TM86
  (386, 38601, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 55),
  -- Deoxys (Attack) - Swagger - TM87
  (386, 38601, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 56),
  -- Deoxys (Attack) - Sleep Talk - TM88
  (386, 38601, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 57),
  -- Deoxys (Attack) - Substitute - TM90
  (386, 38601, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 58),
  -- Deoxys (Attack) - Flash Cannon - TM91
  (386, 38601, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 59),
  -- Deoxys (Attack) - Trick Room - TM92
  (386, 38601, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 60),
  -- Deoxys (Attack) - Secret Power - TM94
  (386, 38601, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 61),
  -- Deoxys (Attack) - Dark Pulse - TM97
  (386, 38601, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 62),
  -- Deoxys (Attack) - Power-Up Punch - TM98
  (386, 38601, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 63),
  -- Deoxys (Attack) - Confide - TM100
  (386, 38601, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 64),
  -- Deoxys (Attack) - Cut - HM01
  (386, 38601, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 65),
  -- Deoxys (Attack) - Strength - HM04
  (386, 38601, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 66),
  -- Deoxys (Attack) - Rock Smash - HM06
  (386, 38601, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 67),
  -- Deoxys (Attack) - Bind - Tutor
  (386, 38601, 20, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Deoxys (Attack) - Low Kick - Tutor
  (386, 38601, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Deoxys (Attack) - Snore - Tutor
  (386, 38601, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Deoxys (Attack) - Focus Punch - Tutor
  (386, 38601, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Deoxys (Attack) - Trick - Tutor
  (386, 38601, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Deoxys (Attack) - Role Play - Tutor
  (386, 38601, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Deoxys (Attack) - Superpower - Tutor
  (386, 38601, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Deoxys (Attack) - Magic Coat - Tutor
  (386, 38601, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Deoxys (Attack) - Recycle - Tutor
  (386, 38601, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Deoxys (Attack) - Skill Swap - Tutor
  (386, 38601, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Deoxys (Attack) - Snatch - Tutor
  (386, 38601, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Deoxys (Attack) - Signal Beam - Tutor
  (386, 38601, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Deoxys (Attack) - Shock Wave - Tutor
  (386, 38601, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Deoxys (Attack) - Water Pulse - Tutor
  (386, 38601, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Deoxys (Attack) - Gravity - Tutor
  (386, 38601, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Deoxys (Attack) - Drain Punch - Tutor
  (386, 38601, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 83),
  -- Deoxys (Attack) - Zen Headbutt - Tutor
  (386, 38601, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 84),
  -- Deoxys (Attack) - Stealth Rock - Tutor
  (386, 38601, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 85),
  -- Deoxys (Attack) - Wonder Room - Tutor
  (386, 38601, 472, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 86),
  -- Deoxys (Defense) - Wrap - Level 1
  (386, 38602, 35, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Defense) - Leer - Level 1
  (386, 38602, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Defense) - Night Shade - Level 7
  (386, 38602, 101, 14, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Deoxys (Defense) - Teleport - Level 13
  (386, 38602, 100, 14, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Deoxys (Defense) - Knock Off - Level 19
  (386, 38602, 282, 14, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Deoxys (Defense) - Spikes - Level 25
  (386, 38602, 191, 14, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Deoxys (Defense) - Psychic - Level 31
  (386, 38602, 94, 14, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Deoxys (Defense) - Snatch - Level 37
  (386, 38602, 289, 14, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Deoxys (Defense) - Psycho Shift - Level 43
  (386, 38602, 375, 14, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Deoxys (Defense) - Zen Headbutt - Level 49
  (386, 38602, 428, 14, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Deoxys (Defense) - Amnesia - Level 55
  (386, 38602, 133, 14, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Deoxys (Defense) - Iron Defense - Level 55
  (386, 38602, 334, 14, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Deoxys (Defense) - Recover - Level 61
  (386, 38602, 105, 14, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Deoxys (Defense) - Psycho Boost - Level 67
  (386, 38602, 354, 14, NULL, 1, 67, NULL, NULL, NULL, 14),
  -- Deoxys (Defense) - Counter - Level 73
  (386, 38602, 68, 14, NULL, 1, 73, NULL, NULL, NULL, 15),
  -- Deoxys (Defense) - Mirror Coat - Level 73
  (386, 38602, 243, 14, NULL, 1, 73, NULL, NULL, NULL, 16),
  -- Deoxys (Defense) - Psyshock - TM03
  (386, 38602, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 17),
  -- Deoxys (Defense) - Calm Mind - TM04
  (386, 38602, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 18),
  -- Deoxys (Defense) - Toxic - TM06
  (386, 38602, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 19),
  -- Deoxys (Defense) - Hidden Power - TM10
  (386, 38602, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 20),
  -- Deoxys (Defense) - Sunny Day - TM11
  (386, 38602, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 21),
  -- Deoxys (Defense) - Taunt - TM12
  (386, 38602, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 22),
  -- Deoxys (Defense) - Ice Beam - TM13
  (386, 38602, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 23),
  -- Deoxys (Defense) - Hyper Beam - TM15
  (386, 38602, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 24),
  -- Deoxys (Defense) - Light Screen - TM16
  (386, 38602, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 25),
  -- Deoxys (Defense) - Protect - TM17
  (386, 38602, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 26),
  -- Deoxys (Defense) - Rain Dance - TM18
  (386, 38602, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 27),
  -- Deoxys (Defense) - Safeguard - TM20
  (386, 38602, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 28),
  -- Deoxys (Defense) - Frustration - TM21
  (386, 38602, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 29),
  -- Deoxys (Defense) - Solar Beam - TM22
  (386, 38602, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 30),
  -- Deoxys (Defense) - Thunderbolt - TM24
  (386, 38602, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 31),
  -- Deoxys (Defense) - Thunder - TM25
  (386, 38602, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 32),
  -- Deoxys (Defense) - Return - TM27
  (386, 38602, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 33),
  -- Deoxys (Defense) - Psychic - TM29
  (386, 38602, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 34),
  -- Deoxys (Defense) - Shadow Ball - TM30
  (386, 38602, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 35),
  -- Deoxys (Defense) - Brick Break - TM31
  (386, 38602, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 36),
  -- Deoxys (Defense) - Double Team - TM32
  (386, 38602, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 37),
  -- Deoxys (Defense) - Reflect - TM33
  (386, 38602, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 38),
  -- Deoxys (Defense) - Rock Tomb - TM39
  (386, 38602, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 39),
  -- Deoxys (Defense) - Aerial Ace - TM40
  (386, 38602, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 40),
  -- Deoxys (Defense) - Torment - TM41
  (386, 38602, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 41),
  -- Deoxys (Defense) - Facade - TM42
  (386, 38602, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 42),
  -- Deoxys (Defense) - Rest - TM44
  (386, 38602, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 43),
  -- Deoxys (Defense) - Low Sweep - TM47
  (386, 38602, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 44),
  -- Deoxys (Defense) - Round - TM48
  (386, 38602, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 45),
  -- Deoxys (Defense) - Focus Blast - TM52
  (386, 38602, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 46),
  -- Deoxys (Defense) - Energy Ball - TM53
  (386, 38602, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 47),
  -- Deoxys (Defense) - Fling - TM56
  (386, 38602, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 48),
  -- Deoxys (Defense) - Charge Beam - TM57
  (386, 38602, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 49),
  -- Deoxys (Defense) - Giga Impact - TM68
  (386, 38602, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 50),
  -- Deoxys (Defense) - Flash - TM70
  (386, 38602, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 51),
  -- Deoxys (Defense) - Thunder Wave - TM73
  (386, 38602, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 52),
  -- Deoxys (Defense) - Psych Up - TM77
  (386, 38602, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 53),
  -- Deoxys (Defense) - Rock Slide - TM80
  (386, 38602, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 54),
  -- Deoxys (Defense) - Poison Jab - TM84
  (386, 38602, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 55),
  -- Deoxys (Defense) - Dream Eater - TM85
  (386, 38602, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 56),
  -- Deoxys (Defense) - Grass Knot - TM86
  (386, 38602, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 57),
  -- Deoxys (Defense) - Swagger - TM87
  (386, 38602, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 58),
  -- Deoxys (Defense) - Sleep Talk - TM88
  (386, 38602, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 59),
  -- Deoxys (Defense) - Substitute - TM90
  (386, 38602, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 60),
  -- Deoxys (Defense) - Flash Cannon - TM91
  (386, 38602, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 61),
  -- Deoxys (Defense) - Trick Room - TM92
  (386, 38602, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 62),
  -- Deoxys (Defense) - Secret Power - TM94
  (386, 38602, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 63),
  -- Deoxys (Defense) - Dark Pulse - TM97
  (386, 38602, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 64),
  -- Deoxys (Defense) - Power-Up Punch - TM98
  (386, 38602, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 65),
  -- Deoxys (Defense) - Confide - TM100
  (386, 38602, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 66),
  -- Deoxys (Defense) - Cut - HM01
  (386, 38602, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 67),
  -- Deoxys (Defense) - Strength - HM04
  (386, 38602, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 68),
  -- Deoxys (Defense) - Rock Smash - HM06
  (386, 38602, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 69),
  -- Deoxys (Defense) - Bind - Tutor
  (386, 38602, 20, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Deoxys (Defense) - Low Kick - Tutor
  (386, 38602, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Deoxys (Defense) - Snore - Tutor
  (386, 38602, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Deoxys (Defense) - Focus Punch - Tutor
  (386, 38602, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Deoxys (Defense) - Trick - Tutor
  (386, 38602, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Deoxys (Defense) - Role Play - Tutor
  (386, 38602, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Deoxys (Defense) - Magic Coat - Tutor
  (386, 38602, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Deoxys (Defense) - Recycle - Tutor
  (386, 38602, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Deoxys (Defense) - Knock Off - Tutor
  (386, 38602, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Deoxys (Defense) - Skill Swap - Tutor
  (386, 38602, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Deoxys (Defense) - Snatch - Tutor
  (386, 38602, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Deoxys (Defense) - Signal Beam - Tutor
  (386, 38602, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Deoxys (Defense) - Iron Defense - Tutor
  (386, 38602, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Deoxys (Defense) - Shock Wave - Tutor
  (386, 38602, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 83),
  -- Deoxys (Defense) - Water Pulse - Tutor
  (386, 38602, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 84),
  -- Deoxys (Defense) - Gravity - Tutor
  (386, 38602, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 85),
  -- Deoxys (Defense) - Drain Punch - Tutor
  (386, 38602, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 86),
  -- Deoxys (Defense) - Zen Headbutt - Tutor
  (386, 38602, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 87),
  -- Deoxys (Defense) - Stealth Rock - Tutor
  (386, 38602, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 88),
  -- Deoxys (Defense) - Wonder Room - Tutor
  (386, 38602, 472, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 89),
  -- Deoxys (Speed) - Wrap - Level 1
  (386, 38603, 35, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Speed) - Leer - Level 1
  (386, 38603, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Speed) - Night Shade - Level 7
  (386, 38603, 101, 14, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Deoxys (Speed) - Double Team - Level 13
  (386, 38603, 104, 14, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Deoxys (Speed) - Knock Off - Level 19
  (386, 38603, 282, 14, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Deoxys (Speed) - Pursuit - Level 25
  (386, 38603, 228, 14, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Deoxys (Speed) - Psychic - Level 31
  (386, 38603, 94, 14, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Deoxys (Speed) - Swift - Level 37
  (386, 38603, 129, 14, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Deoxys (Speed) - Psycho Shift - Level 43
  (386, 38603, 375, 14, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Deoxys (Speed) - Zen Headbutt - Level 49
  (386, 38603, 428, 14, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Deoxys (Speed) - Agility - Level 55
  (386, 38603, 97, 14, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Deoxys (Speed) - Recover - Level 61
  (386, 38603, 105, 14, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Deoxys (Speed) - Psycho Boost - Level 67
  (386, 38603, 354, 14, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Deoxys (Speed) - Extreme Speed - Level 73
  (386, 38603, 245, 14, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Deoxys (Speed) - Psyshock - TM03
  (386, 38603, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 15),
  -- Deoxys (Speed) - Calm Mind - TM04
  (386, 38603, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 16),
  -- Deoxys (Speed) - Toxic - TM06
  (386, 38603, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Deoxys (Speed) - Hidden Power - TM10
  (386, 38603, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Deoxys (Speed) - Sunny Day - TM11
  (386, 38603, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 19),
  -- Deoxys (Speed) - Taunt - TM12
  (386, 38603, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 20),
  -- Deoxys (Speed) - Ice Beam - TM13
  (386, 38603, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 21),
  -- Deoxys (Speed) - Hyper Beam - TM15
  (386, 38603, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 22),
  -- Deoxys (Speed) - Light Screen - TM16
  (386, 38603, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 23),
  -- Deoxys (Speed) - Protect - TM17
  (386, 38603, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 24),
  -- Deoxys (Speed) - Rain Dance - TM18
  (386, 38603, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 25),
  -- Deoxys (Speed) - Safeguard - TM20
  (386, 38603, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 26),
  -- Deoxys (Speed) - Frustration - TM21
  (386, 38603, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 27),
  -- Deoxys (Speed) - Solar Beam - TM22
  (386, 38603, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 28),
  -- Deoxys (Speed) - Thunderbolt - TM24
  (386, 38603, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 29),
  -- Deoxys (Speed) - Thunder - TM25
  (386, 38603, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 30),
  -- Deoxys (Speed) - Return - TM27
  (386, 38603, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 31),
  -- Deoxys (Speed) - Psychic - TM29
  (386, 38603, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 32),
  -- Deoxys (Speed) - Shadow Ball - TM30
  (386, 38603, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 33),
  -- Deoxys (Speed) - Brick Break - TM31
  (386, 38603, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 34),
  -- Deoxys (Speed) - Double Team - TM32
  (386, 38603, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 35),
  -- Deoxys (Speed) - Reflect - TM33
  (386, 38603, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 36),
  -- Deoxys (Speed) - Rock Tomb - TM39
  (386, 38603, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 37),
  -- Deoxys (Speed) - Aerial Ace - TM40
  (386, 38603, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 38),
  -- Deoxys (Speed) - Torment - TM41
  (386, 38603, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 39),
  -- Deoxys (Speed) - Facade - TM42
  (386, 38603, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 40),
  -- Deoxys (Speed) - Rest - TM44
  (386, 38603, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 41),
  -- Deoxys (Speed) - Low Sweep - TM47
  (386, 38603, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 42),
  -- Deoxys (Speed) - Round - TM48
  (386, 38603, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 43),
  -- Deoxys (Speed) - Focus Blast - TM52
  (386, 38603, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 44),
  -- Deoxys (Speed) - Energy Ball - TM53
  (386, 38603, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 45),
  -- Deoxys (Speed) - Fling - TM56
  (386, 38603, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 46),
  -- Deoxys (Speed) - Charge Beam - TM57
  (386, 38603, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 47),
  -- Deoxys (Speed) - Giga Impact - TM68
  (386, 38603, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 48),
  -- Deoxys (Speed) - Flash - TM70
  (386, 38603, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 49),
  -- Deoxys (Speed) - Thunder Wave - TM73
  (386, 38603, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 50),
  -- Deoxys (Speed) - Psych Up - TM77
  (386, 38603, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 51),
  -- Deoxys (Speed) - Rock Slide - TM80
  (386, 38603, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 52),
  -- Deoxys (Speed) - Poison Jab - TM84
  (386, 38603, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 53),
  -- Deoxys (Speed) - Dream Eater - TM85
  (386, 38603, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 54),
  -- Deoxys (Speed) - Grass Knot - TM86
  (386, 38603, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 55),
  -- Deoxys (Speed) - Swagger - TM87
  (386, 38603, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 56),
  -- Deoxys (Speed) - Sleep Talk - TM88
  (386, 38603, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 57),
  -- Deoxys (Speed) - Substitute - TM90
  (386, 38603, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 58),
  -- Deoxys (Speed) - Flash Cannon - TM91
  (386, 38603, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 59),
  -- Deoxys (Speed) - Trick Room - TM92
  (386, 38603, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 60),
  -- Deoxys (Speed) - Secret Power - TM94
  (386, 38603, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 61),
  -- Deoxys (Speed) - Dark Pulse - TM97
  (386, 38603, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 62),
  -- Deoxys (Speed) - Power-Up Punch - TM98
  (386, 38603, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 63),
  -- Deoxys (Speed) - Confide - TM100
  (386, 38603, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 64),
  -- Deoxys (Speed) - Cut - HM01
  (386, 38603, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 65),
  -- Deoxys (Speed) - Strength - HM04
  (386, 38603, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 66),
  -- Deoxys (Speed) - Rock Smash - HM06
  (386, 38603, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 67),
  -- Deoxys (Speed) - Fire Punch - Tutor
  (386, 38603, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Deoxys (Speed) - Ice Punch - Tutor
  (386, 38603, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Deoxys (Speed) - Thunder Punch - Tutor
  (386, 38603, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Deoxys (Speed) - Bind - Tutor
  (386, 38603, 20, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Deoxys (Speed) - Low Kick - Tutor
  (386, 38603, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Deoxys (Speed) - Snore - Tutor
  (386, 38603, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Deoxys (Speed) - Focus Punch - Tutor
  (386, 38603, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Deoxys (Speed) - Trick - Tutor
  (386, 38603, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Deoxys (Speed) - Role Play - Tutor
  (386, 38603, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Deoxys (Speed) - Magic Coat - Tutor
  (386, 38603, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Deoxys (Speed) - Recycle - Tutor
  (386, 38603, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Deoxys (Speed) - Knock Off - Tutor
  (386, 38603, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Deoxys (Speed) - Skill Swap - Tutor
  (386, 38603, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Deoxys (Speed) - Snatch - Tutor
  (386, 38603, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Deoxys (Speed) - Signal Beam - Tutor
  (386, 38603, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Deoxys (Speed) - Shock Wave - Tutor
  (386, 38603, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 83),
  -- Deoxys (Speed) - Water Pulse - Tutor
  (386, 38603, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 84),
  -- Deoxys (Speed) - Gravity - Tutor
  (386, 38603, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 85),
  -- Deoxys (Speed) - Drain Punch - Tutor
  (386, 38603, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 86),
  -- Deoxys (Speed) - Zen Headbutt - Tutor
  (386, 38603, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 87),
  -- Deoxys (Speed) - Stealth Rock - Tutor
  (386, 38603, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 88),
  -- Deoxys (Speed) - Wonder Room - Tutor
  (386, 38603, 472, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 89),
  -- Wormadam (Sandy Cloak) - Tackle - Level 1
  (413, 41301, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam (Sandy Cloak) - Protect - Level 10
  (413, 41301, 182, 14, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Wormadam (Sandy Cloak) - Bug Bite - Level 15
  (413, 41301, 450, 14, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Wormadam (Sandy Cloak) - Hidden Power - Level 20
  (413, 41301, 237, 14, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Wormadam (Sandy Cloak) - Confusion - Level 23
  (413, 41301, 93, 14, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Wormadam (Sandy Cloak) - Rock Blast - Level 26
  (413, 41301, 350, 14, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Wormadam (Sandy Cloak) - Harden - Level 29
  (413, 41301, 106, 14, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Wormadam (Sandy Cloak) - Psybeam - Level 32
  (413, 41301, 60, 14, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Wormadam (Sandy Cloak) - Captivate - Level 35
  (413, 41301, 445, 14, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Wormadam (Sandy Cloak) - Flail - Level 38
  (413, 41301, 175, 14, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Wormadam (Sandy Cloak) - Attract - Level 41
  (413, 41301, 213, 14, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Wormadam (Sandy Cloak) - Psychic - Level 44
  (413, 41301, 94, 14, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Wormadam (Sandy Cloak) - Fissure - Level 47
  (413, 41301, 90, 14, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Wormadam (Sandy Cloak) - Toxic - TM06
  (413, 41301, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 14),
  -- Wormadam (Sandy Cloak) - Venoshock - TM09
  (413, 41301, 474, 14, NULL, 2, NULL, NULL, 14002009, NULL, 15),
  -- Wormadam (Sandy Cloak) - Hidden Power - TM10
  (413, 41301, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 16),
  -- Wormadam (Sandy Cloak) - Sunny Day - TM11
  (413, 41301, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 17),
  -- Wormadam (Sandy Cloak) - Hyper Beam - TM15
  (413, 41301, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 18),
  -- Wormadam (Sandy Cloak) - Protect - TM17
  (413, 41301, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 19),
  -- Wormadam (Sandy Cloak) - Rain Dance - TM18
  (413, 41301, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 20),
  -- Wormadam (Sandy Cloak) - Safeguard - TM20
  (413, 41301, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 21),
  -- Wormadam (Sandy Cloak) - Frustration - TM21
  (413, 41301, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 22),
  -- Wormadam (Sandy Cloak) - Earthquake - TM26
  (413, 41301, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 23),
  -- Wormadam (Sandy Cloak) - Return - TM27
  (413, 41301, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 24),
  -- Wormadam (Sandy Cloak) - Dig - TM28
  (413, 41301, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 25),
  -- Wormadam (Sandy Cloak) - Psychic - TM29
  (413, 41301, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 26),
  -- Wormadam (Sandy Cloak) - Shadow Ball - TM30
  (413, 41301, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 27),
  -- Wormadam (Sandy Cloak) - Double Team - TM32
  (413, 41301, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 28),
  -- Wormadam (Sandy Cloak) - Sandstorm - TM37
  (413, 41301, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 29),
  -- Wormadam (Sandy Cloak) - Rock Tomb - TM39
  (413, 41301, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 30),
  -- Wormadam (Sandy Cloak) - Facade - TM42
  (413, 41301, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 31),
  -- Wormadam (Sandy Cloak) - Rest - TM44
  (413, 41301, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 32),
  -- Wormadam (Sandy Cloak) - Attract - TM45
  (413, 41301, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 33),
  -- Wormadam (Sandy Cloak) - Thief - TM46
  (413, 41301, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 34),
  -- Wormadam (Sandy Cloak) - Round - TM48
  (413, 41301, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 35),
  -- Wormadam (Sandy Cloak) - Giga Impact - TM68
  (413, 41301, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 36),
  -- Wormadam (Sandy Cloak) - Flash - TM70
  (413, 41301, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 37),
  -- Wormadam (Sandy Cloak) - Struggle Bug - TM76
  (413, 41301, 522, 14, NULL, 2, NULL, NULL, 14002076, NULL, 38),
  -- Wormadam (Sandy Cloak) - Psych Up - TM77
  (413, 41301, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 39),
  -- Wormadam (Sandy Cloak) - Bulldoze - TM78
  (413, 41301, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 40),
  -- Wormadam (Sandy Cloak) - Infestation - TM83
  (413, 41301, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 41),
  -- Wormadam (Sandy Cloak) - Dream Eater - TM85
  (413, 41301, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 42),
  -- Wormadam (Sandy Cloak) - Swagger - TM87
  (413, 41301, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 43),
  -- Wormadam (Sandy Cloak) - Sleep Talk - TM88
  (413, 41301, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 44),
  -- Wormadam (Sandy Cloak) - Substitute - TM90
  (413, 41301, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 45),
  -- Wormadam (Sandy Cloak) - Secret Power - TM94
  (413, 41301, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 46),
  -- Wormadam (Sandy Cloak) - Confide - TM100
  (413, 41301, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 47),
  -- Wormadam (Sandy Cloak) - Snore - Tutor
  (413, 41301, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Wormadam (Sandy Cloak) - Uproar - Tutor
  (413, 41301, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Wormadam (Sandy Cloak) - Endeavor - Tutor
  (413, 41301, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Wormadam (Sandy Cloak) - Skill Swap - Tutor
  (413, 41301, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Wormadam (Sandy Cloak) - Signal Beam - Tutor
  (413, 41301, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Wormadam (Sandy Cloak) - Earth Power - Tutor
  (413, 41301, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Wormadam (Sandy Cloak) - Stealth Rock - Tutor
  (413, 41301, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Wormadam (Sandy Cloak) - Bug Bite - Tutor
  (413, 41301, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Wormadam (Sandy Cloak) - Electroweb - Tutor
  (413, 41301, 527, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Wormadam (Trash Cloak) - Tackle - Level 1
  (413, 41302, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam (Trash Cloak) - Protect - Level 10
  (413, 41302, 182, 14, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Wormadam (Trash Cloak) - Bug Bite - Level 15
  (413, 41302, 450, 14, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Wormadam (Trash Cloak) - Hidden Power - Level 20
  (413, 41302, 237, 14, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Wormadam (Trash Cloak) - Confusion - Level 23
  (413, 41302, 93, 14, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Wormadam (Trash Cloak) - Mirror Shot - Level 26
  (413, 41302, 429, 14, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Wormadam (Trash Cloak) - Metal Sound - Level 29
  (413, 41302, 319, 14, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Wormadam (Trash Cloak) - Psybeam - Level 32
  (413, 41302, 60, 14, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Wormadam (Trash Cloak) - Captivate - Level 35
  (413, 41302, 445, 14, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Wormadam (Trash Cloak) - Flail - Level 38
  (413, 41302, 175, 14, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Wormadam (Trash Cloak) - Attract - Level 41
  (413, 41302, 213, 14, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Wormadam (Trash Cloak) - Psychic - Level 44
  (413, 41302, 94, 14, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Wormadam (Trash Cloak) - Iron Head - Level 47
  (413, 41302, 442, 14, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Wormadam (Trash Cloak) - Toxic - TM06
  (413, 41302, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 14),
  -- Wormadam (Trash Cloak) - Venoshock - TM09
  (413, 41302, 474, 14, NULL, 2, NULL, NULL, 14002009, NULL, 15),
  -- Wormadam (Trash Cloak) - Hidden Power - TM10
  (413, 41302, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 16),
  -- Wormadam (Trash Cloak) - Sunny Day - TM11
  (413, 41302, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 17),
  -- Wormadam (Trash Cloak) - Hyper Beam - TM15
  (413, 41302, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 18),
  -- Wormadam (Trash Cloak) - Protect - TM17
  (413, 41302, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 19),
  -- Wormadam (Trash Cloak) - Rain Dance - TM18
  (413, 41302, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 20),
  -- Wormadam (Trash Cloak) - Safeguard - TM20
  (413, 41302, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 21),
  -- Wormadam (Trash Cloak) - Frustration - TM21
  (413, 41302, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 22),
  -- Wormadam (Trash Cloak) - Return - TM27
  (413, 41302, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 23),
  -- Wormadam (Trash Cloak) - Psychic - TM29
  (413, 41302, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 24),
  -- Wormadam (Trash Cloak) - Shadow Ball - TM30
  (413, 41302, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 25),
  -- Wormadam (Trash Cloak) - Double Team - TM32
  (413, 41302, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 26),
  -- Wormadam (Trash Cloak) - Facade - TM42
  (413, 41302, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 27),
  -- Wormadam (Trash Cloak) - Rest - TM44
  (413, 41302, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 28),
  -- Wormadam (Trash Cloak) - Attract - TM45
  (413, 41302, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 29),
  -- Wormadam (Trash Cloak) - Thief - TM46
  (413, 41302, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 30),
  -- Wormadam (Trash Cloak) - Round - TM48
  (413, 41302, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 31),
  -- Wormadam (Trash Cloak) - Giga Impact - TM68
  (413, 41302, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 32),
  -- Wormadam (Trash Cloak) - Flash - TM70
  (413, 41302, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 33),
  -- Wormadam (Trash Cloak) - Gyro Ball - TM74
  (413, 41302, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 34),
  -- Wormadam (Trash Cloak) - Struggle Bug - TM76
  (413, 41302, 522, 14, NULL, 2, NULL, NULL, 14002076, NULL, 35),
  -- Wormadam (Trash Cloak) - Psych Up - TM77
  (413, 41302, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 36),
  -- Wormadam (Trash Cloak) - Infestation - TM83
  (413, 41302, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 37),
  -- Wormadam (Trash Cloak) - Dream Eater - TM85
  (413, 41302, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 38),
  -- Wormadam (Trash Cloak) - Swagger - TM87
  (413, 41302, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 39),
  -- Wormadam (Trash Cloak) - Sleep Talk - TM88
  (413, 41302, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 40),
  -- Wormadam (Trash Cloak) - Substitute - TM90
  (413, 41302, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 41),
  -- Wormadam (Trash Cloak) - Flash Cannon - TM91
  (413, 41302, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 42),
  -- Wormadam (Trash Cloak) - Secret Power - TM94
  (413, 41302, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 43),
  -- Wormadam (Trash Cloak) - Confide - TM100
  (413, 41302, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 44),
  -- Wormadam (Trash Cloak) - Snore - Tutor
  (413, 41302, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 45),
  -- Wormadam (Trash Cloak) - Uproar - Tutor
  (413, 41302, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 46),
  -- Wormadam (Trash Cloak) - Endeavor - Tutor
  (413, 41302, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Wormadam (Trash Cloak) - Skill Swap - Tutor
  (413, 41302, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Wormadam (Trash Cloak) - Signal Beam - Tutor
  (413, 41302, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Wormadam (Trash Cloak) - Iron Defense - Tutor
  (413, 41302, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Wormadam (Trash Cloak) - Magnet Rise - Tutor
  (413, 41302, 393, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Wormadam (Trash Cloak) - Gunk Shot - Tutor
  (413, 41302, 441, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Wormadam (Trash Cloak) - Iron Head - Tutor
  (413, 41302, 442, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Wormadam (Trash Cloak) - Stealth Rock - Tutor
  (413, 41302, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Wormadam (Trash Cloak) - Bug Bite - Tutor
  (413, 41302, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Wormadam (Trash Cloak) - Electroweb - Tutor
  (413, 41302, 527, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Rotom (Heat) - Thunder Shock - Level 1
  (479, 47901, 84, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Heat) - Thunder Wave - Level 1
  (479, 47901, 86, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Heat) - Confuse Ray - Level 1
  (479, 47901, 109, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Heat) - Charge - Level 1
  (479, 47901, 268, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Heat) - Trick - Level 1
  (479, 47901, 271, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Heat) - Astonish - Level 1
  (479, 47901, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rotom (Heat) - Discharge - Level 1
  (479, 47901, 435, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Rotom (Heat) - Uproar - Level 8
  (479, 47901, 253, 14, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Rotom (Heat) - Double Team - Level 15
  (479, 47901, 104, 14, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Rotom (Heat) - Shock Wave - Level 22
  (479, 47901, 351, 14, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Rotom (Heat) - Ominous Wind - Level 29
  (479, 47901, 466, 14, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Rotom (Heat) - Substitute - Level 36
  (479, 47901, 164, 14, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Rotom (Heat) - Electro Ball - Level 43
  (479, 47901, 486, 14, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Rotom (Heat) - Hex - Level 50
  (479, 47901, 506, 14, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Rotom (Heat) - Charge - Level 57
  (479, 47901, 268, 14, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Rotom (Heat) - Discharge - Level 64
  (479, 47901, 435, 14, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Rotom (Heat) - Toxic - TM06
  (479, 47901, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Rotom (Heat) - Hidden Power - TM10
  (479, 47901, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Rotom (Heat) - Sunny Day - TM11
  (479, 47901, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 19),
  -- Rotom (Heat) - Light Screen - TM16
  (479, 47901, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 20),
  -- Rotom (Heat) - Protect - TM17
  (479, 47901, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 21),
  -- Rotom (Heat) - Rain Dance - TM18
  (479, 47901, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 22),
  -- Rotom (Heat) - Frustration - TM21
  (479, 47901, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 23),
  -- Rotom (Heat) - Thunderbolt - TM24
  (479, 47901, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 24),
  -- Rotom (Heat) - Thunder - TM25
  (479, 47901, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 25),
  -- Rotom (Heat) - Return - TM27
  (479, 47901, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 26),
  -- Rotom (Heat) - Shadow Ball - TM30
  (479, 47901, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 27),
  -- Rotom (Heat) - Double Team - TM32
  (479, 47901, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 28),
  -- Rotom (Heat) - Reflect - TM33
  (479, 47901, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 29),
  -- Rotom (Heat) - Facade - TM42
  (479, 47901, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 30),
  -- Rotom (Heat) - Rest - TM44
  (479, 47901, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 31),
  -- Rotom (Heat) - Thief - TM46
  (479, 47901, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 32),
  -- Rotom (Heat) - Round - TM48
  (479, 47901, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 33),
  -- Rotom (Heat) - Charge Beam - TM57
  (479, 47901, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 34),
  -- Rotom (Heat) - Will-O-Wisp - TM61
  (479, 47901, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 35),
  -- Rotom (Heat) - Flash - TM70
  (479, 47901, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 36),
  -- Rotom (Heat) - Volt Switch - TM72
  (479, 47901, 521, 14, NULL, 2, NULL, NULL, 14002072, NULL, 37),
  -- Rotom (Heat) - Thunder Wave - TM73
  (479, 47901, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 38),
  -- Rotom (Heat) - Psych Up - TM77
  (479, 47901, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 39),
  -- Rotom (Heat) - Dream Eater - TM85
  (479, 47901, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 40),
  -- Rotom (Heat) - Swagger - TM87
  (479, 47901, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 41),
  -- Rotom (Heat) - Sleep Talk - TM88
  (479, 47901, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 42),
  -- Rotom (Heat) - Substitute - TM90
  (479, 47901, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 43),
  -- Rotom (Heat) - Secret Power - TM94
  (479, 47901, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 44),
  -- Rotom (Heat) - Dark Pulse - TM97
  (479, 47901, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 45),
  -- Rotom (Heat) - Confide - TM100
  (479, 47901, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 46),
  -- Rotom (Heat) - Snore - Tutor
  (479, 47901, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Rotom (Heat) - Spite - Tutor
  (479, 47901, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Rotom (Heat) - Pain Split - Tutor
  (479, 47901, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Rotom (Heat) - Uproar - Tutor
  (479, 47901, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Rotom (Heat) - Trick - Tutor
  (479, 47901, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Rotom (Heat) - Snatch - Tutor
  (479, 47901, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Rotom (Heat) - Signal Beam - Tutor
  (479, 47901, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Rotom (Heat) - Shock Wave - Tutor
  (479, 47901, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Rotom (Heat) - Foul Play - Tutor
  (479, 47901, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Rotom (Heat) - Electroweb - Tutor
  (479, 47901, 527, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Rotom (Wash) - Thunder Shock - Level 1
  (479, 47902, 84, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Wash) - Thunder Wave - Level 1
  (479, 47902, 86, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Wash) - Confuse Ray - Level 1
  (479, 47902, 109, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Wash) - Charge - Level 1
  (479, 47902, 268, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Wash) - Trick - Level 1
  (479, 47902, 271, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Wash) - Astonish - Level 1
  (479, 47902, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rotom (Wash) - Discharge - Level 1
  (479, 47902, 435, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Rotom (Wash) - Uproar - Level 8
  (479, 47902, 253, 14, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Rotom (Wash) - Double Team - Level 15
  (479, 47902, 104, 14, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Rotom (Wash) - Shock Wave - Level 22
  (479, 47902, 351, 14, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Rotom (Wash) - Ominous Wind - Level 29
  (479, 47902, 466, 14, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Rotom (Wash) - Substitute - Level 36
  (479, 47902, 164, 14, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Rotom (Wash) - Electro Ball - Level 43
  (479, 47902, 486, 14, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Rotom (Wash) - Hex - Level 50
  (479, 47902, 506, 14, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Rotom (Wash) - Charge - Level 57
  (479, 47902, 268, 14, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Rotom (Wash) - Discharge - Level 64
  (479, 47902, 435, 14, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Rotom (Wash) - Toxic - TM06
  (479, 47902, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Rotom (Wash) - Hidden Power - TM10
  (479, 47902, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Rotom (Wash) - Sunny Day - TM11
  (479, 47902, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 19),
  -- Rotom (Wash) - Light Screen - TM16
  (479, 47902, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 20),
  -- Rotom (Wash) - Protect - TM17
  (479, 47902, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 21),
  -- Rotom (Wash) - Rain Dance - TM18
  (479, 47902, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 22),
  -- Rotom (Wash) - Frustration - TM21
  (479, 47902, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 23),
  -- Rotom (Wash) - Thunderbolt - TM24
  (479, 47902, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 24),
  -- Rotom (Wash) - Thunder - TM25
  (479, 47902, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 25),
  -- Rotom (Wash) - Return - TM27
  (479, 47902, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 26),
  -- Rotom (Wash) - Shadow Ball - TM30
  (479, 47902, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 27),
  -- Rotom (Wash) - Double Team - TM32
  (479, 47902, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 28),
  -- Rotom (Wash) - Reflect - TM33
  (479, 47902, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 29),
  -- Rotom (Wash) - Facade - TM42
  (479, 47902, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 30),
  -- Rotom (Wash) - Rest - TM44
  (479, 47902, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 31),
  -- Rotom (Wash) - Thief - TM46
  (479, 47902, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 32),
  -- Rotom (Wash) - Round - TM48
  (479, 47902, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 33),
  -- Rotom (Wash) - Charge Beam - TM57
  (479, 47902, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 34),
  -- Rotom (Wash) - Will-O-Wisp - TM61
  (479, 47902, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 35),
  -- Rotom (Wash) - Flash - TM70
  (479, 47902, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 36),
  -- Rotom (Wash) - Volt Switch - TM72
  (479, 47902, 521, 14, NULL, 2, NULL, NULL, 14002072, NULL, 37),
  -- Rotom (Wash) - Thunder Wave - TM73
  (479, 47902, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 38),
  -- Rotom (Wash) - Psych Up - TM77
  (479, 47902, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 39),
  -- Rotom (Wash) - Dream Eater - TM85
  (479, 47902, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 40),
  -- Rotom (Wash) - Swagger - TM87
  (479, 47902, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 41),
  -- Rotom (Wash) - Sleep Talk - TM88
  (479, 47902, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 42),
  -- Rotom (Wash) - Substitute - TM90
  (479, 47902, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 43),
  -- Rotom (Wash) - Secret Power - TM94
  (479, 47902, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 44),
  -- Rotom (Wash) - Dark Pulse - TM97
  (479, 47902, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 45),
  -- Rotom (Wash) - Confide - TM100
  (479, 47902, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 46),
  -- Rotom (Wash) - Snore - Tutor
  (479, 47902, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Rotom (Wash) - Spite - Tutor
  (479, 47902, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Rotom (Wash) - Pain Split - Tutor
  (479, 47902, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Rotom (Wash) - Uproar - Tutor
  (479, 47902, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Rotom (Wash) - Trick - Tutor
  (479, 47902, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Rotom (Wash) - Snatch - Tutor
  (479, 47902, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Rotom (Wash) - Signal Beam - Tutor
  (479, 47902, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Rotom (Wash) - Shock Wave - Tutor
  (479, 47902, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Rotom (Wash) - Foul Play - Tutor
  (479, 47902, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Rotom (Wash) - Electroweb - Tutor
  (479, 47902, 527, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Rotom (Frost) - Thunder Shock - Level 1
  (479, 47903, 84, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Frost) - Thunder Wave - Level 1
  (479, 47903, 86, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Frost) - Confuse Ray - Level 1
  (479, 47903, 109, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Frost) - Charge - Level 1
  (479, 47903, 268, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Frost) - Trick - Level 1
  (479, 47903, 271, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Frost) - Astonish - Level 1
  (479, 47903, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rotom (Frost) - Discharge - Level 1
  (479, 47903, 435, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Rotom (Frost) - Uproar - Level 8
  (479, 47903, 253, 14, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Rotom (Frost) - Double Team - Level 15
  (479, 47903, 104, 14, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Rotom (Frost) - Shock Wave - Level 22
  (479, 47903, 351, 14, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Rotom (Frost) - Ominous Wind - Level 29
  (479, 47903, 466, 14, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Rotom (Frost) - Substitute - Level 36
  (479, 47903, 164, 14, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Rotom (Frost) - Electro Ball - Level 43
  (479, 47903, 486, 14, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Rotom (Frost) - Hex - Level 50
  (479, 47903, 506, 14, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Rotom (Frost) - Charge - Level 57
  (479, 47903, 268, 14, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Rotom (Frost) - Discharge - Level 64
  (479, 47903, 435, 14, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Rotom (Frost) - Toxic - TM06
  (479, 47903, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Rotom (Frost) - Hidden Power - TM10
  (479, 47903, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Rotom (Frost) - Sunny Day - TM11
  (479, 47903, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 19),
  -- Rotom (Frost) - Light Screen - TM16
  (479, 47903, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 20),
  -- Rotom (Frost) - Protect - TM17
  (479, 47903, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 21),
  -- Rotom (Frost) - Rain Dance - TM18
  (479, 47903, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 22),
  -- Rotom (Frost) - Frustration - TM21
  (479, 47903, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 23),
  -- Rotom (Frost) - Thunderbolt - TM24
  (479, 47903, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 24),
  -- Rotom (Frost) - Thunder - TM25
  (479, 47903, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 25),
  -- Rotom (Frost) - Return - TM27
  (479, 47903, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 26),
  -- Rotom (Frost) - Shadow Ball - TM30
  (479, 47903, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 27),
  -- Rotom (Frost) - Double Team - TM32
  (479, 47903, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 28),
  -- Rotom (Frost) - Reflect - TM33
  (479, 47903, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 29),
  -- Rotom (Frost) - Facade - TM42
  (479, 47903, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 30),
  -- Rotom (Frost) - Rest - TM44
  (479, 47903, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 31),
  -- Rotom (Frost) - Thief - TM46
  (479, 47903, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 32),
  -- Rotom (Frost) - Round - TM48
  (479, 47903, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 33),
  -- Rotom (Frost) - Charge Beam - TM57
  (479, 47903, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 34),
  -- Rotom (Frost) - Will-O-Wisp - TM61
  (479, 47903, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 35),
  -- Rotom (Frost) - Flash - TM70
  (479, 47903, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 36),
  -- Rotom (Frost) - Volt Switch - TM72
  (479, 47903, 521, 14, NULL, 2, NULL, NULL, 14002072, NULL, 37),
  -- Rotom (Frost) - Thunder Wave - TM73
  (479, 47903, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 38),
  -- Rotom (Frost) - Psych Up - TM77
  (479, 47903, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 39),
  -- Rotom (Frost) - Dream Eater - TM85
  (479, 47903, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 40),
  -- Rotom (Frost) - Swagger - TM87
  (479, 47903, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 41),
  -- Rotom (Frost) - Sleep Talk - TM88
  (479, 47903, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 42),
  -- Rotom (Frost) - Substitute - TM90
  (479, 47903, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 43),
  -- Rotom (Frost) - Secret Power - TM94
  (479, 47903, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 44),
  -- Rotom (Frost) - Dark Pulse - TM97
  (479, 47903, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 45),
  -- Rotom (Frost) - Confide - TM100
  (479, 47903, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 46),
  -- Rotom (Frost) - Snore - Tutor
  (479, 47903, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Rotom (Frost) - Spite - Tutor
  (479, 47903, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Rotom (Frost) - Pain Split - Tutor
  (479, 47903, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Rotom (Frost) - Uproar - Tutor
  (479, 47903, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Rotom (Frost) - Trick - Tutor
  (479, 47903, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Rotom (Frost) - Snatch - Tutor
  (479, 47903, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Rotom (Frost) - Signal Beam - Tutor
  (479, 47903, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Rotom (Frost) - Shock Wave - Tutor
  (479, 47903, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Rotom (Frost) - Foul Play - Tutor
  (479, 47903, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Rotom (Frost) - Electroweb - Tutor
  (479, 47903, 527, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Rotom (Fan) - Thunder Shock - Level 1
  (479, 47904, 84, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Fan) - Thunder Wave - Level 1
  (479, 47904, 86, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Fan) - Confuse Ray - Level 1
  (479, 47904, 109, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Fan) - Charge - Level 1
  (479, 47904, 268, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Fan) - Trick - Level 1
  (479, 47904, 271, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Fan) - Astonish - Level 1
  (479, 47904, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rotom (Fan) - Discharge - Level 1
  (479, 47904, 435, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Rotom (Fan) - Uproar - Level 8
  (479, 47904, 253, 14, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Rotom (Fan) - Double Team - Level 15
  (479, 47904, 104, 14, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Rotom (Fan) - Shock Wave - Level 22
  (479, 47904, 351, 14, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Rotom (Fan) - Ominous Wind - Level 29
  (479, 47904, 466, 14, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Rotom (Fan) - Substitute - Level 36
  (479, 47904, 164, 14, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Rotom (Fan) - Electro Ball - Level 43
  (479, 47904, 486, 14, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Rotom (Fan) - Hex - Level 50
  (479, 47904, 506, 14, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Rotom (Fan) - Charge - Level 57
  (479, 47904, 268, 14, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Rotom (Fan) - Discharge - Level 64
  (479, 47904, 435, 14, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Rotom (Fan) - Toxic - TM06
  (479, 47904, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Rotom (Fan) - Hidden Power - TM10
  (479, 47904, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Rotom (Fan) - Sunny Day - TM11
  (479, 47904, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 19),
  -- Rotom (Fan) - Light Screen - TM16
  (479, 47904, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 20),
  -- Rotom (Fan) - Protect - TM17
  (479, 47904, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 21),
  -- Rotom (Fan) - Rain Dance - TM18
  (479, 47904, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 22),
  -- Rotom (Fan) - Frustration - TM21
  (479, 47904, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 23),
  -- Rotom (Fan) - Thunderbolt - TM24
  (479, 47904, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 24),
  -- Rotom (Fan) - Thunder - TM25
  (479, 47904, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 25),
  -- Rotom (Fan) - Return - TM27
  (479, 47904, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 26),
  -- Rotom (Fan) - Shadow Ball - TM30
  (479, 47904, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 27),
  -- Rotom (Fan) - Double Team - TM32
  (479, 47904, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 28),
  -- Rotom (Fan) - Reflect - TM33
  (479, 47904, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 29),
  -- Rotom (Fan) - Facade - TM42
  (479, 47904, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 30),
  -- Rotom (Fan) - Rest - TM44
  (479, 47904, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 31),
  -- Rotom (Fan) - Thief - TM46
  (479, 47904, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 32),
  -- Rotom (Fan) - Round - TM48
  (479, 47904, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 33),
  -- Rotom (Fan) - Charge Beam - TM57
  (479, 47904, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 34),
  -- Rotom (Fan) - Will-O-Wisp - TM61
  (479, 47904, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 35),
  -- Rotom (Fan) - Flash - TM70
  (479, 47904, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 36),
  -- Rotom (Fan) - Volt Switch - TM72
  (479, 47904, 521, 14, NULL, 2, NULL, NULL, 14002072, NULL, 37),
  -- Rotom (Fan) - Thunder Wave - TM73
  (479, 47904, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 38),
  -- Rotom (Fan) - Psych Up - TM77
  (479, 47904, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 39),
  -- Rotom (Fan) - Dream Eater - TM85
  (479, 47904, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 40),
  -- Rotom (Fan) - Swagger - TM87
  (479, 47904, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 41),
  -- Rotom (Fan) - Sleep Talk - TM88
  (479, 47904, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 42),
  -- Rotom (Fan) - Substitute - TM90
  (479, 47904, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 43),
  -- Rotom (Fan) - Secret Power - TM94
  (479, 47904, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 44),
  -- Rotom (Fan) - Dark Pulse - TM97
  (479, 47904, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 45),
  -- Rotom (Fan) - Confide - TM100
  (479, 47904, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 46),
  -- Rotom (Fan) - Snore - Tutor
  (479, 47904, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Rotom (Fan) - Spite - Tutor
  (479, 47904, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Rotom (Fan) - Pain Split - Tutor
  (479, 47904, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Rotom (Fan) - Uproar - Tutor
  (479, 47904, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Rotom (Fan) - Trick - Tutor
  (479, 47904, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Rotom (Fan) - Snatch - Tutor
  (479, 47904, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Rotom (Fan) - Signal Beam - Tutor
  (479, 47904, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Rotom (Fan) - Shock Wave - Tutor
  (479, 47904, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Rotom (Fan) - Foul Play - Tutor
  (479, 47904, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Rotom (Fan) - Electroweb - Tutor
  (479, 47904, 527, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Rotom (Mow) - Thunder Shock - Level 1
  (479, 47905, 84, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Mow) - Thunder Wave - Level 1
  (479, 47905, 86, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Mow) - Confuse Ray - Level 1
  (479, 47905, 109, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Mow) - Charge - Level 1
  (479, 47905, 268, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Mow) - Trick - Level 1
  (479, 47905, 271, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Mow) - Astonish - Level 1
  (479, 47905, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rotom (Mow) - Discharge - Level 1
  (479, 47905, 435, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Rotom (Mow) - Uproar - Level 8
  (479, 47905, 253, 14, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Rotom (Mow) - Double Team - Level 15
  (479, 47905, 104, 14, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Rotom (Mow) - Shock Wave - Level 22
  (479, 47905, 351, 14, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Rotom (Mow) - Ominous Wind - Level 29
  (479, 47905, 466, 14, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Rotom (Mow) - Substitute - Level 36
  (479, 47905, 164, 14, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Rotom (Mow) - Electro Ball - Level 43
  (479, 47905, 486, 14, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Rotom (Mow) - Hex - Level 50
  (479, 47905, 506, 14, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Rotom (Mow) - Charge - Level 57
  (479, 47905, 268, 14, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Rotom (Mow) - Discharge - Level 64
  (479, 47905, 435, 14, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Rotom (Mow) - Toxic - TM06
  (479, 47905, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Rotom (Mow) - Hidden Power - TM10
  (479, 47905, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Rotom (Mow) - Sunny Day - TM11
  (479, 47905, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 19),
  -- Rotom (Mow) - Light Screen - TM16
  (479, 47905, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 20),
  -- Rotom (Mow) - Protect - TM17
  (479, 47905, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 21),
  -- Rotom (Mow) - Rain Dance - TM18
  (479, 47905, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 22),
  -- Rotom (Mow) - Frustration - TM21
  (479, 47905, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 23),
  -- Rotom (Mow) - Thunderbolt - TM24
  (479, 47905, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 24),
  -- Rotom (Mow) - Thunder - TM25
  (479, 47905, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 25),
  -- Rotom (Mow) - Return - TM27
  (479, 47905, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 26),
  -- Rotom (Mow) - Shadow Ball - TM30
  (479, 47905, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 27),
  -- Rotom (Mow) - Double Team - TM32
  (479, 47905, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 28),
  -- Rotom (Mow) - Reflect - TM33
  (479, 47905, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 29),
  -- Rotom (Mow) - Facade - TM42
  (479, 47905, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 30),
  -- Rotom (Mow) - Rest - TM44
  (479, 47905, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 31),
  -- Rotom (Mow) - Thief - TM46
  (479, 47905, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 32),
  -- Rotom (Mow) - Round - TM48
  (479, 47905, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 33),
  -- Rotom (Mow) - Charge Beam - TM57
  (479, 47905, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 34),
  -- Rotom (Mow) - Will-O-Wisp - TM61
  (479, 47905, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 35),
  -- Rotom (Mow) - Flash - TM70
  (479, 47905, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 36),
  -- Rotom (Mow) - Volt Switch - TM72
  (479, 47905, 521, 14, NULL, 2, NULL, NULL, 14002072, NULL, 37),
  -- Rotom (Mow) - Thunder Wave - TM73
  (479, 47905, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 38),
  -- Rotom (Mow) - Psych Up - TM77
  (479, 47905, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 39),
  -- Rotom (Mow) - Dream Eater - TM85
  (479, 47905, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 40),
  -- Rotom (Mow) - Swagger - TM87
  (479, 47905, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 41),
  -- Rotom (Mow) - Sleep Talk - TM88
  (479, 47905, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 42),
  -- Rotom (Mow) - Substitute - TM90
  (479, 47905, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 43),
  -- Rotom (Mow) - Secret Power - TM94
  (479, 47905, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 44),
  -- Rotom (Mow) - Dark Pulse - TM97
  (479, 47905, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 45),
  -- Rotom (Mow) - Confide - TM100
  (479, 47905, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 46),
  -- Rotom (Mow) - Snore - Tutor
  (479, 47905, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Rotom (Mow) - Spite - Tutor
  (479, 47905, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Rotom (Mow) - Pain Split - Tutor
  (479, 47905, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Rotom (Mow) - Uproar - Tutor
  (479, 47905, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Rotom (Mow) - Trick - Tutor
  (479, 47905, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Rotom (Mow) - Snatch - Tutor
  (479, 47905, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Rotom (Mow) - Signal Beam - Tutor
  (479, 47905, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Rotom (Mow) - Shock Wave - Tutor
  (479, 47905, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Rotom (Mow) - Foul Play - Tutor
  (479, 47905, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Rotom (Mow) - Electroweb - Tutor
  (479, 47905, 527, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Giratina (Origin) - Scary Face - Level 1
  (487, 48701, 184, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Giratina (Origin) - Dragon Breath - Level 1
  (487, 48701, 225, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Giratina (Origin) - Ominous Wind - Level 6
  (487, 48701, 466, 14, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Giratina (Origin) - Ancient Power - Level 10
  (487, 48701, 246, 14, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Giratina (Origin) - Slash - Level 15
  (487, 48701, 163, 14, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Giratina (Origin) - Shadow Sneak - Level 19
  (487, 48701, 425, 14, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Giratina (Origin) - Destiny Bond - Level 24
  (487, 48701, 194, 14, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Giratina (Origin) - Dragon Claw - Level 28
  (487, 48701, 337, 14, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Giratina (Origin) - Earth Power - Level 33
  (487, 48701, 414, 14, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Giratina (Origin) - Aura Sphere - Level 37
  (487, 48701, 396, 14, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Giratina (Origin) - Shadow Claw - Level 42
  (487, 48701, 421, 14, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Giratina (Origin) - Shadow Force - Level 46
  (487, 48701, 467, 14, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Giratina (Origin) - Hex - Level 50
  (487, 48701, 506, 14, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Giratina (Origin) - Hone Claws - TM01
  (487, 48701, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 14),
  -- Giratina (Origin) - Dragon Claw - TM02
  (487, 48701, 337, 14, NULL, 2, NULL, NULL, 14002002, NULL, 15),
  -- Giratina (Origin) - Calm Mind - TM04
  (487, 48701, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 16),
  -- Giratina (Origin) - Roar - TM05
  (487, 48701, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 17),
  -- Giratina (Origin) - Toxic - TM06
  (487, 48701, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 18),
  -- Giratina (Origin) - Hidden Power - TM10
  (487, 48701, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 19),
  -- Giratina (Origin) - Sunny Day - TM11
  (487, 48701, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 20),
  -- Giratina (Origin) - Hyper Beam - TM15
  (487, 48701, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 21),
  -- Giratina (Origin) - Protect - TM17
  (487, 48701, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 22),
  -- Giratina (Origin) - Rain Dance - TM18
  (487, 48701, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 23),
  -- Giratina (Origin) - Safeguard - TM20
  (487, 48701, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 24),
  -- Giratina (Origin) - Frustration - TM21
  (487, 48701, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 25),
  -- Giratina (Origin) - Thunderbolt - TM24
  (487, 48701, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 26),
  -- Giratina (Origin) - Thunder - TM25
  (487, 48701, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 27),
  -- Giratina (Origin) - Earthquake - TM26
  (487, 48701, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 28),
  -- Giratina (Origin) - Return - TM27
  (487, 48701, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 29),
  -- Giratina (Origin) - Psychic - TM29
  (487, 48701, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 30),
  -- Giratina (Origin) - Shadow Ball - TM30
  (487, 48701, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 31),
  -- Giratina (Origin) - Double Team - TM32
  (487, 48701, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 32),
  -- Giratina (Origin) - Aerial Ace - TM40
  (487, 48701, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 33),
  -- Giratina (Origin) - Facade - TM42
  (487, 48701, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 34),
  -- Giratina (Origin) - Rest - TM44
  (487, 48701, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 35),
  -- Giratina (Origin) - Round - TM48
  (487, 48701, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 36),
  -- Giratina (Origin) - Echoed Voice - TM49
  (487, 48701, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 37),
  -- Giratina (Origin) - Steel Wing - TM51
  (487, 48701, 211, 14, NULL, 2, NULL, NULL, 14002051, NULL, 38),
  -- Giratina (Origin) - Energy Ball - TM53
  (487, 48701, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 39),
  -- Giratina (Origin) - Charge Beam - TM57
  (487, 48701, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 40),
  -- Giratina (Origin) - Will-O-Wisp - TM61
  (487, 48701, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 41),
  -- Giratina (Origin) - Shadow Claw - TM65
  (487, 48701, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 42),
  -- Giratina (Origin) - Payback - TM66
  (487, 48701, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 43),
  -- Giratina (Origin) - Giga Impact - TM68
  (487, 48701, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 44),
  -- Giratina (Origin) - Stone Edge - TM71
  (487, 48701, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 45),
  -- Giratina (Origin) - Thunder Wave - TM73
  (487, 48701, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 46),
  -- Giratina (Origin) - Psych Up - TM77
  (487, 48701, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 47),
  -- Giratina (Origin) - Bulldoze - TM78
  (487, 48701, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 48),
  -- Giratina (Origin) - Dragon Tail - TM82
  (487, 48701, 525, 14, NULL, 2, NULL, NULL, 14002082, NULL, 49),
  -- Giratina (Origin) - Dream Eater - TM85
  (487, 48701, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 50),
  -- Giratina (Origin) - Swagger - TM87
  (487, 48701, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 51),
  -- Giratina (Origin) - Sleep Talk - TM88
  (487, 48701, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 52),
  -- Giratina (Origin) - Substitute - TM90
  (487, 48701, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 53),
  -- Giratina (Origin) - Secret Power - TM94
  (487, 48701, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 54),
  -- Giratina (Origin) - Dark Pulse - TM97
  (487, 48701, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 55),
  -- Giratina (Origin) - Confide - TM100
  (487, 48701, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 56),
  -- Giratina (Origin) - Cut - HM01
  (487, 48701, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 57),
  -- Giratina (Origin) - Fly - HM02
  (487, 48701, 19, 14, NULL, 3, NULL, NULL, 14003002, NULL, 58),
  -- Giratina (Origin) - Strength - HM04
  (487, 48701, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 59),
  -- Giratina (Origin) - Rock Smash - HM06
  (487, 48701, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 60),
  -- Giratina (Origin) - Snore - Tutor
  (487, 48701, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Giratina (Origin) - Spite - Tutor
  (487, 48701, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Giratina (Origin) - Icy Wind - Tutor
  (487, 48701, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Giratina (Origin) - Outrage - Tutor
  (487, 48701, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Giratina (Origin) - Iron Tail - Tutor
  (487, 48701, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Giratina (Origin) - Magic Coat - Tutor
  (487, 48701, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Giratina (Origin) - Hyper Voice - Tutor
  (487, 48701, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Giratina (Origin) - Shock Wave - Tutor
  (487, 48701, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Giratina (Origin) - Gravity - Tutor
  (487, 48701, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Giratina (Origin) - Tailwind - Tutor
  (487, 48701, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Giratina (Origin) - Aqua Tail - Tutor
  (487, 48701, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Giratina (Origin) - Dragon Pulse - Tutor
  (487, 48701, 406, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Giratina (Origin) - Earth Power - Tutor
  (487, 48701, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Giratina (Origin) - Draco Meteor - Tutor
  (487, 48701, 434, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Giratina (Origin) - Iron Head - Tutor
  (487, 48701, 442, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Shaymin (Sky) - Growth - Level 1
  (492, 49201, 74, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shaymin (Sky) - Magical Leaf - Level 10
  (492, 49201, 345, 14, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Shaymin (Sky) - Leech Seed - Level 19
  (492, 49201, 73, 14, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Shaymin (Sky) - Quick Attack - Level 28
  (492, 49201, 98, 14, NULL, 1, 28, NULL, NULL, NULL, 4),
  -- Shaymin (Sky) - Sweet Scent - Level 37
  (492, 49201, 230, 14, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Shaymin (Sky) - Natural Gift - Level 46
  (492, 49201, 363, 14, NULL, 1, 46, NULL, NULL, NULL, 6),
  -- Shaymin (Sky) - Worry Seed - Level 55
  (492, 49201, 388, 14, NULL, 1, 55, NULL, NULL, NULL, 7),
  -- Shaymin (Sky) - Air Slash - Level 64
  (492, 49201, 403, 14, NULL, 1, 64, NULL, NULL, NULL, 8),
  -- Shaymin (Sky) - Energy Ball - Level 73
  (492, 49201, 412, 14, NULL, 1, 73, NULL, NULL, NULL, 9),
  -- Shaymin (Sky) - Sweet Kiss - Level 82
  (492, 49201, 186, 14, NULL, 1, 82, NULL, NULL, NULL, 10),
  -- Shaymin (Sky) - Leaf Storm - Level 91
  (492, 49201, 437, 14, NULL, 1, 91, NULL, NULL, NULL, 11),
  -- Shaymin (Sky) - Seed Flare - Level 100
  (492, 49201, 465, 14, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Shaymin (Sky) - Toxic - TM06
  (492, 49201, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 13),
  -- Shaymin (Sky) - Hidden Power - TM10
  (492, 49201, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 14),
  -- Shaymin (Sky) - Sunny Day - TM11
  (492, 49201, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 15),
  -- Shaymin (Sky) - Hyper Beam - TM15
  (492, 49201, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 16),
  -- Shaymin (Sky) - Protect - TM17
  (492, 49201, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 17),
  -- Shaymin (Sky) - Safeguard - TM20
  (492, 49201, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 18),
  -- Shaymin (Sky) - Frustration - TM21
  (492, 49201, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 19),
  -- Shaymin (Sky) - Solar Beam - TM22
  (492, 49201, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 20),
  -- Shaymin (Sky) - Return - TM27
  (492, 49201, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 21),
  -- Shaymin (Sky) - Psychic - TM29
  (492, 49201, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 22),
  -- Shaymin (Sky) - Double Team - TM32
  (492, 49201, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 23),
  -- Shaymin (Sky) - Facade - TM42
  (492, 49201, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 24),
  -- Shaymin (Sky) - Rest - TM44
  (492, 49201, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 25),
  -- Shaymin (Sky) - Round - TM48
  (492, 49201, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 26),
  -- Shaymin (Sky) - Energy Ball - TM53
  (492, 49201, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 27),
  -- Shaymin (Sky) - Giga Impact - TM68
  (492, 49201, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 28),
  -- Shaymin (Sky) - Flash - TM70
  (492, 49201, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 29),
  -- Shaymin (Sky) - Swords Dance - TM75
  (492, 49201, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 30),
  -- Shaymin (Sky) - Psych Up - TM77
  (492, 49201, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 31),
  -- Shaymin (Sky) - Grass Knot - TM86
  (492, 49201, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 32),
  -- Shaymin (Sky) - Swagger - TM87
  (492, 49201, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 33),
  -- Shaymin (Sky) - Sleep Talk - TM88
  (492, 49201, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 34),
  -- Shaymin (Sky) - Substitute - TM90
  (492, 49201, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 35),
  -- Shaymin (Sky) - Secret Power - TM94
  (492, 49201, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 36),
  -- Shaymin (Sky) - Nature Power - TM96
  (492, 49201, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 37),
  -- Shaymin (Sky) - Dazzling Gleam - TM99
  (492, 49201, 605, 14, NULL, 2, NULL, NULL, 14002099, NULL, 38),
  -- Shaymin (Sky) - Confide - TM100
  (492, 49201, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 39),
  -- Shaymin (Sky) - Snore - Tutor
  (492, 49201, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 40),
  -- Shaymin (Sky) - Giga Drain - Tutor
  (492, 49201, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 41),
  -- Shaymin (Sky) - Synthesis - Tutor
  (492, 49201, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 42),
  -- Shaymin (Sky) - Covet - Tutor
  (492, 49201, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 43),
  -- Shaymin (Sky) - Tailwind - Tutor
  (492, 49201, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 44),
  -- Shaymin (Sky) - Last Resort - Tutor
  (492, 49201, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 45),
  -- Shaymin (Sky) - Worry Seed - Tutor
  (492, 49201, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 46),
  -- Shaymin (Sky) - Seed Bomb - Tutor
  (492, 49201, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Shaymin (Sky) - Zen Headbutt - Tutor
  (492, 49201, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Basculin (Blue-Striped) - Tackle - Level 1
  (550, 55001, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Basculin (Blue-Striped) - Thrash - Level 1
  (550, 55001, 37, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Basculin (Blue-Striped) - Tail Whip - Level 1
  (550, 55001, 39, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Basculin (Blue-Striped) - Water Gun - Level 1
  (550, 55001, 55, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Basculin (Blue-Striped) - Flail - Level 1
  (550, 55001, 175, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Basculin (Blue-Striped) - Uproar - Level 4
  (550, 55001, 253, 14, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Basculin (Blue-Striped) - Headbutt - Level 7
  (550, 55001, 29, 14, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Basculin (Blue-Striped) - Bite - Level 10
  (550, 55001, 44, 14, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Basculin (Blue-Striped) - Aqua Jet - Level 13
  (550, 55001, 453, 14, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Basculin (Blue-Striped) - Chip Away - Level 16
  (550, 55001, 498, 14, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Basculin (Blue-Striped) - Take Down - Level 20
  (550, 55001, 36, 14, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Basculin (Blue-Striped) - Crunch - Level 24
  (550, 55001, 242, 14, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Basculin (Blue-Striped) - Aqua Tail - Level 28
  (550, 55001, 401, 14, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Basculin (Blue-Striped) - Soak - Level 32
  (550, 55001, 487, 14, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Basculin (Blue-Striped) - Double-Edge - Level 36
  (550, 55001, 38, 14, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Basculin (Blue-Striped) - Scary Face - Level 41
  (550, 55001, 184, 14, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Basculin (Blue-Striped) - Flail - Level 46
  (550, 55001, 175, 14, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Basculin (Blue-Striped) - Final Gambit - Level 50
  (550, 55001, 515, 14, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Basculin (Blue-Striped) - Thrash - Level 56
  (550, 55001, 37, 14, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Basculin (Blue-Striped) - Toxic - TM06
  (550, 55001, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 20),
  -- Basculin (Blue-Striped) - Hail - TM07
  (550, 55001, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 21),
  -- Basculin (Blue-Striped) - Hidden Power - TM10
  (550, 55001, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 22),
  -- Basculin (Blue-Striped) - Taunt - TM12
  (550, 55001, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 23),
  -- Basculin (Blue-Striped) - Ice Beam - TM13
  (550, 55001, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 24),
  -- Basculin (Blue-Striped) - Protect - TM17
  (550, 55001, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 25),
  -- Basculin (Blue-Striped) - Rain Dance - TM18
  (550, 55001, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 26),
  -- Basculin (Blue-Striped) - Frustration - TM21
  (550, 55001, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 27),
  -- Basculin (Blue-Striped) - Return - TM27
  (550, 55001, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 28),
  -- Basculin (Blue-Striped) - Double Team - TM32
  (550, 55001, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 29),
  -- Basculin (Blue-Striped) - Facade - TM42
  (550, 55001, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 30),
  -- Basculin (Blue-Striped) - Rest - TM44
  (550, 55001, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 31),
  -- Basculin (Blue-Striped) - Attract - TM45
  (550, 55001, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 32),
  -- Basculin (Blue-Striped) - Round - TM48
  (550, 55001, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 33),
  -- Basculin (Blue-Striped) - Scald - TM55
  (550, 55001, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 34),
  -- Basculin (Blue-Striped) - Swagger - TM87
  (550, 55001, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 35),
  -- Basculin (Blue-Striped) - Sleep Talk - TM88
  (550, 55001, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 36),
  -- Basculin (Blue-Striped) - Substitute - TM90
  (550, 55001, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 37),
  -- Basculin (Blue-Striped) - Secret Power - TM94
  (550, 55001, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 38),
  -- Basculin (Blue-Striped) - Confide - TM100
  (550, 55001, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 39),
  -- Basculin (Blue-Striped) - Cut - HM01
  (550, 55001, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 40),
  -- Basculin (Blue-Striped) - Surf - HM03
  (550, 55001, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 41),
  -- Basculin (Blue-Striped) - Waterfall - HM05
  (550, 55001, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 42),
  -- Basculin (Blue-Striped) - Dive - HM07
  (550, 55001, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 43),
  -- Basculin (Blue-Striped) - Bubble Beam - Egg
  (550, 55001, 61, 14, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Basculin (Blue-Striped) - Agility - Egg
  (550, 55001, 97, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Basculin (Blue-Striped) - Rage - Egg
  (550, 55001, 99, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Basculin (Blue-Striped) - Swift - Egg
  (550, 55001, 129, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Basculin (Blue-Striped) - Whirlpool - Egg
  (550, 55001, 250, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Basculin (Blue-Striped) - Revenge - Egg
  (550, 55001, 279, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Basculin (Blue-Striped) - Muddy Water - Egg
  (550, 55001, 330, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Basculin (Blue-Striped) - Mud Shot - Egg
  (550, 55001, 341, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Basculin (Blue-Striped) - Brine - Egg
  (550, 55001, 362, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Basculin (Blue-Striped) - Snore - Tutor
  (550, 55001, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Basculin (Blue-Striped) - Icy Wind - Tutor
  (550, 55001, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Basculin (Blue-Striped) - Uproar - Tutor
  (550, 55001, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Basculin (Blue-Striped) - Superpower - Tutor
  (550, 55001, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Basculin (Blue-Striped) - Endeavor - Tutor
  (550, 55001, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Basculin (Blue-Striped) - Bounce - Tutor
  (550, 55001, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Basculin (Blue-Striped) - Aqua Tail - Tutor
  (550, 55001, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Basculin (Blue-Striped) - Zen Headbutt - Tutor
  (550, 55001, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Tornadus (Therian) - Gust - Level 1
  (641, 64101, 16, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tornadus (Therian) - Thrash - Level 1
  (641, 64101, 37, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tornadus (Therian) - Uproar - Level 1
  (641, 64101, 253, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tornadus (Therian) - Astonish - Level 1
  (641, 64101, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tornadus (Therian) - Hammer Arm - Level 1
  (641, 64101, 359, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tornadus (Therian) - Tailwind - Level 1
  (641, 64101, 366, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Tornadus (Therian) - Hurricane - Level 1
  (641, 64101, 542, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Tornadus (Therian) - Swagger - Level 7
  (641, 64101, 207, 14, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Tornadus (Therian) - Bite - Level 13
  (641, 64101, 44, 14, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Tornadus (Therian) - Revenge - Level 19
  (641, 64101, 279, 14, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Tornadus (Therian) - Air Cutter - Level 25
  (641, 64101, 314, 14, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Tornadus (Therian) - Extrasensory - Level 31
  (641, 64101, 326, 14, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Tornadus (Therian) - Agility - Level 37
  (641, 64101, 97, 14, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Tornadus (Therian) - Air Slash - Level 43
  (641, 64101, 403, 14, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Tornadus (Therian) - Crunch - Level 49
  (641, 64101, 242, 14, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Tornadus (Therian) - Tailwind - Level 55
  (641, 64101, 366, 14, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Tornadus (Therian) - Rain Dance - Level 61
  (641, 64101, 240, 14, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Tornadus (Therian) - Hurricane - Level 67
  (641, 64101, 542, 14, NULL, 1, 67, NULL, NULL, NULL, 18),
  -- Tornadus (Therian) - Dark Pulse - Level 73
  (641, 64101, 399, 14, NULL, 1, 73, NULL, NULL, NULL, 19),
  -- Tornadus (Therian) - Hammer Arm - Level 79
  (641, 64101, 359, 14, NULL, 1, 79, NULL, NULL, NULL, 20),
  -- Tornadus (Therian) - Thrash - Level 85
  (641, 64101, 37, 14, NULL, 1, 85, NULL, NULL, NULL, 21),
  -- Tornadus (Therian) - Toxic - TM06
  (641, 64101, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 22),
  -- Tornadus (Therian) - Bulk Up - TM08
  (641, 64101, 339, 14, NULL, 2, NULL, NULL, 14002008, NULL, 23),
  -- Tornadus (Therian) - Hidden Power - TM10
  (641, 64101, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 24),
  -- Tornadus (Therian) - Taunt - TM12
  (641, 64101, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 25),
  -- Tornadus (Therian) - Hyper Beam - TM15
  (641, 64101, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 26),
  -- Tornadus (Therian) - Protect - TM17
  (641, 64101, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 27),
  -- Tornadus (Therian) - Rain Dance - TM18
  (641, 64101, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 28),
  -- Tornadus (Therian) - Frustration - TM21
  (641, 64101, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 29),
  -- Tornadus (Therian) - Smack Down - TM23
  (641, 64101, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 30),
  -- Tornadus (Therian) - Return - TM27
  (641, 64101, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 31),
  -- Tornadus (Therian) - Psychic - TM29
  (641, 64101, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 32),
  -- Tornadus (Therian) - Brick Break - TM31
  (641, 64101, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 33),
  -- Tornadus (Therian) - Double Team - TM32
  (641, 64101, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 34),
  -- Tornadus (Therian) - Sludge Wave - TM34
  (641, 64101, 482, 14, NULL, 2, NULL, NULL, 14002034, NULL, 35),
  -- Tornadus (Therian) - Sludge Bomb - TM36
  (641, 64101, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 36),
  -- Tornadus (Therian) - Aerial Ace - TM40
  (641, 64101, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 37),
  -- Tornadus (Therian) - Torment - TM41
  (641, 64101, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 38),
  -- Tornadus (Therian) - Facade - TM42
  (641, 64101, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 39),
  -- Tornadus (Therian) - Rest - TM44
  (641, 64101, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 40),
  -- Tornadus (Therian) - Attract - TM45
  (641, 64101, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 41),
  -- Tornadus (Therian) - Thief - TM46
  (641, 64101, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 42),
  -- Tornadus (Therian) - Round - TM48
  (641, 64101, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 43),
  -- Tornadus (Therian) - Focus Blast - TM52
  (641, 64101, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 44),
  -- Tornadus (Therian) - Fling - TM56
  (641, 64101, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 45),
  -- Tornadus (Therian) - Sky Drop - TM58
  (641, 64101, 507, 14, NULL, 2, NULL, NULL, 14002058, NULL, 46),
  -- Tornadus (Therian) - Incinerate - TM59
  (641, 64101, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 47),
  -- Tornadus (Therian) - Acrobatics - TM62
  (641, 64101, 512, 14, NULL, 2, NULL, NULL, 14002062, NULL, 48),
  -- Tornadus (Therian) - Embargo - TM63
  (641, 64101, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 49),
  -- Tornadus (Therian) - Payback - TM66
  (641, 64101, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 50),
  -- Tornadus (Therian) - Giga Impact - TM68
  (641, 64101, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 51),
  -- Tornadus (Therian) - Grass Knot - TM86
  (641, 64101, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 52),
  -- Tornadus (Therian) - Swagger - TM87
  (641, 64101, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 53),
  -- Tornadus (Therian) - Sleep Talk - TM88
  (641, 64101, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 54),
  -- Tornadus (Therian) - U-turn - TM89
  (641, 64101, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 55),
  -- Tornadus (Therian) - Substitute - TM90
  (641, 64101, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 56),
  -- Tornadus (Therian) - Secret Power - TM94
  (641, 64101, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 57),
  -- Tornadus (Therian) - Dark Pulse - TM97
  (641, 64101, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 58),
  -- Tornadus (Therian) - Confide - TM100
  (641, 64101, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 59),
  -- Tornadus (Therian) - Fly - HM02
  (641, 64101, 19, 14, NULL, 3, NULL, NULL, 14003002, NULL, 60),
  -- Tornadus (Therian) - Strength - HM04
  (641, 64101, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 61),
  -- Tornadus (Therian) - Rock Smash - HM06
  (641, 64101, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 62),
  -- Tornadus (Therian) - Snore - Tutor
  (641, 64101, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Tornadus (Therian) - Icy Wind - Tutor
  (641, 64101, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Tornadus (Therian) - Iron Tail - Tutor
  (641, 64101, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Tornadus (Therian) - Uproar - Tutor
  (641, 64101, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Tornadus (Therian) - Heat Wave - Tutor
  (641, 64101, 257, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Tornadus (Therian) - Role Play - Tutor
  (641, 64101, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Tornadus (Therian) - Superpower - Tutor
  (641, 64101, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Tornadus (Therian) - Knock Off - Tutor
  (641, 64101, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Tornadus (Therian) - Tailwind - Tutor
  (641, 64101, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Tornadus (Therian) - Foul Play - Tutor
  (641, 64101, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Thundurus (Therian) - Thrash - Level 1
  (642, 64201, 37, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Thundurus (Therian) - Thunder Shock - Level 1
  (642, 64201, 84, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Thundurus (Therian) - Uproar - Level 1
  (642, 64201, 253, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Thundurus (Therian) - Charge - Level 1
  (642, 64201, 268, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Thundurus (Therian) - Astonish - Level 1
  (642, 64201, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Thundurus (Therian) - Hammer Arm - Level 1
  (642, 64201, 359, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Thundurus (Therian) - Nasty Plot - Level 1
  (642, 64201, 417, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Thundurus (Therian) - Swagger - Level 7
  (642, 64201, 207, 14, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Thundurus (Therian) - Bite - Level 13
  (642, 64201, 44, 14, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Thundurus (Therian) - Revenge - Level 19
  (642, 64201, 279, 14, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Thundurus (Therian) - Shock Wave - Level 25
  (642, 64201, 351, 14, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Thundurus (Therian) - Heal Block - Level 31
  (642, 64201, 377, 14, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Thundurus (Therian) - Agility - Level 37
  (642, 64201, 97, 14, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Thundurus (Therian) - Discharge - Level 43
  (642, 64201, 435, 14, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Thundurus (Therian) - Crunch - Level 49
  (642, 64201, 242, 14, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Thundurus (Therian) - Charge - Level 55
  (642, 64201, 268, 14, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Thundurus (Therian) - Nasty Plot - Level 61
  (642, 64201, 417, 14, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Thundurus (Therian) - Thunder - Level 67
  (642, 64201, 87, 14, NULL, 1, 67, NULL, NULL, NULL, 18),
  -- Thundurus (Therian) - Dark Pulse - Level 73
  (642, 64201, 399, 14, NULL, 1, 73, NULL, NULL, NULL, 19),
  -- Thundurus (Therian) - Hammer Arm - Level 79
  (642, 64201, 359, 14, NULL, 1, 79, NULL, NULL, NULL, 20),
  -- Thundurus (Therian) - Thrash - Level 85
  (642, 64201, 37, 14, NULL, 1, 85, NULL, NULL, NULL, 21),
  -- Thundurus (Therian) - Toxic - TM06
  (642, 64201, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 22),
  -- Thundurus (Therian) - Bulk Up - TM08
  (642, 64201, 339, 14, NULL, 2, NULL, NULL, 14002008, NULL, 23),
  -- Thundurus (Therian) - Hidden Power - TM10
  (642, 64201, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 24),
  -- Thundurus (Therian) - Taunt - TM12
  (642, 64201, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 25),
  -- Thundurus (Therian) - Hyper Beam - TM15
  (642, 64201, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 26),
  -- Thundurus (Therian) - Protect - TM17
  (642, 64201, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 27),
  -- Thundurus (Therian) - Rain Dance - TM18
  (642, 64201, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 28),
  -- Thundurus (Therian) - Frustration - TM21
  (642, 64201, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 29),
  -- Thundurus (Therian) - Smack Down - TM23
  (642, 64201, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 30),
  -- Thundurus (Therian) - Thunderbolt - TM24
  (642, 64201, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 31),
  -- Thundurus (Therian) - Thunder - TM25
  (642, 64201, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 32),
  -- Thundurus (Therian) - Return - TM27
  (642, 64201, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 33),
  -- Thundurus (Therian) - Psychic - TM29
  (642, 64201, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 34),
  -- Thundurus (Therian) - Brick Break - TM31
  (642, 64201, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 35),
  -- Thundurus (Therian) - Double Team - TM32
  (642, 64201, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 36),
  -- Thundurus (Therian) - Sludge Wave - TM34
  (642, 64201, 482, 14, NULL, 2, NULL, NULL, 14002034, NULL, 37),
  -- Thundurus (Therian) - Sludge Bomb - TM36
  (642, 64201, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 38),
  -- Thundurus (Therian) - Torment - TM41
  (642, 64201, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 39),
  -- Thundurus (Therian) - Facade - TM42
  (642, 64201, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 40),
  -- Thundurus (Therian) - Rest - TM44
  (642, 64201, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 41),
  -- Thundurus (Therian) - Attract - TM45
  (642, 64201, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 42),
  -- Thundurus (Therian) - Thief - TM46
  (642, 64201, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 43),
  -- Thundurus (Therian) - Round - TM48
  (642, 64201, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 44),
  -- Thundurus (Therian) - Focus Blast - TM52
  (642, 64201, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 45),
  -- Thundurus (Therian) - Fling - TM56
  (642, 64201, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 46),
  -- Thundurus (Therian) - Charge Beam - TM57
  (642, 64201, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 47),
  -- Thundurus (Therian) - Sky Drop - TM58
  (642, 64201, 507, 14, NULL, 2, NULL, NULL, 14002058, NULL, 48),
  -- Thundurus (Therian) - Incinerate - TM59
  (642, 64201, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 49),
  -- Thundurus (Therian) - Embargo - TM63
  (642, 64201, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 50),
  -- Thundurus (Therian) - Payback - TM66
  (642, 64201, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 51),
  -- Thundurus (Therian) - Giga Impact - TM68
  (642, 64201, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 52),
  -- Thundurus (Therian) - Volt Switch - TM72
  (642, 64201, 521, 14, NULL, 2, NULL, NULL, 14002072, NULL, 53),
  -- Thundurus (Therian) - Thunder Wave - TM73
  (642, 64201, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 54),
  -- Thundurus (Therian) - Grass Knot - TM86
  (642, 64201, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 55),
  -- Thundurus (Therian) - Swagger - TM87
  (642, 64201, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 56),
  -- Thundurus (Therian) - Sleep Talk - TM88
  (642, 64201, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 57),
  -- Thundurus (Therian) - U-turn - TM89
  (642, 64201, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 58),
  -- Thundurus (Therian) - Substitute - TM90
  (642, 64201, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 59),
  -- Thundurus (Therian) - Flash Cannon - TM91
  (642, 64201, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 60),
  -- Thundurus (Therian) - Wild Charge - TM93
  (642, 64201, 528, 14, NULL, 2, NULL, NULL, 14002093, NULL, 61),
  -- Thundurus (Therian) - Secret Power - TM94
  (642, 64201, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 62),
  -- Thundurus (Therian) - Dark Pulse - TM97
  (642, 64201, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 63),
  -- Thundurus (Therian) - Confide - TM100
  (642, 64201, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 64),
  -- Thundurus (Therian) - Fly - HM02
  (642, 64201, 19, 14, NULL, 3, NULL, NULL, 14003002, NULL, 65),
  -- Thundurus (Therian) - Strength - HM04
  (642, 64201, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 66),
  -- Thundurus (Therian) - Rock Smash - HM06
  (642, 64201, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 67),
  -- Thundurus (Therian) - Thunder Punch - Tutor
  (642, 64201, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Thundurus (Therian) - Snore - Tutor
  (642, 64201, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Thundurus (Therian) - Iron Tail - Tutor
  (642, 64201, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Thundurus (Therian) - Uproar - Tutor
  (642, 64201, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Thundurus (Therian) - Role Play - Tutor
  (642, 64201, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Thundurus (Therian) - Superpower - Tutor
  (642, 64201, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Thundurus (Therian) - Knock Off - Tutor
  (642, 64201, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Thundurus (Therian) - Shock Wave - Tutor
  (642, 64201, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Thundurus (Therian) - Foul Play - Tutor
  (642, 64201, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Thundurus (Therian) - Electroweb - Tutor
  (642, 64201, 527, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Landorus (Therian) - Fissure - Level 1
  (645, 64501, 90, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Landorus (Therian) - Outrage - Level 1
  (645, 64501, 200, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Landorus (Therian) - Rock Tomb - Level 1
  (645, 64501, 317, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Landorus (Therian) - Block - Level 1
  (645, 64501, 335, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Landorus (Therian) - Mud Shot - Level 1
  (645, 64501, 341, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Landorus (Therian) - Hammer Arm - Level 1
  (645, 64501, 359, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Landorus (Therian) - Imprison - Level 7
  (645, 64501, 286, 14, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Landorus (Therian) - Punishment - Level 13
  (645, 64501, 386, 14, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Landorus (Therian) - Bulldoze - Level 19
  (645, 64501, 523, 14, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Landorus (Therian) - Rock Throw - Level 25
  (645, 64501, 88, 14, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Landorus (Therian) - Extrasensory - Level 31
  (645, 64501, 326, 14, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Landorus (Therian) - Swords Dance - Level 37
  (645, 64501, 14, 14, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Landorus (Therian) - Earth Power - Level 43
  (645, 64501, 414, 14, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Landorus (Therian) - Rock Slide - Level 49
  (645, 64501, 157, 14, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Landorus (Therian) - Earthquake - Level 55
  (645, 64501, 89, 14, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Landorus (Therian) - Sandstorm - Level 61
  (645, 64501, 201, 14, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Landorus (Therian) - Fissure - Level 67
  (645, 64501, 90, 14, NULL, 1, 67, NULL, NULL, NULL, 17),
  -- Landorus (Therian) - Stone Edge - Level 73
  (645, 64501, 444, 14, NULL, 1, 73, NULL, NULL, NULL, 18),
  -- Landorus (Therian) - Hammer Arm - Level 79
  (645, 64501, 359, 14, NULL, 1, 79, NULL, NULL, NULL, 19),
  -- Landorus (Therian) - Outrage - Level 85
  (645, 64501, 200, 14, NULL, 1, 85, NULL, NULL, NULL, 20),
  -- Landorus (Therian) - Calm Mind - TM04
  (645, 64501, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 21),
  -- Landorus (Therian) - Toxic - TM06
  (645, 64501, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 22),
  -- Landorus (Therian) - Bulk Up - TM08
  (645, 64501, 339, 14, NULL, 2, NULL, NULL, 14002008, NULL, 23),
  -- Landorus (Therian) - Hidden Power - TM10
  (645, 64501, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 24),
  -- Landorus (Therian) - Hyper Beam - TM15
  (645, 64501, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 25),
  -- Landorus (Therian) - Protect - TM17
  (645, 64501, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 26),
  -- Landorus (Therian) - Frustration - TM21
  (645, 64501, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 27),
  -- Landorus (Therian) - Smack Down - TM23
  (645, 64501, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 28),
  -- Landorus (Therian) - Earthquake - TM26
  (645, 64501, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 29),
  -- Landorus (Therian) - Return - TM27
  (645, 64501, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 30),
  -- Landorus (Therian) - Dig - TM28
  (645, 64501, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 31),
  -- Landorus (Therian) - Psychic - TM29
  (645, 64501, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 32),
  -- Landorus (Therian) - Brick Break - TM31
  (645, 64501, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 33),
  -- Landorus (Therian) - Double Team - TM32
  (645, 64501, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 34),
  -- Landorus (Therian) - Sludge Wave - TM34
  (645, 64501, 482, 14, NULL, 2, NULL, NULL, 14002034, NULL, 35),
  -- Landorus (Therian) - Sludge Bomb - TM36
  (645, 64501, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 36),
  -- Landorus (Therian) - Sandstorm - TM37
  (645, 64501, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 37),
  -- Landorus (Therian) - Rock Tomb - TM39
  (645, 64501, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 38),
  -- Landorus (Therian) - Facade - TM42
  (645, 64501, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 39),
  -- Landorus (Therian) - Rest - TM44
  (645, 64501, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 40),
  -- Landorus (Therian) - Attract - TM45
  (645, 64501, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 41),
  -- Landorus (Therian) - Round - TM48
  (645, 64501, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 42),
  -- Landorus (Therian) - Focus Blast - TM52
  (645, 64501, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 43),
  -- Landorus (Therian) - Fling - TM56
  (645, 64501, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 44),
  -- Landorus (Therian) - Explosion - TM64
  (645, 64501, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 45),
  -- Landorus (Therian) - Payback - TM66
  (645, 64501, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 46),
  -- Landorus (Therian) - Giga Impact - TM68
  (645, 64501, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 47),
  -- Landorus (Therian) - Rock Polish - TM69
  (645, 64501, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 48),
  -- Landorus (Therian) - Stone Edge - TM71
  (645, 64501, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 49),
  -- Landorus (Therian) - Swords Dance - TM75
  (645, 64501, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 50),
  -- Landorus (Therian) - Bulldoze - TM78
  (645, 64501, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 51),
  -- Landorus (Therian) - Rock Slide - TM80
  (645, 64501, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 52),
  -- Landorus (Therian) - Grass Knot - TM86
  (645, 64501, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 53),
  -- Landorus (Therian) - Swagger - TM87
  (645, 64501, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 54),
  -- Landorus (Therian) - Sleep Talk - TM88
  (645, 64501, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 55),
  -- Landorus (Therian) - U-turn - TM89
  (645, 64501, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 56),
  -- Landorus (Therian) - Substitute - TM90
  (645, 64501, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 57),
  -- Landorus (Therian) - Secret Power - TM94
  (645, 64501, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 58),
  -- Landorus (Therian) - Confide - TM100
  (645, 64501, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 59),
  -- Landorus (Therian) - Fly - HM02
  (645, 64501, 19, 14, NULL, 3, NULL, NULL, 14003002, NULL, 60),
  -- Landorus (Therian) - Strength - HM04
  (645, 64501, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 61),
  -- Landorus (Therian) - Rock Smash - HM06
  (645, 64501, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 62),
  -- Landorus (Therian) - Snore - Tutor
  (645, 64501, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Landorus (Therian) - Outrage - Tutor
  (645, 64501, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Landorus (Therian) - Iron Tail - Tutor
  (645, 64501, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Landorus (Therian) - Role Play - Tutor
  (645, 64501, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Landorus (Therian) - Superpower - Tutor
  (645, 64501, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Landorus (Therian) - Knock Off - Tutor
  (645, 64501, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Landorus (Therian) - Block - Tutor
  (645, 64501, 335, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Landorus (Therian) - Gravity - Tutor
  (645, 64501, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Landorus (Therian) - Earth Power - Tutor
  (645, 64501, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Landorus (Therian) - Stealth Rock - Tutor
  (645, 64501, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Kyurem (White) - Dragon Rage - Level 1
  (646, 64601, 82, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyurem (White) - Icy Wind - Level 1
  (646, 64601, 196, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kyurem (White) - Imprison - Level 8
  (646, 64601, 286, 14, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Kyurem (White) - Ancient Power - Level 15
  (646, 64601, 246, 14, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Kyurem (White) - Ice Beam - Level 22
  (646, 64601, 58, 14, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Kyurem (White) - Dragon Breath - Level 29
  (646, 64601, 225, 14, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Kyurem (White) - Slash - Level 36
  (646, 64601, 163, 14, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Kyurem (White) - Fusion Flare - Level 43
  (646, 64601, 558, 14, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Kyurem (White) - Ice Burn - Level 50
  (646, 64601, 554, 14, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Kyurem (White) - Dragon Pulse - Level 57
  (646, 64601, 406, 14, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Kyurem (White) - Imprison - Level 64
  (646, 64601, 286, 14, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Kyurem (White) - Endeavor - Level 71
  (646, 64601, 283, 14, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Kyurem (White) - Blizzard - Level 78
  (646, 64601, 59, 14, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Kyurem (White) - Outrage - Level 85
  (646, 64601, 200, 14, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Kyurem (White) - Hyper Voice - Level 92
  (646, 64601, 304, 14, NULL, 1, 92, NULL, NULL, NULL, 15),
  -- Kyurem (White) - Hone Claws - TM01
  (646, 64601, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 16),
  -- Kyurem (White) - Dragon Claw - TM02
  (646, 64601, 337, 14, NULL, 2, NULL, NULL, 14002002, NULL, 17),
  -- Kyurem (White) - Toxic - TM06
  (646, 64601, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 18),
  -- Kyurem (White) - Hail - TM07
  (646, 64601, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 19),
  -- Kyurem (White) - Hidden Power - TM10
  (646, 64601, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 20),
  -- Kyurem (White) - Sunny Day - TM11
  (646, 64601, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 21),
  -- Kyurem (White) - Ice Beam - TM13
  (646, 64601, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 22),
  -- Kyurem (White) - Blizzard - TM14
  (646, 64601, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 23),
  -- Kyurem (White) - Hyper Beam - TM15
  (646, 64601, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 24),
  -- Kyurem (White) - Light Screen - TM16
  (646, 64601, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 25),
  -- Kyurem (White) - Protect - TM17
  (646, 64601, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 26),
  -- Kyurem (White) - Rain Dance - TM18
  (646, 64601, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 27),
  -- Kyurem (White) - Roost - TM19
  (646, 64601, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 28),
  -- Kyurem (White) - Safeguard - TM20
  (646, 64601, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 29),
  -- Kyurem (White) - Frustration - TM21
  (646, 64601, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 30),
  -- Kyurem (White) - Return - TM27
  (646, 64601, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 31),
  -- Kyurem (White) - Psychic - TM29
  (646, 64601, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 32),
  -- Kyurem (White) - Shadow Ball - TM30
  (646, 64601, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 33),
  -- Kyurem (White) - Double Team - TM32
  (646, 64601, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 34),
  -- Kyurem (White) - Reflect - TM33
  (646, 64601, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 35),
  -- Kyurem (White) - Rock Tomb - TM39
  (646, 64601, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 36),
  -- Kyurem (White) - Facade - TM42
  (646, 64601, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 37),
  -- Kyurem (White) - Rest - TM44
  (646, 64601, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 38),
  -- Kyurem (White) - Round - TM48
  (646, 64601, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 39),
  -- Kyurem (White) - Echoed Voice - TM49
  (646, 64601, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 40),
  -- Kyurem (White) - Steel Wing - TM51
  (646, 64601, 211, 14, NULL, 2, NULL, NULL, 14002051, NULL, 41),
  -- Kyurem (White) - Focus Blast - TM52
  (646, 64601, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 42),
  -- Kyurem (White) - Fling - TM56
  (646, 64601, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 43),
  -- Kyurem (White) - Shadow Claw - TM65
  (646, 64601, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 44),
  -- Kyurem (White) - Payback - TM66
  (646, 64601, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 45),
  -- Kyurem (White) - Giga Impact - TM68
  (646, 64601, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 46),
  -- Kyurem (White) - Stone Edge - TM71
  (646, 64601, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 47),
  -- Kyurem (White) - Rock Slide - TM80
  (646, 64601, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 48),
  -- Kyurem (White) - Dragon Tail - TM82
  (646, 64601, 525, 14, NULL, 2, NULL, NULL, 14002082, NULL, 49),
  -- Kyurem (White) - Swagger - TM87
  (646, 64601, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 50),
  -- Kyurem (White) - Sleep Talk - TM88
  (646, 64601, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 51),
  -- Kyurem (White) - Substitute - TM90
  (646, 64601, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 52),
  -- Kyurem (White) - Flash Cannon - TM91
  (646, 64601, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 53),
  -- Kyurem (White) - Secret Power - TM94
  (646, 64601, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 54),
  -- Kyurem (White) - Confide - TM100
  (646, 64601, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 55),
  -- Kyurem (White) - Cut - HM01
  (646, 64601, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 56),
  -- Kyurem (White) - Fly - HM02
  (646, 64601, 19, 14, NULL, 3, NULL, NULL, 14003002, NULL, 57),
  -- Kyurem (White) - Strength - HM04
  (646, 64601, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 58),
  -- Kyurem (White) - Rock Smash - HM06
  (646, 64601, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 59),
  -- Kyurem (White) - Snore - Tutor
  (646, 64601, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Kyurem (White) - Icy Wind - Tutor
  (646, 64601, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Kyurem (White) - Outrage - Tutor
  (646, 64601, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Kyurem (White) - Endeavor - Tutor
  (646, 64601, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Kyurem (White) - Hyper Voice - Tutor
  (646, 64601, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Kyurem (White) - Signal Beam - Tutor
  (646, 64601, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Kyurem (White) - Dragon Pulse - Tutor
  (646, 64601, 406, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Kyurem (White) - Earth Power - Tutor
  (646, 64601, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Kyurem (White) - Zen Headbutt - Tutor
  (646, 64601, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Kyurem (White) - Draco Meteor - Tutor
  (646, 64601, 434, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Kyurem (White) - Iron Head - Tutor
  (646, 64601, 442, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Kyurem (Black) - Dragon Rage - Level 1
  (646, 64602, 82, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyurem (Black) - Icy Wind - Level 1
  (646, 64602, 196, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kyurem (Black) - Imprison - Level 8
  (646, 64602, 286, 14, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Kyurem (Black) - Ancient Power - Level 15
  (646, 64602, 246, 14, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Kyurem (Black) - Ice Beam - Level 22
  (646, 64602, 58, 14, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Kyurem (Black) - Dragon Breath - Level 29
  (646, 64602, 225, 14, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Kyurem (Black) - Slash - Level 36
  (646, 64602, 163, 14, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Kyurem (Black) - Fusion Bolt - Level 43
  (646, 64602, 559, 14, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Kyurem (Black) - Freeze Shock - Level 50
  (646, 64602, 553, 14, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Kyurem (Black) - Dragon Pulse - Level 57
  (646, 64602, 406, 14, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Kyurem (Black) - Imprison - Level 64
  (646, 64602, 286, 14, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Kyurem (Black) - Endeavor - Level 71
  (646, 64602, 283, 14, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Kyurem (Black) - Blizzard - Level 78
  (646, 64602, 59, 14, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Kyurem (Black) - Outrage - Level 85
  (646, 64602, 200, 14, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Kyurem (Black) - Hyper Voice - Level 92
  (646, 64602, 304, 14, NULL, 1, 92, NULL, NULL, NULL, 15),
  -- Kyurem (Black) - Hone Claws - TM01
  (646, 64602, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 16),
  -- Kyurem (Black) - Dragon Claw - TM02
  (646, 64602, 337, 14, NULL, 2, NULL, NULL, 14002002, NULL, 17),
  -- Kyurem (Black) - Toxic - TM06
  (646, 64602, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 18),
  -- Kyurem (Black) - Hail - TM07
  (646, 64602, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 19),
  -- Kyurem (Black) - Hidden Power - TM10
  (646, 64602, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 20),
  -- Kyurem (Black) - Sunny Day - TM11
  (646, 64602, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 21),
  -- Kyurem (Black) - Ice Beam - TM13
  (646, 64602, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 22),
  -- Kyurem (Black) - Blizzard - TM14
  (646, 64602, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 23),
  -- Kyurem (Black) - Hyper Beam - TM15
  (646, 64602, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 24),
  -- Kyurem (Black) - Light Screen - TM16
  (646, 64602, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 25),
  -- Kyurem (Black) - Protect - TM17
  (646, 64602, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 26),
  -- Kyurem (Black) - Rain Dance - TM18
  (646, 64602, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 27),
  -- Kyurem (Black) - Roost - TM19
  (646, 64602, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 28),
  -- Kyurem (Black) - Safeguard - TM20
  (646, 64602, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 29),
  -- Kyurem (Black) - Frustration - TM21
  (646, 64602, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 30),
  -- Kyurem (Black) - Return - TM27
  (646, 64602, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 31),
  -- Kyurem (Black) - Psychic - TM29
  (646, 64602, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 32),
  -- Kyurem (Black) - Shadow Ball - TM30
  (646, 64602, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 33),
  -- Kyurem (Black) - Double Team - TM32
  (646, 64602, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 34),
  -- Kyurem (Black) - Reflect - TM33
  (646, 64602, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 35),
  -- Kyurem (Black) - Rock Tomb - TM39
  (646, 64602, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 36),
  -- Kyurem (Black) - Facade - TM42
  (646, 64602, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 37),
  -- Kyurem (Black) - Rest - TM44
  (646, 64602, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 38),
  -- Kyurem (Black) - Round - TM48
  (646, 64602, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 39),
  -- Kyurem (Black) - Echoed Voice - TM49
  (646, 64602, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 40),
  -- Kyurem (Black) - Steel Wing - TM51
  (646, 64602, 211, 14, NULL, 2, NULL, NULL, 14002051, NULL, 41),
  -- Kyurem (Black) - Focus Blast - TM52
  (646, 64602, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 42),
  -- Kyurem (Black) - Fling - TM56
  (646, 64602, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 43),
  -- Kyurem (Black) - Shadow Claw - TM65
  (646, 64602, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 44),
  -- Kyurem (Black) - Payback - TM66
  (646, 64602, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 45),
  -- Kyurem (Black) - Giga Impact - TM68
  (646, 64602, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 46),
  -- Kyurem (Black) - Stone Edge - TM71
  (646, 64602, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 47),
  -- Kyurem (Black) - Rock Slide - TM80
  (646, 64602, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 48),
  -- Kyurem (Black) - Dragon Tail - TM82
  (646, 64602, 525, 14, NULL, 2, NULL, NULL, 14002082, NULL, 49),
  -- Kyurem (Black) - Swagger - TM87
  (646, 64602, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 50),
  -- Kyurem (Black) - Sleep Talk - TM88
  (646, 64602, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 51),
  -- Kyurem (Black) - Substitute - TM90
  (646, 64602, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 52),
  -- Kyurem (Black) - Flash Cannon - TM91
  (646, 64602, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 53),
  -- Kyurem (Black) - Secret Power - TM94
  (646, 64602, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 54),
  -- Kyurem (Black) - Confide - TM100
  (646, 64602, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 55),
  -- Kyurem (Black) - Cut - HM01
  (646, 64602, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 56),
  -- Kyurem (Black) - Fly - HM02
  (646, 64602, 19, 14, NULL, 3, NULL, NULL, 14003002, NULL, 57),
  -- Kyurem (Black) - Strength - HM04
  (646, 64602, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 58),
  -- Kyurem (Black) - Rock Smash - HM06
  (646, 64602, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 59),
  -- Kyurem (Black) - Snore - Tutor
  (646, 64602, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Kyurem (Black) - Icy Wind - Tutor
  (646, 64602, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Kyurem (Black) - Outrage - Tutor
  (646, 64602, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Kyurem (Black) - Endeavor - Tutor
  (646, 64602, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Kyurem (Black) - Hyper Voice - Tutor
  (646, 64602, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Kyurem (Black) - Signal Beam - Tutor
  (646, 64602, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Kyurem (Black) - Dragon Pulse - Tutor
  (646, 64602, 406, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Kyurem (Black) - Earth Power - Tutor
  (646, 64602, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Kyurem (Black) - Zen Headbutt - Tutor
  (646, 64602, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Kyurem (Black) - Draco Meteor - Tutor
  (646, 64602, 434, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Kyurem (Black) - Iron Head - Tutor
  (646, 64602, 442, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Meowstic (Female) - Scratch - Level 1
  (678, 67801, 10, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowstic (Female) - Leer - Level 1
  (678, 67801, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowstic (Female) - Magical Leaf - Level 1
  (678, 67801, 345, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Meowstic (Female) - Me First - Level 1
  (678, 67801, 382, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Meowstic (Female) - Stored Power - Level 1
  (678, 67801, 500, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Meowstic (Female) - Covet - Level 5
  (678, 67801, 343, 14, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Meowstic (Female) - Confusion - Level 9
  (678, 67801, 93, 14, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Meowstic (Female) - Light Screen - Level 13
  (678, 67801, 113, 14, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Meowstic (Female) - Psybeam - Level 17
  (678, 67801, 60, 14, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Meowstic (Female) - Fake Out - Level 19
  (678, 67801, 252, 14, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Meowstic (Female) - Disarming Voice - Level 22
  (678, 67801, 574, 14, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Meowstic (Female) - Psyshock - Level 25
  (678, 67801, 473, 14, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Meowstic (Female) - Charge Beam - Level 28
  (678, 67801, 451, 14, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Meowstic (Female) - Shadow Ball - Level 31
  (678, 67801, 247, 14, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Meowstic (Female) - Extrasensory - Level 35
  (678, 67801, 326, 14, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Meowstic (Female) - Psychic - Level 40
  (678, 67801, 94, 14, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Meowstic (Female) - Role Play - Level 43
  (678, 67801, 272, 14, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Meowstic (Female) - Signal Beam - Level 45
  (678, 67801, 324, 14, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Meowstic (Female) - Sucker Punch - Level 48
  (678, 67801, 389, 14, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Meowstic (Female) - Future Sight - Level 50
  (678, 67801, 248, 14, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Meowstic (Female) - Stored Power - Level 53
  (678, 67801, 500, 14, NULL, 1, 53, NULL, NULL, NULL, 21),
  -- Meowstic (Female) - Psyshock - TM03
  (678, 67801, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 22),
  -- Meowstic (Female) - Calm Mind - TM04
  (678, 67801, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 23),
  -- Meowstic (Female) - Toxic - TM06
  (678, 67801, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 24),
  -- Meowstic (Female) - Hidden Power - TM10
  (678, 67801, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 25),
  -- Meowstic (Female) - Sunny Day - TM11
  (678, 67801, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 26),
  -- Meowstic (Female) - Hyper Beam - TM15
  (678, 67801, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 27),
  -- Meowstic (Female) - Light Screen - TM16
  (678, 67801, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 28),
  -- Meowstic (Female) - Protect - TM17
  (678, 67801, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 29),
  -- Meowstic (Female) - Rain Dance - TM18
  (678, 67801, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 30),
  -- Meowstic (Female) - Safeguard - TM20
  (678, 67801, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 31),
  -- Meowstic (Female) - Frustration - TM21
  (678, 67801, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 32),
  -- Meowstic (Female) - Thunderbolt - TM24
  (678, 67801, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 33),
  -- Meowstic (Female) - Return - TM27
  (678, 67801, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 34),
  -- Meowstic (Female) - Dig - TM28
  (678, 67801, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 35),
  -- Meowstic (Female) - Psychic - TM29
  (678, 67801, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 36),
  -- Meowstic (Female) - Shadow Ball - TM30
  (678, 67801, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 37),
  -- Meowstic (Female) - Double Team - TM32
  (678, 67801, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 38),
  -- Meowstic (Female) - Reflect - TM33
  (678, 67801, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 39),
  -- Meowstic (Female) - Torment - TM41
  (678, 67801, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 40),
  -- Meowstic (Female) - Facade - TM42
  (678, 67801, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 41),
  -- Meowstic (Female) - Rest - TM44
  (678, 67801, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 42),
  -- Meowstic (Female) - Attract - TM45
  (678, 67801, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 43),
  -- Meowstic (Female) - Round - TM48
  (678, 67801, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 44),
  -- Meowstic (Female) - Echoed Voice - TM49
  (678, 67801, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 45),
  -- Meowstic (Female) - Energy Ball - TM53
  (678, 67801, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 46),
  -- Meowstic (Female) - Charge Beam - TM57
  (678, 67801, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 47),
  -- Meowstic (Female) - Payback - TM66
  (678, 67801, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 48),
  -- Meowstic (Female) - Giga Impact - TM68
  (678, 67801, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 49),
  -- Meowstic (Female) - Flash - TM70
  (678, 67801, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 50),
  -- Meowstic (Female) - Thunder Wave - TM73
  (678, 67801, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 51),
  -- Meowstic (Female) - Psych Up - TM77
  (678, 67801, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 52),
  -- Meowstic (Female) - Dream Eater - TM85
  (678, 67801, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 53),
  -- Meowstic (Female) - Swagger - TM87
  (678, 67801, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 54),
  -- Meowstic (Female) - Sleep Talk - TM88
  (678, 67801, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 55),
  -- Meowstic (Female) - Substitute - TM90
  (678, 67801, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 56),
  -- Meowstic (Female) - Trick Room - TM92
  (678, 67801, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 57),
  -- Meowstic (Female) - Secret Power - TM94
  (678, 67801, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 58),
  -- Meowstic (Female) - Dark Pulse - TM97
  (678, 67801, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 59),
  -- Meowstic (Female) - Power-Up Punch - TM98
  (678, 67801, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 60),
  -- Meowstic (Female) - Confide - TM100
  (678, 67801, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 61),
  -- Meowstic (Female) - Cut - HM01
  (678, 67801, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 62),
  -- Meowstic (Female) - Snore - Tutor
  (678, 67801, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Meowstic (Female) - Heal Bell - Tutor
  (678, 67801, 215, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Meowstic (Female) - Iron Tail - Tutor
  (678, 67801, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Meowstic (Female) - Helping Hand - Tutor
  (678, 67801, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Meowstic (Female) - Trick - Tutor
  (678, 67801, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Meowstic (Female) - Role Play - Tutor
  (678, 67801, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Meowstic (Female) - Magic Coat - Tutor
  (678, 67801, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Meowstic (Female) - Recycle - Tutor
  (678, 67801, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Meowstic (Female) - Snatch - Tutor
  (678, 67801, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Meowstic (Female) - Signal Beam - Tutor
  (678, 67801, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Meowstic (Female) - Covet - Tutor
  (678, 67801, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Meowstic (Female) - Shock Wave - Tutor
  (678, 67801, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Meowstic (Female) - Gravity - Tutor
  (678, 67801, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Meowstic (Female) - Zen Headbutt - Tutor
  (678, 67801, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Meowstic (Female) - Wonder Room - Tutor
  (678, 67801, 472, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Meowstic (Female) - Magic Room - Tutor
  (678, 67801, 478, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Pumpkaboo (Small) - Confuse Ray - Level 1
  (710, 71001, 109, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pumpkaboo (Small) - Trick - Level 1
  (710, 71001, 271, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pumpkaboo (Small) - Astonish - Level 1
  (710, 71001, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pumpkaboo (Small) - Scary Face - Level 4
  (710, 71001, 184, 14, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Pumpkaboo (Small) - Trick-or-Treat - Level 6
  (710, 71001, 567, 14, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Pumpkaboo (Small) - Worry Seed - Level 11
  (710, 71001, 388, 14, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Pumpkaboo (Small) - Razor Leaf - Level 16
  (710, 71001, 75, 14, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pumpkaboo (Small) - Leech Seed - Level 20
  (710, 71001, 73, 14, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Pumpkaboo (Small) - Trick-or-Treat - Level 23
  (710, 71001, 567, 14, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Pumpkaboo (Small) - Bullet Seed - Level 26
  (710, 71001, 331, 14, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Pumpkaboo (Small) - Shadow Sneak - Level 30
  (710, 71001, 425, 14, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Pumpkaboo (Small) - Shadow Ball - Level 36
  (710, 71001, 247, 14, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Pumpkaboo (Small) - Trick-or-Treat - Level 40
  (710, 71001, 567, 14, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Pumpkaboo (Small) - Pain Split - Level 42
  (710, 71001, 220, 14, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Pumpkaboo (Small) - Seed Bomb - Level 48
  (710, 71001, 402, 14, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Pumpkaboo (Small) - Toxic - TM06
  (710, 71001, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 16),
  -- Pumpkaboo (Small) - Hidden Power - TM10
  (710, 71001, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Pumpkaboo (Small) - Sunny Day - TM11
  (710, 71001, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 18),
  -- Pumpkaboo (Small) - Light Screen - TM16
  (710, 71001, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 19),
  -- Pumpkaboo (Small) - Protect - TM17
  (710, 71001, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 20),
  -- Pumpkaboo (Small) - Safeguard - TM20
  (710, 71001, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 21),
  -- Pumpkaboo (Small) - Frustration - TM21
  (710, 71001, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 22),
  -- Pumpkaboo (Small) - Solar Beam - TM22
  (710, 71001, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 23),
  -- Pumpkaboo (Small) - Return - TM27
  (710, 71001, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 24),
  -- Pumpkaboo (Small) - Psychic - TM29
  (710, 71001, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 25),
  -- Pumpkaboo (Small) - Shadow Ball - TM30
  (710, 71001, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 26),
  -- Pumpkaboo (Small) - Double Team - TM32
  (710, 71001, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 27),
  -- Pumpkaboo (Small) - Flamethrower - TM35
  (710, 71001, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 28),
  -- Pumpkaboo (Small) - Sludge Bomb - TM36
  (710, 71001, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 29),
  -- Pumpkaboo (Small) - Fire Blast - TM38
  (710, 71001, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 30),
  -- Pumpkaboo (Small) - Facade - TM42
  (710, 71001, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 31),
  -- Pumpkaboo (Small) - Flame Charge - TM43
  (710, 71001, 488, 14, NULL, 2, NULL, NULL, 14002043, NULL, 32),
  -- Pumpkaboo (Small) - Rest - TM44
  (710, 71001, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 33),
  -- Pumpkaboo (Small) - Attract - TM45
  (710, 71001, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 34),
  -- Pumpkaboo (Small) - Thief - TM46
  (710, 71001, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 35),
  -- Pumpkaboo (Small) - Round - TM48
  (710, 71001, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 36),
  -- Pumpkaboo (Small) - Energy Ball - TM53
  (710, 71001, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 37),
  -- Pumpkaboo (Small) - Charge Beam - TM57
  (710, 71001, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 38),
  -- Pumpkaboo (Small) - Incinerate - TM59
  (710, 71001, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 39),
  -- Pumpkaboo (Small) - Will-O-Wisp - TM61
  (710, 71001, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 40),
  -- Pumpkaboo (Small) - Explosion - TM64
  (710, 71001, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 41),
  -- Pumpkaboo (Small) - Flash - TM70
  (710, 71001, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 42),
  -- Pumpkaboo (Small) - Gyro Ball - TM74
  (710, 71001, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 43),
  -- Pumpkaboo (Small) - Rock Slide - TM80
  (710, 71001, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 44),
  -- Pumpkaboo (Small) - Dream Eater - TM85
  (710, 71001, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 45),
  -- Pumpkaboo (Small) - Grass Knot - TM86
  (710, 71001, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 46),
  -- Pumpkaboo (Small) - Swagger - TM87
  (710, 71001, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 47),
  -- Pumpkaboo (Small) - Sleep Talk - TM88
  (710, 71001, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 48),
  -- Pumpkaboo (Small) - Substitute - TM90
  (710, 71001, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 49),
  -- Pumpkaboo (Small) - Trick Room - TM92
  (710, 71001, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 50),
  -- Pumpkaboo (Small) - Secret Power - TM94
  (710, 71001, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 51),
  -- Pumpkaboo (Small) - Nature Power - TM96
  (710, 71001, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 52),
  -- Pumpkaboo (Small) - Dark Pulse - TM97
  (710, 71001, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 53),
  -- Pumpkaboo (Small) - Confide - TM100
  (710, 71001, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 54),
  -- Pumpkaboo (Small) - Rock Smash - HM06
  (710, 71001, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 55),
  -- Pumpkaboo (Small) - Disable - Egg
  (710, 71001, 50, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pumpkaboo (Small) - Destiny Bond - Egg
  (710, 71001, 194, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pumpkaboo (Small) - Bestow - Egg
  (710, 71001, 516, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Pumpkaboo (Small) - Spite - Tutor
  (710, 71001, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Pumpkaboo (Small) - Giga Drain - Tutor
  (710, 71001, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Pumpkaboo (Small) - Pain Split - Tutor
  (710, 71001, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Pumpkaboo (Small) - Synthesis - Tutor
  (710, 71001, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Pumpkaboo (Small) - Trick - Tutor
  (710, 71001, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Pumpkaboo (Small) - Role Play - Tutor
  (710, 71001, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Pumpkaboo (Small) - Magic Coat - Tutor
  (710, 71001, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Pumpkaboo (Small) - Skill Swap - Tutor
  (710, 71001, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Pumpkaboo (Small) - Worry Seed - Tutor
  (710, 71001, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Pumpkaboo (Small) - Seed Bomb - Tutor
  (710, 71001, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Pumpkaboo (Small) - Foul Play - Tutor
  (710, 71001, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Pumpkaboo (Large) - Confuse Ray - Level 1
  (710, 71002, 109, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pumpkaboo (Large) - Trick - Level 1
  (710, 71002, 271, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pumpkaboo (Large) - Astonish - Level 1
  (710, 71002, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pumpkaboo (Large) - Scary Face - Level 4
  (710, 71002, 184, 14, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Pumpkaboo (Large) - Trick-or-Treat - Level 6
  (710, 71002, 567, 14, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Pumpkaboo (Large) - Worry Seed - Level 11
  (710, 71002, 388, 14, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Pumpkaboo (Large) - Razor Leaf - Level 16
  (710, 71002, 75, 14, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pumpkaboo (Large) - Leech Seed - Level 20
  (710, 71002, 73, 14, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Pumpkaboo (Large) - Trick-or-Treat - Level 23
  (710, 71002, 567, 14, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Pumpkaboo (Large) - Bullet Seed - Level 26
  (710, 71002, 331, 14, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Pumpkaboo (Large) - Shadow Sneak - Level 30
  (710, 71002, 425, 14, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Pumpkaboo (Large) - Shadow Ball - Level 36
  (710, 71002, 247, 14, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Pumpkaboo (Large) - Trick-or-Treat - Level 40
  (710, 71002, 567, 14, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Pumpkaboo (Large) - Pain Split - Level 42
  (710, 71002, 220, 14, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Pumpkaboo (Large) - Seed Bomb - Level 48
  (710, 71002, 402, 14, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Pumpkaboo (Large) - Toxic - TM06
  (710, 71002, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 16),
  -- Pumpkaboo (Large) - Hidden Power - TM10
  (710, 71002, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Pumpkaboo (Large) - Sunny Day - TM11
  (710, 71002, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 18),
  -- Pumpkaboo (Large) - Light Screen - TM16
  (710, 71002, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 19),
  -- Pumpkaboo (Large) - Protect - TM17
  (710, 71002, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 20),
  -- Pumpkaboo (Large) - Safeguard - TM20
  (710, 71002, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 21),
  -- Pumpkaboo (Large) - Frustration - TM21
  (710, 71002, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 22),
  -- Pumpkaboo (Large) - Solar Beam - TM22
  (710, 71002, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 23),
  -- Pumpkaboo (Large) - Return - TM27
  (710, 71002, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 24),
  -- Pumpkaboo (Large) - Psychic - TM29
  (710, 71002, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 25),
  -- Pumpkaboo (Large) - Shadow Ball - TM30
  (710, 71002, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 26),
  -- Pumpkaboo (Large) - Double Team - TM32
  (710, 71002, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 27),
  -- Pumpkaboo (Large) - Flamethrower - TM35
  (710, 71002, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 28),
  -- Pumpkaboo (Large) - Sludge Bomb - TM36
  (710, 71002, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 29),
  -- Pumpkaboo (Large) - Fire Blast - TM38
  (710, 71002, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 30),
  -- Pumpkaboo (Large) - Facade - TM42
  (710, 71002, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 31),
  -- Pumpkaboo (Large) - Flame Charge - TM43
  (710, 71002, 488, 14, NULL, 2, NULL, NULL, 14002043, NULL, 32),
  -- Pumpkaboo (Large) - Rest - TM44
  (710, 71002, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 33),
  -- Pumpkaboo (Large) - Attract - TM45
  (710, 71002, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 34),
  -- Pumpkaboo (Large) - Thief - TM46
  (710, 71002, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 35),
  -- Pumpkaboo (Large) - Round - TM48
  (710, 71002, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 36),
  -- Pumpkaboo (Large) - Energy Ball - TM53
  (710, 71002, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 37),
  -- Pumpkaboo (Large) - Charge Beam - TM57
  (710, 71002, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 38),
  -- Pumpkaboo (Large) - Incinerate - TM59
  (710, 71002, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 39),
  -- Pumpkaboo (Large) - Will-O-Wisp - TM61
  (710, 71002, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 40),
  -- Pumpkaboo (Large) - Explosion - TM64
  (710, 71002, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 41),
  -- Pumpkaboo (Large) - Flash - TM70
  (710, 71002, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 42),
  -- Pumpkaboo (Large) - Gyro Ball - TM74
  (710, 71002, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 43),
  -- Pumpkaboo (Large) - Rock Slide - TM80
  (710, 71002, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 44),
  -- Pumpkaboo (Large) - Dream Eater - TM85
  (710, 71002, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 45),
  -- Pumpkaboo (Large) - Grass Knot - TM86
  (710, 71002, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 46),
  -- Pumpkaboo (Large) - Swagger - TM87
  (710, 71002, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 47),
  -- Pumpkaboo (Large) - Sleep Talk - TM88
  (710, 71002, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 48),
  -- Pumpkaboo (Large) - Substitute - TM90
  (710, 71002, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 49),
  -- Pumpkaboo (Large) - Trick Room - TM92
  (710, 71002, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 50),
  -- Pumpkaboo (Large) - Secret Power - TM94
  (710, 71002, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 51),
  -- Pumpkaboo (Large) - Nature Power - TM96
  (710, 71002, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 52),
  -- Pumpkaboo (Large) - Dark Pulse - TM97
  (710, 71002, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 53),
  -- Pumpkaboo (Large) - Confide - TM100
  (710, 71002, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 54),
  -- Pumpkaboo (Large) - Rock Smash - HM06
  (710, 71002, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 55),
  -- Pumpkaboo (Large) - Disable - Egg
  (710, 71002, 50, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pumpkaboo (Large) - Destiny Bond - Egg
  (710, 71002, 194, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pumpkaboo (Large) - Bestow - Egg
  (710, 71002, 516, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Pumpkaboo (Large) - Spite - Tutor
  (710, 71002, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Pumpkaboo (Large) - Giga Drain - Tutor
  (710, 71002, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Pumpkaboo (Large) - Pain Split - Tutor
  (710, 71002, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Pumpkaboo (Large) - Synthesis - Tutor
  (710, 71002, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Pumpkaboo (Large) - Trick - Tutor
  (710, 71002, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Pumpkaboo (Large) - Role Play - Tutor
  (710, 71002, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Pumpkaboo (Large) - Magic Coat - Tutor
  (710, 71002, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Pumpkaboo (Large) - Skill Swap - Tutor
  (710, 71002, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Pumpkaboo (Large) - Worry Seed - Tutor
  (710, 71002, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Pumpkaboo (Large) - Seed Bomb - Tutor
  (710, 71002, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Pumpkaboo (Large) - Foul Play - Tutor
  (710, 71002, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Pumpkaboo (Super) - Confuse Ray - Level 1
  (710, 71003, 109, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pumpkaboo (Super) - Trick - Level 1
  (710, 71003, 271, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pumpkaboo (Super) - Astonish - Level 1
  (710, 71003, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pumpkaboo (Super) - Scary Face - Level 4
  (710, 71003, 184, 14, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Pumpkaboo (Super) - Trick-or-Treat - Level 6
  (710, 71003, 567, 14, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Pumpkaboo (Super) - Worry Seed - Level 11
  (710, 71003, 388, 14, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Pumpkaboo (Super) - Razor Leaf - Level 16
  (710, 71003, 75, 14, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pumpkaboo (Super) - Leech Seed - Level 20
  (710, 71003, 73, 14, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Pumpkaboo (Super) - Trick-or-Treat - Level 23
  (710, 71003, 567, 14, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Pumpkaboo (Super) - Bullet Seed - Level 26
  (710, 71003, 331, 14, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Pumpkaboo (Super) - Shadow Sneak - Level 30
  (710, 71003, 425, 14, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Pumpkaboo (Super) - Shadow Ball - Level 36
  (710, 71003, 247, 14, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Pumpkaboo (Super) - Trick-or-Treat - Level 40
  (710, 71003, 567, 14, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Pumpkaboo (Super) - Pain Split - Level 42
  (710, 71003, 220, 14, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Pumpkaboo (Super) - Seed Bomb - Level 48
  (710, 71003, 402, 14, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Pumpkaboo (Super) - Toxic - TM06
  (710, 71003, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 16),
  -- Pumpkaboo (Super) - Hidden Power - TM10
  (710, 71003, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Pumpkaboo (Super) - Sunny Day - TM11
  (710, 71003, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 18),
  -- Pumpkaboo (Super) - Light Screen - TM16
  (710, 71003, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 19),
  -- Pumpkaboo (Super) - Protect - TM17
  (710, 71003, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 20),
  -- Pumpkaboo (Super) - Safeguard - TM20
  (710, 71003, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 21),
  -- Pumpkaboo (Super) - Frustration - TM21
  (710, 71003, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 22),
  -- Pumpkaboo (Super) - Solar Beam - TM22
  (710, 71003, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 23),
  -- Pumpkaboo (Super) - Return - TM27
  (710, 71003, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 24),
  -- Pumpkaboo (Super) - Psychic - TM29
  (710, 71003, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 25),
  -- Pumpkaboo (Super) - Shadow Ball - TM30
  (710, 71003, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 26),
  -- Pumpkaboo (Super) - Double Team - TM32
  (710, 71003, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 27),
  -- Pumpkaboo (Super) - Flamethrower - TM35
  (710, 71003, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 28),
  -- Pumpkaboo (Super) - Sludge Bomb - TM36
  (710, 71003, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 29),
  -- Pumpkaboo (Super) - Fire Blast - TM38
  (710, 71003, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 30),
  -- Pumpkaboo (Super) - Facade - TM42
  (710, 71003, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 31),
  -- Pumpkaboo (Super) - Flame Charge - TM43
  (710, 71003, 488, 14, NULL, 2, NULL, NULL, 14002043, NULL, 32),
  -- Pumpkaboo (Super) - Rest - TM44
  (710, 71003, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 33),
  -- Pumpkaboo (Super) - Attract - TM45
  (710, 71003, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 34),
  -- Pumpkaboo (Super) - Thief - TM46
  (710, 71003, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 35),
  -- Pumpkaboo (Super) - Round - TM48
  (710, 71003, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 36),
  -- Pumpkaboo (Super) - Energy Ball - TM53
  (710, 71003, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 37),
  -- Pumpkaboo (Super) - Charge Beam - TM57
  (710, 71003, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 38),
  -- Pumpkaboo (Super) - Incinerate - TM59
  (710, 71003, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 39),
  -- Pumpkaboo (Super) - Will-O-Wisp - TM61
  (710, 71003, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 40),
  -- Pumpkaboo (Super) - Explosion - TM64
  (710, 71003, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 41),
  -- Pumpkaboo (Super) - Flash - TM70
  (710, 71003, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 42),
  -- Pumpkaboo (Super) - Gyro Ball - TM74
  (710, 71003, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 43),
  -- Pumpkaboo (Super) - Rock Slide - TM80
  (710, 71003, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 44),
  -- Pumpkaboo (Super) - Dream Eater - TM85
  (710, 71003, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 45),
  -- Pumpkaboo (Super) - Grass Knot - TM86
  (710, 71003, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 46),
  -- Pumpkaboo (Super) - Swagger - TM87
  (710, 71003, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 47),
  -- Pumpkaboo (Super) - Sleep Talk - TM88
  (710, 71003, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 48),
  -- Pumpkaboo (Super) - Substitute - TM90
  (710, 71003, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 49),
  -- Pumpkaboo (Super) - Trick Room - TM92
  (710, 71003, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 50),
  -- Pumpkaboo (Super) - Secret Power - TM94
  (710, 71003, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 51),
  -- Pumpkaboo (Super) - Nature Power - TM96
  (710, 71003, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 52),
  -- Pumpkaboo (Super) - Dark Pulse - TM97
  (710, 71003, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 53),
  -- Pumpkaboo (Super) - Confide - TM100
  (710, 71003, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 54),
  -- Pumpkaboo (Super) - Rock Smash - HM06
  (710, 71003, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 55),
  -- Pumpkaboo (Super) - Disable - Egg
  (710, 71003, 50, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pumpkaboo (Super) - Destiny Bond - Egg
  (710, 71003, 194, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pumpkaboo (Super) - Bestow - Egg
  (710, 71003, 516, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Pumpkaboo (Super) - Spite - Tutor
  (710, 71003, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Pumpkaboo (Super) - Giga Drain - Tutor
  (710, 71003, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Pumpkaboo (Super) - Pain Split - Tutor
  (710, 71003, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Pumpkaboo (Super) - Synthesis - Tutor
  (710, 71003, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Pumpkaboo (Super) - Trick - Tutor
  (710, 71003, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Pumpkaboo (Super) - Role Play - Tutor
  (710, 71003, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Pumpkaboo (Super) - Magic Coat - Tutor
  (710, 71003, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Pumpkaboo (Super) - Skill Swap - Tutor
  (710, 71003, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Pumpkaboo (Super) - Worry Seed - Tutor
  (710, 71003, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Pumpkaboo (Super) - Seed Bomb - Tutor
  (710, 71003, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Pumpkaboo (Super) - Foul Play - Tutor
  (710, 71003, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Gourgeist (Small) - Confuse Ray - Level 1
  (711, 71101, 109, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gourgeist (Small) - Explosion - Level 1
  (711, 71101, 153, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gourgeist (Small) - Trick - Level 1
  (711, 71101, 271, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gourgeist (Small) - Astonish - Level 1
  (711, 71101, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gourgeist (Small) - Phantom Force - Level 1
  (711, 71101, 566, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gourgeist (Small) - Scary Face - Level 4
  (711, 71101, 184, 14, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Gourgeist (Small) - Trick-or-Treat - Level 6
  (711, 71101, 567, 14, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Gourgeist (Small) - Worry Seed - Level 11
  (711, 71101, 388, 14, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Gourgeist (Small) - Razor Leaf - Level 16
  (711, 71101, 75, 14, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gourgeist (Small) - Leech Seed - Level 20
  (711, 71101, 73, 14, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Gourgeist (Small) - Trick-or-Treat - Level 23
  (711, 71101, 567, 14, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Gourgeist (Small) - Bullet Seed - Level 26
  (711, 71101, 331, 14, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Gourgeist (Small) - Shadow Sneak - Level 30
  (711, 71101, 425, 14, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Gourgeist (Small) - Shadow Ball - Level 36
  (711, 71101, 247, 14, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Gourgeist (Small) - Trick-or-Treat - Level 40
  (711, 71101, 567, 14, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Gourgeist (Small) - Pain Split - Level 42
  (711, 71101, 220, 14, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Gourgeist (Small) - Seed Bomb - Level 48
  (711, 71101, 402, 14, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Gourgeist (Small) - Phantom Force - Level 57
  (711, 71101, 566, 14, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Gourgeist (Small) - Trick-or-Treat - Level 63
  (711, 71101, 567, 14, NULL, 1, 63, NULL, NULL, NULL, 19),
  -- Gourgeist (Small) - Shadow Ball - Level 70
  (711, 71101, 247, 14, NULL, 1, 70, NULL, NULL, NULL, 20),
  -- Gourgeist (Small) - Explosion - Level 75
  (711, 71101, 153, 14, NULL, 1, 75, NULL, NULL, NULL, 21),
  -- Gourgeist (Small) - Toxic - TM06
  (711, 71101, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 22),
  -- Gourgeist (Small) - Hidden Power - TM10
  (711, 71101, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 23),
  -- Gourgeist (Small) - Sunny Day - TM11
  (711, 71101, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 24),
  -- Gourgeist (Small) - Hyper Beam - TM15
  (711, 71101, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 25),
  -- Gourgeist (Small) - Light Screen - TM16
  (711, 71101, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 26),
  -- Gourgeist (Small) - Protect - TM17
  (711, 71101, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 27),
  -- Gourgeist (Small) - Safeguard - TM20
  (711, 71101, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 28),
  -- Gourgeist (Small) - Frustration - TM21
  (711, 71101, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 29),
  -- Gourgeist (Small) - Solar Beam - TM22
  (711, 71101, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 30),
  -- Gourgeist (Small) - Return - TM27
  (711, 71101, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 31),
  -- Gourgeist (Small) - Psychic - TM29
  (711, 71101, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 32),
  -- Gourgeist (Small) - Shadow Ball - TM30
  (711, 71101, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 33),
  -- Gourgeist (Small) - Double Team - TM32
  (711, 71101, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 34),
  -- Gourgeist (Small) - Flamethrower - TM35
  (711, 71101, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 35),
  -- Gourgeist (Small) - Sludge Bomb - TM36
  (711, 71101, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 36),
  -- Gourgeist (Small) - Fire Blast - TM38
  (711, 71101, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 37),
  -- Gourgeist (Small) - Facade - TM42
  (711, 71101, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 38),
  -- Gourgeist (Small) - Flame Charge - TM43
  (711, 71101, 488, 14, NULL, 2, NULL, NULL, 14002043, NULL, 39),
  -- Gourgeist (Small) - Rest - TM44
  (711, 71101, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 40),
  -- Gourgeist (Small) - Attract - TM45
  (711, 71101, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 41),
  -- Gourgeist (Small) - Thief - TM46
  (711, 71101, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 42),
  -- Gourgeist (Small) - Round - TM48
  (711, 71101, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 43),
  -- Gourgeist (Small) - Focus Blast - TM52
  (711, 71101, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 44),
  -- Gourgeist (Small) - Energy Ball - TM53
  (711, 71101, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 45),
  -- Gourgeist (Small) - Charge Beam - TM57
  (711, 71101, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 46),
  -- Gourgeist (Small) - Incinerate - TM59
  (711, 71101, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 47),
  -- Gourgeist (Small) - Will-O-Wisp - TM61
  (711, 71101, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 48),
  -- Gourgeist (Small) - Explosion - TM64
  (711, 71101, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 49),
  -- Gourgeist (Small) - Giga Impact - TM68
  (711, 71101, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 50),
  -- Gourgeist (Small) - Flash - TM70
  (711, 71101, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 51),
  -- Gourgeist (Small) - Gyro Ball - TM74
  (711, 71101, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 52),
  -- Gourgeist (Small) - Rock Slide - TM80
  (711, 71101, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 53),
  -- Gourgeist (Small) - Dream Eater - TM85
  (711, 71101, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 54),
  -- Gourgeist (Small) - Grass Knot - TM86
  (711, 71101, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 55),
  -- Gourgeist (Small) - Swagger - TM87
  (711, 71101, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 56),
  -- Gourgeist (Small) - Sleep Talk - TM88
  (711, 71101, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 57),
  -- Gourgeist (Small) - Substitute - TM90
  (711, 71101, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 58),
  -- Gourgeist (Small) - Trick Room - TM92
  (711, 71101, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 59),
  -- Gourgeist (Small) - Secret Power - TM94
  (711, 71101, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 60),
  -- Gourgeist (Small) - Nature Power - TM96
  (711, 71101, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 61),
  -- Gourgeist (Small) - Dark Pulse - TM97
  (711, 71101, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 62),
  -- Gourgeist (Small) - Confide - TM100
  (711, 71101, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 63),
  -- Gourgeist (Small) - Rock Smash - HM06
  (711, 71101, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 64),
  -- Gourgeist (Small) - Spite - Tutor
  (711, 71101, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Gourgeist (Small) - Giga Drain - Tutor
  (711, 71101, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Gourgeist (Small) - Pain Split - Tutor
  (711, 71101, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Gourgeist (Small) - Synthesis - Tutor
  (711, 71101, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Gourgeist (Small) - Trick - Tutor
  (711, 71101, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Gourgeist (Small) - Role Play - Tutor
  (711, 71101, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Gourgeist (Small) - Magic Coat - Tutor
  (711, 71101, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Gourgeist (Small) - Skill Swap - Tutor
  (711, 71101, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Gourgeist (Small) - Worry Seed - Tutor
  (711, 71101, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Gourgeist (Small) - Seed Bomb - Tutor
  (711, 71101, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Gourgeist (Small) - Foul Play - Tutor
  (711, 71101, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Gourgeist (Large) - Confuse Ray - Level 1
  (711, 71102, 109, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gourgeist (Large) - Explosion - Level 1
  (711, 71102, 153, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gourgeist (Large) - Trick - Level 1
  (711, 71102, 271, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gourgeist (Large) - Astonish - Level 1
  (711, 71102, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gourgeist (Large) - Phantom Force - Level 1
  (711, 71102, 566, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gourgeist (Large) - Scary Face - Level 4
  (711, 71102, 184, 14, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Gourgeist (Large) - Trick-or-Treat - Level 6
  (711, 71102, 567, 14, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Gourgeist (Large) - Worry Seed - Level 11
  (711, 71102, 388, 14, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Gourgeist (Large) - Razor Leaf - Level 16
  (711, 71102, 75, 14, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gourgeist (Large) - Leech Seed - Level 20
  (711, 71102, 73, 14, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Gourgeist (Large) - Trick-or-Treat - Level 23
  (711, 71102, 567, 14, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Gourgeist (Large) - Bullet Seed - Level 26
  (711, 71102, 331, 14, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Gourgeist (Large) - Shadow Sneak - Level 30
  (711, 71102, 425, 14, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Gourgeist (Large) - Shadow Ball - Level 36
  (711, 71102, 247, 14, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Gourgeist (Large) - Trick-or-Treat - Level 40
  (711, 71102, 567, 14, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Gourgeist (Large) - Pain Split - Level 42
  (711, 71102, 220, 14, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Gourgeist (Large) - Seed Bomb - Level 48
  (711, 71102, 402, 14, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Gourgeist (Large) - Phantom Force - Level 57
  (711, 71102, 566, 14, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Gourgeist (Large) - Trick-or-Treat - Level 63
  (711, 71102, 567, 14, NULL, 1, 63, NULL, NULL, NULL, 19),
  -- Gourgeist (Large) - Shadow Ball - Level 70
  (711, 71102, 247, 14, NULL, 1, 70, NULL, NULL, NULL, 20),
  -- Gourgeist (Large) - Explosion - Level 75
  (711, 71102, 153, 14, NULL, 1, 75, NULL, NULL, NULL, 21),
  -- Gourgeist (Large) - Toxic - TM06
  (711, 71102, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 22),
  -- Gourgeist (Large) - Hidden Power - TM10
  (711, 71102, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 23),
  -- Gourgeist (Large) - Sunny Day - TM11
  (711, 71102, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 24),
  -- Gourgeist (Large) - Hyper Beam - TM15
  (711, 71102, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 25),
  -- Gourgeist (Large) - Light Screen - TM16
  (711, 71102, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 26),
  -- Gourgeist (Large) - Protect - TM17
  (711, 71102, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 27),
  -- Gourgeist (Large) - Safeguard - TM20
  (711, 71102, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 28),
  -- Gourgeist (Large) - Frustration - TM21
  (711, 71102, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 29),
  -- Gourgeist (Large) - Solar Beam - TM22
  (711, 71102, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 30),
  -- Gourgeist (Large) - Return - TM27
  (711, 71102, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 31),
  -- Gourgeist (Large) - Psychic - TM29
  (711, 71102, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 32),
  -- Gourgeist (Large) - Shadow Ball - TM30
  (711, 71102, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 33),
  -- Gourgeist (Large) - Double Team - TM32
  (711, 71102, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 34),
  -- Gourgeist (Large) - Flamethrower - TM35
  (711, 71102, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 35),
  -- Gourgeist (Large) - Sludge Bomb - TM36
  (711, 71102, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 36),
  -- Gourgeist (Large) - Fire Blast - TM38
  (711, 71102, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 37),
  -- Gourgeist (Large) - Facade - TM42
  (711, 71102, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 38),
  -- Gourgeist (Large) - Flame Charge - TM43
  (711, 71102, 488, 14, NULL, 2, NULL, NULL, 14002043, NULL, 39),
  -- Gourgeist (Large) - Rest - TM44
  (711, 71102, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 40),
  -- Gourgeist (Large) - Attract - TM45
  (711, 71102, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 41),
  -- Gourgeist (Large) - Thief - TM46
  (711, 71102, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 42),
  -- Gourgeist (Large) - Round - TM48
  (711, 71102, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 43),
  -- Gourgeist (Large) - Focus Blast - TM52
  (711, 71102, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 44),
  -- Gourgeist (Large) - Energy Ball - TM53
  (711, 71102, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 45),
  -- Gourgeist (Large) - Charge Beam - TM57
  (711, 71102, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 46),
  -- Gourgeist (Large) - Incinerate - TM59
  (711, 71102, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 47),
  -- Gourgeist (Large) - Will-O-Wisp - TM61
  (711, 71102, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 48),
  -- Gourgeist (Large) - Explosion - TM64
  (711, 71102, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 49),
  -- Gourgeist (Large) - Giga Impact - TM68
  (711, 71102, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 50),
  -- Gourgeist (Large) - Flash - TM70
  (711, 71102, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 51),
  -- Gourgeist (Large) - Gyro Ball - TM74
  (711, 71102, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 52),
  -- Gourgeist (Large) - Rock Slide - TM80
  (711, 71102, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 53),
  -- Gourgeist (Large) - Dream Eater - TM85
  (711, 71102, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 54),
  -- Gourgeist (Large) - Grass Knot - TM86
  (711, 71102, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 55),
  -- Gourgeist (Large) - Swagger - TM87
  (711, 71102, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 56),
  -- Gourgeist (Large) - Sleep Talk - TM88
  (711, 71102, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 57),
  -- Gourgeist (Large) - Substitute - TM90
  (711, 71102, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 58),
  -- Gourgeist (Large) - Trick Room - TM92
  (711, 71102, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 59),
  -- Gourgeist (Large) - Secret Power - TM94
  (711, 71102, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 60),
  -- Gourgeist (Large) - Nature Power - TM96
  (711, 71102, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 61),
  -- Gourgeist (Large) - Dark Pulse - TM97
  (711, 71102, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 62),
  -- Gourgeist (Large) - Confide - TM100
  (711, 71102, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 63),
  -- Gourgeist (Large) - Rock Smash - HM06
  (711, 71102, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 64),
  -- Gourgeist (Large) - Spite - Tutor
  (711, 71102, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Gourgeist (Large) - Giga Drain - Tutor
  (711, 71102, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Gourgeist (Large) - Pain Split - Tutor
  (711, 71102, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Gourgeist (Large) - Synthesis - Tutor
  (711, 71102, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Gourgeist (Large) - Trick - Tutor
  (711, 71102, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Gourgeist (Large) - Role Play - Tutor
  (711, 71102, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Gourgeist (Large) - Magic Coat - Tutor
  (711, 71102, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Gourgeist (Large) - Skill Swap - Tutor
  (711, 71102, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Gourgeist (Large) - Worry Seed - Tutor
  (711, 71102, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Gourgeist (Large) - Seed Bomb - Tutor
  (711, 71102, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Gourgeist (Large) - Foul Play - Tutor
  (711, 71102, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Gourgeist (Super) - Confuse Ray - Level 1
  (711, 71103, 109, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gourgeist (Super) - Explosion - Level 1
  (711, 71103, 153, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gourgeist (Super) - Trick - Level 1
  (711, 71103, 271, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gourgeist (Super) - Astonish - Level 1
  (711, 71103, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gourgeist (Super) - Phantom Force - Level 1
  (711, 71103, 566, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gourgeist (Super) - Scary Face - Level 4
  (711, 71103, 184, 14, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Gourgeist (Super) - Trick-or-Treat - Level 6
  (711, 71103, 567, 14, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Gourgeist (Super) - Worry Seed - Level 11
  (711, 71103, 388, 14, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Gourgeist (Super) - Razor Leaf - Level 16
  (711, 71103, 75, 14, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gourgeist (Super) - Leech Seed - Level 20
  (711, 71103, 73, 14, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Gourgeist (Super) - Trick-or-Treat - Level 23
  (711, 71103, 567, 14, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Gourgeist (Super) - Bullet Seed - Level 26
  (711, 71103, 331, 14, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Gourgeist (Super) - Shadow Sneak - Level 30
  (711, 71103, 425, 14, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Gourgeist (Super) - Shadow Ball - Level 36
  (711, 71103, 247, 14, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Gourgeist (Super) - Trick-or-Treat - Level 40
  (711, 71103, 567, 14, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Gourgeist (Super) - Pain Split - Level 42
  (711, 71103, 220, 14, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Gourgeist (Super) - Seed Bomb - Level 48
  (711, 71103, 402, 14, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Gourgeist (Super) - Phantom Force - Level 57
  (711, 71103, 566, 14, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Gourgeist (Super) - Trick-or-Treat - Level 63
  (711, 71103, 567, 14, NULL, 1, 63, NULL, NULL, NULL, 19),
  -- Gourgeist (Super) - Shadow Ball - Level 70
  (711, 71103, 247, 14, NULL, 1, 70, NULL, NULL, NULL, 20),
  -- Gourgeist (Super) - Explosion - Level 75
  (711, 71103, 153, 14, NULL, 1, 75, NULL, NULL, NULL, 21),
  -- Gourgeist (Super) - Toxic - TM06
  (711, 71103, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 22),
  -- Gourgeist (Super) - Hidden Power - TM10
  (711, 71103, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 23),
  -- Gourgeist (Super) - Sunny Day - TM11
  (711, 71103, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 24),
  -- Gourgeist (Super) - Hyper Beam - TM15
  (711, 71103, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 25),
  -- Gourgeist (Super) - Light Screen - TM16
  (711, 71103, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 26),
  -- Gourgeist (Super) - Protect - TM17
  (711, 71103, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 27),
  -- Gourgeist (Super) - Safeguard - TM20
  (711, 71103, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 28),
  -- Gourgeist (Super) - Frustration - TM21
  (711, 71103, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 29),
  -- Gourgeist (Super) - Solar Beam - TM22
  (711, 71103, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 30),
  -- Gourgeist (Super) - Return - TM27
  (711, 71103, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 31),
  -- Gourgeist (Super) - Psychic - TM29
  (711, 71103, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 32),
  -- Gourgeist (Super) - Shadow Ball - TM30
  (711, 71103, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 33),
  -- Gourgeist (Super) - Double Team - TM32
  (711, 71103, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 34),
  -- Gourgeist (Super) - Flamethrower - TM35
  (711, 71103, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 35),
  -- Gourgeist (Super) - Sludge Bomb - TM36
  (711, 71103, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 36),
  -- Gourgeist (Super) - Fire Blast - TM38
  (711, 71103, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 37),
  -- Gourgeist (Super) - Facade - TM42
  (711, 71103, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 38),
  -- Gourgeist (Super) - Flame Charge - TM43
  (711, 71103, 488, 14, NULL, 2, NULL, NULL, 14002043, NULL, 39),
  -- Gourgeist (Super) - Rest - TM44
  (711, 71103, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 40),
  -- Gourgeist (Super) - Attract - TM45
  (711, 71103, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 41),
  -- Gourgeist (Super) - Thief - TM46
  (711, 71103, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 42),
  -- Gourgeist (Super) - Round - TM48
  (711, 71103, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 43),
  -- Gourgeist (Super) - Focus Blast - TM52
  (711, 71103, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 44),
  -- Gourgeist (Super) - Energy Ball - TM53
  (711, 71103, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 45),
  -- Gourgeist (Super) - Charge Beam - TM57
  (711, 71103, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 46),
  -- Gourgeist (Super) - Incinerate - TM59
  (711, 71103, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 47),
  -- Gourgeist (Super) - Will-O-Wisp - TM61
  (711, 71103, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 48),
  -- Gourgeist (Super) - Explosion - TM64
  (711, 71103, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 49),
  -- Gourgeist (Super) - Giga Impact - TM68
  (711, 71103, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 50),
  -- Gourgeist (Super) - Flash - TM70
  (711, 71103, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 51),
  -- Gourgeist (Super) - Gyro Ball - TM74
  (711, 71103, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 52),
  -- Gourgeist (Super) - Rock Slide - TM80
  (711, 71103, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 53),
  -- Gourgeist (Super) - Dream Eater - TM85
  (711, 71103, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 54),
  -- Gourgeist (Super) - Grass Knot - TM86
  (711, 71103, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 55),
  -- Gourgeist (Super) - Swagger - TM87
  (711, 71103, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 56),
  -- Gourgeist (Super) - Sleep Talk - TM88
  (711, 71103, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 57),
  -- Gourgeist (Super) - Substitute - TM90
  (711, 71103, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 58),
  -- Gourgeist (Super) - Trick Room - TM92
  (711, 71103, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 59),
  -- Gourgeist (Super) - Secret Power - TM94
  (711, 71103, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 60),
  -- Gourgeist (Super) - Nature Power - TM96
  (711, 71103, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 61),
  -- Gourgeist (Super) - Dark Pulse - TM97
  (711, 71103, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 62),
  -- Gourgeist (Super) - Confide - TM100
  (711, 71103, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 63),
  -- Gourgeist (Super) - Rock Smash - HM06
  (711, 71103, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 64),
  -- Gourgeist (Super) - Spite - Tutor
  (711, 71103, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Gourgeist (Super) - Giga Drain - Tutor
  (711, 71103, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Gourgeist (Super) - Pain Split - Tutor
  (711, 71103, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Gourgeist (Super) - Synthesis - Tutor
  (711, 71103, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Gourgeist (Super) - Trick - Tutor
  (711, 71103, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Gourgeist (Super) - Role Play - Tutor
  (711, 71103, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Gourgeist (Super) - Magic Coat - Tutor
  (711, 71103, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Gourgeist (Super) - Skill Swap - Tutor
  (711, 71103, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Gourgeist (Super) - Worry Seed - Tutor
  (711, 71103, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Gourgeist (Super) - Seed Bomb - Tutor
  (711, 71103, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Gourgeist (Super) - Foul Play - Tutor
  (711, 71103, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Hoopa (Unbound) - Confusion - Level 1
  (720, 72001, 93, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hoopa (Unbound) - Destiny Bond - Level 1
  (720, 72001, 194, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hoopa (Unbound) - Trick - Level 1
  (720, 72001, 271, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hoopa (Unbound) - Ally Switch - Level 1
  (720, 72001, 502, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hoopa (Unbound) - Hyperspace Fury - Level 1
  (720, 72001, 621, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hoopa (Unbound) - Astonish - Level 6
  (720, 72001, 310, 14, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Hoopa (Unbound) - Magic Coat - Level 10
  (720, 72001, 277, 14, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Hoopa (Unbound) - Light Screen - Level 15
  (720, 72001, 113, 14, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Hoopa (Unbound) - Psybeam - Level 19
  (720, 72001, 60, 14, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Hoopa (Unbound) - Skill Swap - Level 25
  (720, 72001, 285, 14, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Hoopa (Unbound) - Guard Split - Level 29
  (720, 72001, 470, 14, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Hoopa (Unbound) - Power Split - Level 29
  (720, 72001, 471, 14, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Hoopa (Unbound) - Knock Off - Level 46
  (720, 72001, 282, 14, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Hoopa (Unbound) - Trick Room - Level 50
  (720, 72001, 433, 14, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Hoopa (Unbound) - Wonder Room - Level 50
  (720, 72001, 472, 14, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Hoopa (Unbound) - Dark Pulse - Level 55
  (720, 72001, 399, 14, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Hoopa (Unbound) - Psychic - Level 75
  (720, 72001, 94, 14, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Hoopa (Unbound) - Hyperspace Fury - Level 85
  (720, 72001, 621, 14, NULL, 1, 85, NULL, NULL, NULL, 18),
  -- Hoopa (Unbound) - Psyshock - TM03
  (720, 72001, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 19),
  -- Hoopa (Unbound) - Calm Mind - TM04
  (720, 72001, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 20),
  -- Hoopa (Unbound) - Toxic - TM06
  (720, 72001, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 21),
  -- Hoopa (Unbound) - Hidden Power - TM10
  (720, 72001, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 22),
  -- Hoopa (Unbound) - Sunny Day - TM11
  (720, 72001, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 23),
  -- Hoopa (Unbound) - Taunt - TM12
  (720, 72001, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 24),
  -- Hoopa (Unbound) - Hyper Beam - TM15
  (720, 72001, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 25),
  -- Hoopa (Unbound) - Light Screen - TM16
  (720, 72001, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 26),
  -- Hoopa (Unbound) - Protect - TM17
  (720, 72001, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 27),
  -- Hoopa (Unbound) - Rain Dance - TM18
  (720, 72001, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 28),
  -- Hoopa (Unbound) - Safeguard - TM20
  (720, 72001, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 29),
  -- Hoopa (Unbound) - Frustration - TM21
  (720, 72001, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 30),
  -- Hoopa (Unbound) - Thunderbolt - TM24
  (720, 72001, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 31),
  -- Hoopa (Unbound) - Return - TM27
  (720, 72001, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 32),
  -- Hoopa (Unbound) - Psychic - TM29
  (720, 72001, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 33),
  -- Hoopa (Unbound) - Shadow Ball - TM30
  (720, 72001, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 34),
  -- Hoopa (Unbound) - Brick Break - TM31
  (720, 72001, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 35),
  -- Hoopa (Unbound) - Double Team - TM32
  (720, 72001, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 36),
  -- Hoopa (Unbound) - Reflect - TM33
  (720, 72001, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 37),
  -- Hoopa (Unbound) - Torment - TM41
  (720, 72001, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 38),
  -- Hoopa (Unbound) - Facade - TM42
  (720, 72001, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 39),
  -- Hoopa (Unbound) - Rest - TM44
  (720, 72001, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 40),
  -- Hoopa (Unbound) - Thief - TM46
  (720, 72001, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 41),
  -- Hoopa (Unbound) - Round - TM48
  (720, 72001, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 42),
  -- Hoopa (Unbound) - Focus Blast - TM52
  (720, 72001, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 43),
  -- Hoopa (Unbound) - Energy Ball - TM53
  (720, 72001, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 44),
  -- Hoopa (Unbound) - Fling - TM56
  (720, 72001, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 45),
  -- Hoopa (Unbound) - Charge Beam - TM57
  (720, 72001, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 46),
  -- Hoopa (Unbound) - Quash - TM60
  (720, 72001, 511, 14, NULL, 2, NULL, NULL, 14002060, NULL, 47),
  -- Hoopa (Unbound) - Embargo - TM63
  (720, 72001, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 48),
  -- Hoopa (Unbound) - Giga Impact - TM68
  (720, 72001, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 49),
  -- Hoopa (Unbound) - Flash - TM70
  (720, 72001, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 50),
  -- Hoopa (Unbound) - Thunder Wave - TM73
  (720, 72001, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 51),
  -- Hoopa (Unbound) - Psych Up - TM77
  (720, 72001, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 52),
  -- Hoopa (Unbound) - Dream Eater - TM85
  (720, 72001, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 53),
  -- Hoopa (Unbound) - Grass Knot - TM86
  (720, 72001, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 54),
  -- Hoopa (Unbound) - Swagger - TM87
  (720, 72001, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 55),
  -- Hoopa (Unbound) - Sleep Talk - TM88
  (720, 72001, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 56),
  -- Hoopa (Unbound) - Substitute - TM90
  (720, 72001, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 57),
  -- Hoopa (Unbound) - Trick Room - TM92
  (720, 72001, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 58),
  -- Hoopa (Unbound) - Secret Power - TM94
  (720, 72001, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 59),
  -- Hoopa (Unbound) - Dark Pulse - TM97
  (720, 72001, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 60),
  -- Hoopa (Unbound) - Power-Up Punch - TM98
  (720, 72001, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 61),
  -- Hoopa (Unbound) - Confide - TM100
  (720, 72001, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 62),
  -- Hoopa (Unbound) - Fire Punch - Tutor
  (720, 72001, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Hoopa (Unbound) - Ice Punch - Tutor
  (720, 72001, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Hoopa (Unbound) - Thunder Punch - Tutor
  (720, 72001, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Hoopa (Unbound) - Snore - Tutor
  (720, 72001, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Hoopa (Unbound) - Uproar - Tutor
  (720, 72001, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Hoopa (Unbound) - Focus Punch - Tutor
  (720, 72001, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Hoopa (Unbound) - Trick - Tutor
  (720, 72001, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Hoopa (Unbound) - Role Play - Tutor
  (720, 72001, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Hoopa (Unbound) - Magic Coat - Tutor
  (720, 72001, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Hoopa (Unbound) - Recycle - Tutor
  (720, 72001, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Hoopa (Unbound) - Knock Off - Tutor
  (720, 72001, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Hoopa (Unbound) - Skill Swap - Tutor
  (720, 72001, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Hoopa (Unbound) - Snatch - Tutor
  (720, 72001, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Hoopa (Unbound) - Signal Beam - Tutor
  (720, 72001, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Hoopa (Unbound) - Block - Tutor
  (720, 72001, 335, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Hoopa (Unbound) - Covet - Tutor
  (720, 72001, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Hoopa (Unbound) - Shock Wave - Tutor
  (720, 72001, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Hoopa (Unbound) - Gravity - Tutor
  (720, 72001, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Hoopa (Unbound) - Last Resort - Tutor
  (720, 72001, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Hoopa (Unbound) - Drain Punch - Tutor
  (720, 72001, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Hoopa (Unbound) - Zen Headbutt - Tutor
  (720, 72001, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 83),
  -- Hoopa (Unbound) - Gunk Shot - Tutor
  (720, 72001, 441, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 84),
  -- Hoopa (Unbound) - Wonder Room - Tutor
  (720, 72001, 472, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 85),
  -- Hoopa (Unbound) - Magic Room - Tutor
  (720, 72001, 478, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 86),
  -- Hoopa (Unbound) - Foul Play - Tutor
  (720, 72001, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 87),
  -- Hoopa (Unbound) - Dual Chop - Tutor
  (720, 72001, 530, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 88);
