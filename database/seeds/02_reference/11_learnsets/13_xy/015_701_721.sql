-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VI raw learnset pages.
-- Cross-check: PokemonDB X / Y learnset pages and legacy Voydex Generation VI learnset seeds.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- X / Y learnsets for default forms, species 701-721.
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
  -- Hawlucha - Tackle - Level 1
  (701, 70100, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hawlucha - Detect - Level 1
  (701, 70100, 197, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hawlucha - Hone Claws - Level 1
  (701, 70100, 468, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hawlucha - Karate Chop - Level 4
  (701, 70100, 2, 13, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Hawlucha - Wing Attack - Level 8
  (701, 70100, 17, 13, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Hawlucha - Roost - Level 12
  (701, 70100, 355, 13, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Hawlucha - Aerial Ace - Level 16
  (701, 70100, 332, 13, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Hawlucha - Encore - Level 20
  (701, 70100, 227, 13, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Hawlucha - Fling - Level 24
  (701, 70100, 374, 13, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Hawlucha - Flying Press - Level 28
  (701, 70100, 560, 13, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Hawlucha - Bounce - Level 32
  (701, 70100, 340, 13, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Hawlucha - Endeavor - Level 36
  (701, 70100, 283, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Hawlucha - Feather Dance - Level 40
  (701, 70100, 297, 13, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Hawlucha - High Jump Kick - Level 44
  (701, 70100, 136, 13, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Hawlucha - Sky Attack - Level 48
  (701, 70100, 143, 13, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Hawlucha - Sky Drop - Level 55
  (701, 70100, 507, 13, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Hawlucha - Swords Dance - Level 60
  (701, 70100, 14, 13, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Hawlucha - Hone Claws - TM01
  (701, 70100, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 18),
  -- Hawlucha - Toxic - TM06
  (701, 70100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Hawlucha - Bulk Up - TM08
  (701, 70100, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 20),
  -- Hawlucha - Hidden Power - TM10
  (701, 70100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Hawlucha - Sunny Day - TM11
  (701, 70100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Hawlucha - Taunt - TM12
  (701, 70100, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 23),
  -- Hawlucha - Protect - TM17
  (701, 70100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Hawlucha - Rain Dance - TM18
  (701, 70100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Hawlucha - Roost - TM19
  (701, 70100, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 26),
  -- Hawlucha - Frustration - TM21
  (701, 70100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Hawlucha - Return - TM27
  (701, 70100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Hawlucha - Dig - TM28
  (701, 70100, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 29),
  -- Hawlucha - Brick Break - TM31
  (701, 70100, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 30),
  -- Hawlucha - Double Team - TM32
  (701, 70100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Hawlucha - Rock Tomb - TM39
  (701, 70100, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 32),
  -- Hawlucha - Aerial Ace - TM40
  (701, 70100, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 33),
  -- Hawlucha - Torment - TM41
  (701, 70100, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 34),
  -- Hawlucha - Facade - TM42
  (701, 70100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Hawlucha - Rest - TM44
  (701, 70100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Hawlucha - Attract - TM45
  (701, 70100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Hawlucha - Low Sweep - TM47
  (701, 70100, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 38),
  -- Hawlucha - Round - TM48
  (701, 70100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Hawlucha - Steel Wing - TM51
  (701, 70100, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 40),
  -- Hawlucha - Focus Blast - TM52
  (701, 70100, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 41),
  -- Hawlucha - False Swipe - TM54
  (701, 70100, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 42),
  -- Hawlucha - Fling - TM56
  (701, 70100, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 43),
  -- Hawlucha - Sky Drop - TM58
  (701, 70100, 507, 13, NULL, 2, NULL, NULL, 13002058, NULL, 44),
  -- Hawlucha - Acrobatics - TM62
  (701, 70100, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 45),
  -- Hawlucha - Payback - TM66
  (701, 70100, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 46),
  -- Hawlucha - Retaliate - TM67
  (701, 70100, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 47),
  -- Hawlucha - Giga Impact - TM68
  (701, 70100, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 48),
  -- Hawlucha - Stone Edge - TM71
  (701, 70100, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 49),
  -- Hawlucha - Swords Dance - TM75
  (701, 70100, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 50),
  -- Hawlucha - Rock Slide - TM80
  (701, 70100, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 51),
  -- Hawlucha - X-Scissor - TM81
  (701, 70100, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 52),
  -- Hawlucha - Poison Jab - TM84
  (701, 70100, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 53),
  -- Hawlucha - Grass Knot - TM86
  (701, 70100, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 54),
  -- Hawlucha - Swagger - TM87
  (701, 70100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 55),
  -- Hawlucha - Sleep Talk - TM88
  (701, 70100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 56),
  -- Hawlucha - U-turn - TM89
  (701, 70100, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 57),
  -- Hawlucha - Substitute - TM90
  (701, 70100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 58),
  -- Hawlucha - Rock Smash - TM94
  (701, 70100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 59),
  -- Hawlucha - Power-Up Punch - TM98
  (701, 70100, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 60),
  -- Hawlucha - Confide - TM100
  (701, 70100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 61),
  -- Hawlucha - Cut - HM01
  (701, 70100, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 62),
  -- Hawlucha - Fly - HM02
  (701, 70100, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 63),
  -- Hawlucha - Strength - HM04
  (701, 70100, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 64),
  -- Hawlucha - Agility - Egg
  (701, 70100, 97, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Hawlucha - Baton Pass - Egg
  (701, 70100, 226, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Hawlucha - Mud Sport - Egg
  (701, 70100, 300, 13, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Hawlucha - Me First - Egg
  (701, 70100, 382, 13, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Hawlucha - Entrainment - Egg
  (701, 70100, 494, 13, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Hawlucha - Quick Guard - Egg
  (701, 70100, 501, 13, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Hawlucha - Ally Switch - Egg
  (701, 70100, 502, 13, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Dedenne - Tackle - Level 1
  (702, 70200, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dedenne - Tail Whip - Level 1
  (702, 70200, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dedenne - Thunder Shock - Level 7
  (702, 70200, 84, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Dedenne - Charge - Level 11
  (702, 70200, 268, 13, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Dedenne - Charm - Level 14
  (702, 70200, 204, 13, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Dedenne - Parabolic Charge - Level 17
  (702, 70200, 570, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Dedenne - Nuzzle - Level 20
  (702, 70200, 609, 13, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Dedenne - Thunder Wave - Level 23
  (702, 70200, 86, 13, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Dedenne - Volt Switch - Level 26
  (702, 70200, 521, 13, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Dedenne - Rest - Level 30
  (702, 70200, 156, 13, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Dedenne - Snore - Level 31
  (702, 70200, 173, 13, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Dedenne - Charge Beam - Level 34
  (702, 70200, 451, 13, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Dedenne - Entrainment - Level 39
  (702, 70200, 494, 13, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Dedenne - Play Rough - Level 42
  (702, 70200, 583, 13, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Dedenne - Thunder - Level 45
  (702, 70200, 87, 13, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Dedenne - Discharge - Level 50
  (702, 70200, 435, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Dedenne - Toxic - TM06
  (702, 70200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Dedenne - Hidden Power - TM10
  (702, 70200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Dedenne - Sunny Day - TM11
  (702, 70200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Dedenne - Protect - TM17
  (702, 70200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Dedenne - Rain Dance - TM18
  (702, 70200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Dedenne - Frustration - TM21
  (702, 70200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Dedenne - Thunderbolt - TM24
  (702, 70200, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 23),
  -- Dedenne - Thunder - TM25
  (702, 70200, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 24),
  -- Dedenne - Return - TM27
  (702, 70200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Dedenne - Dig - TM28
  (702, 70200, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 26),
  -- Dedenne - Double Team - TM32
  (702, 70200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Dedenne - Aerial Ace - TM40
  (702, 70200, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 28),
  -- Dedenne - Facade - TM42
  (702, 70200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Dedenne - Rest - TM44
  (702, 70200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Dedenne - Attract - TM45
  (702, 70200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Dedenne - Thief - TM46
  (702, 70200, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 32),
  -- Dedenne - Round - TM48
  (702, 70200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Dedenne - Fling - TM56
  (702, 70200, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 34),
  -- Dedenne - Charge Beam - TM57
  (702, 70200, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 35),
  -- Dedenne - Retaliate - TM67
  (702, 70200, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 36),
  -- Dedenne - Giga Impact - TM68
  (702, 70200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 37),
  -- Dedenne - Flash - TM70
  (702, 70200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 38),
  -- Dedenne - Volt Switch - TM72
  (702, 70200, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 39),
  -- Dedenne - Thunder Wave - TM73
  (702, 70200, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 40),
  -- Dedenne - Grass Knot - TM86
  (702, 70200, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 41),
  -- Dedenne - Swagger - TM87
  (702, 70200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 42),
  -- Dedenne - Sleep Talk - TM88
  (702, 70200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 43),
  -- Dedenne - U-turn - TM89
  (702, 70200, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 44),
  -- Dedenne - Substitute - TM90
  (702, 70200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 45),
  -- Dedenne - Wild Charge - TM93
  (702, 70200, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 46),
  -- Dedenne - Confide - TM100
  (702, 70200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 47),
  -- Dedenne - Cut - HM01
  (702, 70200, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 48),
  -- Dedenne - Helping Hand - Egg
  (702, 70200, 270, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Dedenne - Covet - Egg
  (702, 70200, 343, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Dedenne - Natural Gift - Egg
  (702, 70200, 363, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Dedenne - Eerie Impulse - Egg
  (702, 70200, 598, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Carbink - Tackle - Level 1
  (703, 70300, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carbink - Harden - Level 1
  (703, 70300, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carbink - Rock Throw - Level 5
  (703, 70300, 88, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Carbink - Sharpen - Level 8
  (703, 70300, 159, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Carbink - Smack Down - Level 12
  (703, 70300, 479, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Carbink - Reflect - Level 18
  (703, 70300, 115, 13, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Carbink - Stealth Rock - Level 21
  (703, 70300, 446, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Carbink - Guard Split - Level 27
  (703, 70300, 470, 13, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Carbink - Ancient Power - Level 31
  (703, 70300, 246, 13, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Carbink - Flail - Level 35
  (703, 70300, 175, 13, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Carbink - Skill Swap - Level 40
  (703, 70300, 285, 13, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Carbink - Power Gem - Level 46
  (703, 70300, 408, 13, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Carbink - Stone Edge - Level 49
  (703, 70300, 444, 13, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Carbink - Moonblast - Level 50
  (703, 70300, 585, 13, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Carbink - Light Screen - Level 60
  (703, 70300, 113, 13, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Carbink - Safeguard - Level 70
  (703, 70300, 219, 13, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Carbink - Calm Mind - TM04
  (703, 70300, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 17),
  -- Carbink - Toxic - TM06
  (703, 70300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Carbink - Hail - TM07
  (703, 70300, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 19),
  -- Carbink - Hidden Power - TM10
  (703, 70300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Carbink - Sunny Day - TM11
  (703, 70300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Carbink - Light Screen - TM16
  (703, 70300, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 22),
  -- Carbink - Protect - TM17
  (703, 70300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Carbink - Safeguard - TM20
  (703, 70300, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 24),
  -- Carbink - Frustration - TM21
  (703, 70300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Carbink - Smack Down - TM23
  (703, 70300, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 26),
  -- Carbink - Return - TM27
  (703, 70300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Carbink - Psychic - TM29
  (703, 70300, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 28),
  -- Carbink - Double Team - TM32
  (703, 70300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Carbink - Reflect - TM33
  (703, 70300, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 30),
  -- Carbink - Sandstorm - TM37
  (703, 70300, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 31),
  -- Carbink - Rock Tomb - TM39
  (703, 70300, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 32),
  -- Carbink - Facade - TM42
  (703, 70300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 33),
  -- Carbink - Rest - TM44
  (703, 70300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Carbink - Round - TM48
  (703, 70300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Carbink - Explosion - TM64
  (703, 70300, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 36),
  -- Carbink - Rock Polish - TM69
  (703, 70300, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 37),
  -- Carbink - Flash - TM70
  (703, 70300, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 38),
  -- Carbink - Stone Edge - TM71
  (703, 70300, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 39),
  -- Carbink - Gyro Ball - TM74
  (703, 70300, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 40),
  -- Carbink - Psych Up - TM77
  (703, 70300, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 41),
  -- Carbink - Rock Slide - TM80
  (703, 70300, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 42),
  -- Carbink - Swagger - TM87
  (703, 70300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 43),
  -- Carbink - Sleep Talk - TM88
  (703, 70300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 44),
  -- Carbink - Substitute - TM90
  (703, 70300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 45),
  -- Carbink - Trick Room - TM92
  (703, 70300, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 46),
  -- Carbink - Nature Power - TM96
  (703, 70300, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 47),
  -- Carbink - Dazzling Gleam - TM99
  (703, 70300, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 48),
  -- Carbink - Confide - TM100
  (703, 70300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 49),
  -- Goomy - Tackle - Level 1
  (704, 70400, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Goomy - Bubble - Level 1
  (704, 70400, 145, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Goomy - Absorb - Level 5
  (704, 70400, 71, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Goomy - Protect - Level 9
  (704, 70400, 182, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Goomy - Bide - Level 13
  (704, 70400, 117, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Goomy - Dragon Breath - Level 18
  (704, 70400, 225, 13, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Goomy - Rain Dance - Level 25
  (704, 70400, 240, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Goomy - Flail - Level 28
  (704, 70400, 175, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Goomy - Body Slam - Level 32
  (704, 70400, 34, 13, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Goomy - Muddy Water - Level 38
  (704, 70400, 330, 13, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Goomy - Dragon Pulse - Level 42
  (704, 70400, 406, 13, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Goomy - Toxic - TM06
  (704, 70400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 12),
  -- Goomy - Hidden Power - TM10
  (704, 70400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 13),
  -- Goomy - Sunny Day - TM11
  (704, 70400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 14),
  -- Goomy - Protect - TM17
  (704, 70400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 15),
  -- Goomy - Rain Dance - TM18
  (704, 70400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 16),
  -- Goomy - Frustration - TM21
  (704, 70400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 17),
  -- Goomy - Thunderbolt - TM24
  (704, 70400, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 18),
  -- Goomy - Return - TM27
  (704, 70400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 19),
  -- Goomy - Double Team - TM32
  (704, 70400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 20),
  -- Goomy - Sludge Wave - TM34
  (704, 70400, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 21),
  -- Goomy - Sludge Bomb - TM36
  (704, 70400, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 22),
  -- Goomy - Facade - TM42
  (704, 70400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 23),
  -- Goomy - Rest - TM44
  (704, 70400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 24),
  -- Goomy - Attract - TM45
  (704, 70400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 25),
  -- Goomy - Round - TM48
  (704, 70400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 26),
  -- Goomy - Rock Slide - TM80
  (704, 70400, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 27),
  -- Goomy - Infestation - TM83
  (704, 70400, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 28),
  -- Goomy - Swagger - TM87
  (704, 70400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 29),
  -- Goomy - Sleep Talk - TM88
  (704, 70400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 30),
  -- Goomy - Substitute - TM90
  (704, 70400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 31),
  -- Goomy - Confide - TM100
  (704, 70400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 32),
  -- Goomy - Counter - Egg
  (704, 70400, 68, 13, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Goomy - Acid Armor - Egg
  (704, 70400, 151, 13, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Goomy - Curse - Egg
  (704, 70400, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Goomy - Endure - Egg
  (704, 70400, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Goomy - Iron Tail - Egg
  (704, 70400, 231, 13, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Goomy - Poison Tail - Egg
  (704, 70400, 342, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Goomy - Draco Meteor - Tutor
  (704, 70400, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 39),
  -- Sliggoo - Tackle - Level 1
  (705, 70500, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sliggoo - Bubble - Level 1
  (705, 70500, 145, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sliggoo - Absorb - Level 5
  (705, 70500, 71, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Sliggoo - Protect - Level 9
  (705, 70500, 182, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Sliggoo - Bide - Level 13
  (705, 70500, 117, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Sliggoo - Dragon Breath - Level 18
  (705, 70500, 225, 13, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Sliggoo - Rain Dance - Level 25
  (705, 70500, 240, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Sliggoo - Flail - Level 28
  (705, 70500, 175, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Sliggoo - Body Slam - Level 32
  (705, 70500, 34, 13, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Sliggoo - Muddy Water - Level 38
  (705, 70500, 330, 13, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Sliggoo - Dragon Pulse - Level 47
  (705, 70500, 406, 13, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Sliggoo - Toxic - TM06
  (705, 70500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 12),
  -- Sliggoo - Hidden Power - TM10
  (705, 70500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 13),
  -- Sliggoo - Sunny Day - TM11
  (705, 70500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 14),
  -- Sliggoo - Ice Beam - TM13
  (705, 70500, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 15),
  -- Sliggoo - Blizzard - TM14
  (705, 70500, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 16),
  -- Sliggoo - Protect - TM17
  (705, 70500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 17),
  -- Sliggoo - Rain Dance - TM18
  (705, 70500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 18),
  -- Sliggoo - Frustration - TM21
  (705, 70500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 19),
  -- Sliggoo - Thunderbolt - TM24
  (705, 70500, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 20),
  -- Sliggoo - Return - TM27
  (705, 70500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 21),
  -- Sliggoo - Double Team - TM32
  (705, 70500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 22),
  -- Sliggoo - Sludge Wave - TM34
  (705, 70500, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 23),
  -- Sliggoo - Sludge Bomb - TM36
  (705, 70500, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 24),
  -- Sliggoo - Facade - TM42
  (705, 70500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 25),
  -- Sliggoo - Rest - TM44
  (705, 70500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 26),
  -- Sliggoo - Attract - TM45
  (705, 70500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 27),
  -- Sliggoo - Round - TM48
  (705, 70500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 28),
  -- Sliggoo - Rock Slide - TM80
  (705, 70500, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 29),
  -- Sliggoo - Infestation - TM83
  (705, 70500, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 30),
  -- Sliggoo - Swagger - TM87
  (705, 70500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 31),
  -- Sliggoo - Sleep Talk - TM88
  (705, 70500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 32),
  -- Sliggoo - Substitute - TM90
  (705, 70500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 33),
  -- Sliggoo - Confide - TM100
  (705, 70500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 34),
  -- Sliggoo - Draco Meteor - Tutor
  (705, 70500, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 35),
  -- Goodra - Tackle - Level 1
  (706, 70600, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Goodra - Bubble - Level 1
  (706, 70600, 145, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Goodra - Outrage - Level 1
  (706, 70600, 200, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Goodra - Feint - Level 1
  (706, 70600, 364, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Goodra - Absorb - Level 5
  (706, 70600, 71, 13, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Goodra - Protect - Level 9
  (706, 70600, 182, 13, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Goodra - Bide - Level 13
  (706, 70600, 117, 13, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Goodra - Dragon Breath - Level 18
  (706, 70600, 225, 13, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Goodra - Rain Dance - Level 25
  (706, 70600, 240, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Goodra - Flail - Level 28
  (706, 70600, 175, 13, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Goodra - Body Slam - Level 32
  (706, 70600, 34, 13, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Goodra - Muddy Water - Level 38
  (706, 70600, 330, 13, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Goodra - Dragon Pulse - Level 47
  (706, 70600, 406, 13, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Goodra - Aqua Tail - Level 50
  (706, 70600, 401, 13, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Goodra - Power Whip - Level 55
  (706, 70600, 438, 13, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Goodra - Outrage - Level 63
  (706, 70600, 200, 13, NULL, 1, 63, NULL, NULL, NULL, 16),
  -- Goodra - Toxic - TM06
  (706, 70600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Goodra - Hail - TM07
  (706, 70600, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 18),
  -- Goodra - Hidden Power - TM10
  (706, 70600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Goodra - Sunny Day - TM11
  (706, 70600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Goodra - Ice Beam - TM13
  (706, 70600, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 21),
  -- Goodra - Blizzard - TM14
  (706, 70600, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 22),
  -- Goodra - Hyper Beam - TM15
  (706, 70600, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Goodra - Protect - TM17
  (706, 70600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Goodra - Rain Dance - TM18
  (706, 70600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Goodra - Frustration - TM21
  (706, 70600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Goodra - Thunderbolt - TM24
  (706, 70600, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 27),
  -- Goodra - Thunder - TM25
  (706, 70600, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 28),
  -- Goodra - Earthquake - TM26
  (706, 70600, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 29),
  -- Goodra - Return - TM27
  (706, 70600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Goodra - Double Team - TM32
  (706, 70600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Goodra - Sludge Wave - TM34
  (706, 70600, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 32),
  -- Goodra - Flamethrower - TM35
  (706, 70600, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 33),
  -- Goodra - Sludge Bomb - TM36
  (706, 70600, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 34),
  -- Goodra - Fire Blast - TM38
  (706, 70600, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 35),
  -- Goodra - Facade - TM42
  (706, 70600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Goodra - Rest - TM44
  (706, 70600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Goodra - Attract - TM45
  (706, 70600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Goodra - Round - TM48
  (706, 70600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Goodra - Focus Blast - TM52
  (706, 70600, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 40),
  -- Goodra - Incinerate - TM59
  (706, 70600, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 41),
  -- Goodra - Giga Impact - TM68
  (706, 70600, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 42),
  -- Goodra - Bulldoze - TM78
  (706, 70600, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 43),
  -- Goodra - Rock Slide - TM80
  (706, 70600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 44),
  -- Goodra - Dragon Tail - TM82
  (706, 70600, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 45),
  -- Goodra - Infestation - TM83
  (706, 70600, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 46),
  -- Goodra - Swagger - TM87
  (706, 70600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Goodra - Sleep Talk - TM88
  (706, 70600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Goodra - Substitute - TM90
  (706, 70600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 49),
  -- Goodra - Rock Smash - TM94
  (706, 70600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 50),
  -- Goodra - Confide - TM100
  (706, 70600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 51),
  -- Goodra - Strength - HM04
  (706, 70600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 52),
  -- Goodra - Draco Meteor - Tutor
  (706, 70600, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 53),
  -- Klefki - Tackle - Level 1
  (707, 70700, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Klefki - Fairy Lock - Level 1
  (707, 70700, 587, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Klefki - Fairy Wind - Level 5
  (707, 70700, 584, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Klefki - Astonish - Level 8
  (707, 70700, 310, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Klefki - Metal Sound - Level 12
  (707, 70700, 319, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Klefki - Spikes - Level 15
  (707, 70700, 191, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Klefki - Draining Kiss - Level 18
  (707, 70700, 577, 13, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Klefki - Crafty Shield - Level 23
  (707, 70700, 578, 13, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Klefki - Foul Play - Level 27
  (707, 70700, 492, 13, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Klefki - Torment - Level 32
  (707, 70700, 259, 13, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Klefki - Mirror Shot - Level 34
  (707, 70700, 429, 13, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Klefki - Imprison - Level 36
  (707, 70700, 286, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Klefki - Recycle - Level 40
  (707, 70700, 278, 13, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Klefki - Play Rough - Level 43
  (707, 70700, 583, 13, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Klefki - Magic Room - Level 44
  (707, 70700, 478, 13, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Klefki - Heal Block - Level 50
  (707, 70700, 377, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Klefki - Psyshock - TM03
  (707, 70700, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 17),
  -- Klefki - Calm Mind - TM04
  (707, 70700, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 18),
  -- Klefki - Toxic - TM06
  (707, 70700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Klefki - Hidden Power - TM10
  (707, 70700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Klefki - Sunny Day - TM11
  (707, 70700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Klefki - Hyper Beam - TM15
  (707, 70700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 22),
  -- Klefki - Light Screen - TM16
  (707, 70700, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 23),
  -- Klefki - Protect - TM17
  (707, 70700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Klefki - Rain Dance - TM18
  (707, 70700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Klefki - Safeguard - TM20
  (707, 70700, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 26),
  -- Klefki - Frustration - TM21
  (707, 70700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Klefki - Return - TM27
  (707, 70700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Klefki - Psychic - TM29
  (707, 70700, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 29),
  -- Klefki - Double Team - TM32
  (707, 70700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Klefki - Reflect - TM33
  (707, 70700, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 31),
  -- Klefki - Torment - TM41
  (707, 70700, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 32),
  -- Klefki - Facade - TM42
  (707, 70700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 33),
  -- Klefki - Rest - TM44
  (707, 70700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Klefki - Attract - TM45
  (707, 70700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 35),
  -- Klefki - Thief - TM46
  (707, 70700, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 36),
  -- Klefki - Round - TM48
  (707, 70700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Klefki - Giga Impact - TM68
  (707, 70700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 38),
  -- Klefki - Thunder Wave - TM73
  (707, 70700, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 39),
  -- Klefki - Psych Up - TM77
  (707, 70700, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 40),
  -- Klefki - Swagger - TM87
  (707, 70700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 41),
  -- Klefki - Sleep Talk - TM88
  (707, 70700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 42),
  -- Klefki - Substitute - TM90
  (707, 70700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 43),
  -- Klefki - Flash Cannon - TM91
  (707, 70700, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 44),
  -- Klefki - Dazzling Gleam - TM99
  (707, 70700, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 45),
  -- Klefki - Confide - TM100
  (707, 70700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Klefki - Cut - HM01
  (707, 70700, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 47),
  -- Klefki - Thief - Egg
  (707, 70700, 168, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Klefki - Lock-On - Egg
  (707, 70700, 199, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Klefki - Iron Defense - Egg
  (707, 70700, 334, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Klefki - Switcheroo - Egg
  (707, 70700, 415, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Phantump - Tackle - Level 1
  (708, 70800, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Phantump - Confuse Ray - Level 1
  (708, 70800, 109, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Phantump - Astonish - Level 5
  (708, 70800, 310, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Phantump - Growth - Level 8
  (708, 70800, 74, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Phantump - Ingrain - Level 13
  (708, 70800, 275, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Phantump - Feint Attack - Level 19
  (708, 70800, 185, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Phantump - Leech Seed - Level 23
  (708, 70800, 73, 13, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Phantump - Curse - Level 28
  (708, 70800, 174, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Phantump - Will-O-Wisp - Level 31
  (708, 70800, 261, 13, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Phantump - Forest's Curse - Level 35
  (708, 70800, 571, 13, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Phantump - Destiny Bond - Level 39
  (708, 70800, 194, 13, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Phantump - Phantom Force - Level 45
  (708, 70800, 566, 13, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Phantump - Wood Hammer - Level 49
  (708, 70800, 452, 13, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Phantump - Horn Leech - Level 54
  (708, 70800, 532, 13, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Phantump - Toxic - TM06
  (708, 70800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Phantump - Hidden Power - TM10
  (708, 70800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Phantump - Sunny Day - TM11
  (708, 70800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 17),
  -- Phantump - Protect - TM17
  (708, 70800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 18),
  -- Phantump - Safeguard - TM20
  (708, 70800, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 19),
  -- Phantump - Frustration - TM21
  (708, 70800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 20),
  -- Phantump - Solar Beam - TM22
  (708, 70800, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 21),
  -- Phantump - Return - TM27
  (708, 70800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 22),
  -- Phantump - Dig - TM28
  (708, 70800, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 23),
  -- Phantump - Psychic - TM29
  (708, 70800, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 24),
  -- Phantump - Shadow Ball - TM30
  (708, 70800, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 25),
  -- Phantump - Double Team - TM32
  (708, 70800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Phantump - Reflect - TM33
  (708, 70800, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 27),
  -- Phantump - Facade - TM42
  (708, 70800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 28),
  -- Phantump - Rest - TM44
  (708, 70800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 29),
  -- Phantump - Attract - TM45
  (708, 70800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 30),
  -- Phantump - Thief - TM46
  (708, 70800, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 31),
  -- Phantump - Round - TM48
  (708, 70800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 32),
  -- Phantump - Energy Ball - TM53
  (708, 70800, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 33),
  -- Phantump - Will-O-Wisp - TM61
  (708, 70800, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 34),
  -- Phantump - Shadow Claw - TM65
  (708, 70800, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 35),
  -- Phantump - Bulldoze - TM78
  (708, 70800, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 36),
  -- Phantump - Rock Slide - TM80
  (708, 70800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 37),
  -- Phantump - Poison Jab - TM84
  (708, 70800, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 38),
  -- Phantump - Dream Eater - TM85
  (708, 70800, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 39),
  -- Phantump - Grass Knot - TM86
  (708, 70800, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 40),
  -- Phantump - Swagger - TM87
  (708, 70800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 41),
  -- Phantump - Sleep Talk - TM88
  (708, 70800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 42),
  -- Phantump - Substitute - TM90
  (708, 70800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 43),
  -- Phantump - Trick Room - TM92
  (708, 70800, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 44),
  -- Phantump - Rock Smash - TM94
  (708, 70800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 45),
  -- Phantump - Nature Power - TM96
  (708, 70800, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 46),
  -- Phantump - Dark Pulse - TM97
  (708, 70800, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 47),
  -- Phantump - Confide - TM100
  (708, 70800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 48),
  -- Phantump - Cut - HM01
  (708, 70800, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 49),
  -- Phantump - Strength - HM04
  (708, 70800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 50),
  -- Phantump - Imprison - Egg
  (708, 70800, 286, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Phantump - Grudge - Egg
  (708, 70800, 288, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Phantump - Bestow - Egg
  (708, 70800, 516, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Phantump - Venom Drench - Egg
  (708, 70800, 599, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Trevenant - Tackle - Level 1
  (709, 70900, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Trevenant - Confuse Ray - Level 1
  (709, 70900, 109, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Trevenant - Horn Leech - Level 1
  (709, 70900, 532, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Trevenant - Astonish - Level 5
  (709, 70900, 310, 13, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Trevenant - Growth - Level 8
  (709, 70900, 74, 13, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Trevenant - Ingrain - Level 13
  (709, 70900, 275, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Trevenant - Feint Attack - Level 19
  (709, 70900, 185, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Trevenant - Leech Seed - Level 23
  (709, 70900, 73, 13, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Trevenant - Curse - Level 28
  (709, 70900, 174, 13, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Trevenant - Will-O-Wisp - Level 31
  (709, 70900, 261, 13, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Trevenant - Forest's Curse - Level 35
  (709, 70900, 571, 13, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Trevenant - Destiny Bond - Level 39
  (709, 70900, 194, 13, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Trevenant - Phantom Force - Level 45
  (709, 70900, 566, 13, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Trevenant - Wood Hammer - Level 49
  (709, 70900, 452, 13, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Trevenant - Shadow Claw - Level 55
  (709, 70900, 421, 13, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Trevenant - Horn Leech - Level 62
  (709, 70900, 532, 13, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Trevenant - Hone Claws - TM01
  (709, 70900, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 17),
  -- Trevenant - Calm Mind - TM04
  (709, 70900, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 18),
  -- Trevenant - Toxic - TM06
  (709, 70900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Trevenant - Hidden Power - TM10
  (709, 70900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Trevenant - Sunny Day - TM11
  (709, 70900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Trevenant - Hyper Beam - TM15
  (709, 70900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 22),
  -- Trevenant - Protect - TM17
  (709, 70900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Trevenant - Safeguard - TM20
  (709, 70900, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 24),
  -- Trevenant - Frustration - TM21
  (709, 70900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Trevenant - Solar Beam - TM22
  (709, 70900, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 26),
  -- Trevenant - Earthquake - TM26
  (709, 70900, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 27),
  -- Trevenant - Return - TM27
  (709, 70900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Trevenant - Dig - TM28
  (709, 70900, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 29),
  -- Trevenant - Psychic - TM29
  (709, 70900, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 30),
  -- Trevenant - Shadow Ball - TM30
  (709, 70900, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 31),
  -- Trevenant - Double Team - TM32
  (709, 70900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Trevenant - Reflect - TM33
  (709, 70900, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 33),
  -- Trevenant - Facade - TM42
  (709, 70900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Trevenant - Rest - TM44
  (709, 70900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Trevenant - Attract - TM45
  (709, 70900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Trevenant - Thief - TM46
  (709, 70900, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 37),
  -- Trevenant - Round - TM48
  (709, 70900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Trevenant - Focus Blast - TM52
  (709, 70900, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 39),
  -- Trevenant - Energy Ball - TM53
  (709, 70900, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 40),
  -- Trevenant - Will-O-Wisp - TM61
  (709, 70900, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 41),
  -- Trevenant - Shadow Claw - TM65
  (709, 70900, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 42),
  -- Trevenant - Giga Impact - TM68
  (709, 70900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 43),
  -- Trevenant - Bulldoze - TM78
  (709, 70900, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 44),
  -- Trevenant - Rock Slide - TM80
  (709, 70900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 45),
  -- Trevenant - X-Scissor - TM81
  (709, 70900, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 46),
  -- Trevenant - Poison Jab - TM84
  (709, 70900, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 47),
  -- Trevenant - Dream Eater - TM85
  (709, 70900, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 48),
  -- Trevenant - Grass Knot - TM86
  (709, 70900, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 49),
  -- Trevenant - Swagger - TM87
  (709, 70900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 50),
  -- Trevenant - Sleep Talk - TM88
  (709, 70900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 51),
  -- Trevenant - Substitute - TM90
  (709, 70900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 52),
  -- Trevenant - Trick Room - TM92
  (709, 70900, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 53),
  -- Trevenant - Rock Smash - TM94
  (709, 70900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 54),
  -- Trevenant - Nature Power - TM96
  (709, 70900, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 55),
  -- Trevenant - Dark Pulse - TM97
  (709, 70900, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 56),
  -- Trevenant - Power-Up Punch - TM98
  (709, 70900, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 57),
  -- Trevenant - Confide - TM100
  (709, 70900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 58),
  -- Trevenant - Cut - HM01
  (709, 70900, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 59),
  -- Trevenant - Strength - HM04
  (709, 70900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 60),
  -- Pumpkaboo - Confuse Ray - Level 1
  (710, 71000, 109, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pumpkaboo - Trick - Level 1
  (710, 71000, 271, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pumpkaboo - Astonish - Level 1
  (710, 71000, 310, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pumpkaboo - Scary Face - Level 4
  (710, 71000, 184, 13, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Pumpkaboo - Trick-or-Treat - Level 6
  (710, 71000, 567, 13, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Pumpkaboo - Worry Seed - Level 11
  (710, 71000, 388, 13, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Pumpkaboo - Razor Leaf - Level 16
  (710, 71000, 75, 13, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pumpkaboo - Leech Seed - Level 20
  (710, 71000, 73, 13, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Pumpkaboo - Trick-or-Treat - Level 23
  (710, 71000, 567, 13, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Pumpkaboo - Bullet Seed - Level 26
  (710, 71000, 331, 13, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Pumpkaboo - Shadow Sneak - Level 30
  (710, 71000, 425, 13, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Pumpkaboo - Shadow Ball - Level 36
  (710, 71000, 247, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Pumpkaboo - Trick-or-Treat - Level 40
  (710, 71000, 567, 13, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Pumpkaboo - Pain Split - Level 42
  (710, 71000, 220, 13, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Pumpkaboo - Seed Bomb - Level 48
  (710, 71000, 402, 13, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Pumpkaboo - Toxic - TM06
  (710, 71000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Pumpkaboo - Hidden Power - TM10
  (710, 71000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Pumpkaboo - Sunny Day - TM11
  (710, 71000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 18),
  -- Pumpkaboo - Light Screen - TM16
  (710, 71000, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 19),
  -- Pumpkaboo - Protect - TM17
  (710, 71000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Pumpkaboo - Safeguard - TM20
  (710, 71000, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 21),
  -- Pumpkaboo - Frustration - TM21
  (710, 71000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Pumpkaboo - Solar Beam - TM22
  (710, 71000, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 23),
  -- Pumpkaboo - Return - TM27
  (710, 71000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Pumpkaboo - Psychic - TM29
  (710, 71000, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 25),
  -- Pumpkaboo - Shadow Ball - TM30
  (710, 71000, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 26),
  -- Pumpkaboo - Double Team - TM32
  (710, 71000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Pumpkaboo - Flamethrower - TM35
  (710, 71000, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 28),
  -- Pumpkaboo - Sludge Bomb - TM36
  (710, 71000, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 29),
  -- Pumpkaboo - Fire Blast - TM38
  (710, 71000, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 30),
  -- Pumpkaboo - Facade - TM42
  (710, 71000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Pumpkaboo - Flame Charge - TM43
  (710, 71000, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 32),
  -- Pumpkaboo - Rest - TM44
  (710, 71000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Pumpkaboo - Attract - TM45
  (710, 71000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Pumpkaboo - Thief - TM46
  (710, 71000, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 35),
  -- Pumpkaboo - Round - TM48
  (710, 71000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 36),
  -- Pumpkaboo - Energy Ball - TM53
  (710, 71000, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 37),
  -- Pumpkaboo - Charge Beam - TM57
  (710, 71000, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 38),
  -- Pumpkaboo - Incinerate - TM59
  (710, 71000, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 39),
  -- Pumpkaboo - Will-O-Wisp - TM61
  (710, 71000, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 40),
  -- Pumpkaboo - Explosion - TM64
  (710, 71000, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 41),
  -- Pumpkaboo - Flash - TM70
  (710, 71000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 42),
  -- Pumpkaboo - Gyro Ball - TM74
  (710, 71000, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 43),
  -- Pumpkaboo - Rock Slide - TM80
  (710, 71000, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 44),
  -- Pumpkaboo - Dream Eater - TM85
  (710, 71000, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 45),
  -- Pumpkaboo - Grass Knot - TM86
  (710, 71000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 46),
  -- Pumpkaboo - Swagger - TM87
  (710, 71000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Pumpkaboo - Sleep Talk - TM88
  (710, 71000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Pumpkaboo - Substitute - TM90
  (710, 71000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 49),
  -- Pumpkaboo - Trick Room - TM92
  (710, 71000, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 50),
  -- Pumpkaboo - Rock Smash - TM94
  (710, 71000, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 51),
  -- Pumpkaboo - Nature Power - TM96
  (710, 71000, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 52),
  -- Pumpkaboo - Dark Pulse - TM97
  (710, 71000, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 53),
  -- Pumpkaboo - Confide - TM100
  (710, 71000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 54),
  -- Pumpkaboo - Disable - Egg
  (710, 71000, 50, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pumpkaboo - Destiny Bond - Egg
  (710, 71000, 194, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pumpkaboo - Bestow - Egg
  (710, 71000, 516, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gourgeist - Confuse Ray - Level 1
  (711, 71100, 109, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gourgeist - Explosion - Level 1
  (711, 71100, 153, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gourgeist - Trick - Level 1
  (711, 71100, 271, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gourgeist - Astonish - Level 1
  (711, 71100, 310, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gourgeist - Phantom Force - Level 1
  (711, 71100, 566, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gourgeist - Scary Face - Level 4
  (711, 71100, 184, 13, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Gourgeist - Trick-or-Treat - Level 6
  (711, 71100, 567, 13, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Gourgeist - Worry Seed - Level 11
  (711, 71100, 388, 13, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Gourgeist - Razor Leaf - Level 16
  (711, 71100, 75, 13, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gourgeist - Leech Seed - Level 20
  (711, 71100, 73, 13, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Gourgeist - Trick-or-Treat - Level 23
  (711, 71100, 567, 13, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Gourgeist - Bullet Seed - Level 26
  (711, 71100, 331, 13, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Gourgeist - Shadow Sneak - Level 30
  (711, 71100, 425, 13, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Gourgeist - Shadow Ball - Level 36
  (711, 71100, 247, 13, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Gourgeist - Trick-or-Treat - Level 40
  (711, 71100, 567, 13, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Gourgeist - Pain Split - Level 42
  (711, 71100, 220, 13, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Gourgeist - Seed Bomb - Level 48
  (711, 71100, 402, 13, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Gourgeist - Phantom Force - Level 57
  (711, 71100, 566, 13, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Gourgeist - Trick-or-Treat - Level 63
  (711, 71100, 567, 13, NULL, 1, 63, NULL, NULL, NULL, 19),
  -- Gourgeist - Shadow Ball - Level 70
  (711, 71100, 247, 13, NULL, 1, 70, NULL, NULL, NULL, 20),
  -- Gourgeist - Explosion - Level 75
  (711, 71100, 153, 13, NULL, 1, 75, NULL, NULL, NULL, 21),
  -- Gourgeist - Toxic - TM06
  (711, 71100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Gourgeist - Hidden Power - TM10
  (711, 71100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Gourgeist - Sunny Day - TM11
  (711, 71100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 24),
  -- Gourgeist - Hyper Beam - TM15
  (711, 71100, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Gourgeist - Light Screen - TM16
  (711, 71100, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 26),
  -- Gourgeist - Protect - TM17
  (711, 71100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 27),
  -- Gourgeist - Safeguard - TM20
  (711, 71100, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 28),
  -- Gourgeist - Frustration - TM21
  (711, 71100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Gourgeist - Solar Beam - TM22
  (711, 71100, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 30),
  -- Gourgeist - Return - TM27
  (711, 71100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Gourgeist - Psychic - TM29
  (711, 71100, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 32),
  -- Gourgeist - Shadow Ball - TM30
  (711, 71100, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 33),
  -- Gourgeist - Double Team - TM32
  (711, 71100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Gourgeist - Flamethrower - TM35
  (711, 71100, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 35),
  -- Gourgeist - Sludge Bomb - TM36
  (711, 71100, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 36),
  -- Gourgeist - Fire Blast - TM38
  (711, 71100, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 37),
  -- Gourgeist - Facade - TM42
  (711, 71100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 38),
  -- Gourgeist - Flame Charge - TM43
  (711, 71100, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 39),
  -- Gourgeist - Rest - TM44
  (711, 71100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 40),
  -- Gourgeist - Attract - TM45
  (711, 71100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 41),
  -- Gourgeist - Thief - TM46
  (711, 71100, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 42),
  -- Gourgeist - Round - TM48
  (711, 71100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 43),
  -- Gourgeist - Focus Blast - TM52
  (711, 71100, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 44),
  -- Gourgeist - Energy Ball - TM53
  (711, 71100, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 45),
  -- Gourgeist - Charge Beam - TM57
  (711, 71100, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 46),
  -- Gourgeist - Incinerate - TM59
  (711, 71100, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 47),
  -- Gourgeist - Will-O-Wisp - TM61
  (711, 71100, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 48),
  -- Gourgeist - Explosion - TM64
  (711, 71100, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 49),
  -- Gourgeist - Giga Impact - TM68
  (711, 71100, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 50),
  -- Gourgeist - Flash - TM70
  (711, 71100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 51),
  -- Gourgeist - Gyro Ball - TM74
  (711, 71100, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 52),
  -- Gourgeist - Rock Slide - TM80
  (711, 71100, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 53),
  -- Gourgeist - Dream Eater - TM85
  (711, 71100, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 54),
  -- Gourgeist - Grass Knot - TM86
  (711, 71100, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 55),
  -- Gourgeist - Swagger - TM87
  (711, 71100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 56),
  -- Gourgeist - Sleep Talk - TM88
  (711, 71100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 57),
  -- Gourgeist - Substitute - TM90
  (711, 71100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 58),
  -- Gourgeist - Trick Room - TM92
  (711, 71100, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 59),
  -- Gourgeist - Rock Smash - TM94
  (711, 71100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 60),
  -- Gourgeist - Nature Power - TM96
  (711, 71100, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 61),
  -- Gourgeist - Dark Pulse - TM97
  (711, 71100, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 62),
  -- Gourgeist - Confide - TM100
  (711, 71100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 63),
  -- Bergmite - Tackle - Level 1
  (712, 71200, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bergmite - Bite - Level 1
  (712, 71200, 44, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bergmite - Harden - Level 1
  (712, 71200, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bergmite - Powder Snow - Level 5
  (712, 71200, 181, 13, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Bergmite - Icy Wind - Level 10
  (712, 71200, 196, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Bergmite - Take Down - Level 15
  (712, 71200, 36, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Bergmite - Sharpen - Level 20
  (712, 71200, 159, 13, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Bergmite - Curse - Level 22
  (712, 71200, 174, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Bergmite - Ice Fang - Level 26
  (712, 71200, 423, 13, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Bergmite - Ice Ball - Level 30
  (712, 71200, 301, 13, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Bergmite - Rapid Spin - Level 35
  (712, 71200, 229, 13, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Bergmite - Avalanche - Level 39
  (712, 71200, 419, 13, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Bergmite - Blizzard - Level 43
  (712, 71200, 59, 13, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Bergmite - Recover - Level 47
  (712, 71200, 105, 13, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Bergmite - Double-Edge - Level 49
  (712, 71200, 38, 13, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Bergmite - Toxic - TM06
  (712, 71200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Bergmite - Hail - TM07
  (712, 71200, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 17),
  -- Bergmite - Hidden Power - TM10
  (712, 71200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Bergmite - Ice Beam - TM13
  (712, 71200, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 19),
  -- Bergmite - Blizzard - TM14
  (712, 71200, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 20),
  -- Bergmite - Protect - TM17
  (712, 71200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Bergmite - Rain Dance - TM18
  (712, 71200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Bergmite - Safeguard - TM20
  (712, 71200, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 23),
  -- Bergmite - Frustration - TM21
  (712, 71200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Bergmite - Return - TM27
  (712, 71200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Bergmite - Double Team - TM32
  (712, 71200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Bergmite - Rock Tomb - TM39
  (712, 71200, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 27),
  -- Bergmite - Facade - TM42
  (712, 71200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 28),
  -- Bergmite - Rest - TM44
  (712, 71200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 29),
  -- Bergmite - Attract - TM45
  (712, 71200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 30),
  -- Bergmite - Round - TM48
  (712, 71200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 31),
  -- Bergmite - Rock Polish - TM69
  (712, 71200, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 32),
  -- Bergmite - Flash - TM70
  (712, 71200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 33),
  -- Bergmite - Stone Edge - TM71
  (712, 71200, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 34),
  -- Bergmite - Gyro Ball - TM74
  (712, 71200, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 35),
  -- Bergmite - Frost Breath - TM79
  (712, 71200, 524, 13, NULL, 2, NULL, NULL, 13002079, NULL, 36),
  -- Bergmite - Rock Slide - TM80
  (712, 71200, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 37),
  -- Bergmite - Swagger - TM87
  (712, 71200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 38),
  -- Bergmite - Sleep Talk - TM88
  (712, 71200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 39),
  -- Bergmite - Substitute - TM90
  (712, 71200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 40),
  -- Bergmite - Flash Cannon - TM91
  (712, 71200, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 41),
  -- Bergmite - Rock Smash - TM94
  (712, 71200, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 42),
  -- Bergmite - Confide - TM100
  (712, 71200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 43),
  -- Bergmite - Surf - HM03
  (712, 71200, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 44),
  -- Bergmite - Strength - HM04
  (712, 71200, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 45),
  -- Bergmite - Mist - Egg
  (712, 71200, 54, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bergmite - Recover - Egg
  (712, 71200, 105, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bergmite - Barrier - Egg
  (712, 71200, 112, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bergmite - Mirror Coat - Egg
  (712, 71200, 243, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Avalugg - Tackle - Level 1
  (713, 71300, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Avalugg - Bite - Level 1
  (713, 71300, 44, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Avalugg - Harden - Level 1
  (713, 71300, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Avalugg - Skull Bash - Level 1
  (713, 71300, 130, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Avalugg - Crunch - Level 1
  (713, 71300, 242, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Avalugg - Iron Defense - Level 1
  (713, 71300, 334, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Avalugg - Powder Snow - Level 5
  (713, 71300, 181, 13, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Avalugg - Icy Wind - Level 10
  (713, 71300, 196, 13, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Avalugg - Take Down - Level 15
  (713, 71300, 36, 13, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Avalugg - Sharpen - Level 20
  (713, 71300, 159, 13, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Avalugg - Curse - Level 22
  (713, 71300, 174, 13, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Avalugg - Ice Fang - Level 26
  (713, 71300, 423, 13, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Avalugg - Ice Ball - Level 30
  (713, 71300, 301, 13, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Avalugg - Rapid Spin - Level 35
  (713, 71300, 229, 13, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Avalugg - Avalanche - Level 42
  (713, 71300, 419, 13, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Avalugg - Blizzard - Level 46
  (713, 71300, 59, 13, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Avalugg - Recover - Level 51
  (713, 71300, 105, 13, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Avalugg - Double-Edge - Level 56
  (713, 71300, 38, 13, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Avalugg - Skull Bash - Level 60
  (713, 71300, 130, 13, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Avalugg - Crunch - Level 65
  (713, 71300, 242, 13, NULL, 1, 65, NULL, NULL, NULL, 20),
  -- Avalugg - Roar - TM05
  (713, 71300, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 21),
  -- Avalugg - Toxic - TM06
  (713, 71300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Avalugg - Hail - TM07
  (713, 71300, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 23),
  -- Avalugg - Hidden Power - TM10
  (713, 71300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Avalugg - Ice Beam - TM13
  (713, 71300, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 25),
  -- Avalugg - Blizzard - TM14
  (713, 71300, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 26),
  -- Avalugg - Hyper Beam - TM15
  (713, 71300, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 27),
  -- Avalugg - Protect - TM17
  (713, 71300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 28),
  -- Avalugg - Rain Dance - TM18
  (713, 71300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 29),
  -- Avalugg - Safeguard - TM20
  (713, 71300, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 30),
  -- Avalugg - Frustration - TM21
  (713, 71300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 31),
  -- Avalugg - Earthquake - TM26
  (713, 71300, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 32),
  -- Avalugg - Return - TM27
  (713, 71300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Avalugg - Double Team - TM32
  (713, 71300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Avalugg - Rock Tomb - TM39
  (713, 71300, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 35),
  -- Avalugg - Facade - TM42
  (713, 71300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Avalugg - Rest - TM44
  (713, 71300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Avalugg - Attract - TM45
  (713, 71300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Avalugg - Round - TM48
  (713, 71300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Avalugg - Giga Impact - TM68
  (713, 71300, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 40),
  -- Avalugg - Rock Polish - TM69
  (713, 71300, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 41),
  -- Avalugg - Flash - TM70
  (713, 71300, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 42),
  -- Avalugg - Stone Edge - TM71
  (713, 71300, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 43),
  -- Avalugg - Gyro Ball - TM74
  (713, 71300, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 44),
  -- Avalugg - Bulldoze - TM78
  (713, 71300, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 45),
  -- Avalugg - Frost Breath - TM79
  (713, 71300, 524, 13, NULL, 2, NULL, NULL, 13002079, NULL, 46),
  -- Avalugg - Rock Slide - TM80
  (713, 71300, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 47),
  -- Avalugg - Swagger - TM87
  (713, 71300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Avalugg - Sleep Talk - TM88
  (713, 71300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Avalugg - Substitute - TM90
  (713, 71300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 50),
  -- Avalugg - Flash Cannon - TM91
  (713, 71300, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 51),
  -- Avalugg - Rock Smash - TM94
  (713, 71300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 52),
  -- Avalugg - Confide - TM100
  (713, 71300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 53),
  -- Avalugg - Surf - HM03
  (713, 71300, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 54),
  -- Avalugg - Strength - HM04
  (713, 71300, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 55),
  -- Noibat - Tackle - Level 1
  (714, 71400, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Noibat - Supersonic - Level 1
  (714, 71400, 48, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Noibat - Screech - Level 1
  (714, 71400, 103, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Noibat - Leech Life - Level 5
  (714, 71400, 141, 13, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Noibat - Gust - Level 11
  (714, 71400, 16, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Noibat - Bite - Level 13
  (714, 71400, 44, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Noibat - Wing Attack - Level 16
  (714, 71400, 17, 13, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Noibat - Agility - Level 18
  (714, 71400, 97, 13, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Noibat - Air Cutter - Level 23
  (714, 71400, 314, 13, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Noibat - Roost - Level 27
  (714, 71400, 355, 13, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Noibat - Razor Wind - Level 31
  (714, 71400, 13, 13, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Noibat - Tailwind - Level 35
  (714, 71400, 366, 13, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Noibat - Whirlwind - Level 40
  (714, 71400, 18, 13, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Noibat - Super Fang - Level 43
  (714, 71400, 162, 13, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Noibat - Air Slash - Level 48
  (714, 71400, 403, 13, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Noibat - Hurricane - Level 58
  (714, 71400, 542, 13, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Noibat - Toxic - TM06
  (714, 71400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Noibat - Hidden Power - TM10
  (714, 71400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Noibat - Sunny Day - TM11
  (714, 71400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Noibat - Taunt - TM12
  (714, 71400, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 20),
  -- Noibat - Protect - TM17
  (714, 71400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Noibat - Roost - TM19
  (714, 71400, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 22),
  -- Noibat - Frustration - TM21
  (714, 71400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Noibat - Solar Beam - TM22
  (714, 71400, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 24),
  -- Noibat - Return - TM27
  (714, 71400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Noibat - Psychic - TM29
  (714, 71400, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 26),
  -- Noibat - Shadow Ball - TM30
  (714, 71400, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 27),
  -- Noibat - Brick Break - TM31
  (714, 71400, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 28),
  -- Noibat - Double Team - TM32
  (714, 71400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Noibat - Aerial Ace - TM40
  (714, 71400, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 30),
  -- Noibat - Torment - TM41
  (714, 71400, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 31),
  -- Noibat - Facade - TM42
  (714, 71400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Noibat - Rest - TM44
  (714, 71400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Noibat - Attract - TM45
  (714, 71400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Noibat - Thief - TM46
  (714, 71400, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 35),
  -- Noibat - Round - TM48
  (714, 71400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 36),
  -- Noibat - Echoed Voice - TM49
  (714, 71400, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 37),
  -- Noibat - Steel Wing - TM51
  (714, 71400, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 38),
  -- Noibat - Acrobatics - TM62
  (714, 71400, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 39),
  -- Noibat - Shadow Claw - TM65
  (714, 71400, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 40),
  -- Noibat - X-Scissor - TM81
  (714, 71400, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 41),
  -- Noibat - Dream Eater - TM85
  (714, 71400, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 42),
  -- Noibat - Swagger - TM87
  (714, 71400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 43),
  -- Noibat - Sleep Talk - TM88
  (714, 71400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 44),
  -- Noibat - U-turn - TM89
  (714, 71400, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 45),
  -- Noibat - Substitute - TM90
  (714, 71400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 46),
  -- Noibat - Wild Charge - TM93
  (714, 71400, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 47),
  -- Noibat - Dark Pulse - TM97
  (714, 71400, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 48),
  -- Noibat - Confide - TM100
  (714, 71400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 49),
  -- Noibat - Cut - HM01
  (714, 71400, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 50),
  -- Noibat - Fly - HM02
  (714, 71400, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 51),
  -- Noibat - Outrage - Egg
  (714, 71400, 200, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Noibat - Snatch - Egg
  (714, 71400, 289, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Noibat - Tailwind - Egg
  (714, 71400, 366, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Noibat - Switcheroo - Egg
  (714, 71400, 415, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Noibat - Draco Meteor - Tutor
  (714, 71400, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 56),
  -- Noivern - Tackle - Level 1
  (715, 71500, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Noivern - Supersonic - Level 1
  (715, 71500, 48, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Noivern - Screech - Level 1
  (715, 71500, 103, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Noivern - Moonlight - Level 1
  (715, 71500, 236, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Noivern - Dragon Pulse - Level 1
  (715, 71500, 406, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Noivern - Hurricane - Level 1
  (715, 71500, 542, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Noivern - Boomburst - Level 1
  (715, 71500, 586, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Noivern - Leech Life - Level 5
  (715, 71500, 141, 13, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Noivern - Gust - Level 11
  (715, 71500, 16, 13, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Noivern - Bite - Level 13
  (715, 71500, 44, 13, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Noivern - Wing Attack - Level 16
  (715, 71500, 17, 13, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Noivern - Agility - Level 18
  (715, 71500, 97, 13, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Noivern - Air Cutter - Level 23
  (715, 71500, 314, 13, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Noivern - Roost - Level 27
  (715, 71500, 355, 13, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Noivern - Razor Wind - Level 31
  (715, 71500, 13, 13, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Noivern - Tailwind - Level 35
  (715, 71500, 366, 13, NULL, 1, 35, NULL, NULL, NULL, 16),
  -- Noivern - Whirlwind - Level 40
  (715, 71500, 18, 13, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Noivern - Super Fang - Level 43
  (715, 71500, 162, 13, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Noivern - Air Slash - Level 53
  (715, 71500, 403, 13, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Noivern - Hurricane - Level 62
  (715, 71500, 542, 13, NULL, 1, 62, NULL, NULL, NULL, 20),
  -- Noivern - Dragon Pulse - Level 70
  (715, 71500, 406, 13, NULL, 1, 70, NULL, NULL, NULL, 21),
  -- Noivern - Boomburst - Level 75
  (715, 71500, 586, 13, NULL, 1, 75, NULL, NULL, NULL, 22),
  -- Noivern - Hone Claws - TM01
  (715, 71500, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 23),
  -- Noivern - Dragon Claw - TM02
  (715, 71500, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 24),
  -- Noivern - Toxic - TM06
  (715, 71500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 25),
  -- Noivern - Hidden Power - TM10
  (715, 71500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 26),
  -- Noivern - Sunny Day - TM11
  (715, 71500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 27),
  -- Noivern - Taunt - TM12
  (715, 71500, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 28),
  -- Noivern - Hyper Beam - TM15
  (715, 71500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 29),
  -- Noivern - Protect - TM17
  (715, 71500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 30),
  -- Noivern - Roost - TM19
  (715, 71500, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 31),
  -- Noivern - Frustration - TM21
  (715, 71500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 32),
  -- Noivern - Solar Beam - TM22
  (715, 71500, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 33),
  -- Noivern - Return - TM27
  (715, 71500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 34),
  -- Noivern - Psychic - TM29
  (715, 71500, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 35),
  -- Noivern - Shadow Ball - TM30
  (715, 71500, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 36),
  -- Noivern - Brick Break - TM31
  (715, 71500, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 37),
  -- Noivern - Double Team - TM32
  (715, 71500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 38),
  -- Noivern - Flamethrower - TM35
  (715, 71500, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 39),
  -- Noivern - Aerial Ace - TM40
  (715, 71500, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 40),
  -- Noivern - Torment - TM41
  (715, 71500, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 41),
  -- Noivern - Facade - TM42
  (715, 71500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 42),
  -- Noivern - Rest - TM44
  (715, 71500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 43),
  -- Noivern - Attract - TM45
  (715, 71500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 44),
  -- Noivern - Thief - TM46
  (715, 71500, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 45),
  -- Noivern - Round - TM48
  (715, 71500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 46),
  -- Noivern - Echoed Voice - TM49
  (715, 71500, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 47),
  -- Noivern - Steel Wing - TM51
  (715, 71500, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 48),
  -- Noivern - Focus Blast - TM52
  (715, 71500, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 49),
  -- Noivern - Acrobatics - TM62
  (715, 71500, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 50),
  -- Noivern - Shadow Claw - TM65
  (715, 71500, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 51),
  -- Noivern - Giga Impact - TM68
  (715, 71500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 52),
  -- Noivern - X-Scissor - TM81
  (715, 71500, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 53),
  -- Noivern - Dream Eater - TM85
  (715, 71500, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 54),
  -- Noivern - Swagger - TM87
  (715, 71500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 55),
  -- Noivern - Sleep Talk - TM88
  (715, 71500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 56),
  -- Noivern - U-turn - TM89
  (715, 71500, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 57),
  -- Noivern - Substitute - TM90
  (715, 71500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 58),
  -- Noivern - Wild Charge - TM93
  (715, 71500, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 59),
  -- Noivern - Dark Pulse - TM97
  (715, 71500, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 60),
  -- Noivern - Confide - TM100
  (715, 71500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 61),
  -- Noivern - Cut - HM01
  (715, 71500, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 62),
  -- Noivern - Fly - HM02
  (715, 71500, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 63),
  -- Noivern - Draco Meteor - Tutor
  (715, 71500, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 64),
  -- Xerneas - Take Down - Level 1
  (716, 71600, 36, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Xerneas - Ingrain - Level 1
  (716, 71600, 275, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Xerneas - Aromatherapy - Level 1
  (716, 71600, 312, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Xerneas - Heal Pulse - Level 1
  (716, 71600, 505, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Xerneas - Light Screen - Level 5
  (716, 71600, 113, 13, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Xerneas - Aurora Beam - Level 10
  (716, 71600, 62, 13, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Xerneas - Gravity - Level 18
  (716, 71600, 356, 13, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Xerneas - Geomancy - Level 26
  (716, 71600, 601, 13, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Xerneas - Moonblast - Level 35
  (716, 71600, 585, 13, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Xerneas - Megahorn - Level 44
  (716, 71600, 224, 13, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Xerneas - Night Slash - Level 51
  (716, 71600, 400, 13, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Xerneas - Horn Leech - Level 55
  (716, 71600, 532, 13, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Xerneas - Psych Up - Level 59
  (716, 71600, 244, 13, NULL, 1, 59, NULL, NULL, NULL, 13),
  -- Xerneas - Misty Terrain - Level 63
  (716, 71600, 581, 13, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Xerneas - Nature Power - Level 72
  (716, 71600, 267, 13, NULL, 1, 72, NULL, NULL, NULL, 15),
  -- Xerneas - Close Combat - Level 80
  (716, 71600, 370, 13, NULL, 1, 80, NULL, NULL, NULL, 16),
  -- Xerneas - Giga Impact - Level 88
  (716, 71600, 416, 13, NULL, 1, 88, NULL, NULL, NULL, 17),
  -- Xerneas - Outrage - Level 93
  (716, 71600, 200, 13, NULL, 1, 93, NULL, NULL, NULL, 18),
  -- Xerneas - Psyshock - TM03
  (716, 71600, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 19),
  -- Xerneas - Calm Mind - TM04
  (716, 71600, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 20),
  -- Xerneas - Roar - TM05
  (716, 71600, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 21),
  -- Xerneas - Toxic - TM06
  (716, 71600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Xerneas - Hail - TM07
  (716, 71600, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 23),
  -- Xerneas - Hidden Power - TM10
  (716, 71600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Xerneas - Sunny Day - TM11
  (716, 71600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 25),
  -- Xerneas - Hyper Beam - TM15
  (716, 71600, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 26),
  -- Xerneas - Light Screen - TM16
  (716, 71600, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 27),
  -- Xerneas - Protect - TM17
  (716, 71600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 28),
  -- Xerneas - Rain Dance - TM18
  (716, 71600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 29),
  -- Xerneas - Frustration - TM21
  (716, 71600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 30),
  -- Xerneas - Thunderbolt - TM24
  (716, 71600, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 31),
  -- Xerneas - Thunder - TM25
  (716, 71600, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 32),
  -- Xerneas - Return - TM27
  (716, 71600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Xerneas - Psychic - TM29
  (716, 71600, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 34),
  -- Xerneas - Double Team - TM32
  (716, 71600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 35),
  -- Xerneas - Reflect - TM33
  (716, 71600, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 36),
  -- Xerneas - Facade - TM42
  (716, 71600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 37),
  -- Xerneas - Rest - TM44
  (716, 71600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 38),
  -- Xerneas - Round - TM48
  (716, 71600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Xerneas - Echoed Voice - TM49
  (716, 71600, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 40),
  -- Xerneas - Focus Blast - TM52
  (716, 71600, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 41),
  -- Xerneas - Giga Impact - TM68
  (716, 71600, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 42),
  -- Xerneas - Flash - TM70
  (716, 71600, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 43),
  -- Xerneas - Thunder Wave - TM73
  (716, 71600, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 44),
  -- Xerneas - Psych Up - TM77
  (716, 71600, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 45),
  -- Xerneas - Rock Slide - TM80
  (716, 71600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 46),
  -- Xerneas - Grass Knot - TM86
  (716, 71600, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 47),
  -- Xerneas - Swagger - TM87
  (716, 71600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Xerneas - Sleep Talk - TM88
  (716, 71600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Xerneas - Substitute - TM90
  (716, 71600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 50),
  -- Xerneas - Flash Cannon - TM91
  (716, 71600, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 51),
  -- Xerneas - Nature Power - TM96
  (716, 71600, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 52),
  -- Xerneas - Dazzling Gleam - TM99
  (716, 71600, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 53),
  -- Xerneas - Confide - TM100
  (716, 71600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 54),
  -- Xerneas - Cut - HM01
  (716, 71600, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 55),
  -- Yveltal - Razor Wind - Level 1
  (717, 71700, 13, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yveltal - Taunt - Level 1
  (717, 71700, 269, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yveltal - Roost - Level 1
  (717, 71700, 355, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Yveltal - Hurricane - Level 1
  (717, 71700, 542, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Yveltal - Double Team - Level 5
  (717, 71700, 104, 13, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Yveltal - Air Slash - Level 10
  (717, 71700, 403, 13, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Yveltal - Snarl - Level 18
  (717, 71700, 555, 13, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Yveltal - Oblivion Wing - Level 26
  (717, 71700, 613, 13, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Yveltal - Disable - Level 35
  (717, 71700, 50, 13, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Yveltal - Dark Pulse - Level 44
  (717, 71700, 399, 13, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Yveltal - Foul Play - Level 51
  (717, 71700, 492, 13, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Yveltal - Phantom Force - Level 55
  (717, 71700, 566, 13, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Yveltal - Psychic - Level 59
  (717, 71700, 94, 13, NULL, 1, 59, NULL, NULL, NULL, 13),
  -- Yveltal - Dragon Rush - Level 63
  (717, 71700, 407, 13, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Yveltal - Focus Blast - Level 72
  (717, 71700, 411, 13, NULL, 1, 72, NULL, NULL, NULL, 15),
  -- Yveltal - Sucker Punch - Level 80
  (717, 71700, 389, 13, NULL, 1, 80, NULL, NULL, NULL, 16),
  -- Yveltal - Hyper Beam - Level 88
  (717, 71700, 63, 13, NULL, 1, 88, NULL, NULL, NULL, 17),
  -- Yveltal - Sky Attack - Level 93
  (717, 71700, 143, 13, NULL, 1, 93, NULL, NULL, NULL, 18),
  -- Yveltal - Hone Claws - TM01
  (717, 71700, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 19),
  -- Yveltal - Dragon Claw - TM02
  (717, 71700, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 20),
  -- Yveltal - Toxic - TM06
  (717, 71700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Yveltal - Hidden Power - TM10
  (717, 71700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Yveltal - Sunny Day - TM11
  (717, 71700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Yveltal - Taunt - TM12
  (717, 71700, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 24),
  -- Yveltal - Hyper Beam - TM15
  (717, 71700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Yveltal - Protect - TM17
  (717, 71700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Yveltal - Rain Dance - TM18
  (717, 71700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Yveltal - Roost - TM19
  (717, 71700, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 28),
  -- Yveltal - Frustration - TM21
  (717, 71700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Yveltal - Return - TM27
  (717, 71700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Yveltal - Psychic - TM29
  (717, 71700, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 31),
  -- Yveltal - Shadow Ball - TM30
  (717, 71700, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 32),
  -- Yveltal - Double Team - TM32
  (717, 71700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Yveltal - Aerial Ace - TM40
  (717, 71700, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 34),
  -- Yveltal - Torment - TM41
  (717, 71700, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 35),
  -- Yveltal - Facade - TM42
  (717, 71700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Yveltal - Rest - TM44
  (717, 71700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Yveltal - Thief - TM46
  (717, 71700, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 38),
  -- Yveltal - Round - TM48
  (717, 71700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Yveltal - Steel Wing - TM51
  (717, 71700, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 40),
  -- Yveltal - Focus Blast - TM52
  (717, 71700, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 41),
  -- Yveltal - Sky Drop - TM58
  (717, 71700, 507, 13, NULL, 2, NULL, NULL, 13002058, NULL, 42),
  -- Yveltal - Acrobatics - TM62
  (717, 71700, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 43),
  -- Yveltal - Embargo - TM63
  (717, 71700, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 44),
  -- Yveltal - Shadow Claw - TM65
  (717, 71700, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 45),
  -- Yveltal - Giga Impact - TM68
  (717, 71700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 46),
  -- Yveltal - Rock Slide - TM80
  (717, 71700, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 47),
  -- Yveltal - Dream Eater - TM85
  (717, 71700, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 48),
  -- Yveltal - Swagger - TM87
  (717, 71700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 49),
  -- Yveltal - Sleep Talk - TM88
  (717, 71700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 50),
  -- Yveltal - U-turn - TM89
  (717, 71700, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 51),
  -- Yveltal - Substitute - TM90
  (717, 71700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 52),
  -- Yveltal - Snarl - TM95
  (717, 71700, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 53),
  -- Yveltal - Dark Pulse - TM97
  (717, 71700, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 54),
  -- Yveltal - Confide - TM100
  (717, 71700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 55),
  -- Yveltal - Cut - HM01
  (717, 71700, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 56),
  -- Yveltal - Fly - HM02
  (717, 71700, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 57),
  -- Zygarde - Bite - Level 1
  (718, 71800, 44, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zygarde - Glare - Level 1
  (718, 71800, 137, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zygarde - Dragon Breath - Level 1
  (718, 71800, 225, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zygarde - Bulldoze - Level 1
  (718, 71800, 523, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zygarde - Safeguard - Level 5
  (718, 71800, 219, 13, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Zygarde - Dig - Level 10
  (718, 71800, 91, 13, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Zygarde - Bind - Level 18
  (718, 71800, 20, 13, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Zygarde - Land's Wrath - Level 26
  (718, 71800, 616, 13, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Zygarde - Sandstorm - Level 35
  (718, 71800, 201, 13, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Zygarde - Haze - Level 44
  (718, 71800, 114, 13, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Zygarde - Crunch - Level 51
  (718, 71800, 242, 13, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Zygarde - Earthquake - Level 55
  (718, 71800, 89, 13, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Zygarde - Camouflage - Level 59
  (718, 71800, 293, 13, NULL, 1, 59, NULL, NULL, NULL, 13),
  -- Zygarde - Dragon Pulse - Level 63
  (718, 71800, 406, 13, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Zygarde - Dragon Dance - Level 72
  (718, 71800, 349, 13, NULL, 1, 72, NULL, NULL, NULL, 15),
  -- Zygarde - Coil - Level 80
  (718, 71800, 489, 13, NULL, 1, 80, NULL, NULL, NULL, 16),
  -- Zygarde - Extreme Speed - Level 88
  (718, 71800, 245, 13, NULL, 1, 88, NULL, NULL, NULL, 17),
  -- Zygarde - Outrage - Level 93
  (718, 71800, 200, 13, NULL, 1, 93, NULL, NULL, NULL, 18),
  -- Zygarde - Toxic - TM06
  (718, 71800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Zygarde - Hidden Power - TM10
  (718, 71800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Zygarde - Sunny Day - TM11
  (718, 71800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Zygarde - Hyper Beam - TM15
  (718, 71800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 22),
  -- Zygarde - Protect - TM17
  (718, 71800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Zygarde - Safeguard - TM20
  (718, 71800, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 24),
  -- Zygarde - Frustration - TM21
  (718, 71800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Zygarde - Earthquake - TM26
  (718, 71800, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 26),
  -- Zygarde - Return - TM27
  (718, 71800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Zygarde - Dig - TM28
  (718, 71800, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 28),
  -- Zygarde - Brick Break - TM31
  (718, 71800, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 29),
  -- Zygarde - Double Team - TM32
  (718, 71800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Zygarde - Sludge Wave - TM34
  (718, 71800, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 31),
  -- Zygarde - Sandstorm - TM37
  (718, 71800, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 32),
  -- Zygarde - Facade - TM42
  (718, 71800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 33),
  -- Zygarde - Rest - TM44
  (718, 71800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Zygarde - Round - TM48
  (718, 71800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Zygarde - Focus Blast - TM52
  (718, 71800, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 36),
  -- Zygarde - Giga Impact - TM68
  (718, 71800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 37),
  -- Zygarde - Stone Edge - TM71
  (718, 71800, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 38),
  -- Zygarde - Bulldoze - TM78
  (718, 71800, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 39),
  -- Zygarde - Rock Slide - TM80
  (718, 71800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 40),
  -- Zygarde - Dragon Tail - TM82
  (718, 71800, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 41),
  -- Zygarde - Grass Knot - TM86
  (718, 71800, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 42),
  -- Zygarde - Swagger - TM87
  (718, 71800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 43),
  -- Zygarde - Sleep Talk - TM88
  (718, 71800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 44),
  -- Zygarde - Substitute - TM90
  (718, 71800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 45),
  -- Zygarde - Rock Smash - TM94
  (718, 71800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 46),
  -- Zygarde - Confide - TM100
  (718, 71800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 47),
  -- Zygarde - Strength - HM04
  (718, 71800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 48),
  -- Zygarde - Draco Meteor - Tutor
  (718, 71800, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 49),
  -- Diancie - Tackle - Level 1
  (719, 71900, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Diancie - Harden - Level 1
  (719, 71900, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Diancie - Rock Throw - Level 5
  (719, 71900, 88, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Diancie - Sharpen - Level 8
  (719, 71900, 159, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Diancie - Smack Down - Level 12
  (719, 71900, 479, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Diancie - Reflect - Level 18
  (719, 71900, 115, 13, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Diancie - Stealth Rock - Level 21
  (719, 71900, 446, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Diancie - Guard Split - Level 27
  (719, 71900, 470, 13, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Diancie - Ancient Power - Level 31
  (719, 71900, 246, 13, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Diancie - Flail - Level 35
  (719, 71900, 175, 13, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Diancie - Skill Swap - Level 40
  (719, 71900, 285, 13, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Diancie - Trick Room - Level 46
  (719, 71900, 433, 13, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Diancie - Stone Edge - Level 49
  (719, 71900, 444, 13, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Diancie - Moonblast - Level 50
  (719, 71900, 585, 13, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Diancie - Diamond Storm - Level 50
  (719, 71900, 591, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Diancie - Light Screen - Level 60
  (719, 71900, 113, 13, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Diancie - Safeguard - Level 70
  (719, 71900, 219, 13, NULL, 1, 70, NULL, NULL, NULL, 17),
  -- Diancie - Psyshock - TM03
  (719, 71900, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 18),
  -- Diancie - Calm Mind - TM04
  (719, 71900, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 19),
  -- Diancie - Toxic - TM06
  (719, 71900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Diancie - Hail - TM07
  (719, 71900, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 21),
  -- Diancie - Hidden Power - TM10
  (719, 71900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Diancie - Sunny Day - TM11
  (719, 71900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Diancie - Hyper Beam - TM15
  (719, 71900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Diancie - Light Screen - TM16
  (719, 71900, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 25),
  -- Diancie - Protect - TM17
  (719, 71900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Diancie - Safeguard - TM20
  (719, 71900, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 27),
  -- Diancie - Frustration - TM21
  (719, 71900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Diancie - Smack Down - TM23
  (719, 71900, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 29),
  -- Diancie - Return - TM27
  (719, 71900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Diancie - Psychic - TM29
  (719, 71900, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 31),
  -- Diancie - Double Team - TM32
  (719, 71900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Diancie - Reflect - TM33
  (719, 71900, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 33),
  -- Diancie - Sandstorm - TM37
  (719, 71900, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 34),
  -- Diancie - Rock Tomb - TM39
  (719, 71900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 35),
  -- Diancie - Facade - TM42
  (719, 71900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Diancie - Rest - TM44
  (719, 71900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Diancie - Round - TM48
  (719, 71900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Diancie - Explosion - TM64
  (719, 71900, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 39),
  -- Diancie - Giga Impact - TM68
  (719, 71900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 40),
  -- Diancie - Rock Polish - TM69
  (719, 71900, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 41),
  -- Diancie - Flash - TM70
  (719, 71900, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 42),
  -- Diancie - Stone Edge - TM71
  (719, 71900, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 43),
  -- Diancie - Gyro Ball - TM74
  (719, 71900, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 44),
  -- Diancie - Psych Up - TM77
  (719, 71900, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 45),
  -- Diancie - Rock Slide - TM80
  (719, 71900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 46),
  -- Diancie - Swagger - TM87
  (719, 71900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Diancie - Sleep Talk - TM88
  (719, 71900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Diancie - Substitute - TM90
  (719, 71900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 49),
  -- Diancie - Trick Room - TM92
  (719, 71900, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 50),
  -- Diancie - Nature Power - TM96
  (719, 71900, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 51),
  -- Diancie - Dazzling Gleam - TM99
  (719, 71900, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 52),
  -- Diancie - Confide - TM100
  (719, 71900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 53),
  -- Hoopa - Confusion - Level 1
  (720, 72000, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hoopa - Destiny Bond - Level 1
  (720, 72000, 194, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hoopa - Trick - Level 1
  (720, 72000, 271, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hoopa - Ally Switch - Level 1
  (720, 72000, 502, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hoopa - Hyperspace Hole - Level 1
  (720, 72000, 593, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hoopa - Astonish - Level 6
  (720, 72000, 310, 13, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Hoopa - Magic Coat - Level 10
  (720, 72000, 277, 13, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Hoopa - Psybeam - Level 15
  (720, 72000, 60, 13, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Hoopa - Light Screen - Level 19
  (720, 72000, 113, 13, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Hoopa - Skill Swap - Level 25
  (720, 72000, 285, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Hoopa - Power Split - Level 29
  (720, 72000, 471, 13, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Hoopa - Guard Split - Level 35
  (720, 72000, 470, 13, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Hoopa - Phantom Force - Level 46
  (720, 72000, 566, 13, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Hoopa - Wonder Room - Level 50
  (720, 72000, 472, 13, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Hoopa - Trick Room - Level 55
  (720, 72000, 433, 13, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Hoopa - Shadow Ball - Level 68
  (720, 72000, 247, 13, NULL, 1, 68, NULL, NULL, NULL, 16),
  -- Hoopa - Psychic - Level 75
  (720, 72000, 94, 13, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Hoopa - Hyperspace Hole - Level 85
  (720, 72000, 593, 13, NULL, 1, 85, NULL, NULL, NULL, 18),
  -- Hoopa - Psyshock - TM03
  (720, 72000, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 19),
  -- Hoopa - Calm Mind - TM04
  (720, 72000, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 20),
  -- Hoopa - Toxic - TM06
  (720, 72000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Hoopa - Hidden Power - TM10
  (720, 72000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Hoopa - Sunny Day - TM11
  (720, 72000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Hoopa - Taunt - TM12
  (720, 72000, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 24),
  -- Hoopa - Hyper Beam - TM15
  (720, 72000, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Hoopa - Light Screen - TM16
  (720, 72000, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 26),
  -- Hoopa - Protect - TM17
  (720, 72000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 27),
  -- Hoopa - Rain Dance - TM18
  (720, 72000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 28),
  -- Hoopa - Safeguard - TM20
  (720, 72000, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 29),
  -- Hoopa - Frustration - TM21
  (720, 72000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 30),
  -- Hoopa - Thunderbolt - TM24
  (720, 72000, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 31),
  -- Hoopa - Return - TM27
  (720, 72000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 32),
  -- Hoopa - Psychic - TM29
  (720, 72000, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 33),
  -- Hoopa - Shadow Ball - TM30
  (720, 72000, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 34),
  -- Hoopa - Brick Break - TM31
  (720, 72000, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 35),
  -- Hoopa - Double Team - TM32
  (720, 72000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 36),
  -- Hoopa - Reflect - TM33
  (720, 72000, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 37),
  -- Hoopa - Torment - TM41
  (720, 72000, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 38),
  -- Hoopa - Facade - TM42
  (720, 72000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 39),
  -- Hoopa - Rest - TM44
  (720, 72000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 40),
  -- Hoopa - Thief - TM46
  (720, 72000, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 41),
  -- Hoopa - Round - TM48
  (720, 72000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 42),
  -- Hoopa - Focus Blast - TM52
  (720, 72000, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 43),
  -- Hoopa - Energy Ball - TM53
  (720, 72000, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 44),
  -- Hoopa - Fling - TM56
  (720, 72000, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 45),
  -- Hoopa - Charge Beam - TM57
  (720, 72000, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 46),
  -- Hoopa - Quash - TM60
  (720, 72000, 511, 13, NULL, 2, NULL, NULL, 13002060, NULL, 47),
  -- Hoopa - Embargo - TM63
  (720, 72000, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 48),
  -- Hoopa - Giga Impact - TM68
  (720, 72000, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 49),
  -- Hoopa - Flash - TM70
  (720, 72000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 50),
  -- Hoopa - Thunder Wave - TM73
  (720, 72000, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 51),
  -- Hoopa - Psych Up - TM77
  (720, 72000, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 52),
  -- Hoopa - Dream Eater - TM85
  (720, 72000, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 53),
  -- Hoopa - Grass Knot - TM86
  (720, 72000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 54),
  -- Hoopa - Swagger - TM87
  (720, 72000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 55),
  -- Hoopa - Sleep Talk - TM88
  (720, 72000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 56),
  -- Hoopa - Substitute - TM90
  (720, 72000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 57),
  -- Hoopa - Trick Room - TM92
  (720, 72000, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 58),
  -- Hoopa - Power-Up Punch - TM98
  (720, 72000, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 59),
  -- Hoopa - Confide - TM100
  (720, 72000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 60),
  -- Volcanion - Take Down - Level 1
  (721, 72100, 36, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Volcanion - Flare Blitz - Level 1
  (721, 72100, 394, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Volcanion - Steam Eruption - Level 1
  (721, 72100, 592, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Volcanion - Mist - Level 8
  (721, 72100, 54, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Volcanion - Haze - Level 11
  (721, 72100, 114, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Volcanion - Flame Charge - Level 15
  (721, 72100, 488, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Volcanion - Water Pulse - Level 21
  (721, 72100, 352, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Volcanion - Stomp - Level 28
  (721, 72100, 23, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Volcanion - Scald - Level 32
  (721, 72100, 503, 13, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Volcanion - Weather Ball - Level 40
  (721, 72100, 311, 13, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Volcanion - Body Slam - Level 46
  (721, 72100, 34, 13, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Volcanion - Hydro Pump - Level 50
  (721, 72100, 56, 13, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Volcanion - Flare Blitz - Level 58
  (721, 72100, 394, 13, NULL, 1, 58, NULL, NULL, NULL, 13),
  -- Volcanion - Overheat - Level 65
  (721, 72100, 315, 13, NULL, 1, 65, NULL, NULL, NULL, 14),
  -- Volcanion - Explosion - Level 76
  (721, 72100, 153, 13, NULL, 1, 76, NULL, NULL, NULL, 15),
  -- Volcanion - Steam Eruption - Level 85
  (721, 72100, 592, 13, NULL, 1, 85, NULL, NULL, NULL, 16),
  -- Volcanion - Roar - TM05
  (721, 72100, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 17),
  -- Volcanion - Toxic - TM06
  (721, 72100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Volcanion - Hidden Power - TM10
  (721, 72100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Volcanion - Sunny Day - TM11
  (721, 72100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Volcanion - Hyper Beam - TM15
  (721, 72100, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 21),
  -- Volcanion - Protect - TM17
  (721, 72100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Volcanion - Frustration - TM21
  (721, 72100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Volcanion - Solar Beam - TM22
  (721, 72100, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 24),
  -- Volcanion - Smack Down - TM23
  (721, 72100, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 25),
  -- Volcanion - Earthquake - TM26
  (721, 72100, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 26),
  -- Volcanion - Return - TM27
  (721, 72100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Volcanion - Brick Break - TM31
  (721, 72100, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 28),
  -- Volcanion - Double Team - TM32
  (721, 72100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Volcanion - Sludge Wave - TM34
  (721, 72100, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 30),
  -- Volcanion - Flamethrower - TM35
  (721, 72100, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 31),
  -- Volcanion - Sludge Bomb - TM36
  (721, 72100, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 32),
  -- Volcanion - Sandstorm - TM37
  (721, 72100, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 33),
  -- Volcanion - Fire Blast - TM38
  (721, 72100, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 34),
  -- Volcanion - Facade - TM42
  (721, 72100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Volcanion - Flame Charge - TM43
  (721, 72100, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 36),
  -- Volcanion - Rest - TM44
  (721, 72100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Volcanion - Round - TM48
  (721, 72100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Volcanion - Overheat - TM50
  (721, 72100, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 39),
  -- Volcanion - Focus Blast - TM52
  (721, 72100, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 40),
  -- Volcanion - Scald - TM55
  (721, 72100, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 41),
  -- Volcanion - Fling - TM56
  (721, 72100, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 42),
  -- Volcanion - Incinerate - TM59
  (721, 72100, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 43),
  -- Volcanion - Will-O-Wisp - TM61
  (721, 72100, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 44),
  -- Volcanion - Explosion - TM64
  (721, 72100, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 45),
  -- Volcanion - Giga Impact - TM68
  (721, 72100, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 46),
  -- Volcanion - Stone Edge - TM71
  (721, 72100, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 47),
  -- Volcanion - Gyro Ball - TM74
  (721, 72100, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 48),
  -- Volcanion - Bulldoze - TM78
  (721, 72100, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 49),
  -- Volcanion - Rock Slide - TM80
  (721, 72100, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 50),
  -- Volcanion - Swagger - TM87
  (721, 72100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 51),
  -- Volcanion - Sleep Talk - TM88
  (721, 72100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 52),
  -- Volcanion - Substitute - TM90
  (721, 72100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 53),
  -- Volcanion - Flash Cannon - TM91
  (721, 72100, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 54),
  -- Volcanion - Rock Smash - TM94
  (721, 72100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 55),
  -- Volcanion - Confide - TM100
  (721, 72100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 56),
  -- Volcanion - Cut - HM01
  (721, 72100, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 57),
  -- Volcanion - Strength - HM04
  (721, 72100, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 58);
