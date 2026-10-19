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
-- Ultra Sun / Ultra Moon learnsets for default forms, species 051-100.
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
  -- Dugtrio - Scratch - Level 1
  (51, 5100, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dugtrio - Sand Attack - Level 1
  (51, 5100, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dugtrio - Growl - Level 1
  (51, 5100, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dugtrio - Tri Attack - Level 1
  (51, 5100, 161, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dugtrio - Sand Tomb - Level 1
  (51, 5100, 328, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dugtrio - Night Slash - Level 1
  (51, 5100, 400, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dugtrio - Rototiller - Level 1
  (51, 5100, 563, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dugtrio - Growl - Level 4
  (51, 5100, 45, 16, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Dugtrio - Astonish - Level 7
  (51, 5100, 310, 16, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Dugtrio - Mud-Slap - Level 10
  (51, 5100, 189, 16, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Dugtrio - Magnitude - Level 14
  (51, 5100, 222, 16, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Dugtrio - Bulldoze - Level 18
  (51, 5100, 523, 16, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Dugtrio - Sucker Punch - Level 22
  (51, 5100, 389, 16, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Dugtrio - Mud Bomb - Level 25
  (51, 5100, 426, 16, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Dugtrio - Earth Power - Level 30
  (51, 5100, 414, 16, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Dugtrio - Dig - Level 35
  (51, 5100, 91, 16, NULL, 1, 35, NULL, NULL, NULL, 16),
  -- Dugtrio - Slash - Level 41
  (51, 5100, 163, 16, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Dugtrio - Earthquake - Level 47
  (51, 5100, 89, 16, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Dugtrio - Fissure - Level 53
  (51, 5100, 90, 16, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Dugtrio - Toxic - TM06
  (51, 5100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Dugtrio - Hidden Power - TM10
  (51, 5100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Dugtrio - Sunny Day - TM11
  (51, 5100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Dugtrio - Hyper Beam - TM15
  (51, 5100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Dugtrio - Protect - TM17
  (51, 5100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Dugtrio - Frustration - TM21
  (51, 5100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Dugtrio - Earthquake - TM26
  (51, 5100, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 26),
  -- Dugtrio - Return - TM27
  (51, 5100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Dugtrio - Double Team - TM32
  (51, 5100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Dugtrio - Sludge Wave - TM34
  (51, 5100, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 29),
  -- Dugtrio - Sludge Bomb - TM36
  (51, 5100, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 30),
  -- Dugtrio - Sandstorm - TM37
  (51, 5100, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 31),
  -- Dugtrio - Rock Tomb - TM39
  (51, 5100, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 32),
  -- Dugtrio - Aerial Ace - TM40
  (51, 5100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 33),
  -- Dugtrio - Facade - TM42
  (51, 5100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Dugtrio - Rest - TM44
  (51, 5100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Dugtrio - Attract - TM45
  (51, 5100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Dugtrio - Thief - TM46
  (51, 5100, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 37),
  -- Dugtrio - Round - TM48
  (51, 5100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Dugtrio - Echoed Voice - TM49
  (51, 5100, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 39),
  -- Dugtrio - Shadow Claw - TM65
  (51, 5100, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 40),
  -- Dugtrio - Giga Impact - TM68
  (51, 5100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 41),
  -- Dugtrio - Stone Edge - TM71
  (51, 5100, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 42),
  -- Dugtrio - Bulldoze - TM78
  (51, 5100, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 43),
  -- Dugtrio - Rock Slide - TM80
  (51, 5100, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 44),
  -- Dugtrio - Swagger - TM87
  (51, 5100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Dugtrio - Sleep Talk - TM88
  (51, 5100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Dugtrio - Substitute - TM90
  (51, 5100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Dugtrio - Confide - TM100
  (51, 5100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Dugtrio - Snore - Tutor
  (51, 5100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Dugtrio - Earth Power - Tutor
  (51, 5100, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Dugtrio - Stealth Rock - Tutor
  (51, 5100, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Dugtrio - Stomping Tantrum - Tutor
  (51, 5100, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Dugtrio - Sand Tomb - Evolution
  (51, 5100, 328, 16, NULL, 7, NULL, NULL, NULL, NULL, 53),

  -- Meowth - Scratch - Level 1
  (52, 5200, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowth - Growl - Level 1
  (52, 5200, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowth - Bite - Level 6
  (52, 5200, 44, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Meowth - Fake Out - Level 9
  (52, 5200, 252, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Meowth - Fury Swipes - Level 14
  (52, 5200, 154, 16, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Meowth - Screech - Level 17
  (52, 5200, 103, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Meowth - Feint Attack - Level 22
  (52, 5200, 185, 16, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Meowth - Taunt - Level 25
  (52, 5200, 269, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Meowth - Pay Day - Level 30
  (52, 5200, 6, 16, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Meowth - Slash - Level 33
  (52, 5200, 163, 16, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Meowth - Nasty Plot - Level 38
  (52, 5200, 417, 16, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Meowth - Assurance - Level 41
  (52, 5200, 372, 16, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Meowth - Captivate - Level 46
  (52, 5200, 445, 16, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Meowth - Night Slash - Level 49
  (52, 5200, 400, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Meowth - Feint - Level 50
  (52, 5200, 364, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Meowth - Work Up - TM01
  (52, 5200, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 16),
  -- Meowth - Toxic - TM06
  (52, 5200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Meowth - Hidden Power - TM10
  (52, 5200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Meowth - Sunny Day - TM11
  (52, 5200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Meowth - Taunt - TM12
  (52, 5200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 20),
  -- Meowth - Protect - TM17
  (52, 5200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Meowth - Rain Dance - TM18
  (52, 5200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Meowth - Frustration - TM21
  (52, 5200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Meowth - Thunderbolt - TM24
  (52, 5200, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 24),
  -- Meowth - Thunder - TM25
  (52, 5200, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 25),
  -- Meowth - Return - TM27
  (52, 5200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Meowth - Shadow Ball - TM30
  (52, 5200, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Meowth - Double Team - TM32
  (52, 5200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Meowth - Aerial Ace - TM40
  (52, 5200, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 29),
  -- Meowth - Torment - TM41
  (52, 5200, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 30),
  -- Meowth - Facade - TM42
  (52, 5200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Meowth - Rest - TM44
  (52, 5200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Meowth - Attract - TM45
  (52, 5200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Meowth - Thief - TM46
  (52, 5200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 34),
  -- Meowth - Round - TM48
  (52, 5200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Meowth - Echoed Voice - TM49
  (52, 5200, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 36),
  -- Meowth - Shadow Claw - TM65
  (52, 5200, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 37),
  -- Meowth - Payback - TM66
  (52, 5200, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 38),
  -- Meowth - Psych Up - TM77
  (52, 5200, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 39),
  -- Meowth - Dream Eater - TM85
  (52, 5200, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 40),
  -- Meowth - Swagger - TM87
  (52, 5200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 41),
  -- Meowth - Sleep Talk - TM88
  (52, 5200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 42),
  -- Meowth - U-turn - TM89
  (52, 5200, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 43),
  -- Meowth - Substitute - TM90
  (52, 5200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Meowth - Dark Pulse - TM97
  (52, 5200, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 45),
  -- Meowth - Confide - TM100
  (52, 5200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Meowth - Tail Whip - Egg
  (52, 5200, 39, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Meowth - Hypnosis - Egg
  (52, 5200, 95, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Meowth - Amnesia - Egg
  (52, 5200, 133, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Meowth - Flail - Egg
  (52, 5200, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Meowth - Spite - Egg
  (52, 5200, 180, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Meowth - Charm - Egg
  (52, 5200, 204, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Meowth - Iron Tail - Egg
  (52, 5200, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Meowth - Assist - Egg
  (52, 5200, 274, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Meowth - Snatch - Egg
  (52, 5200, 289, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Meowth - Odor Sleuth - Egg
  (52, 5200, 316, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Meowth - Punishment - Egg
  (52, 5200, 386, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Meowth - Last Resort - Egg
  (52, 5200, 387, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Meowth - Foul Play - Egg
  (52, 5200, 492, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Meowth - Snore - Tutor
  (52, 5200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Meowth - Spite - Tutor
  (52, 5200, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Meowth - Icy Wind - Tutor
  (52, 5200, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Meowth - Iron Tail - Tutor
  (52, 5200, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Meowth - Uproar - Tutor
  (52, 5200, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Meowth - Knock Off - Tutor
  (52, 5200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Meowth - Snatch - Tutor
  (52, 5200, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Meowth - Hyper Voice - Tutor
  (52, 5200, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Meowth - Covet - Tutor
  (52, 5200, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Meowth - Shock Wave - Tutor
  (52, 5200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Meowth - Water Pulse - Tutor
  (52, 5200, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Meowth - Last Resort - Tutor
  (52, 5200, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Meowth - Seed Bomb - Tutor
  (52, 5200, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Meowth - Gunk Shot - Tutor
  (52, 5200, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Meowth - Foul Play - Tutor
  (52, 5200, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Meowth - Throat Chop - Tutor
  (52, 5200, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),

  -- Persian - Scratch - Level 1
  (53, 5300, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Persian - Bite - Level 1
  (53, 5300, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Persian - Growl - Level 1
  (53, 5300, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Persian - Swift - Level 1
  (53, 5300, 129, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Persian - Fake Out - Level 1
  (53, 5300, 252, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Persian - Switcheroo - Level 1
  (53, 5300, 415, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Persian - Play Rough - Level 1
  (53, 5300, 583, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Persian - Bite - Level 6
  (53, 5300, 44, 16, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Persian - Fake Out - Level 9
  (53, 5300, 252, 16, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Persian - Fury Swipes - Level 14
  (53, 5300, 154, 16, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Persian - Screech - Level 17
  (53, 5300, 103, 16, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Persian - Feint Attack - Level 22
  (53, 5300, 185, 16, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Persian - Taunt - Level 25
  (53, 5300, 269, 16, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Persian - Power Gem - Level 32
  (53, 5300, 408, 16, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Persian - Slash - Level 37
  (53, 5300, 163, 16, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Persian - Nasty Plot - Level 44
  (53, 5300, 417, 16, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Persian - Assurance - Level 49
  (53, 5300, 372, 16, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Persian - Captivate - Level 56
  (53, 5300, 445, 16, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Persian - Night Slash - Level 61
  (53, 5300, 400, 16, NULL, 1, 61, NULL, NULL, NULL, 19),
  -- Persian - Feint - Level 65
  (53, 5300, 364, 16, NULL, 1, 65, NULL, NULL, NULL, 20),
  -- Persian - Work Up - TM01
  (53, 5300, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 21),
  -- Persian - Roar - TM05
  (53, 5300, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 22),
  -- Persian - Toxic - TM06
  (53, 5300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Persian - Hidden Power - TM10
  (53, 5300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Persian - Sunny Day - TM11
  (53, 5300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Persian - Taunt - TM12
  (53, 5300, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 26),
  -- Persian - Hyper Beam - TM15
  (53, 5300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 27),
  -- Persian - Protect - TM17
  (53, 5300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Persian - Rain Dance - TM18
  (53, 5300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 29),
  -- Persian - Frustration - TM21
  (53, 5300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 30),
  -- Persian - Thunderbolt - TM24
  (53, 5300, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 31),
  -- Persian - Thunder - TM25
  (53, 5300, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 32),
  -- Persian - Return - TM27
  (53, 5300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Persian - Shadow Ball - TM30
  (53, 5300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 34),
  -- Persian - Double Team - TM32
  (53, 5300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Persian - Aerial Ace - TM40
  (53, 5300, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 36),
  -- Persian - Torment - TM41
  (53, 5300, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 37),
  -- Persian - Facade - TM42
  (53, 5300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Persian - Rest - TM44
  (53, 5300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Persian - Attract - TM45
  (53, 5300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Persian - Thief - TM46
  (53, 5300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 41),
  -- Persian - Round - TM48
  (53, 5300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Persian - Echoed Voice - TM49
  (53, 5300, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 43),
  -- Persian - Embargo - TM63
  (53, 5300, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 44),
  -- Persian - Shadow Claw - TM65
  (53, 5300, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 45),
  -- Persian - Payback - TM66
  (53, 5300, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 46),
  -- Persian - Giga Impact - TM68
  (53, 5300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 47),
  -- Persian - Psych Up - TM77
  (53, 5300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 48),
  -- Persian - Dream Eater - TM85
  (53, 5300, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 49),
  -- Persian - Swagger - TM87
  (53, 5300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 50),
  -- Persian - Sleep Talk - TM88
  (53, 5300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 51),
  -- Persian - U-turn - TM89
  (53, 5300, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 52),
  -- Persian - Substitute - TM90
  (53, 5300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 53),
  -- Persian - Dark Pulse - TM97
  (53, 5300, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 54),
  -- Persian - Confide - TM100
  (53, 5300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 55),
  -- Persian - Snore - Tutor
  (53, 5300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Persian - Spite - Tutor
  (53, 5300, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Persian - Icy Wind - Tutor
  (53, 5300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Persian - Iron Tail - Tutor
  (53, 5300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Persian - Uproar - Tutor
  (53, 5300, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Persian - Knock Off - Tutor
  (53, 5300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Persian - Snatch - Tutor
  (53, 5300, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Persian - Hyper Voice - Tutor
  (53, 5300, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Persian - Covet - Tutor
  (53, 5300, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Persian - Shock Wave - Tutor
  (53, 5300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Persian - Water Pulse - Tutor
  (53, 5300, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Persian - Last Resort - Tutor
  (53, 5300, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Persian - Seed Bomb - Tutor
  (53, 5300, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Persian - Gunk Shot - Tutor
  (53, 5300, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Persian - Foul Play - Tutor
  (53, 5300, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Persian - Throat Chop - Tutor
  (53, 5300, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Persian - Swift - Evolution
  (53, 5300, 129, 16, NULL, 7, NULL, NULL, NULL, NULL, 72),

  -- Psyduck - Scratch - Level 1
  (54, 5400, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Psyduck - Water Sport - Level 1
  (54, 5400, 346, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Psyduck - Tail Whip - Level 4
  (54, 5400, 39, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Psyduck - Water Gun - Level 7
  (54, 5400, 55, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Psyduck - Confusion - Level 10
  (54, 5400, 93, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Psyduck - Fury Swipes - Level 13
  (54, 5400, 154, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Psyduck - Water Pulse - Level 16
  (54, 5400, 352, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Psyduck - Disable - Level 19
  (54, 5400, 50, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Psyduck - Screech - Level 22
  (54, 5400, 103, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Psyduck - Zen Headbutt - Level 25
  (54, 5400, 428, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Psyduck - Aqua Tail - Level 28
  (54, 5400, 401, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Psyduck - Soak - Level 31
  (54, 5400, 487, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Psyduck - Psych Up - Level 34
  (54, 5400, 244, 16, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Psyduck - Amnesia - Level 37
  (54, 5400, 133, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Psyduck - Hydro Pump - Level 40
  (54, 5400, 56, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Psyduck - Wonder Room - Level 43
  (54, 5400, 472, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Psyduck - Psyshock - TM03
  (54, 5400, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 17),
  -- Psyduck - Calm Mind - TM04
  (54, 5400, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 18),
  -- Psyduck - Toxic - TM06
  (54, 5400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Psyduck - Hail - TM07
  (54, 5400, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 20),
  -- Psyduck - Hidden Power - TM10
  (54, 5400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Psyduck - Ice Beam - TM13
  (54, 5400, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 22),
  -- Psyduck - Blizzard - TM14
  (54, 5400, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 23),
  -- Psyduck - Light Screen - TM16
  (54, 5400, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 24),
  -- Psyduck - Protect - TM17
  (54, 5400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Psyduck - Rain Dance - TM18
  (54, 5400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Psyduck - Frustration - TM21
  (54, 5400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Psyduck - Return - TM27
  (54, 5400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Psyduck - Psychic - TM29
  (54, 5400, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 29),
  -- Psyduck - Brick Break - TM31
  (54, 5400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 30),
  -- Psyduck - Double Team - TM32
  (54, 5400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Psyduck - Aerial Ace - TM40
  (54, 5400, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Psyduck - Facade - TM42
  (54, 5400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Psyduck - Rest - TM44
  (54, 5400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Psyduck - Attract - TM45
  (54, 5400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Psyduck - Round - TM48
  (54, 5400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Psyduck - Scald - TM55
  (54, 5400, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 37),
  -- Psyduck - Fling - TM56
  (54, 5400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 38),
  -- Psyduck - Shadow Claw - TM65
  (54, 5400, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 39),
  -- Psyduck - Psych Up - TM77
  (54, 5400, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 40),
  -- Psyduck - Swagger - TM87
  (54, 5400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 41),
  -- Psyduck - Sleep Talk - TM88
  (54, 5400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 42),
  -- Psyduck - Substitute - TM90
  (54, 5400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 43),
  -- Psyduck - Surf - TM94
  (54, 5400, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 44),
  -- Psyduck - Waterfall - TM98
  (54, 5400, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 45),
  -- Psyduck - Confide - TM100
  (54, 5400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Psyduck - Psybeam - Egg
  (54, 5400, 60, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Psyduck - Hypnosis - Egg
  (54, 5400, 95, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Psyduck - Confuse Ray - Egg
  (54, 5400, 109, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Psyduck - Foresight - Egg
  (54, 5400, 193, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Psyduck - Sleep Talk - Egg
  (54, 5400, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Psyduck - Encore - Egg
  (54, 5400, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Psyduck - Cross Chop - Egg
  (54, 5400, 238, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Psyduck - Future Sight - Egg
  (54, 5400, 248, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Psyduck - Yawn - Egg
  (54, 5400, 281, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Psyduck - Refresh - Egg
  (54, 5400, 287, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Psyduck - Secret Power - Egg
  (54, 5400, 290, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Psyduck - Mud Bomb - Egg
  (54, 5400, 426, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Psyduck - Synchronoise - Egg
  (54, 5400, 485, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Psyduck - Simple Beam - Egg
  (54, 5400, 493, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Psyduck - Clear Smog - Egg
  (54, 5400, 499, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Psyduck - Ice Punch - Tutor
  (54, 5400, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Psyduck - Snore - Tutor
  (54, 5400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Psyduck - Icy Wind - Tutor
  (54, 5400, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Psyduck - Iron Tail - Tutor
  (54, 5400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Psyduck - Focus Punch - Tutor
  (54, 5400, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Psyduck - Role Play - Tutor
  (54, 5400, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Psyduck - Signal Beam - Tutor
  (54, 5400, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Psyduck - Water Pulse - Tutor
  (54, 5400, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Psyduck - Worry Seed - Tutor
  (54, 5400, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Psyduck - Aqua Tail - Tutor
  (54, 5400, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Psyduck - Zen Headbutt - Tutor
  (54, 5400, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Psyduck - Wonder Room - Tutor
  (54, 5400, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Psyduck - Telekinesis - Tutor
  (54, 5400, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),

  -- Golduck - Scratch - Level 1
  (55, 5500, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golduck - Tail Whip - Level 1
  (55, 5500, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golduck - Water Gun - Level 1
  (55, 5500, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golduck - Water Sport - Level 1
  (55, 5500, 346, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golduck - Me First - Level 1
  (55, 5500, 382, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Golduck - Aqua Jet - Level 1
  (55, 5500, 453, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Golduck - Tail Whip - Level 4
  (55, 5500, 39, 16, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Golduck - Water Gun - Level 7
  (55, 5500, 55, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Golduck - Confusion - Level 10
  (55, 5500, 93, 16, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Golduck - Fury Swipes - Level 13
  (55, 5500, 154, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Golduck - Water Pulse - Level 16
  (55, 5500, 352, 16, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Golduck - Disable - Level 19
  (55, 5500, 50, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Golduck - Screech - Level 22
  (55, 5500, 103, 16, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Golduck - Zen Headbutt - Level 25
  (55, 5500, 428, 16, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Golduck - Aqua Tail - Level 28
  (55, 5500, 401, 16, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Golduck - Soak - Level 31
  (55, 5500, 487, 16, NULL, 1, 31, NULL, NULL, NULL, 16),
  -- Golduck - Psych Up - Level 36
  (55, 5500, 244, 16, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Golduck - Amnesia - Level 41
  (55, 5500, 133, 16, NULL, 1, 41, NULL, NULL, NULL, 18),
  -- Golduck - Hydro Pump - Level 46
  (55, 5500, 56, 16, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Golduck - Wonder Room - Level 51
  (55, 5500, 472, 16, NULL, 1, 51, NULL, NULL, NULL, 20),
  -- Golduck - Psyshock - TM03
  (55, 5500, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 21),
  -- Golduck - Calm Mind - TM04
  (55, 5500, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 22),
  -- Golduck - Toxic - TM06
  (55, 5500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Golduck - Hail - TM07
  (55, 5500, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 24),
  -- Golduck - Hidden Power - TM10
  (55, 5500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Golduck - Ice Beam - TM13
  (55, 5500, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 26),
  -- Golduck - Blizzard - TM14
  (55, 5500, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 27),
  -- Golduck - Hyper Beam - TM15
  (55, 5500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 28),
  -- Golduck - Light Screen - TM16
  (55, 5500, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 29),
  -- Golduck - Protect - TM17
  (55, 5500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 30),
  -- Golduck - Rain Dance - TM18
  (55, 5500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 31),
  -- Golduck - Frustration - TM21
  (55, 5500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Golduck - Return - TM27
  (55, 5500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Golduck - Psychic - TM29
  (55, 5500, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 34),
  -- Golduck - Brick Break - TM31
  (55, 5500, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 35),
  -- Golduck - Double Team - TM32
  (55, 5500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Golduck - Aerial Ace - TM40
  (55, 5500, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 37),
  -- Golduck - Facade - TM42
  (55, 5500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Golduck - Rest - TM44
  (55, 5500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Golduck - Attract - TM45
  (55, 5500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Golduck - Low Sweep - TM47
  (55, 5500, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 41),
  -- Golduck - Round - TM48
  (55, 5500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Golduck - Focus Blast - TM52
  (55, 5500, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 43),
  -- Golduck - Scald - TM55
  (55, 5500, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 44),
  -- Golduck - Fling - TM56
  (55, 5500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 45),
  -- Golduck - Shadow Claw - TM65
  (55, 5500, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 46),
  -- Golduck - Giga Impact - TM68
  (55, 5500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 47),
  -- Golduck - Psych Up - TM77
  (55, 5500, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 48),
  -- Golduck - Swagger - TM87
  (55, 5500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Golduck - Sleep Talk - TM88
  (55, 5500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Golduck - Substitute - TM90
  (55, 5500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Golduck - Surf - TM94
  (55, 5500, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 52),
  -- Golduck - Waterfall - TM98
  (55, 5500, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 53),
  -- Golduck - Confide - TM100
  (55, 5500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Golduck - Ice Punch - Tutor
  (55, 5500, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Golduck - Low Kick - Tutor
  (55, 5500, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Golduck - Snore - Tutor
  (55, 5500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Golduck - Icy Wind - Tutor
  (55, 5500, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Golduck - Iron Tail - Tutor
  (55, 5500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Golduck - Focus Punch - Tutor
  (55, 5500, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Golduck - Role Play - Tutor
  (55, 5500, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Golduck - Signal Beam - Tutor
  (55, 5500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Golduck - Water Pulse - Tutor
  (55, 5500, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Golduck - Worry Seed - Tutor
  (55, 5500, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Golduck - Aqua Tail - Tutor
  (55, 5500, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Golduck - Zen Headbutt - Tutor
  (55, 5500, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Golduck - Wonder Room - Tutor
  (55, 5500, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Golduck - Telekinesis - Tutor
  (55, 5500, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Golduck - Laser Focus - Tutor
  (55, 5500, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Golduck - Liquidation - Tutor
  (55, 5500, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),

  -- Mankey - Scratch - Level 1
  (56, 5600, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mankey - Leer - Level 1
  (56, 5600, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mankey - Low Kick - Level 1
  (56, 5600, 67, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mankey - Focus Energy - Level 1
  (56, 5600, 116, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mankey - Covet - Level 1
  (56, 5600, 343, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mankey - Fury Swipes - Level 5
  (56, 5600, 154, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Mankey - Karate Chop - Level 8
  (56, 5600, 2, 16, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Mankey - Pursuit - Level 12
  (56, 5600, 228, 16, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Mankey - Seismic Toss - Level 15
  (56, 5600, 69, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Mankey - Swagger - Level 19
  (56, 5600, 207, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Mankey - Cross Chop - Level 22
  (56, 5600, 238, 16, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Mankey - Assurance - Level 26
  (56, 5600, 372, 16, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Mankey - Punishment - Level 29
  (56, 5600, 386, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Mankey - Thrash - Level 33
  (56, 5600, 37, 16, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Mankey - Close Combat - Level 36
  (56, 5600, 370, 16, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Mankey - Screech - Level 40
  (56, 5600, 103, 16, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Mankey - Stomping Tantrum - Level 43
  (56, 5600, 707, 16, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Mankey - Outrage - Level 47
  (56, 5600, 200, 16, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Mankey - Final Gambit - Level 50
  (56, 5600, 515, 16, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Mankey - Work Up - TM01
  (56, 5600, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 20),
  -- Mankey - Toxic - TM06
  (56, 5600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Mankey - Bulk Up - TM08
  (56, 5600, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 22),
  -- Mankey - Hidden Power - TM10
  (56, 5600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Mankey - Sunny Day - TM11
  (56, 5600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Mankey - Taunt - TM12
  (56, 5600, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 25),
  -- Mankey - Protect - TM17
  (56, 5600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Mankey - Rain Dance - TM18
  (56, 5600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Mankey - Frustration - TM21
  (56, 5600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Mankey - Smack Down - TM23
  (56, 5600, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 29),
  -- Mankey - Thunderbolt - TM24
  (56, 5600, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 30),
  -- Mankey - Thunder - TM25
  (56, 5600, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 31),
  -- Mankey - Earthquake - TM26
  (56, 5600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 32),
  -- Mankey - Return - TM27
  (56, 5600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Mankey - Brick Break - TM31
  (56, 5600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 34),
  -- Mankey - Double Team - TM32
  (56, 5600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Mankey - Rock Tomb - TM39
  (56, 5600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 36),
  -- Mankey - Aerial Ace - TM40
  (56, 5600, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 37),
  -- Mankey - Facade - TM42
  (56, 5600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Mankey - Rest - TM44
  (56, 5600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Mankey - Attract - TM45
  (56, 5600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Mankey - Thief - TM46
  (56, 5600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 41),
  -- Mankey - Low Sweep - TM47
  (56, 5600, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 42),
  -- Mankey - Round - TM48
  (56, 5600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 43),
  -- Mankey - Overheat - TM50
  (56, 5600, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 44),
  -- Mankey - Focus Blast - TM52
  (56, 5600, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 45),
  -- Mankey - Fling - TM56
  (56, 5600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 46),
  -- Mankey - Acrobatics - TM62
  (56, 5600, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 47),
  -- Mankey - Payback - TM66
  (56, 5600, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 48),
  -- Mankey - Bulldoze - TM78
  (56, 5600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 49),
  -- Mankey - Rock Slide - TM80
  (56, 5600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 50),
  -- Mankey - Poison Jab - TM84
  (56, 5600, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 51),
  -- Mankey - Swagger - TM87
  (56, 5600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 52),
  -- Mankey - Sleep Talk - TM88
  (56, 5600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 53),
  -- Mankey - U-turn - TM89
  (56, 5600, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 54),
  -- Mankey - Substitute - TM90
  (56, 5600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 55),
  -- Mankey - Confide - TM100
  (56, 5600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 56),
  -- Mankey - Counter - Egg
  (56, 5600, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Mankey - Meditate - Egg
  (56, 5600, 96, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Mankey - Reversal - Egg
  (56, 5600, 179, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mankey - Foresight - Egg
  (56, 5600, 193, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mankey - Sleep Talk - Egg
  (56, 5600, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mankey - Encore - Egg
  (56, 5600, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Mankey - Beat Up - Egg
  (56, 5600, 251, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Mankey - Focus Punch - Egg
  (56, 5600, 264, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Mankey - Smelling Salts - Egg
  (56, 5600, 265, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Mankey - Revenge - Egg
  (56, 5600, 279, 16, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Mankey - Close Combat - Egg
  (56, 5600, 370, 16, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Mankey - Night Slash - Egg
  (56, 5600, 400, 16, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Mankey - Power Trip - Egg
  (56, 5600, 681, 16, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Mankey - Fire Punch - Tutor
  (56, 5600, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Mankey - Ice Punch - Tutor
  (56, 5600, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Mankey - Thunder Punch - Tutor
  (56, 5600, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Mankey - Low Kick - Tutor
  (56, 5600, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Mankey - Snore - Tutor
  (56, 5600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Mankey - Spite - Tutor
  (56, 5600, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Mankey - Outrage - Tutor
  (56, 5600, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Mankey - Iron Tail - Tutor
  (56, 5600, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Mankey - Uproar - Tutor
  (56, 5600, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Mankey - Focus Punch - Tutor
  (56, 5600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Mankey - Helping Hand - Tutor
  (56, 5600, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Mankey - Role Play - Tutor
  (56, 5600, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Mankey - Endeavor - Tutor
  (56, 5600, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Mankey - Covet - Tutor
  (56, 5600, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Mankey - Seed Bomb - Tutor
  (56, 5600, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Mankey - Gunk Shot - Tutor
  (56, 5600, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Mankey - Dual Chop - Tutor
  (56, 5600, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Mankey - Stomping Tantrum - Tutor
  (56, 5600, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),

  -- Primeape - Scratch - Level 1
  (57, 5700, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Primeape - Leer - Level 1
  (57, 5700, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Primeape - Low Kick - Level 1
  (57, 5700, 67, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Primeape - Rage - Level 1
  (57, 5700, 99, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Primeape - Focus Energy - Level 1
  (57, 5700, 116, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Primeape - Fling - Level 1
  (57, 5700, 374, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Primeape - Final Gambit - Level 1
  (57, 5700, 515, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Primeape - Fury Swipes - Level 5
  (57, 5700, 154, 16, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Primeape - Karate Chop - Level 8
  (57, 5700, 2, 16, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Primeape - Pursuit - Level 12
  (57, 5700, 228, 16, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Primeape - Seismic Toss - Level 15
  (57, 5700, 69, 16, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Primeape - Swagger - Level 19
  (57, 5700, 207, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Primeape - Cross Chop - Level 22
  (57, 5700, 238, 16, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Primeape - Assurance - Level 26
  (57, 5700, 372, 16, NULL, 1, 26, NULL, NULL, NULL, 14),
  -- Primeape - Punishment - Level 30
  (57, 5700, 386, 16, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Primeape - Thrash - Level 35
  (57, 5700, 37, 16, NULL, 1, 35, NULL, NULL, NULL, 16),
  -- Primeape - Close Combat - Level 39
  (57, 5700, 370, 16, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Primeape - Screech - Level 44
  (57, 5700, 103, 16, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Primeape - Stomping Tantrum - Level 48
  (57, 5700, 707, 16, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Primeape - Outrage - Level 53
  (57, 5700, 200, 16, NULL, 1, 53, NULL, NULL, NULL, 20),
  -- Primeape - Final Gambit - Level 57
  (57, 5700, 515, 16, NULL, 1, 57, NULL, NULL, NULL, 21),
  -- Primeape - Work Up - TM01
  (57, 5700, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 22),
  -- Primeape - Toxic - TM06
  (57, 5700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Primeape - Bulk Up - TM08
  (57, 5700, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 24),
  -- Primeape - Hidden Power - TM10
  (57, 5700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Primeape - Sunny Day - TM11
  (57, 5700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 26),
  -- Primeape - Taunt - TM12
  (57, 5700, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 27),
  -- Primeape - Hyper Beam - TM15
  (57, 5700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 28),
  -- Primeape - Protect - TM17
  (57, 5700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Primeape - Rain Dance - TM18
  (57, 5700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 30),
  -- Primeape - Frustration - TM21
  (57, 5700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Primeape - Smack Down - TM23
  (57, 5700, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 32),
  -- Primeape - Thunderbolt - TM24
  (57, 5700, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 33),
  -- Primeape - Thunder - TM25
  (57, 5700, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 34),
  -- Primeape - Earthquake - TM26
  (57, 5700, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 35),
  -- Primeape - Return - TM27
  (57, 5700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 36),
  -- Primeape - Brick Break - TM31
  (57, 5700, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 37),
  -- Primeape - Double Team - TM32
  (57, 5700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 38),
  -- Primeape - Rock Tomb - TM39
  (57, 5700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 39),
  -- Primeape - Aerial Ace - TM40
  (57, 5700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 40),
  -- Primeape - Facade - TM42
  (57, 5700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 41),
  -- Primeape - Rest - TM44
  (57, 5700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 42),
  -- Primeape - Attract - TM45
  (57, 5700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 43),
  -- Primeape - Thief - TM46
  (57, 5700, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 44),
  -- Primeape - Low Sweep - TM47
  (57, 5700, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 45),
  -- Primeape - Round - TM48
  (57, 5700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 46),
  -- Primeape - Overheat - TM50
  (57, 5700, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 47),
  -- Primeape - Focus Blast - TM52
  (57, 5700, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 48),
  -- Primeape - Fling - TM56
  (57, 5700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 49),
  -- Primeape - Acrobatics - TM62
  (57, 5700, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 50),
  -- Primeape - Payback - TM66
  (57, 5700, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 51),
  -- Primeape - Giga Impact - TM68
  (57, 5700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 52),
  -- Primeape - Stone Edge - TM71
  (57, 5700, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 53),
  -- Primeape - Bulldoze - TM78
  (57, 5700, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 54),
  -- Primeape - Rock Slide - TM80
  (57, 5700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 55),
  -- Primeape - Poison Jab - TM84
  (57, 5700, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 56),
  -- Primeape - Swagger - TM87
  (57, 5700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 57),
  -- Primeape - Sleep Talk - TM88
  (57, 5700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 58),
  -- Primeape - U-turn - TM89
  (57, 5700, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 59),
  -- Primeape - Substitute - TM90
  (57, 5700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 60),
  -- Primeape - Confide - TM100
  (57, 5700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 61),
  -- Primeape - Fire Punch - Tutor
  (57, 5700, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Primeape - Ice Punch - Tutor
  (57, 5700, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Primeape - Thunder Punch - Tutor
  (57, 5700, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Primeape - Low Kick - Tutor
  (57, 5700, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Primeape - Snore - Tutor
  (57, 5700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Primeape - Spite - Tutor
  (57, 5700, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Primeape - Outrage - Tutor
  (57, 5700, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Primeape - Iron Tail - Tutor
  (57, 5700, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Primeape - Uproar - Tutor
  (57, 5700, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Primeape - Focus Punch - Tutor
  (57, 5700, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Primeape - Helping Hand - Tutor
  (57, 5700, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Primeape - Role Play - Tutor
  (57, 5700, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Primeape - Endeavor - Tutor
  (57, 5700, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Primeape - Covet - Tutor
  (57, 5700, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Primeape - Seed Bomb - Tutor
  (57, 5700, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Primeape - Gunk Shot - Tutor
  (57, 5700, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Primeape - Dual Chop - Tutor
  (57, 5700, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Primeape - Throat Chop - Tutor
  (57, 5700, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Primeape - Stomping Tantrum - Tutor
  (57, 5700, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Primeape - Rage - Evolution
  (57, 5700, 99, 16, NULL, 7, NULL, NULL, NULL, NULL, 81),

  -- Growlithe - Bite - Level 1
  (58, 5800, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Growlithe - Roar - Level 1
  (58, 5800, 46, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Growlithe - Ember - Level 6
  (58, 5800, 52, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Growlithe - Leer - Level 8
  (58, 5800, 43, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Growlithe - Odor Sleuth - Level 10
  (58, 5800, 316, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Growlithe - Helping Hand - Level 12
  (58, 5800, 270, 16, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Growlithe - Flame Wheel - Level 17
  (58, 5800, 172, 16, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Growlithe - Reversal - Level 19
  (58, 5800, 179, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Growlithe - Fire Fang - Level 21
  (58, 5800, 424, 16, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Growlithe - Take Down - Level 23
  (58, 5800, 36, 16, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Growlithe - Flame Burst - Level 28
  (58, 5800, 481, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Growlithe - Agility - Level 30
  (58, 5800, 97, 16, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Growlithe - Retaliate - Level 32
  (58, 5800, 514, 16, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Growlithe - Flamethrower - Level 34
  (58, 5800, 53, 16, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Growlithe - Crunch - Level 39
  (58, 5800, 242, 16, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Growlithe - Heat Wave - Level 41
  (58, 5800, 257, 16, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Growlithe - Outrage - Level 43
  (58, 5800, 200, 16, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Growlithe - Flare Blitz - Level 45
  (58, 5800, 394, 16, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Growlithe - Roar - TM05
  (58, 5800, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 19),
  -- Growlithe - Toxic - TM06
  (58, 5800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Growlithe - Hidden Power - TM10
  (58, 5800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Growlithe - Sunny Day - TM11
  (58, 5800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Growlithe - Protect - TM17
  (58, 5800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Growlithe - Safeguard - TM20
  (58, 5800, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 24),
  -- Growlithe - Frustration - TM21
  (58, 5800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Growlithe - Return - TM27
  (58, 5800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Growlithe - Double Team - TM32
  (58, 5800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Growlithe - Flamethrower - TM35
  (58, 5800, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 28),
  -- Growlithe - Fire Blast - TM38
  (58, 5800, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 29),
  -- Growlithe - Aerial Ace - TM40
  (58, 5800, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 30),
  -- Growlithe - Facade - TM42
  (58, 5800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Growlithe - Flame Charge - TM43
  (58, 5800, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 32),
  -- Growlithe - Rest - TM44
  (58, 5800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Growlithe - Attract - TM45
  (58, 5800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Growlithe - Thief - TM46
  (58, 5800, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 35),
  -- Growlithe - Round - TM48
  (58, 5800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Growlithe - Overheat - TM50
  (58, 5800, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 37),
  -- Growlithe - Will-O-Wisp - TM61
  (58, 5800, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 38),
  -- Growlithe - Swagger - TM87
  (58, 5800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Growlithe - Sleep Talk - TM88
  (58, 5800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Growlithe - Substitute - TM90
  (58, 5800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Growlithe - Wild Charge - TM93
  (58, 5800, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 42),
  -- Growlithe - Snarl - TM95
  (58, 5800, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 43),
  -- Growlithe - Confide - TM100
  (58, 5800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Growlithe - Double Kick - Egg
  (58, 5800, 24, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Growlithe - Body Slam - Egg
  (58, 5800, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Growlithe - Thrash - Egg
  (58, 5800, 37, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Growlithe - Double-Edge - Egg
  (58, 5800, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Growlithe - Fire Spin - Egg
  (58, 5800, 83, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Growlithe - Iron Tail - Egg
  (58, 5800, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Growlithe - Morning Sun - Egg
  (58, 5800, 234, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Growlithe - Crunch - Egg
  (58, 5800, 242, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Growlithe - Heat Wave - Egg
  (58, 5800, 257, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Growlithe - Howl - Egg
  (58, 5800, 336, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Growlithe - Covet - Egg
  (58, 5800, 343, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Growlithe - Close Combat - Egg
  (58, 5800, 370, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Growlithe - Flare Blitz - Egg
  (58, 5800, 394, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Growlithe - Burn Up - Egg
  (58, 5800, 682, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Growlithe - Snore - Tutor
  (58, 5800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Growlithe - Outrage - Tutor
  (58, 5800, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Growlithe - Iron Tail - Tutor
  (58, 5800, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Growlithe - Heat Wave - Tutor
  (58, 5800, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Growlithe - Helping Hand - Tutor
  (58, 5800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Growlithe - Covet - Tutor
  (58, 5800, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),

  -- Arcanine - Bite - Level 1
  (59, 5900, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arcanine - Roar - Level 1
  (59, 5900, 46, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arcanine - Odor Sleuth - Level 1
  (59, 5900, 316, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arcanine - Thunder Fang - Level 1
  (59, 5900, 422, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arcanine - Fire Fang - Level 1
  (59, 5900, 424, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Arcanine - Extreme Speed - Level 34
  (59, 5900, 245, 16, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Arcanine - Roar - TM05
  (59, 5900, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 7),
  -- Arcanine - Toxic - TM06
  (59, 5900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 8),
  -- Arcanine - Hidden Power - TM10
  (59, 5900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 9),
  -- Arcanine - Sunny Day - TM11
  (59, 5900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 10),
  -- Arcanine - Hyper Beam - TM15
  (59, 5900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 11),
  -- Arcanine - Protect - TM17
  (59, 5900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 12),
  -- Arcanine - Safeguard - TM20
  (59, 5900, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 13),
  -- Arcanine - Frustration - TM21
  (59, 5900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 14),
  -- Arcanine - Solar Beam - TM22
  (59, 5900, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 15),
  -- Arcanine - Return - TM27
  (59, 5900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 16),
  -- Arcanine - Double Team - TM32
  (59, 5900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 17),
  -- Arcanine - Flamethrower - TM35
  (59, 5900, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 18),
  -- Arcanine - Fire Blast - TM38
  (59, 5900, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 19),
  -- Arcanine - Aerial Ace - TM40
  (59, 5900, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 20),
  -- Arcanine - Facade - TM42
  (59, 5900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 21),
  -- Arcanine - Flame Charge - TM43
  (59, 5900, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 22),
  -- Arcanine - Rest - TM44
  (59, 5900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 23),
  -- Arcanine - Attract - TM45
  (59, 5900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 24),
  -- Arcanine - Thief - TM46
  (59, 5900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 25),
  -- Arcanine - Round - TM48
  (59, 5900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 26),
  -- Arcanine - Overheat - TM50
  (59, 5900, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 27),
  -- Arcanine - Will-O-Wisp - TM61
  (59, 5900, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 28),
  -- Arcanine - Giga Impact - TM68
  (59, 5900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 29),
  -- Arcanine - Bulldoze - TM78
  (59, 5900, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 30),
  -- Arcanine - Swagger - TM87
  (59, 5900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 31),
  -- Arcanine - Sleep Talk - TM88
  (59, 5900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 32),
  -- Arcanine - Substitute - TM90
  (59, 5900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 33),
  -- Arcanine - Wild Charge - TM93
  (59, 5900, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 34),
  -- Arcanine - Snarl - TM95
  (59, 5900, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 35),
  -- Arcanine - Confide - TM100
  (59, 5900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 36),
  -- Arcanine - Snore - Tutor
  (59, 5900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 37),
  -- Arcanine - Outrage - Tutor
  (59, 5900, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 38),
  -- Arcanine - Iron Tail - Tutor
  (59, 5900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 39),
  -- Arcanine - Heat Wave - Tutor
  (59, 5900, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Arcanine - Helping Hand - Tutor
  (59, 5900, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Arcanine - Covet - Tutor
  (59, 5900, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Arcanine - Dragon Pulse - Tutor
  (59, 5900, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Arcanine - Iron Head - Tutor
  (59, 5900, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Arcanine - Laser Focus - Tutor
  (59, 5900, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),

  -- Poliwag - Water Sport - Level 1
  (60, 6000, 346, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwag - Water Gun - Level 5
  (60, 6000, 55, 16, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Poliwag - Hypnosis - Level 8
  (60, 6000, 95, 16, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Poliwag - Bubble - Level 11
  (60, 6000, 145, 16, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Poliwag - Double Slap - Level 15
  (60, 6000, 3, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Poliwag - Rain Dance - Level 18
  (60, 6000, 240, 16, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Poliwag - Body Slam - Level 21
  (60, 6000, 34, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Poliwag - Bubble Beam - Level 25
  (60, 6000, 61, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Poliwag - Mud Shot - Level 28
  (60, 6000, 341, 16, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Poliwag - Belly Drum - Level 31
  (60, 6000, 187, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Poliwag - Wake-Up Slap - Level 35
  (60, 6000, 358, 16, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Poliwag - Hydro Pump - Level 38
  (60, 6000, 56, 16, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Poliwag - Mud Bomb - Level 41
  (60, 6000, 426, 16, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Poliwag - Toxic - TM06
  (60, 6000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Poliwag - Hail - TM07
  (60, 6000, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 15),
  -- Poliwag - Hidden Power - TM10
  (60, 6000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Poliwag - Ice Beam - TM13
  (60, 6000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 17),
  -- Poliwag - Blizzard - TM14
  (60, 6000, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 18),
  -- Poliwag - Protect - TM17
  (60, 6000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Poliwag - Rain Dance - TM18
  (60, 6000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 20),
  -- Poliwag - Frustration - TM21
  (60, 6000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 21),
  -- Poliwag - Return - TM27
  (60, 6000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 22),
  -- Poliwag - Psychic - TM29
  (60, 6000, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 23),
  -- Poliwag - Double Team - TM32
  (60, 6000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Poliwag - Facade - TM42
  (60, 6000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 25),
  -- Poliwag - Rest - TM44
  (60, 6000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 26),
  -- Poliwag - Attract - TM45
  (60, 6000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 27),
  -- Poliwag - Thief - TM46
  (60, 6000, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 28),
  -- Poliwag - Round - TM48
  (60, 6000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 29),
  -- Poliwag - Scald - TM55
  (60, 6000, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 30),
  -- Poliwag - Swagger - TM87
  (60, 6000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 31),
  -- Poliwag - Sleep Talk - TM88
  (60, 6000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 32),
  -- Poliwag - Substitute - TM90
  (60, 6000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 33),
  -- Poliwag - Surf - TM94
  (60, 6000, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 34),
  -- Poliwag - Waterfall - TM98
  (60, 6000, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 35),
  -- Poliwag - Confide - TM100
  (60, 6000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 36),
  -- Poliwag - Mist - Egg
  (60, 6000, 54, 16, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Poliwag - Bubble Beam - Egg
  (60, 6000, 61, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Poliwag - Haze - Egg
  (60, 6000, 114, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Poliwag - Splash - Egg
  (60, 6000, 150, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Poliwag - Mind Reader - Egg
  (60, 6000, 170, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Poliwag - Endure - Egg
  (60, 6000, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Poliwag - Encore - Egg
  (60, 6000, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Poliwag - Endeavor - Egg
  (60, 6000, 283, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Poliwag - Refresh - Egg
  (60, 6000, 287, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Poliwag - Ice Ball - Egg
  (60, 6000, 301, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Poliwag - Mud Shot - Egg
  (60, 6000, 341, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Poliwag - Water Sport - Egg
  (60, 6000, 346, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Poliwag - Water Pulse - Egg
  (60, 6000, 352, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Poliwag - Snore - Tutor
  (60, 6000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Poliwag - Icy Wind - Tutor
  (60, 6000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Poliwag - Helping Hand - Tutor
  (60, 6000, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Poliwag - Endeavor - Tutor
  (60, 6000, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Poliwag - Water Pulse - Tutor
  (60, 6000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),

  -- Poliwhirl - Water Gun - Level 1
  (61, 6100, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwhirl - Hypnosis - Level 1
  (61, 6100, 95, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwhirl - Water Sport - Level 1
  (61, 6100, 346, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwhirl - Water Gun - Level 5
  (61, 6100, 55, 16, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Poliwhirl - Hypnosis - Level 8
  (61, 6100, 95, 16, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Poliwhirl - Bubble - Level 11
  (61, 6100, 145, 16, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Poliwhirl - Double Slap - Level 15
  (61, 6100, 3, 16, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Poliwhirl - Rain Dance - Level 18
  (61, 6100, 240, 16, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Poliwhirl - Body Slam - Level 21
  (61, 6100, 34, 16, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Poliwhirl - Bubble Beam - Level 27
  (61, 6100, 61, 16, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Poliwhirl - Mud Shot - Level 32
  (61, 6100, 341, 16, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Poliwhirl - Belly Drum - Level 37
  (61, 6100, 187, 16, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Poliwhirl - Wake-Up Slap - Level 43
  (61, 6100, 358, 16, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Poliwhirl - Hydro Pump - Level 48
  (61, 6100, 56, 16, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Poliwhirl - Mud Bomb - Level 53
  (61, 6100, 426, 16, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Poliwhirl - Toxic - TM06
  (61, 6100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Poliwhirl - Hail - TM07
  (61, 6100, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 17),
  -- Poliwhirl - Hidden Power - TM10
  (61, 6100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Poliwhirl - Ice Beam - TM13
  (61, 6100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 19),
  -- Poliwhirl - Blizzard - TM14
  (61, 6100, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 20),
  -- Poliwhirl - Protect - TM17
  (61, 6100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Poliwhirl - Rain Dance - TM18
  (61, 6100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Poliwhirl - Frustration - TM21
  (61, 6100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Poliwhirl - Earthquake - TM26
  (61, 6100, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 24),
  -- Poliwhirl - Return - TM27
  (61, 6100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Poliwhirl - Psychic - TM29
  (61, 6100, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 26),
  -- Poliwhirl - Brick Break - TM31
  (61, 6100, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 27),
  -- Poliwhirl - Double Team - TM32
  (61, 6100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Poliwhirl - Facade - TM42
  (61, 6100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Poliwhirl - Rest - TM44
  (61, 6100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Poliwhirl - Attract - TM45
  (61, 6100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Poliwhirl - Thief - TM46
  (61, 6100, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 32),
  -- Poliwhirl - Round - TM48
  (61, 6100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Poliwhirl - Scald - TM55
  (61, 6100, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 34),
  -- Poliwhirl - Fling - TM56
  (61, 6100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 35),
  -- Poliwhirl - Bulldoze - TM78
  (61, 6100, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 36),
  -- Poliwhirl - Swagger - TM87
  (61, 6100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Poliwhirl - Sleep Talk - TM88
  (61, 6100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Poliwhirl - Substitute - TM90
  (61, 6100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Poliwhirl - Surf - TM94
  (61, 6100, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 40),
  -- Poliwhirl - Waterfall - TM98
  (61, 6100, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 41),
  -- Poliwhirl - Confide - TM100
  (61, 6100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Poliwhirl - Ice Punch - Tutor
  (61, 6100, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Poliwhirl - Snore - Tutor
  (61, 6100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Poliwhirl - Icy Wind - Tutor
  (61, 6100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Poliwhirl - Focus Punch - Tutor
  (61, 6100, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Poliwhirl - Helping Hand - Tutor
  (61, 6100, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Poliwhirl - Endeavor - Tutor
  (61, 6100, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Poliwhirl - Water Pulse - Tutor
  (61, 6100, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),

  -- Poliwrath - Double Slap - Level 1
  (62, 6200, 3, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwrath - Bubble Beam - Level 1
  (62, 6200, 61, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwrath - Submission - Level 1
  (62, 6200, 66, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwrath - Hypnosis - Level 1
  (62, 6200, 95, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Poliwrath - Circle Throw - Level 1
  (62, 6200, 509, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Poliwrath - Dynamic Punch - Level 32
  (62, 6200, 223, 16, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Poliwrath - Mind Reader - Level 43
  (62, 6200, 170, 16, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Poliwrath - Circle Throw - Level 53
  (62, 6200, 509, 16, NULL, 1, 53, NULL, NULL, NULL, 8),
  -- Poliwrath - Work Up - TM01
  (62, 6200, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 9),
  -- Poliwrath - Toxic - TM06
  (62, 6200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 10),
  -- Poliwrath - Hail - TM07
  (62, 6200, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 11),
  -- Poliwrath - Bulk Up - TM08
  (62, 6200, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 12),
  -- Poliwrath - Hidden Power - TM10
  (62, 6200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 13),
  -- Poliwrath - Ice Beam - TM13
  (62, 6200, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 14),
  -- Poliwrath - Blizzard - TM14
  (62, 6200, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 15),
  -- Poliwrath - Hyper Beam - TM15
  (62, 6200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 16),
  -- Poliwrath - Protect - TM17
  (62, 6200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 17),
  -- Poliwrath - Rain Dance - TM18
  (62, 6200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 18),
  -- Poliwrath - Frustration - TM21
  (62, 6200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 19),
  -- Poliwrath - Earthquake - TM26
  (62, 6200, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 20),
  -- Poliwrath - Return - TM27
  (62, 6200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 21),
  -- Poliwrath - Psychic - TM29
  (62, 6200, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 22),
  -- Poliwrath - Brick Break - TM31
  (62, 6200, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 23),
  -- Poliwrath - Double Team - TM32
  (62, 6200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Poliwrath - Rock Tomb - TM39
  (62, 6200, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 25),
  -- Poliwrath - Facade - TM42
  (62, 6200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 26),
  -- Poliwrath - Rest - TM44
  (62, 6200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 27),
  -- Poliwrath - Attract - TM45
  (62, 6200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 28),
  -- Poliwrath - Thief - TM46
  (62, 6200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 29),
  -- Poliwrath - Low Sweep - TM47
  (62, 6200, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 30),
  -- Poliwrath - Round - TM48
  (62, 6200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Poliwrath - Focus Blast - TM52
  (62, 6200, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 32),
  -- Poliwrath - Scald - TM55
  (62, 6200, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 33),
  -- Poliwrath - Fling - TM56
  (62, 6200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 34),
  -- Poliwrath - Payback - TM66
  (62, 6200, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 35),
  -- Poliwrath - Giga Impact - TM68
  (62, 6200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 36),
  -- Poliwrath - Bulldoze - TM78
  (62, 6200, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 37),
  -- Poliwrath - Rock Slide - TM80
  (62, 6200, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 38),
  -- Poliwrath - Poison Jab - TM84
  (62, 6200, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 39),
  -- Poliwrath - Swagger - TM87
  (62, 6200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Poliwrath - Sleep Talk - TM88
  (62, 6200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Poliwrath - Substitute - TM90
  (62, 6200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Poliwrath - Surf - TM94
  (62, 6200, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 43),
  -- Poliwrath - Waterfall - TM98
  (62, 6200, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 44),
  -- Poliwrath - Confide - TM100
  (62, 6200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 45),
  -- Poliwrath - Ice Punch - Tutor
  (62, 6200, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Poliwrath - Snore - Tutor
  (62, 6200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Poliwrath - Icy Wind - Tutor
  (62, 6200, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Poliwrath - Focus Punch - Tutor
  (62, 6200, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Poliwrath - Helping Hand - Tutor
  (62, 6200, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Poliwrath - Endeavor - Tutor
  (62, 6200, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Poliwrath - Water Pulse - Tutor
  (62, 6200, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Poliwrath - Dual Chop - Tutor
  (62, 6200, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Poliwrath - Throat Chop - Tutor
  (62, 6200, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Poliwrath - Submission - Evolution
  (62, 6200, 66, 16, NULL, 7, NULL, NULL, NULL, NULL, 55),

  -- Abra - Teleport - Level 1
  (63, 6300, 100, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abra - Psyshock - TM03
  (63, 6300, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 2),
  -- Abra - Calm Mind - TM04
  (63, 6300, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 3),
  -- Abra - Toxic - TM06
  (63, 6300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 4),
  -- Abra - Hidden Power - TM10
  (63, 6300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 5),
  -- Abra - Sunny Day - TM11
  (63, 6300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 6),
  -- Abra - Taunt - TM12
  (63, 6300, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 7),
  -- Abra - Light Screen - TM16
  (63, 6300, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 8),
  -- Abra - Protect - TM17
  (63, 6300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 9),
  -- Abra - Rain Dance - TM18
  (63, 6300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 10),
  -- Abra - Safeguard - TM20
  (63, 6300, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 11),
  -- Abra - Frustration - TM21
  (63, 6300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 12),
  -- Abra - Return - TM27
  (63, 6300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 13),
  -- Abra - Psychic - TM29
  (63, 6300, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 14),
  -- Abra - Shadow Ball - TM30
  (63, 6300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 15),
  -- Abra - Double Team - TM32
  (63, 6300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 16),
  -- Abra - Reflect - TM33
  (63, 6300, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 17),
  -- Abra - Torment - TM41
  (63, 6300, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 18),
  -- Abra - Facade - TM42
  (63, 6300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 19),
  -- Abra - Rest - TM44
  (63, 6300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 20),
  -- Abra - Attract - TM45
  (63, 6300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 21),
  -- Abra - Thief - TM46
  (63, 6300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 22),
  -- Abra - Round - TM48
  (63, 6300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 23),
  -- Abra - Energy Ball - TM53
  (63, 6300, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 24),
  -- Abra - Fling - TM56
  (63, 6300, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 25),
  -- Abra - Charge Beam - TM57
  (63, 6300, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 26),
  -- Abra - Embargo - TM63
  (63, 6300, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 27),
  -- Abra - Thunder Wave - TM73
  (63, 6300, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 28),
  -- Abra - Psych Up - TM77
  (63, 6300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 29),
  -- Abra - Dream Eater - TM85
  (63, 6300, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 30),
  -- Abra - Grass Knot - TM86
  (63, 6300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 31),
  -- Abra - Swagger - TM87
  (63, 6300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 32),
  -- Abra - Sleep Talk - TM88
  (63, 6300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 33),
  -- Abra - Substitute - TM90
  (63, 6300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 34),
  -- Abra - Trick Room - TM92
  (63, 6300, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 35),
  -- Abra - Dazzling Gleam - TM99
  (63, 6300, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 36),
  -- Abra - Confide - TM100
  (63, 6300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 37),
  -- Abra - Fire Punch - Egg
  (63, 6300, 7, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Abra - Ice Punch - Egg
  (63, 6300, 8, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Abra - Thunder Punch - Egg
  (63, 6300, 9, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Abra - Barrier - Egg
  (63, 6300, 112, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Abra - Encore - Egg
  (63, 6300, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Abra - Knock Off - Egg
  (63, 6300, 282, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Abra - Skill Swap - Egg
  (63, 6300, 285, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Abra - Psycho Shift - Egg
  (63, 6300, 375, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Abra - Power Trick - Egg
  (63, 6300, 379, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Abra - Guard Swap - Egg
  (63, 6300, 385, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Abra - Guard Split - Egg
  (63, 6300, 470, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Abra - Ally Switch - Egg
  (63, 6300, 502, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Abra - Psychic Terrain - Egg
  (63, 6300, 678, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Abra - Fire Punch - Tutor
  (63, 6300, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Abra - Ice Punch - Tutor
  (63, 6300, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Abra - Thunder Punch - Tutor
  (63, 6300, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Abra - Snore - Tutor
  (63, 6300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Abra - Iron Tail - Tutor
  (63, 6300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Abra - Focus Punch - Tutor
  (63, 6300, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Abra - Trick - Tutor
  (63, 6300, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Abra - Role Play - Tutor
  (63, 6300, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Abra - Magic Coat - Tutor
  (63, 6300, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Abra - Recycle - Tutor
  (63, 6300, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Abra - Knock Off - Tutor
  (63, 6300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Abra - Skill Swap - Tutor
  (63, 6300, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Abra - Snatch - Tutor
  (63, 6300, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Abra - Signal Beam - Tutor
  (63, 6300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Abra - Shock Wave - Tutor
  (63, 6300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Abra - Gravity - Tutor
  (63, 6300, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Abra - Drain Punch - Tutor
  (63, 6300, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Abra - Zen Headbutt - Tutor
  (63, 6300, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Abra - Wonder Room - Tutor
  (63, 6300, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Abra - Telekinesis - Tutor
  (63, 6300, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Abra - Magic Room - Tutor
  (63, 6300, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Abra - Foul Play - Tutor
  (63, 6300, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Abra - Ally Switch - Tutor
  (63, 6300, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),

  -- Kadabra - Confusion - Level 1
  (64, 6400, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kadabra - Teleport - Level 1
  (64, 6400, 100, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kadabra - Kinesis - Level 1
  (64, 6400, 134, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kadabra - Confusion - Level 16
  (64, 6400, 93, 16, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Kadabra - Disable - Level 18
  (64, 6400, 50, 16, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Kadabra - Psybeam - Level 21
  (64, 6400, 60, 16, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Kadabra - Miracle Eye - Level 23
  (64, 6400, 357, 16, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Kadabra - Reflect - Level 26
  (64, 6400, 115, 16, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Kadabra - Psycho Cut - Level 28
  (64, 6400, 427, 16, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Kadabra - Recover - Level 31
  (64, 6400, 105, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Kadabra - Telekinesis - Level 33
  (64, 6400, 477, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Kadabra - Ally Switch - Level 36
  (64, 6400, 502, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Kadabra - Psychic - Level 38
  (64, 6400, 94, 16, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Kadabra - Role Play - Level 41
  (64, 6400, 272, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Kadabra - Future Sight - Level 43
  (64, 6400, 248, 16, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Kadabra - Trick - Level 46
  (64, 6400, 271, 16, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Kadabra - Psyshock - TM03
  (64, 6400, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 17),
  -- Kadabra - Calm Mind - TM04
  (64, 6400, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 18),
  -- Kadabra - Toxic - TM06
  (64, 6400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Kadabra - Hidden Power - TM10
  (64, 6400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Kadabra - Sunny Day - TM11
  (64, 6400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Kadabra - Taunt - TM12
  (64, 6400, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Kadabra - Light Screen - TM16
  (64, 6400, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 23),
  -- Kadabra - Protect - TM17
  (64, 6400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Kadabra - Rain Dance - TM18
  (64, 6400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Kadabra - Safeguard - TM20
  (64, 6400, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 26),
  -- Kadabra - Frustration - TM21
  (64, 6400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Kadabra - Return - TM27
  (64, 6400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Kadabra - Psychic - TM29
  (64, 6400, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 29),
  -- Kadabra - Shadow Ball - TM30
  (64, 6400, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 30),
  -- Kadabra - Double Team - TM32
  (64, 6400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Kadabra - Reflect - TM33
  (64, 6400, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 32),
  -- Kadabra - Torment - TM41
  (64, 6400, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 33),
  -- Kadabra - Facade - TM42
  (64, 6400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Kadabra - Rest - TM44
  (64, 6400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Kadabra - Attract - TM45
  (64, 6400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Kadabra - Thief - TM46
  (64, 6400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 37),
  -- Kadabra - Round - TM48
  (64, 6400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Kadabra - Energy Ball - TM53
  (64, 6400, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 39),
  -- Kadabra - Fling - TM56
  (64, 6400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 40),
  -- Kadabra - Charge Beam - TM57
  (64, 6400, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 41),
  -- Kadabra - Embargo - TM63
  (64, 6400, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 42),
  -- Kadabra - Thunder Wave - TM73
  (64, 6400, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 43),
  -- Kadabra - Psych Up - TM77
  (64, 6400, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 44),
  -- Kadabra - Dream Eater - TM85
  (64, 6400, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 45),
  -- Kadabra - Grass Knot - TM86
  (64, 6400, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 46),
  -- Kadabra - Swagger - TM87
  (64, 6400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 47),
  -- Kadabra - Sleep Talk - TM88
  (64, 6400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 48),
  -- Kadabra - Substitute - TM90
  (64, 6400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Kadabra - Trick Room - TM92
  (64, 6400, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 50),
  -- Kadabra - Dazzling Gleam - TM99
  (64, 6400, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 51),
  -- Kadabra - Confide - TM100
  (64, 6400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 52),
  -- Kadabra - Fire Punch - Tutor
  (64, 6400, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Kadabra - Ice Punch - Tutor
  (64, 6400, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Kadabra - Thunder Punch - Tutor
  (64, 6400, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Kadabra - Snore - Tutor
  (64, 6400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Kadabra - Iron Tail - Tutor
  (64, 6400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Kadabra - Focus Punch - Tutor
  (64, 6400, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Kadabra - Trick - Tutor
  (64, 6400, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Kadabra - Role Play - Tutor
  (64, 6400, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Kadabra - Magic Coat - Tutor
  (64, 6400, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Kadabra - Recycle - Tutor
  (64, 6400, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Kadabra - Knock Off - Tutor
  (64, 6400, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Kadabra - Skill Swap - Tutor
  (64, 6400, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Kadabra - Snatch - Tutor
  (64, 6400, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Kadabra - Signal Beam - Tutor
  (64, 6400, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Kadabra - Shock Wave - Tutor
  (64, 6400, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Kadabra - Gravity - Tutor
  (64, 6400, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Kadabra - Drain Punch - Tutor
  (64, 6400, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Kadabra - Zen Headbutt - Tutor
  (64, 6400, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Kadabra - Wonder Room - Tutor
  (64, 6400, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Kadabra - Telekinesis - Tutor
  (64, 6400, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Kadabra - Magic Room - Tutor
  (64, 6400, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Kadabra - Foul Play - Tutor
  (64, 6400, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Kadabra - Ally Switch - Tutor
  (64, 6400, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Kadabra - Kinesis - Evolution
  (64, 6400, 134, 16, NULL, 7, NULL, NULL, NULL, NULL, 76),

  -- Alakazam - Confusion - Level 1
  (65, 6500, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alakazam - Teleport - Level 1
  (65, 6500, 100, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alakazam - Kinesis - Level 1
  (65, 6500, 134, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alakazam - Confusion - Level 16
  (65, 6500, 93, 16, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Alakazam - Disable - Level 18
  (65, 6500, 50, 16, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Alakazam - Psybeam - Level 21
  (65, 6500, 60, 16, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Alakazam - Miracle Eye - Level 23
  (65, 6500, 357, 16, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Alakazam - Reflect - Level 26
  (65, 6500, 115, 16, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Alakazam - Psycho Cut - Level 28
  (65, 6500, 427, 16, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Alakazam - Recover - Level 31
  (65, 6500, 105, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Alakazam - Telekinesis - Level 33
  (65, 6500, 477, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Alakazam - Ally Switch - Level 36
  (65, 6500, 502, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Alakazam - Psychic - Level 38
  (65, 6500, 94, 16, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Alakazam - Calm Mind - Level 41
  (65, 6500, 347, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Alakazam - Future Sight - Level 43
  (65, 6500, 248, 16, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Alakazam - Trick - Level 46
  (65, 6500, 271, 16, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Alakazam - Psyshock - TM03
  (65, 6500, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 17),
  -- Alakazam - Calm Mind - TM04
  (65, 6500, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 18),
  -- Alakazam - Toxic - TM06
  (65, 6500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Alakazam - Hidden Power - TM10
  (65, 6500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Alakazam - Sunny Day - TM11
  (65, 6500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Alakazam - Taunt - TM12
  (65, 6500, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Alakazam - Hyper Beam - TM15
  (65, 6500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Alakazam - Light Screen - TM16
  (65, 6500, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 24),
  -- Alakazam - Protect - TM17
  (65, 6500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Alakazam - Rain Dance - TM18
  (65, 6500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Alakazam - Safeguard - TM20
  (65, 6500, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 27),
  -- Alakazam - Frustration - TM21
  (65, 6500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Alakazam - Return - TM27
  (65, 6500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Alakazam - Psychic - TM29
  (65, 6500, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 30),
  -- Alakazam - Shadow Ball - TM30
  (65, 6500, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 31),
  -- Alakazam - Double Team - TM32
  (65, 6500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Alakazam - Reflect - TM33
  (65, 6500, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 33),
  -- Alakazam - Torment - TM41
  (65, 6500, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 34),
  -- Alakazam - Facade - TM42
  (65, 6500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Alakazam - Rest - TM44
  (65, 6500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Alakazam - Attract - TM45
  (65, 6500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Alakazam - Thief - TM46
  (65, 6500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 38),
  -- Alakazam - Round - TM48
  (65, 6500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Alakazam - Focus Blast - TM52
  (65, 6500, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 40),
  -- Alakazam - Energy Ball - TM53
  (65, 6500, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 41),
  -- Alakazam - Fling - TM56
  (65, 6500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 42),
  -- Alakazam - Charge Beam - TM57
  (65, 6500, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 43),
  -- Alakazam - Embargo - TM63
  (65, 6500, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 44),
  -- Alakazam - Giga Impact - TM68
  (65, 6500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 45),
  -- Alakazam - Thunder Wave - TM73
  (65, 6500, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 46),
  -- Alakazam - Psych Up - TM77
  (65, 6500, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 47),
  -- Alakazam - Dream Eater - TM85
  (65, 6500, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 48),
  -- Alakazam - Grass Knot - TM86
  (65, 6500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 49),
  -- Alakazam - Swagger - TM87
  (65, 6500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 50),
  -- Alakazam - Sleep Talk - TM88
  (65, 6500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 51),
  -- Alakazam - Substitute - TM90
  (65, 6500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 52),
  -- Alakazam - Trick Room - TM92
  (65, 6500, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 53),
  -- Alakazam - Dazzling Gleam - TM99
  (65, 6500, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 54),
  -- Alakazam - Confide - TM100
  (65, 6500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 55),
  -- Alakazam - Fire Punch - Tutor
  (65, 6500, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Alakazam - Ice Punch - Tutor
  (65, 6500, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Alakazam - Thunder Punch - Tutor
  (65, 6500, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Alakazam - Snore - Tutor
  (65, 6500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Alakazam - Iron Tail - Tutor
  (65, 6500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Alakazam - Focus Punch - Tutor
  (65, 6500, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Alakazam - Trick - Tutor
  (65, 6500, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Alakazam - Role Play - Tutor
  (65, 6500, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Alakazam - Magic Coat - Tutor
  (65, 6500, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Alakazam - Recycle - Tutor
  (65, 6500, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Alakazam - Knock Off - Tutor
  (65, 6500, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Alakazam - Skill Swap - Tutor
  (65, 6500, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Alakazam - Snatch - Tutor
  (65, 6500, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Alakazam - Signal Beam - Tutor
  (65, 6500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Alakazam - Shock Wave - Tutor
  (65, 6500, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Alakazam - Gravity - Tutor
  (65, 6500, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Alakazam - Drain Punch - Tutor
  (65, 6500, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Alakazam - Zen Headbutt - Tutor
  (65, 6500, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Alakazam - Wonder Room - Tutor
  (65, 6500, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Alakazam - Telekinesis - Tutor
  (65, 6500, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Alakazam - Magic Room - Tutor
  (65, 6500, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Alakazam - Foul Play - Tutor
  (65, 6500, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Alakazam - Ally Switch - Tutor
  (65, 6500, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Alakazam - Laser Focus - Tutor
  (65, 6500, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Alakazam - Kinesis - Evolution
  (65, 6500, 134, 16, NULL, 7, NULL, NULL, NULL, NULL, 80),

  -- Machop - Leer - Level 1
  (66, 6600, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machop - Low Kick - Level 1
  (66, 6600, 67, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machop - Focus Energy - Level 3
  (66, 6600, 116, 16, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Machop - Karate Chop - Level 7
  (66, 6600, 2, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Machop - Foresight - Level 9
  (66, 6600, 193, 16, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Machop - Low Sweep - Level 13
  (66, 6600, 490, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Machop - Seismic Toss - Level 15
  (66, 6600, 69, 16, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Machop - Revenge - Level 19
  (66, 6600, 279, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Machop - Knock Off - Level 21
  (66, 6600, 282, 16, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Machop - Vital Throw - Level 25
  (66, 6600, 233, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Machop - Wake-Up Slap - Level 27
  (66, 6600, 358, 16, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Machop - Dual Chop - Level 31
  (66, 6600, 530, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Machop - Submission - Level 33
  (66, 6600, 66, 16, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Machop - Bulk Up - Level 37
  (66, 6600, 339, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Machop - Cross Chop - Level 39
  (66, 6600, 238, 16, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Machop - Scary Face - Level 43
  (66, 6600, 184, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Machop - Dynamic Punch - Level 45
  (66, 6600, 223, 16, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Machop - Work Up - TM01
  (66, 6600, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 18),
  -- Machop - Toxic - TM06
  (66, 6600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Machop - Bulk Up - TM08
  (66, 6600, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 20),
  -- Machop - Hidden Power - TM10
  (66, 6600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Machop - Sunny Day - TM11
  (66, 6600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Machop - Light Screen - TM16
  (66, 6600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 23),
  -- Machop - Protect - TM17
  (66, 6600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Machop - Rain Dance - TM18
  (66, 6600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Machop - Frustration - TM21
  (66, 6600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Machop - Smack Down - TM23
  (66, 6600, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 27),
  -- Machop - Earthquake - TM26
  (66, 6600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 28),
  -- Machop - Return - TM27
  (66, 6600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Machop - Brick Break - TM31
  (66, 6600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 30),
  -- Machop - Double Team - TM32
  (66, 6600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Machop - Flamethrower - TM35
  (66, 6600, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 32),
  -- Machop - Fire Blast - TM38
  (66, 6600, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 33),
  -- Machop - Rock Tomb - TM39
  (66, 6600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 34),
  -- Machop - Facade - TM42
  (66, 6600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Machop - Rest - TM44
  (66, 6600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Machop - Attract - TM45
  (66, 6600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Machop - Thief - TM46
  (66, 6600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 38),
  -- Machop - Low Sweep - TM47
  (66, 6600, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 39),
  -- Machop - Round - TM48
  (66, 6600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Machop - Focus Blast - TM52
  (66, 6600, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 41),
  -- Machop - Fling - TM56
  (66, 6600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 42),
  -- Machop - Payback - TM66
  (66, 6600, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 43),
  -- Machop - Bulldoze - TM78
  (66, 6600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 44),
  -- Machop - Rock Slide - TM80
  (66, 6600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 45),
  -- Machop - Poison Jab - TM84
  (66, 6600, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 46),
  -- Machop - Swagger - TM87
  (66, 6600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 47),
  -- Machop - Sleep Talk - TM88
  (66, 6600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 48),
  -- Machop - Substitute - TM90
  (66, 6600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Machop - Confide - TM100
  (66, 6600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Machop - Fire Punch - Egg
  (66, 6600, 7, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Machop - Ice Punch - Egg
  (66, 6600, 8, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Machop - Thunder Punch - Egg
  (66, 6600, 9, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Machop - Rolling Kick - Egg
  (66, 6600, 27, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Machop - Counter - Egg
  (66, 6600, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Machop - Meditate - Egg
  (66, 6600, 96, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Machop - Encore - Egg
  (66, 6600, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Machop - Smelling Salts - Egg
  (66, 6600, 265, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Machop - Knock Off - Egg
  (66, 6600, 282, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Machop - Tickle - Egg
  (66, 6600, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Machop - Close Combat - Egg
  (66, 6600, 370, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Machop - Power Trick - Egg
  (66, 6600, 379, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Machop - Bullet Punch - Egg
  (66, 6600, 418, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Machop - Heavy Slam - Egg
  (66, 6600, 484, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Machop - Quick Guard - Egg
  (66, 6600, 501, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Machop - Fire Punch - Tutor
  (66, 6600, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Machop - Ice Punch - Tutor
  (66, 6600, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Machop - Thunder Punch - Tutor
  (66, 6600, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Machop - Low Kick - Tutor
  (66, 6600, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Machop - Snore - Tutor
  (66, 6600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Machop - Focus Punch - Tutor
  (66, 6600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Machop - Helping Hand - Tutor
  (66, 6600, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Machop - Role Play - Tutor
  (66, 6600, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Machop - Superpower - Tutor
  (66, 6600, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Machop - Knock Off - Tutor
  (66, 6600, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Machop - Dual Chop - Tutor
  (66, 6600, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),

  -- Machoke - Karate Chop - Level 1
  (67, 6700, 2, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machoke - Leer - Level 1
  (67, 6700, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machoke - Low Kick - Level 1
  (67, 6700, 67, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Machoke - Focus Energy - Level 1
  (67, 6700, 116, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Machoke - Focus Energy - Level 3
  (67, 6700, 116, 16, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Machoke - Karate Chop - Level 7
  (67, 6700, 2, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Machoke - Foresight - Level 9
  (67, 6700, 193, 16, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Machoke - Low Sweep - Level 13
  (67, 6700, 490, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Machoke - Seismic Toss - Level 15
  (67, 6700, 69, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Machoke - Revenge - Level 19
  (67, 6700, 279, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Machoke - Knock Off - Level 21
  (67, 6700, 282, 16, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Machoke - Vital Throw - Level 25
  (67, 6700, 233, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Machoke - Wake-Up Slap - Level 27
  (67, 6700, 358, 16, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Machoke - Dual Chop - Level 33
  (67, 6700, 530, 16, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Machoke - Submission - Level 37
  (67, 6700, 66, 16, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Machoke - Bulk Up - Level 43
  (67, 6700, 339, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Machoke - Cross Chop - Level 47
  (67, 6700, 238, 16, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Machoke - Scary Face - Level 53
  (67, 6700, 184, 16, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Machoke - Dynamic Punch - Level 57
  (67, 6700, 223, 16, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Machoke - Work Up - TM01
  (67, 6700, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 20),
  -- Machoke - Toxic - TM06
  (67, 6700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Machoke - Bulk Up - TM08
  (67, 6700, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 22),
  -- Machoke - Hidden Power - TM10
  (67, 6700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Machoke - Sunny Day - TM11
  (67, 6700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Machoke - Light Screen - TM16
  (67, 6700, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 25),
  -- Machoke - Protect - TM17
  (67, 6700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Machoke - Rain Dance - TM18
  (67, 6700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Machoke - Frustration - TM21
  (67, 6700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Machoke - Smack Down - TM23
  (67, 6700, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 29),
  -- Machoke - Earthquake - TM26
  (67, 6700, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 30),
  -- Machoke - Return - TM27
  (67, 6700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Machoke - Brick Break - TM31
  (67, 6700, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 32),
  -- Machoke - Double Team - TM32
  (67, 6700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Machoke - Flamethrower - TM35
  (67, 6700, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 34),
  -- Machoke - Fire Blast - TM38
  (67, 6700, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 35),
  -- Machoke - Rock Tomb - TM39
  (67, 6700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 36),
  -- Machoke - Facade - TM42
  (67, 6700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Machoke - Rest - TM44
  (67, 6700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Machoke - Attract - TM45
  (67, 6700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Machoke - Thief - TM46
  (67, 6700, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 40),
  -- Machoke - Low Sweep - TM47
  (67, 6700, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 41),
  -- Machoke - Round - TM48
  (67, 6700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Machoke - Focus Blast - TM52
  (67, 6700, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 43),
  -- Machoke - Fling - TM56
  (67, 6700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 44),
  -- Machoke - Payback - TM66
  (67, 6700, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 45),
  -- Machoke - Bulldoze - TM78
  (67, 6700, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 46),
  -- Machoke - Rock Slide - TM80
  (67, 6700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 47),
  -- Machoke - Poison Jab - TM84
  (67, 6700, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 48),
  -- Machoke - Swagger - TM87
  (67, 6700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Machoke - Sleep Talk - TM88
  (67, 6700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Machoke - Substitute - TM90
  (67, 6700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Machoke - Confide - TM100
  (67, 6700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 52),
  -- Machoke - Fire Punch - Tutor
  (67, 6700, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Machoke - Ice Punch - Tutor
  (67, 6700, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Machoke - Thunder Punch - Tutor
  (67, 6700, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Machoke - Low Kick - Tutor
  (67, 6700, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Machoke - Snore - Tutor
  (67, 6700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Machoke - Focus Punch - Tutor
  (67, 6700, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Machoke - Helping Hand - Tutor
  (67, 6700, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Machoke - Role Play - Tutor
  (67, 6700, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Machoke - Superpower - Tutor
  (67, 6700, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Machoke - Knock Off - Tutor
  (67, 6700, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Machoke - Dual Chop - Tutor
  (67, 6700, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Machoke - Stomping Tantrum - Tutor
  (67, 6700, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),

  -- Machamp - Karate Chop - Level 1
  (68, 6800, 2, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machamp - Leer - Level 1
  (68, 6800, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machamp - Low Kick - Level 1
  (68, 6800, 67, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Machamp - Strength - Level 1
  (68, 6800, 70, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Machamp - Focus Energy - Level 1
  (68, 6800, 116, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Machamp - Wide Guard - Level 1
  (68, 6800, 469, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Machamp - Focus Energy - Level 3
  (68, 6800, 116, 16, NULL, 1, 3, NULL, NULL, NULL, 7),
  -- Machamp - Karate Chop - Level 7
  (68, 6800, 2, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Machamp - Foresight - Level 9
  (68, 6800, 193, 16, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Machamp - Low Sweep - Level 13
  (68, 6800, 490, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Machamp - Seismic Toss - Level 15
  (68, 6800, 69, 16, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Machamp - Revenge - Level 19
  (68, 6800, 279, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Machamp - Knock Off - Level 21
  (68, 6800, 282, 16, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Machamp - Vital Throw - Level 25
  (68, 6800, 233, 16, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Machamp - Wake-Up Slap - Level 27
  (68, 6800, 358, 16, NULL, 1, 27, NULL, NULL, NULL, 15),
  -- Machamp - Dual Chop - Level 33
  (68, 6800, 530, 16, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Machamp - Submission - Level 37
  (68, 6800, 66, 16, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Machamp - Bulk Up - Level 43
  (68, 6800, 339, 16, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Machamp - Cross Chop - Level 47
  (68, 6800, 238, 16, NULL, 1, 47, NULL, NULL, NULL, 19),
  -- Machamp - Scary Face - Level 53
  (68, 6800, 184, 16, NULL, 1, 53, NULL, NULL, NULL, 20),
  -- Machamp - Dynamic Punch - Level 57
  (68, 6800, 223, 16, NULL, 1, 57, NULL, NULL, NULL, 21),
  -- Machamp - Work Up - TM01
  (68, 6800, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 22),
  -- Machamp - Toxic - TM06
  (68, 6800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Machamp - Bulk Up - TM08
  (68, 6800, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 24),
  -- Machamp - Hidden Power - TM10
  (68, 6800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Machamp - Sunny Day - TM11
  (68, 6800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 26),
  -- Machamp - Hyper Beam - TM15
  (68, 6800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 27),
  -- Machamp - Light Screen - TM16
  (68, 6800, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 28),
  -- Machamp - Protect - TM17
  (68, 6800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Machamp - Rain Dance - TM18
  (68, 6800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 30),
  -- Machamp - Frustration - TM21
  (68, 6800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Machamp - Smack Down - TM23
  (68, 6800, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 32),
  -- Machamp - Earthquake - TM26
  (68, 6800, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 33),
  -- Machamp - Return - TM27
  (68, 6800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 34),
  -- Machamp - Brick Break - TM31
  (68, 6800, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 35),
  -- Machamp - Double Team - TM32
  (68, 6800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Machamp - Flamethrower - TM35
  (68, 6800, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 37),
  -- Machamp - Fire Blast - TM38
  (68, 6800, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 38),
  -- Machamp - Rock Tomb - TM39
  (68, 6800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 39),
  -- Machamp - Facade - TM42
  (68, 6800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 40),
  -- Machamp - Rest - TM44
  (68, 6800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 41),
  -- Machamp - Attract - TM45
  (68, 6800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 42),
  -- Machamp - Thief - TM46
  (68, 6800, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 43),
  -- Machamp - Low Sweep - TM47
  (68, 6800, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 44),
  -- Machamp - Round - TM48
  (68, 6800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 45),
  -- Machamp - Focus Blast - TM52
  (68, 6800, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 46),
  -- Machamp - Fling - TM56
  (68, 6800, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 47),
  -- Machamp - Payback - TM66
  (68, 6800, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 48),
  -- Machamp - Giga Impact - TM68
  (68, 6800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 49),
  -- Machamp - Stone Edge - TM71
  (68, 6800, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 50),
  -- Machamp - Bulldoze - TM78
  (68, 6800, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 51),
  -- Machamp - Rock Slide - TM80
  (68, 6800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 52),
  -- Machamp - Poison Jab - TM84
  (68, 6800, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 53),
  -- Machamp - Swagger - TM87
  (68, 6800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 54),
  -- Machamp - Sleep Talk - TM88
  (68, 6800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 55),
  -- Machamp - Substitute - TM90
  (68, 6800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 56),
  -- Machamp - Confide - TM100
  (68, 6800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 57),
  -- Machamp - Fire Punch - Tutor
  (68, 6800, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Machamp - Ice Punch - Tutor
  (68, 6800, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Machamp - Thunder Punch - Tutor
  (68, 6800, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Machamp - Low Kick - Tutor
  (68, 6800, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Machamp - Snore - Tutor
  (68, 6800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Machamp - Focus Punch - Tutor
  (68, 6800, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Machamp - Helping Hand - Tutor
  (68, 6800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Machamp - Role Play - Tutor
  (68, 6800, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Machamp - Superpower - Tutor
  (68, 6800, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Machamp - Knock Off - Tutor
  (68, 6800, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Machamp - Dual Chop - Tutor
  (68, 6800, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Machamp - Throat Chop - Tutor
  (68, 6800, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Machamp - Stomping Tantrum - Tutor
  (68, 6800, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Machamp - Strength - Evolution
  (68, 6800, 70, 16, NULL, 7, NULL, NULL, NULL, NULL, 71),

  -- Bellsprout - Vine Whip - Level 1
  (69, 6900, 22, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bellsprout - Growth - Level 7
  (69, 6900, 74, 16, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Bellsprout - Wrap - Level 11
  (69, 6900, 35, 16, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Bellsprout - Sleep Powder - Level 13
  (69, 6900, 79, 16, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Bellsprout - Poison Powder - Level 15
  (69, 6900, 77, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Bellsprout - Stun Spore - Level 17
  (69, 6900, 78, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Bellsprout - Acid - Level 23
  (69, 6900, 51, 16, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Bellsprout - Knock Off - Level 27
  (69, 6900, 282, 16, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Bellsprout - Sweet Scent - Level 29
  (69, 6900, 230, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Bellsprout - Gastro Acid - Level 35
  (69, 6900, 380, 16, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Bellsprout - Razor Leaf - Level 39
  (69, 6900, 75, 16, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Bellsprout - Poison Jab - Level 41
  (69, 6900, 398, 16, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Bellsprout - Slam - Level 47
  (69, 6900, 21, 16, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Bellsprout - Wring Out - Level 50
  (69, 6900, 378, 16, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Bellsprout - Toxic - TM06
  (69, 6900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Bellsprout - Venoshock - TM09
  (69, 6900, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 16),
  -- Bellsprout - Hidden Power - TM10
  (69, 6900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Bellsprout - Sunny Day - TM11
  (69, 6900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Bellsprout - Protect - TM17
  (69, 6900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Bellsprout - Frustration - TM21
  (69, 6900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Bellsprout - Solar Beam - TM22
  (69, 6900, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 21),
  -- Bellsprout - Return - TM27
  (69, 6900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 22),
  -- Bellsprout - Double Team - TM32
  (69, 6900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 23),
  -- Bellsprout - Reflect - TM33
  (69, 6900, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 24),
  -- Bellsprout - Sludge Bomb - TM36
  (69, 6900, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 25),
  -- Bellsprout - Facade - TM42
  (69, 6900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 26),
  -- Bellsprout - Rest - TM44
  (69, 6900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 27),
  -- Bellsprout - Attract - TM45
  (69, 6900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 28),
  -- Bellsprout - Thief - TM46
  (69, 6900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 29),
  -- Bellsprout - Round - TM48
  (69, 6900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 30),
  -- Bellsprout - Energy Ball - TM53
  (69, 6900, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 31),
  -- Bellsprout - Swords Dance - TM75
  (69, 6900, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 32),
  -- Bellsprout - Infestation - TM83
  (69, 6900, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 33),
  -- Bellsprout - Poison Jab - TM84
  (69, 6900, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 34),
  -- Bellsprout - Grass Knot - TM86
  (69, 6900, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 35),
  -- Bellsprout - Swagger - TM87
  (69, 6900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 36),
  -- Bellsprout - Sleep Talk - TM88
  (69, 6900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 37),
  -- Bellsprout - Substitute - TM90
  (69, 6900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Bellsprout - Nature Power - TM96
  (69, 6900, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 39),
  -- Bellsprout - Confide - TM100
  (69, 6900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Bellsprout - Leech Life - Egg
  (69, 6900, 141, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Bellsprout - Giga Drain - Egg
  (69, 6900, 202, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Bellsprout - Encore - Egg
  (69, 6900, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bellsprout - Synthesis - Egg
  (69, 6900, 235, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bellsprout - Ingrain - Egg
  (69, 6900, 275, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bellsprout - Weather Ball - Egg
  (69, 6900, 311, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bellsprout - Tickle - Egg
  (69, 6900, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bellsprout - Bullet Seed - Egg
  (69, 6900, 331, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bellsprout - Magical Leaf - Egg
  (69, 6900, 345, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bellsprout - Natural Gift - Egg
  (69, 6900, 363, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bellsprout - Worry Seed - Egg
  (69, 6900, 388, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bellsprout - Power Whip - Egg
  (69, 6900, 438, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Bellsprout - Acid Spray - Egg
  (69, 6900, 491, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Bellsprout - Clear Smog - Egg
  (69, 6900, 499, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Bellsprout - Belch - Egg
  (69, 6900, 562, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Bellsprout - Strength Sap - Egg
  (69, 6900, 668, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Bellsprout - Bind - Tutor
  (69, 6900, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Bellsprout - Snore - Tutor
  (69, 6900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Bellsprout - Giga Drain - Tutor
  (69, 6900, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Bellsprout - Synthesis - Tutor
  (69, 6900, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Bellsprout - Knock Off - Tutor
  (69, 6900, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Bellsprout - Gastro Acid - Tutor
  (69, 6900, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Bellsprout - Worry Seed - Tutor
  (69, 6900, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Bellsprout - Seed Bomb - Tutor
  (69, 6900, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),

  -- Weepinbell - Vine Whip - Level 1
  (70, 7000, 22, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weepinbell - Wrap - Level 1
  (70, 7000, 35, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weepinbell - Growth - Level 1
  (70, 7000, 74, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weepinbell - Growth - Level 7
  (70, 7000, 74, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Weepinbell - Wrap - Level 11
  (70, 7000, 35, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Weepinbell - Sleep Powder - Level 13
  (70, 7000, 79, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Weepinbell - Poison Powder - Level 15
  (70, 7000, 77, 16, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Weepinbell - Stun Spore - Level 17
  (70, 7000, 78, 16, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Weepinbell - Acid - Level 24
  (70, 7000, 51, 16, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Weepinbell - Knock Off - Level 29
  (70, 7000, 282, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Weepinbell - Sweet Scent - Level 32
  (70, 7000, 230, 16, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Weepinbell - Gastro Acid - Level 39
  (70, 7000, 380, 16, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Weepinbell - Razor Leaf - Level 44
  (70, 7000, 75, 16, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Weepinbell - Poison Jab - Level 47
  (70, 7000, 398, 16, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Weepinbell - Slam - Level 54
  (70, 7000, 21, 16, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Weepinbell - Wring Out - Level 58
  (70, 7000, 378, 16, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Weepinbell - Toxic - TM06
  (70, 7000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Weepinbell - Venoshock - TM09
  (70, 7000, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 18),
  -- Weepinbell - Hidden Power - TM10
  (70, 7000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Weepinbell - Sunny Day - TM11
  (70, 7000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Weepinbell - Protect - TM17
  (70, 7000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Weepinbell - Frustration - TM21
  (70, 7000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Weepinbell - Solar Beam - TM22
  (70, 7000, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 23),
  -- Weepinbell - Return - TM27
  (70, 7000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Weepinbell - Double Team - TM32
  (70, 7000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Weepinbell - Reflect - TM33
  (70, 7000, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 26),
  -- Weepinbell - Sludge Bomb - TM36
  (70, 7000, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 27),
  -- Weepinbell - Facade - TM42
  (70, 7000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Weepinbell - Rest - TM44
  (70, 7000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Weepinbell - Attract - TM45
  (70, 7000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Weepinbell - Thief - TM46
  (70, 7000, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 31),
  -- Weepinbell - Round - TM48
  (70, 7000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Weepinbell - Energy Ball - TM53
  (70, 7000, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 33),
  -- Weepinbell - Swords Dance - TM75
  (70, 7000, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 34),
  -- Weepinbell - Infestation - TM83
  (70, 7000, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 35),
  -- Weepinbell - Poison Jab - TM84
  (70, 7000, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 36),
  -- Weepinbell - Grass Knot - TM86
  (70, 7000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 37),
  -- Weepinbell - Swagger - TM87
  (70, 7000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 38),
  -- Weepinbell - Sleep Talk - TM88
  (70, 7000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 39),
  -- Weepinbell - Substitute - TM90
  (70, 7000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 40),
  -- Weepinbell - Nature Power - TM96
  (70, 7000, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 41),
  -- Weepinbell - Confide - TM100
  (70, 7000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Weepinbell - Bind - Tutor
  (70, 7000, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Weepinbell - Snore - Tutor
  (70, 7000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Weepinbell - Giga Drain - Tutor
  (70, 7000, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Weepinbell - Synthesis - Tutor
  (70, 7000, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Weepinbell - Knock Off - Tutor
  (70, 7000, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Weepinbell - Gastro Acid - Tutor
  (70, 7000, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Weepinbell - Worry Seed - Tutor
  (70, 7000, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Weepinbell - Seed Bomb - Tutor
  (70, 7000, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),

  -- Victreebel - Vine Whip - Level 1
  (71, 7100, 22, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Victreebel - Razor Leaf - Level 1
  (71, 7100, 75, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Victreebel - Sleep Powder - Level 1
  (71, 7100, 79, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Victreebel - Sweet Scent - Level 1
  (71, 7100, 230, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Victreebel - Stockpile - Level 1
  (71, 7100, 254, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Victreebel - Spit Up - Level 1
  (71, 7100, 255, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Victreebel - Swallow - Level 1
  (71, 7100, 256, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Victreebel - Leaf Tornado - Level 1
  (71, 7100, 536, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Victreebel - Leaf Storm - Level 32
  (71, 7100, 437, 16, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Victreebel - Leaf Blade - Level 44
  (71, 7100, 348, 16, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Victreebel - Toxic - TM06
  (71, 7100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 11),
  -- Victreebel - Venoshock - TM09
  (71, 7100, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 12),
  -- Victreebel - Hidden Power - TM10
  (71, 7100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 13),
  -- Victreebel - Sunny Day - TM11
  (71, 7100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 14),
  -- Victreebel - Hyper Beam - TM15
  (71, 7100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 15),
  -- Victreebel - Protect - TM17
  (71, 7100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 16),
  -- Victreebel - Frustration - TM21
  (71, 7100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 17),
  -- Victreebel - Solar Beam - TM22
  (71, 7100, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 18),
  -- Victreebel - Return - TM27
  (71, 7100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 19),
  -- Victreebel - Double Team - TM32
  (71, 7100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 20),
  -- Victreebel - Reflect - TM33
  (71, 7100, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 21),
  -- Victreebel - Sludge Bomb - TM36
  (71, 7100, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 22),
  -- Victreebel - Facade - TM42
  (71, 7100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 23),
  -- Victreebel - Rest - TM44
  (71, 7100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 24),
  -- Victreebel - Attract - TM45
  (71, 7100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 25),
  -- Victreebel - Thief - TM46
  (71, 7100, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 26),
  -- Victreebel - Round - TM48
  (71, 7100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 27),
  -- Victreebel - Energy Ball - TM53
  (71, 7100, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 28),
  -- Victreebel - Giga Impact - TM68
  (71, 7100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 29),
  -- Victreebel - Swords Dance - TM75
  (71, 7100, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 30),
  -- Victreebel - Infestation - TM83
  (71, 7100, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 31),
  -- Victreebel - Poison Jab - TM84
  (71, 7100, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 32),
  -- Victreebel - Grass Knot - TM86
  (71, 7100, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 33),
  -- Victreebel - Swagger - TM87
  (71, 7100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 34),
  -- Victreebel - Sleep Talk - TM88
  (71, 7100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 35),
  -- Victreebel - Substitute - TM90
  (71, 7100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Victreebel - Nature Power - TM96
  (71, 7100, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 37),
  -- Victreebel - Confide - TM100
  (71, 7100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 38),
  -- Victreebel - Bind - Tutor
  (71, 7100, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 39),
  -- Victreebel - Snore - Tutor
  (71, 7100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Victreebel - Giga Drain - Tutor
  (71, 7100, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Victreebel - Synthesis - Tutor
  (71, 7100, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Victreebel - Knock Off - Tutor
  (71, 7100, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Victreebel - Gastro Acid - Tutor
  (71, 7100, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Victreebel - Worry Seed - Tutor
  (71, 7100, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Victreebel - Seed Bomb - Tutor
  (71, 7100, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Victreebel - Leaf Tornado - Evolution
  (71, 7100, 536, 16, NULL, 7, NULL, NULL, NULL, NULL, 47),

  -- Tentacool - Poison Sting - Level 1
  (72, 7200, 40, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacool - Supersonic - Level 4
  (72, 7200, 48, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Tentacool - Constrict - Level 7
  (72, 7200, 132, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Tentacool - Acid - Level 10
  (72, 7200, 51, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tentacool - Toxic Spikes - Level 13
  (72, 7200, 390, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Tentacool - Water Pulse - Level 16
  (72, 7200, 352, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Tentacool - Wrap - Level 19
  (72, 7200, 35, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Tentacool - Acid Spray - Level 22
  (72, 7200, 491, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Tentacool - Bubble Beam - Level 25
  (72, 7200, 61, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Tentacool - Barrier - Level 28
  (72, 7200, 112, 16, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Tentacool - Poison Jab - Level 31
  (72, 7200, 398, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Tentacool - Brine - Level 34
  (72, 7200, 362, 16, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Tentacool - Screech - Level 37
  (72, 7200, 103, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Tentacool - Hex - Level 40
  (72, 7200, 506, 16, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Tentacool - Sludge Wave - Level 43
  (72, 7200, 482, 16, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Tentacool - Hydro Pump - Level 46
  (72, 7200, 56, 16, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Tentacool - Wring Out - Level 49
  (72, 7200, 378, 16, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Tentacool - Toxic - TM06
  (72, 7200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Tentacool - Hail - TM07
  (72, 7200, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 19),
  -- Tentacool - Venoshock - TM09
  (72, 7200, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 20),
  -- Tentacool - Hidden Power - TM10
  (72, 7200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Tentacool - Ice Beam - TM13
  (72, 7200, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 22),
  -- Tentacool - Blizzard - TM14
  (72, 7200, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 23),
  -- Tentacool - Protect - TM17
  (72, 7200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Tentacool - Rain Dance - TM18
  (72, 7200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Tentacool - Safeguard - TM20
  (72, 7200, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 26),
  -- Tentacool - Frustration - TM21
  (72, 7200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Tentacool - Return - TM27
  (72, 7200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Tentacool - Double Team - TM32
  (72, 7200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Tentacool - Sludge Wave - TM34
  (72, 7200, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 30),
  -- Tentacool - Sludge Bomb - TM36
  (72, 7200, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 31),
  -- Tentacool - Facade - TM42
  (72, 7200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Tentacool - Rest - TM44
  (72, 7200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Tentacool - Attract - TM45
  (72, 7200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Tentacool - Thief - TM46
  (72, 7200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 35),
  -- Tentacool - Round - TM48
  (72, 7200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Tentacool - Scald - TM55
  (72, 7200, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 37),
  -- Tentacool - Payback - TM66
  (72, 7200, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 38),
  -- Tentacool - Swords Dance - TM75
  (72, 7200, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 39),
  -- Tentacool - Infestation - TM83
  (72, 7200, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 40),
  -- Tentacool - Poison Jab - TM84
  (72, 7200, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 41),
  -- Tentacool - Swagger - TM87
  (72, 7200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 42),
  -- Tentacool - Sleep Talk - TM88
  (72, 7200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 43),
  -- Tentacool - Substitute - TM90
  (72, 7200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Tentacool - Surf - TM94
  (72, 7200, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 45),
  -- Tentacool - Waterfall - TM98
  (72, 7200, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 46),
  -- Tentacool - Dazzling Gleam - TM99
  (72, 7200, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 47),
  -- Tentacool - Confide - TM100
  (72, 7200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Tentacool - Aurora Beam - Egg
  (72, 7200, 62, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Tentacool - Confuse Ray - Egg
  (72, 7200, 109, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tentacool - Haze - Egg
  (72, 7200, 114, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tentacool - Bubble - Egg
  (72, 7200, 145, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tentacool - Rapid Spin - Egg
  (72, 7200, 229, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tentacool - Mirror Coat - Egg
  (72, 7200, 243, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tentacool - Knock Off - Egg
  (72, 7200, 282, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Tentacool - Tickle - Egg
  (72, 7200, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tentacool - Muddy Water - Egg
  (72, 7200, 330, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tentacool - Acupressure - Egg
  (72, 7200, 367, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Tentacool - Aqua Ring - Egg
  (72, 7200, 392, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Tentacool - Bind - Tutor
  (72, 7200, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Tentacool - Snore - Tutor
  (72, 7200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Tentacool - Icy Wind - Tutor
  (72, 7200, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Tentacool - Giga Drain - Tutor
  (72, 7200, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Tentacool - Magic Coat - Tutor
  (72, 7200, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Tentacool - Knock Off - Tutor
  (72, 7200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Tentacool - Water Pulse - Tutor
  (72, 7200, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),

  -- Tentacruel - Poison Sting - Level 1
  (73, 7300, 40, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacruel - Supersonic - Level 1
  (73, 7300, 48, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tentacruel - Acid - Level 1
  (73, 7300, 51, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tentacruel - Constrict - Level 1
  (73, 7300, 132, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tentacruel - Wring Out - Level 1
  (73, 7300, 378, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tentacruel - Reflect Type - Level 1
  (73, 7300, 513, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Tentacruel - Supersonic - Level 4
  (73, 7300, 48, 16, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Tentacruel - Constrict - Level 7
  (73, 7300, 132, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Tentacruel - Acid - Level 10
  (73, 7300, 51, 16, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Tentacruel - Toxic Spikes - Level 13
  (73, 7300, 390, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Tentacruel - Water Pulse - Level 16
  (73, 7300, 352, 16, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Tentacruel - Wrap - Level 19
  (73, 7300, 35, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Tentacruel - Acid Spray - Level 22
  (73, 7300, 491, 16, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Tentacruel - Bubble Beam - Level 25
  (73, 7300, 61, 16, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Tentacruel - Barrier - Level 28
  (73, 7300, 112, 16, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Tentacruel - Poison Jab - Level 32
  (73, 7300, 398, 16, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Tentacruel - Brine - Level 36
  (73, 7300, 362, 16, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Tentacruel - Screech - Level 40
  (73, 7300, 103, 16, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Tentacruel - Hex - Level 44
  (73, 7300, 506, 16, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Tentacruel - Sludge Wave - Level 48
  (73, 7300, 482, 16, NULL, 1, 48, NULL, NULL, NULL, 20),
  -- Tentacruel - Hydro Pump - Level 52
  (73, 7300, 56, 16, NULL, 1, 52, NULL, NULL, NULL, 21),
  -- Tentacruel - Wring Out - Level 56
  (73, 7300, 378, 16, NULL, 1, 56, NULL, NULL, NULL, 22),
  -- Tentacruel - Toxic - TM06
  (73, 7300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Tentacruel - Hail - TM07
  (73, 7300, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 24),
  -- Tentacruel - Venoshock - TM09
  (73, 7300, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 25),
  -- Tentacruel - Hidden Power - TM10
  (73, 7300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 26),
  -- Tentacruel - Ice Beam - TM13
  (73, 7300, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 27),
  -- Tentacruel - Blizzard - TM14
  (73, 7300, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 28),
  -- Tentacruel - Hyper Beam - TM15
  (73, 7300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 29),
  -- Tentacruel - Protect - TM17
  (73, 7300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 30),
  -- Tentacruel - Rain Dance - TM18
  (73, 7300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 31),
  -- Tentacruel - Safeguard - TM20
  (73, 7300, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 32),
  -- Tentacruel - Frustration - TM21
  (73, 7300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 33),
  -- Tentacruel - Return - TM27
  (73, 7300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 34),
  -- Tentacruel - Double Team - TM32
  (73, 7300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Tentacruel - Sludge Wave - TM34
  (73, 7300, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 36),
  -- Tentacruel - Sludge Bomb - TM36
  (73, 7300, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 37),
  -- Tentacruel - Facade - TM42
  (73, 7300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Tentacruel - Rest - TM44
  (73, 7300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Tentacruel - Attract - TM45
  (73, 7300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Tentacruel - Thief - TM46
  (73, 7300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 41),
  -- Tentacruel - Round - TM48
  (73, 7300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Tentacruel - Scald - TM55
  (73, 7300, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 43),
  -- Tentacruel - Payback - TM66
  (73, 7300, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 44),
  -- Tentacruel - Giga Impact - TM68
  (73, 7300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 45),
  -- Tentacruel - Swords Dance - TM75
  (73, 7300, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 46),
  -- Tentacruel - Infestation - TM83
  (73, 7300, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 47),
  -- Tentacruel - Poison Jab - TM84
  (73, 7300, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 48),
  -- Tentacruel - Swagger - TM87
  (73, 7300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Tentacruel - Sleep Talk - TM88
  (73, 7300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Tentacruel - Substitute - TM90
  (73, 7300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Tentacruel - Surf - TM94
  (73, 7300, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 52),
  -- Tentacruel - Waterfall - TM98
  (73, 7300, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 53),
  -- Tentacruel - Dazzling Gleam - TM99
  (73, 7300, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 54),
  -- Tentacruel - Confide - TM100
  (73, 7300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 55),
  -- Tentacruel - Bind - Tutor
  (73, 7300, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Tentacruel - Snore - Tutor
  (73, 7300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Tentacruel - Icy Wind - Tutor
  (73, 7300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Tentacruel - Giga Drain - Tutor
  (73, 7300, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Tentacruel - Magic Coat - Tutor
  (73, 7300, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Tentacruel - Knock Off - Tutor
  (73, 7300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Tentacruel - Water Pulse - Tutor
  (73, 7300, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),

  -- Geodude - Tackle - Level 1
  (74, 7400, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Geodude - Defense Curl - Level 1
  (74, 7400, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Geodude - Mud Sport - Level 4
  (74, 7400, 300, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Geodude - Rock Polish - Level 6
  (74, 7400, 397, 16, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Geodude - Rollout - Level 10
  (74, 7400, 205, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Geodude - Magnitude - Level 12
  (74, 7400, 222, 16, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Geodude - Rock Throw - Level 16
  (74, 7400, 88, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Geodude - Smack Down - Level 18
  (74, 7400, 479, 16, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Geodude - Bulldoze - Level 22
  (74, 7400, 523, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Geodude - Self-Destruct - Level 24
  (74, 7400, 120, 16, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Geodude - Stealth Rock - Level 28
  (74, 7400, 446, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Geodude - Rock Blast - Level 30
  (74, 7400, 350, 16, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Geodude - Earthquake - Level 34
  (74, 7400, 89, 16, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Geodude - Explosion - Level 36
  (74, 7400, 153, 16, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Geodude - Double-Edge - Level 40
  (74, 7400, 38, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Geodude - Stone Edge - Level 42
  (74, 7400, 444, 16, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Geodude - Toxic - TM06
  (74, 7400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Geodude - Hidden Power - TM10
  (74, 7400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Geodude - Sunny Day - TM11
  (74, 7400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Geodude - Protect - TM17
  (74, 7400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Geodude - Frustration - TM21
  (74, 7400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 21),
  -- Geodude - Smack Down - TM23
  (74, 7400, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 22),
  -- Geodude - Earthquake - TM26
  (74, 7400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 23),
  -- Geodude - Return - TM27
  (74, 7400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Geodude - Brick Break - TM31
  (74, 7400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 25),
  -- Geodude - Double Team - TM32
  (74, 7400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Geodude - Flamethrower - TM35
  (74, 7400, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 27),
  -- Geodude - Sandstorm - TM37
  (74, 7400, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 28),
  -- Geodude - Fire Blast - TM38
  (74, 7400, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 29),
  -- Geodude - Rock Tomb - TM39
  (74, 7400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 30),
  -- Geodude - Facade - TM42
  (74, 7400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Geodude - Rest - TM44
  (74, 7400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Geodude - Attract - TM45
  (74, 7400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Geodude - Round - TM48
  (74, 7400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Geodude - Fling - TM56
  (74, 7400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 35),
  -- Geodude - Explosion - TM64
  (74, 7400, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 36),
  -- Geodude - Rock Polish - TM69
  (74, 7400, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 37),
  -- Geodude - Stone Edge - TM71
  (74, 7400, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 38),
  -- Geodude - Gyro Ball - TM74
  (74, 7400, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 39),
  -- Geodude - Bulldoze - TM78
  (74, 7400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 40),
  -- Geodude - Rock Slide - TM80
  (74, 7400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 41),
  -- Geodude - Swagger - TM87
  (74, 7400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 42),
  -- Geodude - Sleep Talk - TM88
  (74, 7400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 43),
  -- Geodude - Substitute - TM90
  (74, 7400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Geodude - Nature Power - TM96
  (74, 7400, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 45),
  -- Geodude - Confide - TM100
  (74, 7400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Geodude - Mega Punch - Egg
  (74, 7400, 5, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Geodude - Curse - Egg
  (74, 7400, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Geodude - Flail - Egg
  (74, 7400, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Geodude - Endure - Egg
  (74, 7400, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Geodude - Focus Punch - Egg
  (74, 7400, 264, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Geodude - Block - Egg
  (74, 7400, 335, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Geodude - Hammer Arm - Egg
  (74, 7400, 359, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Geodude - Rock Climb - Egg
  (74, 7400, 431, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Geodude - Wide Guard - Egg
  (74, 7400, 469, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Geodude - Autotomize - Egg
  (74, 7400, 475, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Geodude - Fire Punch - Tutor
  (74, 7400, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Geodude - Thunder Punch - Tutor
  (74, 7400, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Geodude - Snore - Tutor
  (74, 7400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Geodude - Focus Punch - Tutor
  (74, 7400, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Geodude - Superpower - Tutor
  (74, 7400, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Geodude - Iron Defense - Tutor
  (74, 7400, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Geodude - Block - Tutor
  (74, 7400, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Geodude - Earth Power - Tutor
  (74, 7400, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Geodude - Stealth Rock - Tutor
  (74, 7400, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),

  -- Graveler - Tackle - Level 1
  (75, 7500, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Graveler - Defense Curl - Level 1
  (75, 7500, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Graveler - Mud Sport - Level 1
  (75, 7500, 300, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Graveler - Rock Polish - Level 1
  (75, 7500, 397, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Graveler - Mud Sport - Level 4
  (75, 7500, 300, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Graveler - Rock Polish - Level 6
  (75, 7500, 397, 16, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Graveler - Rollout - Level 10
  (75, 7500, 205, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Graveler - Magnitude - Level 12
  (75, 7500, 222, 16, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Graveler - Rock Throw - Level 16
  (75, 7500, 88, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Graveler - Smack Down - Level 18
  (75, 7500, 479, 16, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Graveler - Bulldoze - Level 22
  (75, 7500, 523, 16, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Graveler - Self-Destruct - Level 24
  (75, 7500, 120, 16, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Graveler - Stealth Rock - Level 30
  (75, 7500, 446, 16, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Graveler - Rock Blast - Level 34
  (75, 7500, 350, 16, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Graveler - Earthquake - Level 40
  (75, 7500, 89, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Graveler - Explosion - Level 44
  (75, 7500, 153, 16, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Graveler - Double-Edge - Level 50
  (75, 7500, 38, 16, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Graveler - Stone Edge - Level 54
  (75, 7500, 444, 16, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Graveler - Toxic - TM06
  (75, 7500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Graveler - Hidden Power - TM10
  (75, 7500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Graveler - Sunny Day - TM11
  (75, 7500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Graveler - Protect - TM17
  (75, 7500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Graveler - Frustration - TM21
  (75, 7500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Graveler - Smack Down - TM23
  (75, 7500, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 24),
  -- Graveler - Earthquake - TM26
  (75, 7500, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 25),
  -- Graveler - Return - TM27
  (75, 7500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Graveler - Brick Break - TM31
  (75, 7500, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 27),
  -- Graveler - Double Team - TM32
  (75, 7500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Graveler - Flamethrower - TM35
  (75, 7500, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 29),
  -- Graveler - Sandstorm - TM37
  (75, 7500, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 30),
  -- Graveler - Fire Blast - TM38
  (75, 7500, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 31),
  -- Graveler - Rock Tomb - TM39
  (75, 7500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 32),
  -- Graveler - Facade - TM42
  (75, 7500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Graveler - Rest - TM44
  (75, 7500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Graveler - Attract - TM45
  (75, 7500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Graveler - Round - TM48
  (75, 7500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Graveler - Fling - TM56
  (75, 7500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 37),
  -- Graveler - Explosion - TM64
  (75, 7500, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 38),
  -- Graveler - Rock Polish - TM69
  (75, 7500, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 39),
  -- Graveler - Stone Edge - TM71
  (75, 7500, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 40),
  -- Graveler - Gyro Ball - TM74
  (75, 7500, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 41),
  -- Graveler - Bulldoze - TM78
  (75, 7500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 42),
  -- Graveler - Rock Slide - TM80
  (75, 7500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 43),
  -- Graveler - Swagger - TM87
  (75, 7500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Graveler - Sleep Talk - TM88
  (75, 7500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Graveler - Substitute - TM90
  (75, 7500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Graveler - Nature Power - TM96
  (75, 7500, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 47),
  -- Graveler - Confide - TM100
  (75, 7500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Graveler - Fire Punch - Tutor
  (75, 7500, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Graveler - Thunder Punch - Tutor
  (75, 7500, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Graveler - Snore - Tutor
  (75, 7500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Graveler - Focus Punch - Tutor
  (75, 7500, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Graveler - Superpower - Tutor
  (75, 7500, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Graveler - Iron Defense - Tutor
  (75, 7500, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Graveler - Block - Tutor
  (75, 7500, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Graveler - Earth Power - Tutor
  (75, 7500, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Graveler - Stealth Rock - Tutor
  (75, 7500, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Graveler - Stomping Tantrum - Tutor
  (75, 7500, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),

  -- Golem - Tackle - Level 1
  (76, 7600, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golem - Defense Curl - Level 1
  (76, 7600, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golem - Mud Sport - Level 1
  (76, 7600, 300, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golem - Rock Polish - Level 1
  (76, 7600, 397, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golem - Heavy Slam - Level 1
  (76, 7600, 484, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Golem - Mud Sport - Level 4
  (76, 7600, 300, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Golem - Rock Polish - Level 6
  (76, 7600, 397, 16, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Golem - Steamroller - Level 10
  (76, 7600, 537, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Golem - Magnitude - Level 12
  (76, 7600, 222, 16, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Golem - Rock Throw - Level 16
  (76, 7600, 88, 16, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Golem - Smack Down - Level 18
  (76, 7600, 479, 16, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Golem - Bulldoze - Level 22
  (76, 7600, 523, 16, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Golem - Self-Destruct - Level 24
  (76, 7600, 120, 16, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Golem - Stealth Rock - Level 30
  (76, 7600, 446, 16, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Golem - Rock Blast - Level 34
  (76, 7600, 350, 16, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Golem - Earthquake - Level 40
  (76, 7600, 89, 16, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Golem - Explosion - Level 44
  (76, 7600, 153, 16, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Golem - Double-Edge - Level 50
  (76, 7600, 38, 16, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Golem - Stone Edge - Level 54
  (76, 7600, 444, 16, NULL, 1, 54, NULL, NULL, NULL, 19),
  -- Golem - Heavy Slam - Level 60
  (76, 7600, 484, 16, NULL, 1, 60, NULL, NULL, NULL, 20),
  -- Golem - Roar - TM05
  (76, 7600, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 21),
  -- Golem - Toxic - TM06
  (76, 7600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Golem - Hidden Power - TM10
  (76, 7600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Golem - Sunny Day - TM11
  (76, 7600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Golem - Hyper Beam - TM15
  (76, 7600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Golem - Protect - TM17
  (76, 7600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Golem - Frustration - TM21
  (76, 7600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Golem - Smack Down - TM23
  (76, 7600, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 28),
  -- Golem - Earthquake - TM26
  (76, 7600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 29),
  -- Golem - Return - TM27
  (76, 7600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Golem - Brick Break - TM31
  (76, 7600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 31),
  -- Golem - Double Team - TM32
  (76, 7600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Golem - Flamethrower - TM35
  (76, 7600, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 33),
  -- Golem - Sandstorm - TM37
  (76, 7600, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 34),
  -- Golem - Fire Blast - TM38
  (76, 7600, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 35),
  -- Golem - Rock Tomb - TM39
  (76, 7600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 36),
  -- Golem - Facade - TM42
  (76, 7600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Golem - Rest - TM44
  (76, 7600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Golem - Attract - TM45
  (76, 7600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Golem - Round - TM48
  (76, 7600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Golem - Focus Blast - TM52
  (76, 7600, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 41),
  -- Golem - Fling - TM56
  (76, 7600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 42),
  -- Golem - Explosion - TM64
  (76, 7600, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 43),
  -- Golem - Giga Impact - TM68
  (76, 7600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 44),
  -- Golem - Rock Polish - TM69
  (76, 7600, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 45),
  -- Golem - Stone Edge - TM71
  (76, 7600, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 46),
  -- Golem - Gyro Ball - TM74
  (76, 7600, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 47),
  -- Golem - Bulldoze - TM78
  (76, 7600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 48),
  -- Golem - Rock Slide - TM80
  (76, 7600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 49),
  -- Golem - Swagger - TM87
  (76, 7600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 50),
  -- Golem - Sleep Talk - TM88
  (76, 7600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 51),
  -- Golem - Substitute - TM90
  (76, 7600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 52),
  -- Golem - Nature Power - TM96
  (76, 7600, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 53),
  -- Golem - Confide - TM100
  (76, 7600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Golem - Fire Punch - Tutor
  (76, 7600, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Golem - Thunder Punch - Tutor
  (76, 7600, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Golem - Snore - Tutor
  (76, 7600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Golem - Focus Punch - Tutor
  (76, 7600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Golem - Superpower - Tutor
  (76, 7600, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Golem - Iron Defense - Tutor
  (76, 7600, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Golem - Block - Tutor
  (76, 7600, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Golem - Earth Power - Tutor
  (76, 7600, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Golem - Iron Head - Tutor
  (76, 7600, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Golem - Stealth Rock - Tutor
  (76, 7600, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Golem - Stomping Tantrum - Tutor
  (76, 7600, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),

  -- Ponyta - Tackle - Level 1
  (77, 7700, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ponyta - Growl - Level 1
  (77, 7700, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ponyta - Tail Whip - Level 4
  (77, 7700, 39, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Ponyta - Ember - Level 9
  (77, 7700, 52, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Ponyta - Flame Wheel - Level 13
  (77, 7700, 172, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Ponyta - Stomp - Level 17
  (77, 7700, 23, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Ponyta - Flame Charge - Level 21
  (77, 7700, 488, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Ponyta - Fire Spin - Level 25
  (77, 7700, 83, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Ponyta - Take Down - Level 29
  (77, 7700, 36, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Ponyta - Inferno - Level 33
  (77, 7700, 517, 16, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Ponyta - Agility - Level 37
  (77, 7700, 97, 16, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Ponyta - Fire Blast - Level 41
  (77, 7700, 126, 16, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Ponyta - Bounce - Level 45
  (77, 7700, 340, 16, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Ponyta - Flare Blitz - Level 49
  (77, 7700, 394, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Ponyta - Toxic - TM06
  (77, 7700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Ponyta - Hidden Power - TM10
  (77, 7700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Ponyta - Sunny Day - TM11
  (77, 7700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 17),
  -- Ponyta - Protect - TM17
  (77, 7700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 18),
  -- Ponyta - Frustration - TM21
  (77, 7700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 19),
  -- Ponyta - Solar Beam - TM22
  (77, 7700, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 20),
  -- Ponyta - Return - TM27
  (77, 7700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 21),
  -- Ponyta - Double Team - TM32
  (77, 7700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 22),
  -- Ponyta - Flamethrower - TM35
  (77, 7700, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 23),
  -- Ponyta - Fire Blast - TM38
  (77, 7700, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 24),
  -- Ponyta - Facade - TM42
  (77, 7700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 25),
  -- Ponyta - Flame Charge - TM43
  (77, 7700, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 26),
  -- Ponyta - Rest - TM44
  (77, 7700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 27),
  -- Ponyta - Attract - TM45
  (77, 7700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 28),
  -- Ponyta - Round - TM48
  (77, 7700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 29),
  -- Ponyta - Echoed Voice - TM49
  (77, 7700, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 30),
  -- Ponyta - Overheat - TM50
  (77, 7700, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 31),
  -- Ponyta - Will-O-Wisp - TM61
  (77, 7700, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 32),
  -- Ponyta - Swagger - TM87
  (77, 7700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 33),
  -- Ponyta - Sleep Talk - TM88
  (77, 7700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 34),
  -- Ponyta - Substitute - TM90
  (77, 7700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 35),
  -- Ponyta - Wild Charge - TM93
  (77, 7700, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 36),
  -- Ponyta - Confide - TM100
  (77, 7700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 37),
  -- Ponyta - Double Kick - Egg
  (77, 7700, 24, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Ponyta - Horn Drill - Egg
  (77, 7700, 32, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Ponyta - Thrash - Egg
  (77, 7700, 37, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Ponyta - Double-Edge - Egg
  (77, 7700, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Ponyta - Low Kick - Egg
  (77, 7700, 67, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Ponyta - Hypnosis - Egg
  (77, 7700, 95, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Ponyta - Flame Wheel - Egg
  (77, 7700, 172, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Ponyta - Charm - Egg
  (77, 7700, 204, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Ponyta - Morning Sun - Egg
  (77, 7700, 234, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Ponyta - Captivate - Egg
  (77, 7700, 445, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ponyta - Ally Switch - Egg
  (77, 7700, 502, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Ponyta - High Horsepower - Egg
  (77, 7700, 667, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Ponyta - Low Kick - Tutor
  (77, 7700, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Ponyta - Snore - Tutor
  (77, 7700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Ponyta - Iron Tail - Tutor
  (77, 7700, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Ponyta - Heat Wave - Tutor
  (77, 7700, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Ponyta - Bounce - Tutor
  (77, 7700, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Ponyta - Ally Switch - Tutor
  (77, 7700, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),

  -- Rapidash - Fury Attack - Level 1
  (78, 7800, 31, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rapidash - Tail Whip - Level 1
  (78, 7800, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rapidash - Growl - Level 1
  (78, 7800, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rapidash - Ember - Level 1
  (78, 7800, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rapidash - Quick Attack - Level 1
  (78, 7800, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rapidash - Megahorn - Level 1
  (78, 7800, 224, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rapidash - Poison Jab - Level 1
  (78, 7800, 398, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Rapidash - Tail Whip - Level 4
  (78, 7800, 39, 16, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Rapidash - Ember - Level 9
  (78, 7800, 52, 16, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Rapidash - Flame Wheel - Level 13
  (78, 7800, 172, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Rapidash - Stomp - Level 17
  (78, 7800, 23, 16, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Rapidash - Flame Charge - Level 21
  (78, 7800, 488, 16, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Rapidash - Fire Spin - Level 25
  (78, 7800, 83, 16, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Rapidash - Take Down - Level 29
  (78, 7800, 36, 16, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Rapidash - Inferno - Level 33
  (78, 7800, 517, 16, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Rapidash - Agility - Level 37
  (78, 7800, 97, 16, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Rapidash - Fire Blast - Level 41
  (78, 7800, 126, 16, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Rapidash - Bounce - Level 45
  (78, 7800, 340, 16, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Rapidash - Flare Blitz - Level 49
  (78, 7800, 394, 16, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Rapidash - Toxic - TM06
  (78, 7800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Rapidash - Hidden Power - TM10
  (78, 7800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Rapidash - Sunny Day - TM11
  (78, 7800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Rapidash - Hyper Beam - TM15
  (78, 7800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Rapidash - Protect - TM17
  (78, 7800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Rapidash - Frustration - TM21
  (78, 7800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Rapidash - Solar Beam - TM22
  (78, 7800, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 26),
  -- Rapidash - Return - TM27
  (78, 7800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Rapidash - Double Team - TM32
  (78, 7800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Rapidash - Flamethrower - TM35
  (78, 7800, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 29),
  -- Rapidash - Fire Blast - TM38
  (78, 7800, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 30),
  -- Rapidash - Facade - TM42
  (78, 7800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Rapidash - Flame Charge - TM43
  (78, 7800, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 32),
  -- Rapidash - Rest - TM44
  (78, 7800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Rapidash - Attract - TM45
  (78, 7800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Rapidash - Round - TM48
  (78, 7800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Rapidash - Echoed Voice - TM49
  (78, 7800, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 36),
  -- Rapidash - Overheat - TM50
  (78, 7800, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 37),
  -- Rapidash - Will-O-Wisp - TM61
  (78, 7800, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 38),
  -- Rapidash - Smart Strike - TM67
  (78, 7800, 684, 16, NULL, 2, NULL, NULL, 16002067, NULL, 39),
  -- Rapidash - Giga Impact - TM68
  (78, 7800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Rapidash - Poison Jab - TM84
  (78, 7800, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 41),
  -- Rapidash - Swagger - TM87
  (78, 7800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 42),
  -- Rapidash - Sleep Talk - TM88
  (78, 7800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 43),
  -- Rapidash - Substitute - TM90
  (78, 7800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Rapidash - Wild Charge - TM93
  (78, 7800, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 45),
  -- Rapidash - Confide - TM100
  (78, 7800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Rapidash - Low Kick - Tutor
  (78, 7800, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Rapidash - Snore - Tutor
  (78, 7800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Rapidash - Iron Tail - Tutor
  (78, 7800, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Rapidash - Heat Wave - Tutor
  (78, 7800, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Rapidash - Bounce - Tutor
  (78, 7800, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Rapidash - Ally Switch - Tutor
  (78, 7800, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Rapidash - Drill Run - Tutor
  (78, 7800, 529, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Rapidash - Throat Chop - Tutor
  (78, 7800, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Rapidash - Fury Attack - Evolution
  (78, 7800, 31, 16, NULL, 7, NULL, NULL, NULL, NULL, 55),

  -- Slowpoke - Tackle - Level 1
  (79, 7900, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowpoke - Curse - Level 1
  (79, 7900, 174, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowpoke - Yawn - Level 1
  (79, 7900, 281, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowpoke - Growl - Level 5
  (79, 7900, 45, 16, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Slowpoke - Water Gun - Level 9
  (79, 7900, 55, 16, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Slowpoke - Confusion - Level 14
  (79, 7900, 93, 16, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Slowpoke - Disable - Level 19
  (79, 7900, 50, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Slowpoke - Headbutt - Level 23
  (79, 7900, 29, 16, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Slowpoke - Water Pulse - Level 28
  (79, 7900, 352, 16, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Slowpoke - Zen Headbutt - Level 32
  (79, 7900, 428, 16, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Slowpoke - Slack Off - Level 36
  (79, 7900, 303, 16, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Slowpoke - Amnesia - Level 41
  (79, 7900, 133, 16, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Slowpoke - Psychic - Level 45
  (79, 7900, 94, 16, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Slowpoke - Rain Dance - Level 49
  (79, 7900, 240, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Slowpoke - Psych Up - Level 54
  (79, 7900, 244, 16, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Slowpoke - Heal Pulse - Level 58
  (79, 7900, 505, 16, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Slowpoke - Psyshock - TM03
  (79, 7900, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 17),
  -- Slowpoke - Calm Mind - TM04
  (79, 7900, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 18),
  -- Slowpoke - Toxic - TM06
  (79, 7900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Slowpoke - Hail - TM07
  (79, 7900, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 20),
  -- Slowpoke - Hidden Power - TM10
  (79, 7900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Slowpoke - Sunny Day - TM11
  (79, 7900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Slowpoke - Ice Beam - TM13
  (79, 7900, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 23),
  -- Slowpoke - Blizzard - TM14
  (79, 7900, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 24),
  -- Slowpoke - Light Screen - TM16
  (79, 7900, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 25),
  -- Slowpoke - Protect - TM17
  (79, 7900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Slowpoke - Rain Dance - TM18
  (79, 7900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Slowpoke - Safeguard - TM20
  (79, 7900, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 28),
  -- Slowpoke - Frustration - TM21
  (79, 7900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Slowpoke - Earthquake - TM26
  (79, 7900, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 30),
  -- Slowpoke - Return - TM27
  (79, 7900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Slowpoke - Psychic - TM29
  (79, 7900, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 32),
  -- Slowpoke - Shadow Ball - TM30
  (79, 7900, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 33),
  -- Slowpoke - Double Team - TM32
  (79, 7900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Slowpoke - Flamethrower - TM35
  (79, 7900, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 35),
  -- Slowpoke - Fire Blast - TM38
  (79, 7900, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 36),
  -- Slowpoke - Facade - TM42
  (79, 7900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Slowpoke - Rest - TM44
  (79, 7900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Slowpoke - Attract - TM45
  (79, 7900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Slowpoke - Round - TM48
  (79, 7900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Slowpoke - Echoed Voice - TM49
  (79, 7900, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 41),
  -- Slowpoke - Scald - TM55
  (79, 7900, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 42),
  -- Slowpoke - Thunder Wave - TM73
  (79, 7900, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 43),
  -- Slowpoke - Psych Up - TM77
  (79, 7900, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 44),
  -- Slowpoke - Bulldoze - TM78
  (79, 7900, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 45),
  -- Slowpoke - Dream Eater - TM85
  (79, 7900, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 46),
  -- Slowpoke - Grass Knot - TM86
  (79, 7900, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 47),
  -- Slowpoke - Swagger - TM87
  (79, 7900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Slowpoke - Sleep Talk - TM88
  (79, 7900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Slowpoke - Substitute - TM90
  (79, 7900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Slowpoke - Trick Room - TM92
  (79, 7900, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 51),
  -- Slowpoke - Surf - TM94
  (79, 7900, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 52),
  -- Slowpoke - Confide - TM100
  (79, 7900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 53),
  -- Slowpoke - Stomp - Egg
  (79, 7900, 23, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Slowpoke - Snore - Egg
  (79, 7900, 173, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Slowpoke - Belly Drum - Egg
  (79, 7900, 187, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Slowpoke - Sleep Talk - Egg
  (79, 7900, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Slowpoke - Future Sight - Egg
  (79, 7900, 248, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Slowpoke - Mud Sport - Egg
  (79, 7900, 300, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Slowpoke - Block - Egg
  (79, 7900, 335, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Slowpoke - Me First - Egg
  (79, 7900, 382, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Slowpoke - Zen Headbutt - Egg
  (79, 7900, 428, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Slowpoke - Wonder Room - Egg
  (79, 7900, 472, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Slowpoke - Belch - Egg
  (79, 7900, 562, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Slowpoke - Snore - Tutor
  (79, 7900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Slowpoke - Icy Wind - Tutor
  (79, 7900, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Slowpoke - Iron Tail - Tutor
  (79, 7900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Slowpoke - Trick - Tutor
  (79, 7900, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Slowpoke - Magic Coat - Tutor
  (79, 7900, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Slowpoke - Recycle - Tutor
  (79, 7900, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Slowpoke - Skill Swap - Tutor
  (79, 7900, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Slowpoke - Signal Beam - Tutor
  (79, 7900, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Slowpoke - Block - Tutor
  (79, 7900, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Slowpoke - Water Pulse - Tutor
  (79, 7900, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Slowpoke - Aqua Tail - Tutor
  (79, 7900, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Slowpoke - Zen Headbutt - Tutor
  (79, 7900, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Slowpoke - Wonder Room - Tutor
  (79, 7900, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Slowpoke - Telekinesis - Tutor
  (79, 7900, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Slowpoke - After You - Tutor
  (79, 7900, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),

  -- Slowbro - Tackle - Level 1
  (80, 8000, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowbro - Growl - Level 1
  (80, 8000, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowbro - Withdraw - Level 1
  (80, 8000, 110, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowbro - Curse - Level 1
  (80, 8000, 174, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slowbro - Yawn - Level 1
  (80, 8000, 281, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Slowbro - Heal Pulse - Level 1
  (80, 8000, 505, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Slowbro - Growl - Level 5
  (80, 8000, 45, 16, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Slowbro - Water Gun - Level 9
  (80, 8000, 55, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Slowbro - Confusion - Level 14
  (80, 8000, 93, 16, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Slowbro - Disable - Level 19
  (80, 8000, 50, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Slowbro - Headbutt - Level 23
  (80, 8000, 29, 16, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Slowbro - Water Pulse - Level 28
  (80, 8000, 352, 16, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Slowbro - Zen Headbutt - Level 32
  (80, 8000, 428, 16, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Slowbro - Slack Off - Level 36
  (80, 8000, 303, 16, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Slowbro - Amnesia - Level 43
  (80, 8000, 133, 16, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Slowbro - Psychic - Level 49
  (80, 8000, 94, 16, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Slowbro - Rain Dance - Level 55
  (80, 8000, 240, 16, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Slowbro - Psych Up - Level 62
  (80, 8000, 244, 16, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Slowbro - Heal Pulse - Level 68
  (80, 8000, 505, 16, NULL, 1, 68, NULL, NULL, NULL, 19),
  -- Slowbro - Psyshock - TM03
  (80, 8000, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 20),
  -- Slowbro - Calm Mind - TM04
  (80, 8000, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 21),
  -- Slowbro - Toxic - TM06
  (80, 8000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Slowbro - Hail - TM07
  (80, 8000, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 23),
  -- Slowbro - Hidden Power - TM10
  (80, 8000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Slowbro - Sunny Day - TM11
  (80, 8000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Slowbro - Ice Beam - TM13
  (80, 8000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 26),
  -- Slowbro - Blizzard - TM14
  (80, 8000, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 27),
  -- Slowbro - Hyper Beam - TM15
  (80, 8000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 28),
  -- Slowbro - Light Screen - TM16
  (80, 8000, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 29),
  -- Slowbro - Protect - TM17
  (80, 8000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 30),
  -- Slowbro - Rain Dance - TM18
  (80, 8000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 31),
  -- Slowbro - Safeguard - TM20
  (80, 8000, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 32),
  -- Slowbro - Frustration - TM21
  (80, 8000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 33),
  -- Slowbro - Earthquake - TM26
  (80, 8000, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 34),
  -- Slowbro - Return - TM27
  (80, 8000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 35),
  -- Slowbro - Psychic - TM29
  (80, 8000, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 36),
  -- Slowbro - Shadow Ball - TM30
  (80, 8000, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 37),
  -- Slowbro - Brick Break - TM31
  (80, 8000, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 38),
  -- Slowbro - Double Team - TM32
  (80, 8000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 39),
  -- Slowbro - Flamethrower - TM35
  (80, 8000, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 40),
  -- Slowbro - Fire Blast - TM38
  (80, 8000, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 41),
  -- Slowbro - Aerial Ace - TM40
  (80, 8000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 42),
  -- Slowbro - Facade - TM42
  (80, 8000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 43),
  -- Slowbro - Rest - TM44
  (80, 8000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 44),
  -- Slowbro - Attract - TM45
  (80, 8000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 45),
  -- Slowbro - Round - TM48
  (80, 8000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 46),
  -- Slowbro - Echoed Voice - TM49
  (80, 8000, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 47),
  -- Slowbro - Focus Blast - TM52
  (80, 8000, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 48),
  -- Slowbro - Scald - TM55
  (80, 8000, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 49),
  -- Slowbro - Fling - TM56
  (80, 8000, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 50),
  -- Slowbro - Giga Impact - TM68
  (80, 8000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 51),
  -- Slowbro - Thunder Wave - TM73
  (80, 8000, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 52),
  -- Slowbro - Psych Up - TM77
  (80, 8000, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 53),
  -- Slowbro - Bulldoze - TM78
  (80, 8000, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 54),
  -- Slowbro - Dream Eater - TM85
  (80, 8000, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 55),
  -- Slowbro - Grass Knot - TM86
  (80, 8000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 56),
  -- Slowbro - Swagger - TM87
  (80, 8000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 57),
  -- Slowbro - Sleep Talk - TM88
  (80, 8000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 58),
  -- Slowbro - Substitute - TM90
  (80, 8000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 59),
  -- Slowbro - Trick Room - TM92
  (80, 8000, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 60),
  -- Slowbro - Surf - TM94
  (80, 8000, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 61),
  -- Slowbro - Confide - TM100
  (80, 8000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 62),
  -- Slowbro - Ice Punch - Tutor
  (80, 8000, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Slowbro - Snore - Tutor
  (80, 8000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Slowbro - Icy Wind - Tutor
  (80, 8000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Slowbro - Iron Tail - Tutor
  (80, 8000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Slowbro - Focus Punch - Tutor
  (80, 8000, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Slowbro - Trick - Tutor
  (80, 8000, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Slowbro - Magic Coat - Tutor
  (80, 8000, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Slowbro - Recycle - Tutor
  (80, 8000, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Slowbro - Skill Swap - Tutor
  (80, 8000, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Slowbro - Signal Beam - Tutor
  (80, 8000, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Slowbro - Iron Defense - Tutor
  (80, 8000, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Slowbro - Block - Tutor
  (80, 8000, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Slowbro - Water Pulse - Tutor
  (80, 8000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Slowbro - Aqua Tail - Tutor
  (80, 8000, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Slowbro - Drain Punch - Tutor
  (80, 8000, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Slowbro - Zen Headbutt - Tutor
  (80, 8000, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Slowbro - Wonder Room - Tutor
  (80, 8000, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Slowbro - Telekinesis - Tutor
  (80, 8000, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Slowbro - Foul Play - Tutor
  (80, 8000, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Slowbro - After You - Tutor
  (80, 8000, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Slowbro - Withdraw - Evolution
  (80, 8000, 110, 16, NULL, 7, NULL, NULL, NULL, NULL, 83),

  -- Magnemite - Tackle - Level 1
  (81, 8100, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magnemite - Supersonic - Level 1
  (81, 8100, 48, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magnemite - Thunder Shock - Level 5
  (81, 8100, 84, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Magnemite - Thunder Wave - Level 7
  (81, 8100, 86, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Magnemite - Magnet Bomb - Level 11
  (81, 8100, 443, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Magnemite - Light Screen - Level 13
  (81, 8100, 113, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Magnemite - Sonic Boom - Level 17
  (81, 8100, 49, 16, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Magnemite - Spark - Level 19
  (81, 8100, 209, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Magnemite - Mirror Shot - Level 23
  (81, 8100, 429, 16, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Magnemite - Metal Sound - Level 25
  (81, 8100, 319, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Magnemite - Electro Ball - Level 29
  (81, 8100, 486, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Magnemite - Flash Cannon - Level 31
  (81, 8100, 430, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Magnemite - Screech - Level 35
  (81, 8100, 103, 16, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Magnemite - Discharge - Level 37
  (81, 8100, 435, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Magnemite - Lock-On - Level 41
  (81, 8100, 199, 16, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Magnemite - Magnet Rise - Level 43
  (81, 8100, 393, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Magnemite - Gyro Ball - Level 47
  (81, 8100, 360, 16, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Magnemite - Zap Cannon - Level 49
  (81, 8100, 192, 16, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Magnemite - Toxic - TM06
  (81, 8100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Magnemite - Hidden Power - TM10
  (81, 8100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Magnemite - Sunny Day - TM11
  (81, 8100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Magnemite - Light Screen - TM16
  (81, 8100, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 22),
  -- Magnemite - Protect - TM17
  (81, 8100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Magnemite - Rain Dance - TM18
  (81, 8100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Magnemite - Frustration - TM21
  (81, 8100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Magnemite - Thunderbolt - TM24
  (81, 8100, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 26),
  -- Magnemite - Thunder - TM25
  (81, 8100, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 27),
  -- Magnemite - Return - TM27
  (81, 8100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Magnemite - Double Team - TM32
  (81, 8100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Magnemite - Reflect - TM33
  (81, 8100, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 30),
  -- Magnemite - Facade - TM42
  (81, 8100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Magnemite - Rest - TM44
  (81, 8100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Magnemite - Round - TM48
  (81, 8100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Magnemite - Charge Beam - TM57
  (81, 8100, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 34),
  -- Magnemite - Explosion - TM64
  (81, 8100, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 35),
  -- Magnemite - Volt Switch - TM72
  (81, 8100, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 36),
  -- Magnemite - Thunder Wave - TM73
  (81, 8100, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 37),
  -- Magnemite - Gyro Ball - TM74
  (81, 8100, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 38),
  -- Magnemite - Psych Up - TM77
  (81, 8100, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 39),
  -- Magnemite - Swagger - TM87
  (81, 8100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Magnemite - Sleep Talk - TM88
  (81, 8100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Magnemite - Substitute - TM90
  (81, 8100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Magnemite - Flash Cannon - TM91
  (81, 8100, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 43),
  -- Magnemite - Wild Charge - TM93
  (81, 8100, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 44),
  -- Magnemite - Confide - TM100
  (81, 8100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 45),
  -- Magnemite - Snore - Tutor
  (81, 8100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Magnemite - Magic Coat - Tutor
  (81, 8100, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Magnemite - Recycle - Tutor
  (81, 8100, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Magnemite - Signal Beam - Tutor
  (81, 8100, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Magnemite - Iron Defense - Tutor
  (81, 8100, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Magnemite - Shock Wave - Tutor
  (81, 8100, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Magnemite - Gravity - Tutor
  (81, 8100, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Magnemite - Magnet Rise - Tutor
  (81, 8100, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Magnemite - Electroweb - Tutor
  (81, 8100, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),

  -- Magneton - Tackle - Level 1
  (82, 8200, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magneton - Supersonic - Level 1
  (82, 8200, 48, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magneton - Thunder Shock - Level 1
  (82, 8200, 84, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magneton - Thunder Wave - Level 1
  (82, 8200, 86, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magneton - Tri Attack - Level 1
  (82, 8200, 161, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magneton - Zap Cannon - Level 1
  (82, 8200, 192, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Magneton - Electric Terrain - Level 1
  (82, 8200, 604, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Magneton - Thunder Shock - Level 5
  (82, 8200, 84, 16, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Magneton - Thunder Wave - Level 7
  (82, 8200, 86, 16, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Magneton - Magnet Bomb - Level 11
  (82, 8200, 443, 16, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Magneton - Light Screen - Level 13
  (82, 8200, 113, 16, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Magneton - Sonic Boom - Level 17
  (82, 8200, 49, 16, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Magneton - Spark - Level 19
  (82, 8200, 209, 16, NULL, 1, 19, NULL, NULL, NULL, 13),
  -- Magneton - Mirror Shot - Level 23
  (82, 8200, 429, 16, NULL, 1, 23, NULL, NULL, NULL, 14),
  -- Magneton - Metal Sound - Level 25
  (82, 8200, 319, 16, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Magneton - Electro Ball - Level 29
  (82, 8200, 486, 16, NULL, 1, 29, NULL, NULL, NULL, 16),
  -- Magneton - Flash Cannon - Level 33
  (82, 8200, 430, 16, NULL, 1, 33, NULL, NULL, NULL, 17),
  -- Magneton - Screech - Level 39
  (82, 8200, 103, 16, NULL, 1, 39, NULL, NULL, NULL, 18),
  -- Magneton - Discharge - Level 43
  (82, 8200, 435, 16, NULL, 1, 43, NULL, NULL, NULL, 19),
  -- Magneton - Lock-On - Level 49
  (82, 8200, 199, 16, NULL, 1, 49, NULL, NULL, NULL, 20),
  -- Magneton - Magnet Rise - Level 53
  (82, 8200, 393, 16, NULL, 1, 53, NULL, NULL, NULL, 21),
  -- Magneton - Gyro Ball - Level 59
  (82, 8200, 360, 16, NULL, 1, 59, NULL, NULL, NULL, 22),
  -- Magneton - Zap Cannon - Level 63
  (82, 8200, 192, 16, NULL, 1, 63, NULL, NULL, NULL, 23),
  -- Magneton - Toxic - TM06
  (82, 8200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 24),
  -- Magneton - Hidden Power - TM10
  (82, 8200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Magneton - Sunny Day - TM11
  (82, 8200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 26),
  -- Magneton - Hyper Beam - TM15
  (82, 8200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 27),
  -- Magneton - Light Screen - TM16
  (82, 8200, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 28),
  -- Magneton - Protect - TM17
  (82, 8200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Magneton - Rain Dance - TM18
  (82, 8200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 30),
  -- Magneton - Frustration - TM21
  (82, 8200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Magneton - Thunderbolt - TM24
  (82, 8200, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 32),
  -- Magneton - Thunder - TM25
  (82, 8200, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 33),
  -- Magneton - Return - TM27
  (82, 8200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 34),
  -- Magneton - Double Team - TM32
  (82, 8200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Magneton - Reflect - TM33
  (82, 8200, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 36),
  -- Magneton - Facade - TM42
  (82, 8200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Magneton - Rest - TM44
  (82, 8200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Magneton - Round - TM48
  (82, 8200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Magneton - Charge Beam - TM57
  (82, 8200, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 40),
  -- Magneton - Explosion - TM64
  (82, 8200, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 41),
  -- Magneton - Giga Impact - TM68
  (82, 8200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 42),
  -- Magneton - Volt Switch - TM72
  (82, 8200, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 43),
  -- Magneton - Thunder Wave - TM73
  (82, 8200, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 44),
  -- Magneton - Gyro Ball - TM74
  (82, 8200, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 45),
  -- Magneton - Psych Up - TM77
  (82, 8200, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 46),
  -- Magneton - Swagger - TM87
  (82, 8200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 47),
  -- Magneton - Sleep Talk - TM88
  (82, 8200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 48),
  -- Magneton - Substitute - TM90
  (82, 8200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Magneton - Flash Cannon - TM91
  (82, 8200, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 50),
  -- Magneton - Wild Charge - TM93
  (82, 8200, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 51),
  -- Magneton - Confide - TM100
  (82, 8200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 52),
  -- Magneton - Snore - Tutor
  (82, 8200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Magneton - Magic Coat - Tutor
  (82, 8200, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Magneton - Recycle - Tutor
  (82, 8200, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Magneton - Signal Beam - Tutor
  (82, 8200, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Magneton - Iron Defense - Tutor
  (82, 8200, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Magneton - Shock Wave - Tutor
  (82, 8200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Magneton - Gravity - Tutor
  (82, 8200, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Magneton - Magnet Rise - Tutor
  (82, 8200, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Magneton - Electroweb - Tutor
  (82, 8200, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Magneton - Tri Attack - Evolution
  (82, 8200, 161, 16, NULL, 7, NULL, NULL, NULL, NULL, 62),

  -- Farfetch'd - Sand Attack - Level 1
  (83, 8300, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Farfetch'd - Leer - Level 1
  (83, 8300, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Farfetch'd - Peck - Level 1
  (83, 8300, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Farfetch'd - Fury Cutter - Level 1
  (83, 8300, 210, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Farfetch'd - Poison Jab - Level 1
  (83, 8300, 398, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Farfetch'd - Brave Bird - Level 1
  (83, 8300, 413, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Farfetch'd - Fury Attack - Level 7
  (83, 8300, 31, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Farfetch'd - Aerial Ace - Level 9
  (83, 8300, 332, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Farfetch'd - Knock Off - Level 13
  (83, 8300, 282, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Farfetch'd - Slash - Level 19
  (83, 8300, 163, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Farfetch'd - Air Cutter - Level 21
  (83, 8300, 314, 16, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Farfetch'd - Swords Dance - Level 25
  (83, 8300, 14, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Farfetch'd - Agility - Level 31
  (83, 8300, 97, 16, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Farfetch'd - Night Slash - Level 33
  (83, 8300, 400, 16, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Farfetch'd - Acrobatics - Level 37
  (83, 8300, 512, 16, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Farfetch'd - Feint - Level 43
  (83, 8300, 364, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Farfetch'd - False Swipe - Level 45
  (83, 8300, 206, 16, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Farfetch'd - Air Slash - Level 49
  (83, 8300, 403, 16, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Farfetch'd - Brave Bird - Level 55
  (83, 8300, 413, 16, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Farfetch'd - Work Up - TM01
  (83, 8300, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 20),
  -- Farfetch'd - Toxic - TM06
  (83, 8300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Farfetch'd - Hidden Power - TM10
  (83, 8300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Farfetch'd - Sunny Day - TM11
  (83, 8300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Farfetch'd - Protect - TM17
  (83, 8300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Farfetch'd - Roost - TM19
  (83, 8300, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 25),
  -- Farfetch'd - Frustration - TM21
  (83, 8300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Farfetch'd - Return - TM27
  (83, 8300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Farfetch'd - Double Team - TM32
  (83, 8300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Farfetch'd - Aerial Ace - TM40
  (83, 8300, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 29),
  -- Farfetch'd - Facade - TM42
  (83, 8300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Farfetch'd - Rest - TM44
  (83, 8300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Farfetch'd - Attract - TM45
  (83, 8300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Farfetch'd - Thief - TM46
  (83, 8300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 33),
  -- Farfetch'd - Round - TM48
  (83, 8300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Farfetch'd - Steel Wing - TM51
  (83, 8300, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 35),
  -- Farfetch'd - False Swipe - TM54
  (83, 8300, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 36),
  -- Farfetch'd - Brutal Swing - TM59
  (83, 8300, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 37),
  -- Farfetch'd - Acrobatics - TM62
  (83, 8300, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 38),
  -- Farfetch'd - Swords Dance - TM75
  (83, 8300, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 39),
  -- Farfetch'd - Fly - TM76
  (83, 8300, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 40),
  -- Farfetch'd - Psych Up - TM77
  (83, 8300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 41),
  -- Farfetch'd - Poison Jab - TM84
  (83, 8300, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 42),
  -- Farfetch'd - Swagger - TM87
  (83, 8300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Farfetch'd - Sleep Talk - TM88
  (83, 8300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Farfetch'd - U-turn - TM89
  (83, 8300, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 45),
  -- Farfetch'd - Substitute - TM90
  (83, 8300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Farfetch'd - Confide - TM100
  (83, 8300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Farfetch'd - Gust - Egg
  (83, 8300, 16, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Farfetch'd - Quick Attack - Egg
  (83, 8300, 98, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Farfetch'd - Mirror Move - Egg
  (83, 8300, 119, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Farfetch'd - Curse - Egg
  (83, 8300, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Farfetch'd - Flail - Egg
  (83, 8300, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Farfetch'd - Mud-Slap - Egg
  (83, 8300, 189, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Farfetch'd - Foresight - Egg
  (83, 8300, 193, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Farfetch'd - Steel Wing - Egg
  (83, 8300, 211, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Farfetch'd - Revenge - Egg
  (83, 8300, 279, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Farfetch'd - Feather Dance - Egg
  (83, 8300, 297, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Farfetch'd - Covet - Egg
  (83, 8300, 343, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Farfetch'd - Leaf Blade - Egg
  (83, 8300, 348, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Farfetch'd - Roost - Egg
  (83, 8300, 355, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Farfetch'd - Trump Card - Egg
  (83, 8300, 376, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Farfetch'd - Night Slash - Egg
  (83, 8300, 400, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Farfetch'd - Simple Beam - Egg
  (83, 8300, 493, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Farfetch'd - Final Gambit - Egg
  (83, 8300, 515, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Farfetch'd - First Impression - Egg
  (83, 8300, 660, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Farfetch'd - Sky Attack - Tutor
  (83, 8300, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Farfetch'd - Snore - Tutor
  (83, 8300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Farfetch'd - Iron Tail - Tutor
  (83, 8300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Farfetch'd - Uproar - Tutor
  (83, 8300, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Farfetch'd - Heat Wave - Tutor
  (83, 8300, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Farfetch'd - Helping Hand - Tutor
  (83, 8300, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Farfetch'd - Knock Off - Tutor
  (83, 8300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Farfetch'd - Covet - Tutor
  (83, 8300, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Farfetch'd - Tailwind - Tutor
  (83, 8300, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Farfetch'd - Last Resort - Tutor
  (83, 8300, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Farfetch'd - Defog - Tutor
  (83, 8300, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Farfetch'd - Laser Focus - Tutor
  (83, 8300, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Farfetch'd - Throat Chop - Tutor
  (83, 8300, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),

  -- Doduo - Growl - Level 1
  (84, 8400, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Doduo - Peck - Level 1
  (84, 8400, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Doduo - Quick Attack - Level 5
  (84, 8400, 98, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Doduo - Rage - Level 8
  (84, 8400, 99, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Doduo - Fury Attack - Level 12
  (84, 8400, 31, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Doduo - Pursuit - Level 15
  (84, 8400, 228, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Doduo - Pluck - Level 19
  (84, 8400, 365, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Doduo - Double Hit - Level 22
  (84, 8400, 458, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Doduo - Agility - Level 26
  (84, 8400, 97, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Doduo - Uproar - Level 29
  (84, 8400, 253, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Doduo - Acupressure - Level 33
  (84, 8400, 367, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Doduo - Swords Dance - Level 36
  (84, 8400, 14, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Doduo - Jump Kick - Level 40
  (84, 8400, 26, 16, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Doduo - Drill Peck - Level 43
  (84, 8400, 65, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Doduo - Endeavor - Level 47
  (84, 8400, 283, 16, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Doduo - Thrash - Level 50
  (84, 8400, 37, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Doduo - Work Up - TM01
  (84, 8400, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Doduo - Toxic - TM06
  (84, 8400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Doduo - Hidden Power - TM10
  (84, 8400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Doduo - Sunny Day - TM11
  (84, 8400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Doduo - Protect - TM17
  (84, 8400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Doduo - Roost - TM19
  (84, 8400, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 22),
  -- Doduo - Frustration - TM21
  (84, 8400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Doduo - Return - TM27
  (84, 8400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Doduo - Double Team - TM32
  (84, 8400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Doduo - Aerial Ace - TM40
  (84, 8400, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 26),
  -- Doduo - Facade - TM42
  (84, 8400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Doduo - Rest - TM44
  (84, 8400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Doduo - Attract - TM45
  (84, 8400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Doduo - Thief - TM46
  (84, 8400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 30),
  -- Doduo - Round - TM48
  (84, 8400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Doduo - Echoed Voice - TM49
  (84, 8400, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 32),
  -- Doduo - Steel Wing - TM51
  (84, 8400, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 33),
  -- Doduo - Swords Dance - TM75
  (84, 8400, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 34),
  -- Doduo - Fly - TM76
  (84, 8400, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 35),
  -- Doduo - Swagger - TM87
  (84, 8400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 36),
  -- Doduo - Sleep Talk - TM88
  (84, 8400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 37),
  -- Doduo - Substitute - TM90
  (84, 8400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Doduo - Confide - TM100
  (84, 8400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 39),
  -- Doduo - Supersonic - Egg
  (84, 8400, 48, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Doduo - Quick Attack - Egg
  (84, 8400, 98, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Doduo - Haze - Egg
  (84, 8400, 114, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Doduo - Mirror Move - Egg
  (84, 8400, 119, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Doduo - Flail - Egg
  (84, 8400, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Doduo - Feint Attack - Egg
  (84, 8400, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Doduo - Endeavor - Egg
  (84, 8400, 283, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Doduo - Natural Gift - Egg
  (84, 8400, 363, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Doduo - Assurance - Egg
  (84, 8400, 372, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Doduo - Brave Bird - Egg
  (84, 8400, 413, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Doduo - Snore - Tutor
  (84, 8400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Doduo - Uproar - Tutor
  (84, 8400, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Doduo - Knock Off - Tutor
  (84, 8400, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Doduo - Endeavor - Tutor
  (84, 8400, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),

  -- Dodrio - Growl - Level 1
  (85, 8500, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dodrio - Peck - Level 1
  (85, 8500, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dodrio - Quick Attack - Level 1
  (85, 8500, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dodrio - Rage - Level 1
  (85, 8500, 99, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dodrio - Tri Attack - Level 1
  (85, 8500, 161, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dodrio - Quick Attack - Level 5
  (85, 8500, 98, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Dodrio - Rage - Level 8
  (85, 8500, 99, 16, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Dodrio - Fury Attack - Level 12
  (85, 8500, 31, 16, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Dodrio - Pursuit - Level 15
  (85, 8500, 228, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Dodrio - Pluck - Level 19
  (85, 8500, 365, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Dodrio - Double Hit - Level 22
  (85, 8500, 458, 16, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Dodrio - Agility - Level 26
  (85, 8500, 97, 16, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Dodrio - Uproar - Level 29
  (85, 8500, 253, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Dodrio - Acupressure - Level 34
  (85, 8500, 367, 16, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Dodrio - Swords Dance - Level 38
  (85, 8500, 14, 16, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Dodrio - Jump Kick - Level 43
  (85, 8500, 26, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Dodrio - Drill Peck - Level 47
  (85, 8500, 65, 16, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Dodrio - Endeavor - Level 52
  (85, 8500, 283, 16, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Dodrio - Thrash - Level 56
  (85, 8500, 37, 16, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Dodrio - Work Up - TM01
  (85, 8500, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 20),
  -- Dodrio - Toxic - TM06
  (85, 8500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Dodrio - Hidden Power - TM10
  (85, 8500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Dodrio - Sunny Day - TM11
  (85, 8500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Dodrio - Taunt - TM12
  (85, 8500, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Dodrio - Hyper Beam - TM15
  (85, 8500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Dodrio - Protect - TM17
  (85, 8500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Dodrio - Roost - TM19
  (85, 8500, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 27),
  -- Dodrio - Frustration - TM21
  (85, 8500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Dodrio - Return - TM27
  (85, 8500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Dodrio - Double Team - TM32
  (85, 8500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Dodrio - Aerial Ace - TM40
  (85, 8500, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 31),
  -- Dodrio - Torment - TM41
  (85, 8500, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 32),
  -- Dodrio - Facade - TM42
  (85, 8500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Dodrio - Rest - TM44
  (85, 8500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Dodrio - Attract - TM45
  (85, 8500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Dodrio - Thief - TM46
  (85, 8500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 36),
  -- Dodrio - Round - TM48
  (85, 8500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Dodrio - Echoed Voice - TM49
  (85, 8500, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 38),
  -- Dodrio - Steel Wing - TM51
  (85, 8500, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 39),
  -- Dodrio - Payback - TM66
  (85, 8500, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 40),
  -- Dodrio - Giga Impact - TM68
  (85, 8500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 41),
  -- Dodrio - Swords Dance - TM75
  (85, 8500, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 42),
  -- Dodrio - Fly - TM76
  (85, 8500, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 43),
  -- Dodrio - Swagger - TM87
  (85, 8500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Dodrio - Sleep Talk - TM88
  (85, 8500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Dodrio - Substitute - TM90
  (85, 8500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Dodrio - Confide - TM100
  (85, 8500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Dodrio - Sky Attack - Tutor
  (85, 8500, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Dodrio - Snore - Tutor
  (85, 8500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Dodrio - Uproar - Tutor
  (85, 8500, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Dodrio - Knock Off - Tutor
  (85, 8500, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Dodrio - Endeavor - Tutor
  (85, 8500, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Dodrio - Stomping Tantrum - Tutor
  (85, 8500, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Dodrio - Tri Attack - Evolution
  (85, 8500, 161, 16, NULL, 7, NULL, NULL, NULL, NULL, 54),

  -- Seel - Headbutt - Level 1
  (86, 8600, 29, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seel - Growl - Level 3
  (86, 8600, 45, 16, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Seel - Water Sport - Level 7
  (86, 8600, 346, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Seel - Icy Wind - Level 11
  (86, 8600, 196, 16, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Seel - Encore - Level 13
  (86, 8600, 227, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Seel - Ice Shard - Level 17
  (86, 8600, 420, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Seel - Rest - Level 21
  (86, 8600, 156, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Seel - Aqua Ring - Level 23
  (86, 8600, 392, 16, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Seel - Aurora Beam - Level 27
  (86, 8600, 62, 16, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Seel - Aqua Jet - Level 31
  (86, 8600, 453, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Seel - Brine - Level 33
  (86, 8600, 362, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Seel - Take Down - Level 37
  (86, 8600, 36, 16, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Seel - Dive - Level 41
  (86, 8600, 291, 16, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Seel - Aqua Tail - Level 43
  (86, 8600, 401, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Seel - Ice Beam - Level 47
  (86, 8600, 58, 16, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Seel - Safeguard - Level 51
  (86, 8600, 219, 16, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Seel - Hail - Level 53
  (86, 8600, 258, 16, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Seel - Toxic - TM06
  (86, 8600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Seel - Hail - TM07
  (86, 8600, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 19),
  -- Seel - Hidden Power - TM10
  (86, 8600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Seel - Ice Beam - TM13
  (86, 8600, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Seel - Blizzard - TM14
  (86, 8600, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 22),
  -- Seel - Protect - TM17
  (86, 8600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Seel - Rain Dance - TM18
  (86, 8600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Seel - Safeguard - TM20
  (86, 8600, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 25),
  -- Seel - Frustration - TM21
  (86, 8600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Seel - Return - TM27
  (86, 8600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Seel - Double Team - TM32
  (86, 8600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Seel - Facade - TM42
  (86, 8600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Seel - Rest - TM44
  (86, 8600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Seel - Attract - TM45
  (86, 8600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Seel - Thief - TM46
  (86, 8600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 32),
  -- Seel - Round - TM48
  (86, 8600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Seel - Echoed Voice - TM49
  (86, 8600, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 34),
  -- Seel - Fling - TM56
  (86, 8600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 35),
  -- Seel - Smart Strike - TM67
  (86, 8600, 684, 16, NULL, 2, NULL, NULL, 16002067, NULL, 36),
  -- Seel - Swagger - TM87
  (86, 8600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Seel - Sleep Talk - TM88
  (86, 8600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Seel - Substitute - TM90
  (86, 8600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Seel - Surf - TM94
  (86, 8600, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 40),
  -- Seel - Waterfall - TM98
  (86, 8600, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 41),
  -- Seel - Confide - TM100
  (86, 8600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Seel - Slam - Egg
  (86, 8600, 21, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Seel - Horn Drill - Egg
  (86, 8600, 32, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Seel - Disable - Egg
  (86, 8600, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Seel - Lick - Egg
  (86, 8600, 122, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Seel - Perish Song - Egg
  (86, 8600, 195, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Seel - Sleep Talk - Egg
  (86, 8600, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Seel - Encore - Egg
  (86, 8600, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Seel - Iron Tail - Egg
  (86, 8600, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Seel - Fake Out - Egg
  (86, 8600, 252, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Seel - Stockpile - Egg
  (86, 8600, 254, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Seel - Spit Up - Egg
  (86, 8600, 255, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Seel - Swallow - Egg
  (86, 8600, 256, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Seel - Signal Beam - Egg
  (86, 8600, 324, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Seel - Icicle Spear - Egg
  (86, 8600, 333, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Seel - Water Pulse - Egg
  (86, 8600, 352, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Seel - Entrainment - Egg
  (86, 8600, 494, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Seel - Belch - Egg
  (86, 8600, 562, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Seel - Snore - Tutor
  (86, 8600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Seel - Icy Wind - Tutor
  (86, 8600, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Seel - Iron Tail - Tutor
  (86, 8600, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Seel - Signal Beam - Tutor
  (86, 8600, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Seel - Water Pulse - Tutor
  (86, 8600, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Seel - Aqua Tail - Tutor
  (86, 8600, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Seel - Drill Run - Tutor
  (86, 8600, 529, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),

  -- Dewgong - Headbutt - Level 1
  (87, 8700, 29, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dewgong - Growl - Level 1
  (87, 8700, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dewgong - Icy Wind - Level 1
  (87, 8700, 196, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dewgong - Signal Beam - Level 1
  (87, 8700, 324, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dewgong - Sheer Cold - Level 1
  (87, 8700, 329, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dewgong - Growl - Level 3
  (87, 8700, 45, 16, NULL, 1, 3, NULL, NULL, NULL, 6),
  -- Dewgong - Signal Beam - Level 7
  (87, 8700, 324, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Dewgong - Icy Wind - Level 11
  (87, 8700, 196, 16, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Dewgong - Encore - Level 13
  (87, 8700, 227, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Dewgong - Ice Shard - Level 17
  (87, 8700, 420, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Dewgong - Rest - Level 21
  (87, 8700, 156, 16, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Dewgong - Aqua Ring - Level 23
  (87, 8700, 392, 16, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Dewgong - Aurora Beam - Level 27
  (87, 8700, 62, 16, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Dewgong - Aqua Jet - Level 31
  (87, 8700, 453, 16, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Dewgong - Brine - Level 33
  (87, 8700, 362, 16, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Dewgong - Take Down - Level 39
  (87, 8700, 36, 16, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Dewgong - Dive - Level 45
  (87, 8700, 291, 16, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Dewgong - Aqua Tail - Level 49
  (87, 8700, 401, 16, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Dewgong - Ice Beam - Level 55
  (87, 8700, 58, 16, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Dewgong - Safeguard - Level 61
  (87, 8700, 219, 16, NULL, 1, 61, NULL, NULL, NULL, 20),
  -- Dewgong - Hail - Level 65
  (87, 8700, 258, 16, NULL, 1, 65, NULL, NULL, NULL, 21),
  -- Dewgong - Toxic - TM06
  (87, 8700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Dewgong - Hail - TM07
  (87, 8700, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 23),
  -- Dewgong - Hidden Power - TM10
  (87, 8700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Dewgong - Ice Beam - TM13
  (87, 8700, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 25),
  -- Dewgong - Blizzard - TM14
  (87, 8700, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 26),
  -- Dewgong - Hyper Beam - TM15
  (87, 8700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 27),
  -- Dewgong - Protect - TM17
  (87, 8700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Dewgong - Rain Dance - TM18
  (87, 8700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 29),
  -- Dewgong - Safeguard - TM20
  (87, 8700, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 30),
  -- Dewgong - Frustration - TM21
  (87, 8700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Dewgong - Return - TM27
  (87, 8700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Dewgong - Double Team - TM32
  (87, 8700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Dewgong - Facade - TM42
  (87, 8700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Dewgong - Rest - TM44
  (87, 8700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Dewgong - Attract - TM45
  (87, 8700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Dewgong - Thief - TM46
  (87, 8700, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 37),
  -- Dewgong - Round - TM48
  (87, 8700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Dewgong - Echoed Voice - TM49
  (87, 8700, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 39),
  -- Dewgong - Fling - TM56
  (87, 8700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 40),
  -- Dewgong - Smart Strike - TM67
  (87, 8700, 684, 16, NULL, 2, NULL, NULL, 16002067, NULL, 41),
  -- Dewgong - Giga Impact - TM68
  (87, 8700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 42),
  -- Dewgong - Frost Breath - TM79
  (87, 8700, 524, 16, NULL, 2, NULL, NULL, 16002079, NULL, 43),
  -- Dewgong - Swagger - TM87
  (87, 8700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Dewgong - Sleep Talk - TM88
  (87, 8700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Dewgong - Substitute - TM90
  (87, 8700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Dewgong - Surf - TM94
  (87, 8700, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 47),
  -- Dewgong - Waterfall - TM98
  (87, 8700, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 48),
  -- Dewgong - Confide - TM100
  (87, 8700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Dewgong - Snore - Tutor
  (87, 8700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Dewgong - Icy Wind - Tutor
  (87, 8700, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Dewgong - Iron Tail - Tutor
  (87, 8700, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Dewgong - Signal Beam - Tutor
  (87, 8700, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Dewgong - Water Pulse - Tutor
  (87, 8700, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Dewgong - Aqua Tail - Tutor
  (87, 8700, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Dewgong - Drill Run - Tutor
  (87, 8700, 529, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Dewgong - Liquidation - Tutor
  (87, 8700, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Dewgong - Sheer Cold - Evolution
  (87, 8700, 329, 16, NULL, 7, NULL, NULL, NULL, NULL, 58),

  -- Grimer - Pound - Level 1
  (88, 8800, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grimer - Poison Gas - Level 1
  (88, 8800, 139, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grimer - Harden - Level 4
  (88, 8800, 106, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Grimer - Mud-Slap - Level 7
  (88, 8800, 189, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Grimer - Disable - Level 12
  (88, 8800, 50, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Grimer - Sludge - Level 15
  (88, 8800, 124, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Grimer - Mud Bomb - Level 18
  (88, 8800, 426, 16, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Grimer - Minimize - Level 21
  (88, 8800, 107, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Grimer - Fling - Level 26
  (88, 8800, 374, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Grimer - Sludge Bomb - Level 29
  (88, 8800, 188, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Grimer - Sludge Wave - Level 32
  (88, 8800, 482, 16, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Grimer - Screech - Level 37
  (88, 8800, 103, 16, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Grimer - Gunk Shot - Level 40
  (88, 8800, 441, 16, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Grimer - Acid Armor - Level 43
  (88, 8800, 151, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Grimer - Belch - Level 46
  (88, 8800, 562, 16, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Grimer - Memento - Level 48
  (88, 8800, 262, 16, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Grimer - Toxic - TM06
  (88, 8800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Grimer - Venoshock - TM09
  (88, 8800, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 18),
  -- Grimer - Hidden Power - TM10
  (88, 8800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Grimer - Sunny Day - TM11
  (88, 8800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Grimer - Taunt - TM12
  (88, 8800, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 21),
  -- Grimer - Protect - TM17
  (88, 8800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Grimer - Rain Dance - TM18
  (88, 8800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Grimer - Frustration - TM21
  (88, 8800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Grimer - Thunderbolt - TM24
  (88, 8800, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 25),
  -- Grimer - Thunder - TM25
  (88, 8800, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 26),
  -- Grimer - Return - TM27
  (88, 8800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Grimer - Shadow Ball - TM30
  (88, 8800, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 28),
  -- Grimer - Double Team - TM32
  (88, 8800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Grimer - Sludge Wave - TM34
  (88, 8800, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 30),
  -- Grimer - Flamethrower - TM35
  (88, 8800, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 31),
  -- Grimer - Sludge Bomb - TM36
  (88, 8800, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 32),
  -- Grimer - Fire Blast - TM38
  (88, 8800, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 33),
  -- Grimer - Rock Tomb - TM39
  (88, 8800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 34),
  -- Grimer - Torment - TM41
  (88, 8800, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 35),
  -- Grimer - Facade - TM42
  (88, 8800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Grimer - Rest - TM44
  (88, 8800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Grimer - Attract - TM45
  (88, 8800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Grimer - Thief - TM46
  (88, 8800, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 39),
  -- Grimer - Round - TM48
  (88, 8800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Grimer - Fling - TM56
  (88, 8800, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 41),
  -- Grimer - Explosion - TM64
  (88, 8800, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 42),
  -- Grimer - Payback - TM66
  (88, 8800, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 43),
  -- Grimer - Rock Slide - TM80
  (88, 8800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 44),
  -- Grimer - Infestation - TM83
  (88, 8800, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 45),
  -- Grimer - Poison Jab - TM84
  (88, 8800, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 46),
  -- Grimer - Swagger - TM87
  (88, 8800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 47),
  -- Grimer - Sleep Talk - TM88
  (88, 8800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 48),
  -- Grimer - Substitute - TM90
  (88, 8800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Grimer - Confide - TM100
  (88, 8800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Grimer - Haze - Egg
  (88, 8800, 114, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Grimer - Lick - Egg
  (88, 8800, 122, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Grimer - Curse - Egg
  (88, 8800, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Grimer - Scary Face - Egg
  (88, 8800, 184, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Grimer - Mean Look - Egg
  (88, 8800, 212, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Grimer - Stockpile - Egg
  (88, 8800, 254, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Grimer - Spit Up - Egg
  (88, 8800, 255, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Grimer - Swallow - Egg
  (88, 8800, 256, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Grimer - Imprison - Egg
  (88, 8800, 286, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Grimer - Shadow Punch - Egg
  (88, 8800, 325, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Grimer - Shadow Sneak - Egg
  (88, 8800, 425, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Grimer - Acid Spray - Egg
  (88, 8800, 491, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Grimer - Power-Up Punch - Egg
  (88, 8800, 612, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Grimer - Fire Punch - Tutor
  (88, 8800, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Grimer - Ice Punch - Tutor
  (88, 8800, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Grimer - Thunder Punch - Tutor
  (88, 8800, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Grimer - Snore - Tutor
  (88, 8800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Grimer - Giga Drain - Tutor
  (88, 8800, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Grimer - Pain Split - Tutor
  (88, 8800, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Grimer - Shock Wave - Tutor
  (88, 8800, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Grimer - Gunk Shot - Tutor
  (88, 8800, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),

  -- Muk - Pound - Level 1
  (89, 8900, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Muk - Harden - Level 1
  (89, 8900, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Muk - Poison Gas - Level 1
  (89, 8900, 139, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Muk - Mud-Slap - Level 1
  (89, 8900, 189, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Muk - Venom Drench - Level 1
  (89, 8900, 599, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Muk - Harden - Level 4
  (89, 8900, 106, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Muk - Mud-Slap - Level 7
  (89, 8900, 189, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Muk - Disable - Level 12
  (89, 8900, 50, 16, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Muk - Sludge - Level 15
  (89, 8900, 124, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Muk - Mud Bomb - Level 18
  (89, 8900, 426, 16, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Muk - Minimize - Level 21
  (89, 8900, 107, 16, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Muk - Fling - Level 26
  (89, 8900, 374, 16, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Muk - Sludge Bomb - Level 29
  (89, 8900, 188, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Muk - Sludge Wave - Level 32
  (89, 8900, 482, 16, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Muk - Screech - Level 37
  (89, 8900, 103, 16, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Muk - Gunk Shot - Level 40
  (89, 8900, 441, 16, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Muk - Acid Armor - Level 46
  (89, 8900, 151, 16, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Muk - Belch - Level 52
  (89, 8900, 562, 16, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Muk - Memento - Level 57
  (89, 8900, 262, 16, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Muk - Toxic - TM06
  (89, 8900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Muk - Venoshock - TM09
  (89, 8900, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 21),
  -- Muk - Hidden Power - TM10
  (89, 8900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Muk - Sunny Day - TM11
  (89, 8900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Muk - Taunt - TM12
  (89, 8900, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Muk - Hyper Beam - TM15
  (89, 8900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Muk - Protect - TM17
  (89, 8900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Muk - Rain Dance - TM18
  (89, 8900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Muk - Frustration - TM21
  (89, 8900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Muk - Thunderbolt - TM24
  (89, 8900, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 29),
  -- Muk - Thunder - TM25
  (89, 8900, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 30),
  -- Muk - Return - TM27
  (89, 8900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Muk - Shadow Ball - TM30
  (89, 8900, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 32),
  -- Muk - Brick Break - TM31
  (89, 8900, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 33),
  -- Muk - Double Team - TM32
  (89, 8900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Muk - Sludge Wave - TM34
  (89, 8900, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 35),
  -- Muk - Flamethrower - TM35
  (89, 8900, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 36),
  -- Muk - Sludge Bomb - TM36
  (89, 8900, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 37),
  -- Muk - Fire Blast - TM38
  (89, 8900, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 38),
  -- Muk - Rock Tomb - TM39
  (89, 8900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 39),
  -- Muk - Torment - TM41
  (89, 8900, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 40),
  -- Muk - Facade - TM42
  (89, 8900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 41),
  -- Muk - Rest - TM44
  (89, 8900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 42),
  -- Muk - Attract - TM45
  (89, 8900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 43),
  -- Muk - Thief - TM46
  (89, 8900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 44),
  -- Muk - Round - TM48
  (89, 8900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 45),
  -- Muk - Focus Blast - TM52
  (89, 8900, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 46),
  -- Muk - Fling - TM56
  (89, 8900, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 47),
  -- Muk - Explosion - TM64
  (89, 8900, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 48),
  -- Muk - Payback - TM66
  (89, 8900, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 49),
  -- Muk - Giga Impact - TM68
  (89, 8900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 50),
  -- Muk - Rock Slide - TM80
  (89, 8900, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 51),
  -- Muk - Infestation - TM83
  (89, 8900, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 52),
  -- Muk - Poison Jab - TM84
  (89, 8900, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 53),
  -- Muk - Swagger - TM87
  (89, 8900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 54),
  -- Muk - Sleep Talk - TM88
  (89, 8900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 55),
  -- Muk - Substitute - TM90
  (89, 8900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 56),
  -- Muk - Dark Pulse - TM97
  (89, 8900, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 57),
  -- Muk - Confide - TM100
  (89, 8900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 58),
  -- Muk - Fire Punch - Tutor
  (89, 8900, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Muk - Ice Punch - Tutor
  (89, 8900, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Muk - Thunder Punch - Tutor
  (89, 8900, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Muk - Snore - Tutor
  (89, 8900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Muk - Giga Drain - Tutor
  (89, 8900, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Muk - Pain Split - Tutor
  (89, 8900, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Muk - Focus Punch - Tutor
  (89, 8900, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Muk - Block - Tutor
  (89, 8900, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Muk - Shock Wave - Tutor
  (89, 8900, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Muk - Gunk Shot - Tutor
  (89, 8900, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Muk - Venom Drench - Evolution
  (89, 8900, 599, 16, NULL, 7, NULL, NULL, NULL, NULL, 69),

  -- Shellder - Tackle - Level 1
  (90, 9000, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shellder - Water Gun - Level 1
  (90, 9000, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shellder - Withdraw - Level 4
  (90, 9000, 110, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Shellder - Supersonic - Level 8
  (90, 9000, 48, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Shellder - Icicle Spear - Level 13
  (90, 9000, 333, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Shellder - Protect - Level 16
  (90, 9000, 182, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Shellder - Leer - Level 20
  (90, 9000, 43, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Shellder - Clamp - Level 25
  (90, 9000, 128, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Shellder - Ice Shard - Level 28
  (90, 9000, 420, 16, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Shellder - Razor Shell - Level 32
  (90, 9000, 534, 16, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Shellder - Aurora Beam - Level 37
  (90, 9000, 62, 16, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Shellder - Whirlpool - Level 40
  (90, 9000, 250, 16, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Shellder - Brine - Level 44
  (90, 9000, 362, 16, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Shellder - Iron Defense - Level 49
  (90, 9000, 334, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Shellder - Ice Beam - Level 52
  (90, 9000, 58, 16, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Shellder - Shell Smash - Level 56
  (90, 9000, 504, 16, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Shellder - Hydro Pump - Level 61
  (90, 9000, 56, 16, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Shellder - Toxic - TM06
  (90, 9000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Shellder - Hail - TM07
  (90, 9000, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 19),
  -- Shellder - Hidden Power - TM10
  (90, 9000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Shellder - Ice Beam - TM13
  (90, 9000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Shellder - Blizzard - TM14
  (90, 9000, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 22),
  -- Shellder - Protect - TM17
  (90, 9000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Shellder - Rain Dance - TM18
  (90, 9000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Shellder - Frustration - TM21
  (90, 9000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Shellder - Return - TM27
  (90, 9000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Shellder - Double Team - TM32
  (90, 9000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Shellder - Facade - TM42
  (90, 9000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Shellder - Rest - TM44
  (90, 9000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Shellder - Attract - TM45
  (90, 9000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Shellder - Round - TM48
  (90, 9000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Shellder - Explosion - TM64
  (90, 9000, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 32),
  -- Shellder - Payback - TM66
  (90, 9000, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 33),
  -- Shellder - Swagger - TM87
  (90, 9000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 34),
  -- Shellder - Sleep Talk - TM88
  (90, 9000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 35),
  -- Shellder - Substitute - TM90
  (90, 9000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Shellder - Surf - TM94
  (90, 9000, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 37),
  -- Shellder - Confide - TM100
  (90, 9000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 38),
  -- Shellder - Take Down - Egg
  (90, 9000, 36, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Shellder - Twineedle - Egg
  (90, 9000, 41, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shellder - Bubble Beam - Egg
  (90, 9000, 61, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shellder - Screech - Egg
  (90, 9000, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shellder - Barrier - Egg
  (90, 9000, 112, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shellder - Rapid Spin - Egg
  (90, 9000, 229, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shellder - Icicle Spear - Egg
  (90, 9000, 333, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shellder - Mud Shot - Egg
  (90, 9000, 341, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shellder - Rock Blast - Egg
  (90, 9000, 350, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shellder - Water Pulse - Egg
  (90, 9000, 352, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Shellder - Aqua Ring - Egg
  (90, 9000, 392, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Shellder - Avalanche - Egg
  (90, 9000, 419, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Shellder - Snore - Tutor
  (90, 9000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Shellder - Icy Wind - Tutor
  (90, 9000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Shellder - Iron Defense - Tutor
  (90, 9000, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Shellder - Water Pulse - Tutor
  (90, 9000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Shellder - Liquidation - Tutor
  (90, 9000, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),

  -- Cloyster - Supersonic - Level 1
  (91, 9100, 48, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cloyster - Hydro Pump - Level 1
  (91, 9100, 56, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cloyster - Aurora Beam - Level 1
  (91, 9100, 62, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cloyster - Withdraw - Level 1
  (91, 9100, 110, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cloyster - Protect - Level 1
  (91, 9100, 182, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cloyster - Toxic Spikes - Level 1
  (91, 9100, 390, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Cloyster - Shell Smash - Level 1
  (91, 9100, 504, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Cloyster - Spike Cannon - Level 13
  (91, 9100, 131, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Cloyster - Spikes - Level 28
  (91, 9100, 191, 16, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Cloyster - Icicle Crash - Level 50
  (91, 9100, 556, 16, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Cloyster - Toxic - TM06
  (91, 9100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 11),
  -- Cloyster - Hail - TM07
  (91, 9100, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 12),
  -- Cloyster - Hidden Power - TM10
  (91, 9100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 13),
  -- Cloyster - Ice Beam - TM13
  (91, 9100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 14),
  -- Cloyster - Blizzard - TM14
  (91, 9100, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 15),
  -- Cloyster - Hyper Beam - TM15
  (91, 9100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 16),
  -- Cloyster - Protect - TM17
  (91, 9100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 17),
  -- Cloyster - Rain Dance - TM18
  (91, 9100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 18),
  -- Cloyster - Frustration - TM21
  (91, 9100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 19),
  -- Cloyster - Return - TM27
  (91, 9100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 20),
  -- Cloyster - Double Team - TM32
  (91, 9100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 21),
  -- Cloyster - Torment - TM41
  (91, 9100, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 22),
  -- Cloyster - Facade - TM42
  (91, 9100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 23),
  -- Cloyster - Rest - TM44
  (91, 9100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 24),
  -- Cloyster - Attract - TM45
  (91, 9100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 25),
  -- Cloyster - Round - TM48
  (91, 9100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 26),
  -- Cloyster - Explosion - TM64
  (91, 9100, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 27),
  -- Cloyster - Payback - TM66
  (91, 9100, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 28),
  -- Cloyster - Smart Strike - TM67
  (91, 9100, 684, 16, NULL, 2, NULL, NULL, 16002067, NULL, 29),
  -- Cloyster - Giga Impact - TM68
  (91, 9100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 30),
  -- Cloyster - Frost Breath - TM79
  (91, 9100, 524, 16, NULL, 2, NULL, NULL, 16002079, NULL, 31),
  -- Cloyster - Poison Jab - TM84
  (91, 9100, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 32),
  -- Cloyster - Swagger - TM87
  (91, 9100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 33),
  -- Cloyster - Sleep Talk - TM88
  (91, 9100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 34),
  -- Cloyster - Substitute - TM90
  (91, 9100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 35),
  -- Cloyster - Surf - TM94
  (91, 9100, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 36),
  -- Cloyster - Confide - TM100
  (91, 9100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 37),
  -- Cloyster - Snore - Tutor
  (91, 9100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 38),
  -- Cloyster - Icy Wind - Tutor
  (91, 9100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 39),
  -- Cloyster - Signal Beam - Tutor
  (91, 9100, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Cloyster - Iron Defense - Tutor
  (91, 9100, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Cloyster - Water Pulse - Tutor
  (91, 9100, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Cloyster - Liquidation - Tutor
  (91, 9100, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),

  -- Gastly - Hypnosis - Level 1
  (92, 9200, 95, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gastly - Lick - Level 1
  (92, 9200, 122, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gastly - Spite - Level 5
  (92, 9200, 180, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Gastly - Mean Look - Level 8
  (92, 9200, 212, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Gastly - Curse - Level 12
  (92, 9200, 174, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gastly - Night Shade - Level 15
  (92, 9200, 101, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Gastly - Confuse Ray - Level 19
  (92, 9200, 109, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Gastly - Sucker Punch - Level 22
  (92, 9200, 389, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Gastly - Payback - Level 26
  (92, 9200, 371, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Gastly - Shadow Ball - Level 29
  (92, 9200, 247, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Gastly - Dream Eater - Level 33
  (92, 9200, 138, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Gastly - Dark Pulse - Level 36
  (92, 9200, 399, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Gastly - Destiny Bond - Level 40
  (92, 9200, 194, 16, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Gastly - Hex - Level 43
  (92, 9200, 506, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Gastly - Nightmare - Level 47
  (92, 9200, 171, 16, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Gastly - Toxic - TM06
  (92, 9200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Gastly - Venoshock - TM09
  (92, 9200, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 17),
  -- Gastly - Hidden Power - TM10
  (92, 9200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Gastly - Sunny Day - TM11
  (92, 9200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Gastly - Taunt - TM12
  (92, 9200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 20),
  -- Gastly - Protect - TM17
  (92, 9200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Gastly - Rain Dance - TM18
  (92, 9200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Gastly - Frustration - TM21
  (92, 9200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Gastly - Thunderbolt - TM24
  (92, 9200, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 24),
  -- Gastly - Return - TM27
  (92, 9200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Gastly - Psychic - TM29
  (92, 9200, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 26),
  -- Gastly - Shadow Ball - TM30
  (92, 9200, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Gastly - Double Team - TM32
  (92, 9200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Gastly - Sludge Bomb - TM36
  (92, 9200, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 29),
  -- Gastly - Torment - TM41
  (92, 9200, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 30),
  -- Gastly - Facade - TM42
  (92, 9200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Gastly - Rest - TM44
  (92, 9200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Gastly - Attract - TM45
  (92, 9200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Gastly - Thief - TM46
  (92, 9200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 34),
  -- Gastly - Round - TM48
  (92, 9200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Gastly - Energy Ball - TM53
  (92, 9200, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 36),
  -- Gastly - Will-O-Wisp - TM61
  (92, 9200, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 37),
  -- Gastly - Embargo - TM63
  (92, 9200, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 38),
  -- Gastly - Explosion - TM64
  (92, 9200, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 39),
  -- Gastly - Payback - TM66
  (92, 9200, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 40),
  -- Gastly - Psych Up - TM77
  (92, 9200, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 41),
  -- Gastly - Infestation - TM83
  (92, 9200, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 42),
  -- Gastly - Dream Eater - TM85
  (92, 9200, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 43),
  -- Gastly - Swagger - TM87
  (92, 9200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Gastly - Sleep Talk - TM88
  (92, 9200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Gastly - Substitute - TM90
  (92, 9200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Gastly - Trick Room - TM92
  (92, 9200, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 47),
  -- Gastly - Dark Pulse - TM97
  (92, 9200, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 48),
  -- Gastly - Dazzling Gleam - TM99
  (92, 9200, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 49),
  -- Gastly - Confide - TM100
  (92, 9200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Gastly - Fire Punch - Egg
  (92, 9200, 7, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Gastly - Ice Punch - Egg
  (92, 9200, 8, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Gastly - Thunder Punch - Egg
  (92, 9200, 9, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Gastly - Disable - Egg
  (92, 9200, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Gastly - Haze - Egg
  (92, 9200, 114, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Gastly - Smog - Egg
  (92, 9200, 123, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Gastly - Psywave - Egg
  (92, 9200, 149, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gastly - Scary Face - Egg
  (92, 9200, 184, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Gastly - Perish Song - Egg
  (92, 9200, 195, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Gastly - Grudge - Egg
  (92, 9200, 288, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gastly - Astonish - Egg
  (92, 9200, 310, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gastly - Clear Smog - Egg
  (92, 9200, 499, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Gastly - Reflect Type - Egg
  (92, 9200, 513, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Gastly - Fire Punch - Tutor
  (92, 9200, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Gastly - Ice Punch - Tutor
  (92, 9200, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Gastly - Thunder Punch - Tutor
  (92, 9200, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Gastly - Snore - Tutor
  (92, 9200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Gastly - Spite - Tutor
  (92, 9200, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Gastly - Icy Wind - Tutor
  (92, 9200, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Gastly - Giga Drain - Tutor
  (92, 9200, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Gastly - Pain Split - Tutor
  (92, 9200, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Gastly - Uproar - Tutor
  (92, 9200, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Gastly - Trick - Tutor
  (92, 9200, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Gastly - Knock Off - Tutor
  (92, 9200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Gastly - Skill Swap - Tutor
  (92, 9200, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Gastly - Snatch - Tutor
  (92, 9200, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Gastly - Wonder Room - Tutor
  (92, 9200, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Gastly - Telekinesis - Tutor
  (92, 9200, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Gastly - Foul Play - Tutor
  (92, 9200, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Gastly - Ally Switch - Tutor
  (92, 9200, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),

  -- Haunter - Hypnosis - Level 1
  (93, 9300, 95, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Haunter - Lick - Level 1
  (93, 9300, 122, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Haunter - Spite - Level 1
  (93, 9300, 180, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Haunter - Shadow Punch - Level 1
  (93, 9300, 325, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Haunter - Spite - Level 5
  (93, 9300, 180, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Haunter - Mean Look - Level 8
  (93, 9300, 212, 16, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Haunter - Curse - Level 12
  (93, 9300, 174, 16, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Haunter - Night Shade - Level 15
  (93, 9300, 101, 16, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Haunter - Confuse Ray - Level 19
  (93, 9300, 109, 16, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Haunter - Sucker Punch - Level 22
  (93, 9300, 389, 16, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Haunter - Payback - Level 28
  (93, 9300, 371, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Haunter - Shadow Ball - Level 33
  (93, 9300, 247, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Haunter - Dream Eater - Level 39
  (93, 9300, 138, 16, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Haunter - Dark Pulse - Level 44
  (93, 9300, 399, 16, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Haunter - Destiny Bond - Level 50
  (93, 9300, 194, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Haunter - Hex - Level 55
  (93, 9300, 506, 16, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Haunter - Nightmare - Level 61
  (93, 9300, 171, 16, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Haunter - Toxic - TM06
  (93, 9300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Haunter - Venoshock - TM09
  (93, 9300, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 19),
  -- Haunter - Hidden Power - TM10
  (93, 9300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Haunter - Sunny Day - TM11
  (93, 9300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Haunter - Taunt - TM12
  (93, 9300, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Haunter - Protect - TM17
  (93, 9300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Haunter - Rain Dance - TM18
  (93, 9300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Haunter - Frustration - TM21
  (93, 9300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Haunter - Thunderbolt - TM24
  (93, 9300, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 26),
  -- Haunter - Return - TM27
  (93, 9300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Haunter - Psychic - TM29
  (93, 9300, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 28),
  -- Haunter - Shadow Ball - TM30
  (93, 9300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 29),
  -- Haunter - Double Team - TM32
  (93, 9300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Haunter - Sludge Bomb - TM36
  (93, 9300, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 31),
  -- Haunter - Torment - TM41
  (93, 9300, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 32),
  -- Haunter - Facade - TM42
  (93, 9300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Haunter - Rest - TM44
  (93, 9300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Haunter - Attract - TM45
  (93, 9300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Haunter - Thief - TM46
  (93, 9300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 36),
  -- Haunter - Round - TM48
  (93, 9300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Haunter - Energy Ball - TM53
  (93, 9300, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 38),
  -- Haunter - Fling - TM56
  (93, 9300, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 39),
  -- Haunter - Will-O-Wisp - TM61
  (93, 9300, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 40),
  -- Haunter - Embargo - TM63
  (93, 9300, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 41),
  -- Haunter - Explosion - TM64
  (93, 9300, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 42),
  -- Haunter - Shadow Claw - TM65
  (93, 9300, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 43),
  -- Haunter - Payback - TM66
  (93, 9300, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 44),
  -- Haunter - Psych Up - TM77
  (93, 9300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 45),
  -- Haunter - Infestation - TM83
  (93, 9300, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 46),
  -- Haunter - Poison Jab - TM84
  (93, 9300, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 47),
  -- Haunter - Dream Eater - TM85
  (93, 9300, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 48),
  -- Haunter - Swagger - TM87
  (93, 9300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Haunter - Sleep Talk - TM88
  (93, 9300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Haunter - Substitute - TM90
  (93, 9300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Haunter - Trick Room - TM92
  (93, 9300, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 52),
  -- Haunter - Dark Pulse - TM97
  (93, 9300, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 53),
  -- Haunter - Dazzling Gleam - TM99
  (93, 9300, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 54),
  -- Haunter - Confide - TM100
  (93, 9300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 55),
  -- Haunter - Fire Punch - Tutor
  (93, 9300, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Haunter - Ice Punch - Tutor
  (93, 9300, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Haunter - Thunder Punch - Tutor
  (93, 9300, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Haunter - Snore - Tutor
  (93, 9300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Haunter - Spite - Tutor
  (93, 9300, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Haunter - Icy Wind - Tutor
  (93, 9300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Haunter - Giga Drain - Tutor
  (93, 9300, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Haunter - Pain Split - Tutor
  (93, 9300, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Haunter - Uproar - Tutor
  (93, 9300, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Haunter - Trick - Tutor
  (93, 9300, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Haunter - Knock Off - Tutor
  (93, 9300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Haunter - Skill Swap - Tutor
  (93, 9300, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Haunter - Snatch - Tutor
  (93, 9300, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Haunter - Wonder Room - Tutor
  (93, 9300, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Haunter - Telekinesis - Tutor
  (93, 9300, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Haunter - Foul Play - Tutor
  (93, 9300, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Haunter - Ally Switch - Tutor
  (93, 9300, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Haunter - Shadow Punch - Evolution
  (93, 9300, 325, 16, NULL, 7, NULL, NULL, NULL, NULL, 73),

  -- Gengar - Hypnosis - Level 1
  (94, 9400, 95, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gengar - Lick - Level 1
  (94, 9400, 122, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gengar - Spite - Level 1
  (94, 9400, 180, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gengar - Shadow Punch - Level 1
  (94, 9400, 325, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gengar - Spite - Level 5
  (94, 9400, 180, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Gengar - Mean Look - Level 8
  (94, 9400, 212, 16, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Gengar - Curse - Level 12
  (94, 9400, 174, 16, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Gengar - Night Shade - Level 15
  (94, 9400, 101, 16, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Gengar - Confuse Ray - Level 19
  (94, 9400, 109, 16, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Gengar - Sucker Punch - Level 22
  (94, 9400, 389, 16, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Gengar - Payback - Level 28
  (94, 9400, 371, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Gengar - Shadow Ball - Level 33
  (94, 9400, 247, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Gengar - Dream Eater - Level 39
  (94, 9400, 138, 16, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Gengar - Dark Pulse - Level 44
  (94, 9400, 399, 16, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Gengar - Destiny Bond - Level 50
  (94, 9400, 194, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Gengar - Hex - Level 55
  (94, 9400, 506, 16, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Gengar - Nightmare - Level 61
  (94, 9400, 171, 16, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Gengar - Toxic - TM06
  (94, 9400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Gengar - Venoshock - TM09
  (94, 9400, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 19),
  -- Gengar - Hidden Power - TM10
  (94, 9400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Gengar - Sunny Day - TM11
  (94, 9400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Gengar - Taunt - TM12
  (94, 9400, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Gengar - Hyper Beam - TM15
  (94, 9400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Gengar - Protect - TM17
  (94, 9400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Gengar - Rain Dance - TM18
  (94, 9400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Gengar - Frustration - TM21
  (94, 9400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Gengar - Thunderbolt - TM24
  (94, 9400, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 27),
  -- Gengar - Thunder - TM25
  (94, 9400, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 28),
  -- Gengar - Return - TM27
  (94, 9400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Gengar - Psychic - TM29
  (94, 9400, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 30),
  -- Gengar - Shadow Ball - TM30
  (94, 9400, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 31),
  -- Gengar - Brick Break - TM31
  (94, 9400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 32),
  -- Gengar - Double Team - TM32
  (94, 9400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Gengar - Sludge Bomb - TM36
  (94, 9400, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 34),
  -- Gengar - Torment - TM41
  (94, 9400, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 35),
  -- Gengar - Facade - TM42
  (94, 9400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Gengar - Rest - TM44
  (94, 9400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Gengar - Attract - TM45
  (94, 9400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Gengar - Thief - TM46
  (94, 9400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 39),
  -- Gengar - Round - TM48
  (94, 9400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Gengar - Focus Blast - TM52
  (94, 9400, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 41),
  -- Gengar - Energy Ball - TM53
  (94, 9400, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 42),
  -- Gengar - Fling - TM56
  (94, 9400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 43),
  -- Gengar - Will-O-Wisp - TM61
  (94, 9400, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 44),
  -- Gengar - Embargo - TM63
  (94, 9400, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 45),
  -- Gengar - Explosion - TM64
  (94, 9400, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 46),
  -- Gengar - Shadow Claw - TM65
  (94, 9400, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 47),
  -- Gengar - Payback - TM66
  (94, 9400, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 48),
  -- Gengar - Giga Impact - TM68
  (94, 9400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 49),
  -- Gengar - Psych Up - TM77
  (94, 9400, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 50),
  -- Gengar - Infestation - TM83
  (94, 9400, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 51),
  -- Gengar - Poison Jab - TM84
  (94, 9400, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 52),
  -- Gengar - Dream Eater - TM85
  (94, 9400, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 53),
  -- Gengar - Swagger - TM87
  (94, 9400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 54),
  -- Gengar - Sleep Talk - TM88
  (94, 9400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 55),
  -- Gengar - Substitute - TM90
  (94, 9400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 56),
  -- Gengar - Trick Room - TM92
  (94, 9400, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 57),
  -- Gengar - Dark Pulse - TM97
  (94, 9400, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 58),
  -- Gengar - Dazzling Gleam - TM99
  (94, 9400, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 59),
  -- Gengar - Confide - TM100
  (94, 9400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 60),
  -- Gengar - Fire Punch - Tutor
  (94, 9400, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Gengar - Ice Punch - Tutor
  (94, 9400, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Gengar - Thunder Punch - Tutor
  (94, 9400, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Gengar - Snore - Tutor
  (94, 9400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Gengar - Spite - Tutor
  (94, 9400, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Gengar - Icy Wind - Tutor
  (94, 9400, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Gengar - Giga Drain - Tutor
  (94, 9400, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Gengar - Pain Split - Tutor
  (94, 9400, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Gengar - Uproar - Tutor
  (94, 9400, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Gengar - Focus Punch - Tutor
  (94, 9400, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Gengar - Trick - Tutor
  (94, 9400, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Gengar - Role Play - Tutor
  (94, 9400, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Gengar - Knock Off - Tutor
  (94, 9400, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Gengar - Skill Swap - Tutor
  (94, 9400, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Gengar - Snatch - Tutor
  (94, 9400, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Gengar - Drain Punch - Tutor
  (94, 9400, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Gengar - Wonder Room - Tutor
  (94, 9400, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Gengar - Telekinesis - Tutor
  (94, 9400, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Gengar - Foul Play - Tutor
  (94, 9400, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Gengar - Ally Switch - Tutor
  (94, 9400, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Gengar - Laser Focus - Tutor
  (94, 9400, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Gengar - Shadow Punch - Evolution
  (94, 9400, 325, 16, NULL, 7, NULL, NULL, NULL, NULL, 82),

  -- Onix - Bind - Level 1
  (95, 9500, 20, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Onix - Tackle - Level 1
  (95, 9500, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Onix - Harden - Level 1
  (95, 9500, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Onix - Mud Sport - Level 1
  (95, 9500, 300, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Onix - Curse - Level 4
  (95, 9500, 174, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Onix - Rock Throw - Level 7
  (95, 9500, 88, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Onix - Rock Tomb - Level 10
  (95, 9500, 317, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Onix - Rage - Level 13
  (95, 9500, 99, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Onix - Stealth Rock - Level 16
  (95, 9500, 446, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Onix - Rock Polish - Level 19
  (95, 9500, 397, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Onix - Gyro Ball - Level 20
  (95, 9500, 360, 16, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Onix - Smack Down - Level 22
  (95, 9500, 479, 16, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Onix - Dragon Breath - Level 25
  (95, 9500, 225, 16, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Onix - Slam - Level 28
  (95, 9500, 21, 16, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Onix - Screech - Level 31
  (95, 9500, 103, 16, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Onix - Rock Slide - Level 34
  (95, 9500, 157, 16, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Onix - Sand Tomb - Level 37
  (95, 9500, 328, 16, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Onix - Iron Tail - Level 40
  (95, 9500, 231, 16, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Onix - Dig - Level 43
  (95, 9500, 91, 16, NULL, 1, 43, NULL, NULL, NULL, 19),
  -- Onix - Stone Edge - Level 46
  (95, 9500, 444, 16, NULL, 1, 46, NULL, NULL, NULL, 20),
  -- Onix - Double-Edge - Level 49
  (95, 9500, 38, 16, NULL, 1, 49, NULL, NULL, NULL, 21),
  -- Onix - Sandstorm - Level 52
  (95, 9500, 201, 16, NULL, 1, 52, NULL, NULL, NULL, 22),
  -- Onix - Roar - TM05
  (95, 9500, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 23),
  -- Onix - Toxic - TM06
  (95, 9500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 24),
  -- Onix - Hidden Power - TM10
  (95, 9500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Onix - Sunny Day - TM11
  (95, 9500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 26),
  -- Onix - Taunt - TM12
  (95, 9500, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 27),
  -- Onix - Protect - TM17
  (95, 9500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Onix - Frustration - TM21
  (95, 9500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Onix - Smack Down - TM23
  (95, 9500, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 30),
  -- Onix - Earthquake - TM26
  (95, 9500, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 31),
  -- Onix - Return - TM27
  (95, 9500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Onix - Double Team - TM32
  (95, 9500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Onix - Sandstorm - TM37
  (95, 9500, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 34),
  -- Onix - Rock Tomb - TM39
  (95, 9500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Onix - Torment - TM41
  (95, 9500, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 36),
  -- Onix - Facade - TM42
  (95, 9500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Onix - Rest - TM44
  (95, 9500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Onix - Attract - TM45
  (95, 9500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Onix - Round - TM48
  (95, 9500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Onix - Brutal Swing - TM59
  (95, 9500, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 41),
  -- Onix - Explosion - TM64
  (95, 9500, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 42),
  -- Onix - Payback - TM66
  (95, 9500, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 43),
  -- Onix - Rock Polish - TM69
  (95, 9500, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 44),
  -- Onix - Stone Edge - TM71
  (95, 9500, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 45),
  -- Onix - Gyro Ball - TM74
  (95, 9500, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 46),
  -- Onix - Psych Up - TM77
  (95, 9500, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 47),
  -- Onix - Bulldoze - TM78
  (95, 9500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 48),
  -- Onix - Rock Slide - TM80
  (95, 9500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 49),
  -- Onix - Dragon Tail - TM82
  (95, 9500, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 50),
  -- Onix - Swagger - TM87
  (95, 9500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 51),
  -- Onix - Sleep Talk - TM88
  (95, 9500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 52),
  -- Onix - Substitute - TM90
  (95, 9500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 53),
  -- Onix - Flash Cannon - TM91
  (95, 9500, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 54),
  -- Onix - Nature Power - TM96
  (95, 9500, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 55),
  -- Onix - Confide - TM100
  (95, 9500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 56),
  -- Onix - Defense Curl - Egg
  (95, 9500, 111, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Onix - Flail - Egg
  (95, 9500, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Onix - Rollout - Egg
  (95, 9500, 205, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Onix - Block - Egg
  (95, 9500, 335, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Onix - Rock Blast - Egg
  (95, 9500, 350, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Onix - Rock Climb - Egg
  (95, 9500, 431, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Onix - Stealth Rock - Egg
  (95, 9500, 446, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Onix - Wide Guard - Egg
  (95, 9500, 469, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Onix - Heavy Slam - Egg
  (95, 9500, 484, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Onix - Rototiller - Egg
  (95, 9500, 563, 16, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Onix - Bind - Tutor
  (95, 9500, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Onix - Snore - Tutor
  (95, 9500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Onix - Iron Tail - Tutor
  (95, 9500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Onix - Block - Tutor
  (95, 9500, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Onix - Dragon Pulse - Tutor
  (95, 9500, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Onix - Earth Power - Tutor
  (95, 9500, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Onix - Iron Head - Tutor
  (95, 9500, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Onix - Stealth Rock - Tutor
  (95, 9500, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Onix - Stomping Tantrum - Tutor
  (95, 9500, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),

  -- Drowzee - Pound - Level 1
  (96, 9600, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drowzee - Hypnosis - Level 1
  (96, 9600, 95, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drowzee - Disable - Level 5
  (96, 9600, 50, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Drowzee - Confusion - Level 9
  (96, 9600, 93, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Drowzee - Headbutt - Level 13
  (96, 9600, 29, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Drowzee - Poison Gas - Level 17
  (96, 9600, 139, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Drowzee - Meditate - Level 21
  (96, 9600, 96, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Drowzee - Psybeam - Level 25
  (96, 9600, 60, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Drowzee - Wake-Up Slap - Level 29
  (96, 9600, 358, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Drowzee - Psych Up - Level 33
  (96, 9600, 244, 16, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Drowzee - Synchronoise - Level 37
  (96, 9600, 485, 16, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Drowzee - Zen Headbutt - Level 41
  (96, 9600, 428, 16, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Drowzee - Swagger - Level 45
  (96, 9600, 207, 16, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Drowzee - Psychic - Level 49
  (96, 9600, 94, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Drowzee - Nasty Plot - Level 53
  (96, 9600, 417, 16, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Drowzee - Psyshock - Level 57
  (96, 9600, 473, 16, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Drowzee - Future Sight - Level 61
  (96, 9600, 248, 16, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Drowzee - Psyshock - TM03
  (96, 9600, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 18),
  -- Drowzee - Calm Mind - TM04
  (96, 9600, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 19),
  -- Drowzee - Toxic - TM06
  (96, 9600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Drowzee - Hidden Power - TM10
  (96, 9600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Drowzee - Sunny Day - TM11
  (96, 9600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Drowzee - Taunt - TM12
  (96, 9600, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 23),
  -- Drowzee - Light Screen - TM16
  (96, 9600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 24),
  -- Drowzee - Protect - TM17
  (96, 9600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Drowzee - Rain Dance - TM18
  (96, 9600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Drowzee - Safeguard - TM20
  (96, 9600, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 27),
  -- Drowzee - Frustration - TM21
  (96, 9600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Drowzee - Return - TM27
  (96, 9600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Drowzee - Psychic - TM29
  (96, 9600, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 30),
  -- Drowzee - Shadow Ball - TM30
  (96, 9600, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 31),
  -- Drowzee - Brick Break - TM31
  (96, 9600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 32),
  -- Drowzee - Double Team - TM32
  (96, 9600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Drowzee - Reflect - TM33
  (96, 9600, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 34),
  -- Drowzee - Torment - TM41
  (96, 9600, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 35),
  -- Drowzee - Facade - TM42
  (96, 9600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Drowzee - Rest - TM44
  (96, 9600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Drowzee - Attract - TM45
  (96, 9600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Drowzee - Thief - TM46
  (96, 9600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 39),
  -- Drowzee - Low Sweep - TM47
  (96, 9600, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 40),
  -- Drowzee - Round - TM48
  (96, 9600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Drowzee - Fling - TM56
  (96, 9600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 42),
  -- Drowzee - Thunder Wave - TM73
  (96, 9600, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 43),
  -- Drowzee - Psych Up - TM77
  (96, 9600, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 44),
  -- Drowzee - Dream Eater - TM85
  (96, 9600, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 45),
  -- Drowzee - Grass Knot - TM86
  (96, 9600, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 46),
  -- Drowzee - Swagger - TM87
  (96, 9600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 47),
  -- Drowzee - Sleep Talk - TM88
  (96, 9600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 48),
  -- Drowzee - Substitute - TM90
  (96, 9600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Drowzee - Trick Room - TM92
  (96, 9600, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 50),
  -- Drowzee - Dazzling Gleam - TM99
  (96, 9600, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 51),
  -- Drowzee - Confide - TM100
  (96, 9600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 52),
  -- Drowzee - Fire Punch - Egg
  (96, 9600, 7, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Drowzee - Ice Punch - Egg
  (96, 9600, 8, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Drowzee - Thunder Punch - Egg
  (96, 9600, 9, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Drowzee - Barrier - Egg
  (96, 9600, 112, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Drowzee - Flatter - Egg
  (96, 9600, 260, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Drowzee - Role Play - Egg
  (96, 9600, 272, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Drowzee - Assist - Egg
  (96, 9600, 274, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Drowzee - Skill Swap - Egg
  (96, 9600, 285, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Drowzee - Secret Power - Egg
  (96, 9600, 290, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Drowzee - Guard Swap - Egg
  (96, 9600, 385, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Drowzee - Nasty Plot - Egg
  (96, 9600, 417, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Drowzee - Psycho Cut - Egg
  (96, 9600, 427, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Drowzee - Power Split - Egg
  (96, 9600, 471, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Drowzee - Psychic Terrain - Egg
  (96, 9600, 678, 16, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Drowzee - Fire Punch - Tutor
  (96, 9600, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Drowzee - Ice Punch - Tutor
  (96, 9600, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Drowzee - Thunder Punch - Tutor
  (96, 9600, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Drowzee - Low Kick - Tutor
  (96, 9600, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Drowzee - Snore - Tutor
  (96, 9600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Drowzee - Focus Punch - Tutor
  (96, 9600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Drowzee - Trick - Tutor
  (96, 9600, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Drowzee - Role Play - Tutor
  (96, 9600, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Drowzee - Magic Coat - Tutor
  (96, 9600, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Drowzee - Recycle - Tutor
  (96, 9600, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Drowzee - Skill Swap - Tutor
  (96, 9600, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Drowzee - Snatch - Tutor
  (96, 9600, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Drowzee - Signal Beam - Tutor
  (96, 9600, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Drowzee - Drain Punch - Tutor
  (96, 9600, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Drowzee - Zen Headbutt - Tutor
  (96, 9600, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Drowzee - Telekinesis - Tutor
  (96, 9600, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Drowzee - Magic Room - Tutor
  (96, 9600, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Drowzee - Foul Play - Tutor
  (96, 9600, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Drowzee - Ally Switch - Tutor
  (96, 9600, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),

  -- Hypno - Pound - Level 1
  (97, 9700, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hypno - Disable - Level 1
  (97, 9700, 50, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hypno - Confusion - Level 1
  (97, 9700, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hypno - Hypnosis - Level 1
  (97, 9700, 95, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hypno - Nightmare - Level 1
  (97, 9700, 171, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hypno - Future Sight - Level 1
  (97, 9700, 248, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Hypno - Switcheroo - Level 1
  (97, 9700, 415, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Hypno - Nasty Plot - Level 1
  (97, 9700, 417, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Hypno - Disable - Level 5
  (97, 9700, 50, 16, NULL, 1, 5, NULL, NULL, NULL, 9),
  -- Hypno - Confusion - Level 9
  (97, 9700, 93, 16, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Hypno - Headbutt - Level 13
  (97, 9700, 29, 16, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Hypno - Poison Gas - Level 17
  (97, 9700, 139, 16, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Hypno - Meditate - Level 21
  (97, 9700, 96, 16, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Hypno - Psybeam - Level 25
  (97, 9700, 60, 16, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Hypno - Wake-Up Slap - Level 29
  (97, 9700, 358, 16, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Hypno - Psych Up - Level 33
  (97, 9700, 244, 16, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Hypno - Synchronoise - Level 37
  (97, 9700, 485, 16, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Hypno - Zen Headbutt - Level 41
  (97, 9700, 428, 16, NULL, 1, 41, NULL, NULL, NULL, 18),
  -- Hypno - Swagger - Level 45
  (97, 9700, 207, 16, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Hypno - Psychic - Level 49
  (97, 9700, 94, 16, NULL, 1, 49, NULL, NULL, NULL, 20),
  -- Hypno - Nasty Plot - Level 53
  (97, 9700, 417, 16, NULL, 1, 53, NULL, NULL, NULL, 21),
  -- Hypno - Psyshock - Level 57
  (97, 9700, 473, 16, NULL, 1, 57, NULL, NULL, NULL, 22),
  -- Hypno - Future Sight - Level 61
  (97, 9700, 248, 16, NULL, 1, 61, NULL, NULL, NULL, 23),
  -- Hypno - Psyshock - TM03
  (97, 9700, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 24),
  -- Hypno - Calm Mind - TM04
  (97, 9700, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 25),
  -- Hypno - Toxic - TM06
  (97, 9700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 26),
  -- Hypno - Hidden Power - TM10
  (97, 9700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 27),
  -- Hypno - Sunny Day - TM11
  (97, 9700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 28),
  -- Hypno - Taunt - TM12
  (97, 9700, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 29),
  -- Hypno - Hyper Beam - TM15
  (97, 9700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 30),
  -- Hypno - Light Screen - TM16
  (97, 9700, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 31),
  -- Hypno - Protect - TM17
  (97, 9700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 32),
  -- Hypno - Rain Dance - TM18
  (97, 9700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 33),
  -- Hypno - Safeguard - TM20
  (97, 9700, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 34),
  -- Hypno - Frustration - TM21
  (97, 9700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 35),
  -- Hypno - Return - TM27
  (97, 9700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 36),
  -- Hypno - Psychic - TM29
  (97, 9700, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 37),
  -- Hypno - Shadow Ball - TM30
  (97, 9700, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 38),
  -- Hypno - Brick Break - TM31
  (97, 9700, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 39),
  -- Hypno - Double Team - TM32
  (97, 9700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 40),
  -- Hypno - Reflect - TM33
  (97, 9700, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 41),
  -- Hypno - Torment - TM41
  (97, 9700, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 42),
  -- Hypno - Facade - TM42
  (97, 9700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 43),
  -- Hypno - Rest - TM44
  (97, 9700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 44),
  -- Hypno - Attract - TM45
  (97, 9700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 45),
  -- Hypno - Thief - TM46
  (97, 9700, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 46),
  -- Hypno - Low Sweep - TM47
  (97, 9700, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 47),
  -- Hypno - Round - TM48
  (97, 9700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 48),
  -- Hypno - Focus Blast - TM52
  (97, 9700, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 49),
  -- Hypno - Fling - TM56
  (97, 9700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 50),
  -- Hypno - Giga Impact - TM68
  (97, 9700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 51),
  -- Hypno - Thunder Wave - TM73
  (97, 9700, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 52),
  -- Hypno - Psych Up - TM77
  (97, 9700, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 53),
  -- Hypno - Dream Eater - TM85
  (97, 9700, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 54),
  -- Hypno - Grass Knot - TM86
  (97, 9700, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 55),
  -- Hypno - Swagger - TM87
  (97, 9700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 56),
  -- Hypno - Sleep Talk - TM88
  (97, 9700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 57),
  -- Hypno - Substitute - TM90
  (97, 9700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 58),
  -- Hypno - Trick Room - TM92
  (97, 9700, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 59),
  -- Hypno - Dazzling Gleam - TM99
  (97, 9700, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 60),
  -- Hypno - Confide - TM100
  (97, 9700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 61),
  -- Hypno - Fire Punch - Tutor
  (97, 9700, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Hypno - Ice Punch - Tutor
  (97, 9700, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Hypno - Thunder Punch - Tutor
  (97, 9700, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Hypno - Low Kick - Tutor
  (97, 9700, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Hypno - Snore - Tutor
  (97, 9700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Hypno - Focus Punch - Tutor
  (97, 9700, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Hypno - Trick - Tutor
  (97, 9700, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Hypno - Role Play - Tutor
  (97, 9700, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Hypno - Magic Coat - Tutor
  (97, 9700, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Hypno - Recycle - Tutor
  (97, 9700, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Hypno - Skill Swap - Tutor
  (97, 9700, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Hypno - Snatch - Tutor
  (97, 9700, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Hypno - Signal Beam - Tutor
  (97, 9700, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Hypno - Drain Punch - Tutor
  (97, 9700, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Hypno - Zen Headbutt - Tutor
  (97, 9700, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Hypno - Telekinesis - Tutor
  (97, 9700, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Hypno - Magic Room - Tutor
  (97, 9700, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Hypno - Foul Play - Tutor
  (97, 9700, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Hypno - Ally Switch - Tutor
  (97, 9700, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),

  -- Krabby - Bubble - Level 1
  (98, 9800, 145, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krabby - Mud Sport - Level 1
  (98, 9800, 300, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Krabby - Vise Grip - Level 5
  (98, 9800, 11, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Krabby - Leer - Level 9
  (98, 9800, 43, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Krabby - Harden - Level 11
  (98, 9800, 106, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Krabby - Bubble Beam - Level 15
  (98, 9800, 61, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Krabby - Mud Shot - Level 19
  (98, 9800, 341, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Krabby - Metal Claw - Level 21
  (98, 9800, 232, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Krabby - Stomp - Level 25
  (98, 9800, 23, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Krabby - Protect - Level 29
  (98, 9800, 182, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Krabby - Guillotine - Level 31
  (98, 9800, 12, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Krabby - Slam - Level 35
  (98, 9800, 21, 16, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Krabby - Brine - Level 39
  (98, 9800, 362, 16, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Krabby - Crabhammer - Level 41
  (98, 9800, 152, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Krabby - Flail - Level 45
  (98, 9800, 175, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Krabby - Toxic - TM06
  (98, 9800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Krabby - Hail - TM07
  (98, 9800, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 17),
  -- Krabby - Hidden Power - TM10
  (98, 9800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Krabby - Ice Beam - TM13
  (98, 9800, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 19),
  -- Krabby - Blizzard - TM14
  (98, 9800, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 20),
  -- Krabby - Protect - TM17
  (98, 9800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Krabby - Rain Dance - TM18
  (98, 9800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Krabby - Frustration - TM21
  (98, 9800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Krabby - Return - TM27
  (98, 9800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Krabby - Brick Break - TM31
  (98, 9800, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 25),
  -- Krabby - Double Team - TM32
  (98, 9800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Krabby - Rock Tomb - TM39
  (98, 9800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 27),
  -- Krabby - Facade - TM42
  (98, 9800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Krabby - Rest - TM44
  (98, 9800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Krabby - Attract - TM45
  (98, 9800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Krabby - Thief - TM46
  (98, 9800, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 31),
  -- Krabby - Round - TM48
  (98, 9800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Krabby - False Swipe - TM54
  (98, 9800, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 33),
  -- Krabby - Scald - TM55
  (98, 9800, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 34),
  -- Krabby - Fling - TM56
  (98, 9800, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 35),
  -- Krabby - Swords Dance - TM75
  (98, 9800, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 36),
  -- Krabby - Rock Slide - TM80
  (98, 9800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 37),
  -- Krabby - X-Scissor - TM81
  (98, 9800, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 38),
  -- Krabby - Swagger - TM87
  (98, 9800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Krabby - Sleep Talk - TM88
  (98, 9800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Krabby - Substitute - TM90
  (98, 9800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Krabby - Surf - TM94
  (98, 9800, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 42),
  -- Krabby - Confide - TM100
  (98, 9800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 43),
  -- Krabby - Slam - Egg
  (98, 9800, 21, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Krabby - Agility - Egg
  (98, 9800, 97, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Krabby - Haze - Egg
  (98, 9800, 114, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Krabby - Bide - Egg
  (98, 9800, 117, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Krabby - Amnesia - Egg
  (98, 9800, 133, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Krabby - Flail - Egg
  (98, 9800, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Krabby - Endure - Egg
  (98, 9800, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Krabby - Ancient Power - Egg
  (98, 9800, 246, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Krabby - Knock Off - Egg
  (98, 9800, 282, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Krabby - Tickle - Egg
  (98, 9800, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Krabby - Chip Away - Egg
  (98, 9800, 498, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Krabby - Ally Switch - Egg
  (98, 9800, 502, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Krabby - Snore - Tutor
  (98, 9800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Krabby - Icy Wind - Tutor
  (98, 9800, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Krabby - Superpower - Tutor
  (98, 9800, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Krabby - Knock Off - Tutor
  (98, 9800, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Krabby - Iron Defense - Tutor
  (98, 9800, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Krabby - Water Pulse - Tutor
  (98, 9800, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Krabby - Ally Switch - Tutor
  (98, 9800, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Krabby - Liquidation - Tutor
  (98, 9800, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),

  -- Kingler - Vise Grip - Level 1
  (99, 9900, 11, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kingler - Leer - Level 1
  (99, 9900, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kingler - Bubble - Level 1
  (99, 9900, 145, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kingler - Mud Sport - Level 1
  (99, 9900, 300, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kingler - Wide Guard - Level 1
  (99, 9900, 469, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kingler - Vise Grip - Level 5
  (99, 9900, 11, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Kingler - Leer - Level 9
  (99, 9900, 43, 16, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Kingler - Harden - Level 11
  (99, 9900, 106, 16, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Kingler - Bubble Beam - Level 15
  (99, 9900, 61, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Kingler - Mud Shot - Level 19
  (99, 9900, 341, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Kingler - Metal Claw - Level 21
  (99, 9900, 232, 16, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Kingler - Stomp - Level 25
  (99, 9900, 23, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Kingler - Protect - Level 32
  (99, 9900, 182, 16, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Kingler - Guillotine - Level 37
  (99, 9900, 12, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Kingler - Slam - Level 44
  (99, 9900, 21, 16, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Kingler - Brine - Level 51
  (99, 9900, 362, 16, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Kingler - Crabhammer - Level 56
  (99, 9900, 152, 16, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Kingler - Flail - Level 63
  (99, 9900, 175, 16, NULL, 1, 63, NULL, NULL, NULL, 18),
  -- Kingler - Toxic - TM06
  (99, 9900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Kingler - Hail - TM07
  (99, 9900, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 20),
  -- Kingler - Hidden Power - TM10
  (99, 9900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Kingler - Ice Beam - TM13
  (99, 9900, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 22),
  -- Kingler - Blizzard - TM14
  (99, 9900, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 23),
  -- Kingler - Hyper Beam - TM15
  (99, 9900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Kingler - Protect - TM17
  (99, 9900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Kingler - Rain Dance - TM18
  (99, 9900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Kingler - Frustration - TM21
  (99, 9900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Kingler - Return - TM27
  (99, 9900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Kingler - Brick Break - TM31
  (99, 9900, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 29),
  -- Kingler - Double Team - TM32
  (99, 9900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Kingler - Rock Tomb - TM39
  (99, 9900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 31),
  -- Kingler - Facade - TM42
  (99, 9900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Kingler - Rest - TM44
  (99, 9900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Kingler - Attract - TM45
  (99, 9900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Kingler - Thief - TM46
  (99, 9900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 35),
  -- Kingler - Round - TM48
  (99, 9900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Kingler - False Swipe - TM54
  (99, 9900, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 37),
  -- Kingler - Scald - TM55
  (99, 9900, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 38),
  -- Kingler - Fling - TM56
  (99, 9900, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 39),
  -- Kingler - Quash - TM60
  (99, 9900, 511, 16, NULL, 2, NULL, NULL, 16002060, NULL, 40),
  -- Kingler - Giga Impact - TM68
  (99, 9900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 41),
  -- Kingler - Swords Dance - TM75
  (99, 9900, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 42),
  -- Kingler - Rock Slide - TM80
  (99, 9900, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 43),
  -- Kingler - X-Scissor - TM81
  (99, 9900, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 44),
  -- Kingler - Swagger - TM87
  (99, 9900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Kingler - Sleep Talk - TM88
  (99, 9900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Kingler - Substitute - TM90
  (99, 9900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Kingler - Surf - TM94
  (99, 9900, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 48),
  -- Kingler - Confide - TM100
  (99, 9900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Kingler - Snore - Tutor
  (99, 9900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Kingler - Icy Wind - Tutor
  (99, 9900, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Kingler - Superpower - Tutor
  (99, 9900, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Kingler - Knock Off - Tutor
  (99, 9900, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Kingler - Iron Defense - Tutor
  (99, 9900, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Kingler - Water Pulse - Tutor
  (99, 9900, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Kingler - Ally Switch - Tutor
  (99, 9900, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Kingler - Stomping Tantrum - Tutor
  (99, 9900, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Kingler - Liquidation - Tutor
  (99, 9900, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),

  -- Voltorb - Tackle - Level 1
  (100, 10000, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Voltorb - Charge - Level 1
  (100, 10000, 268, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Voltorb - Sonic Boom - Level 4
  (100, 10000, 49, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Voltorb - Eerie Impulse - Level 6
  (100, 10000, 598, 16, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Voltorb - Spark - Level 9
  (100, 10000, 209, 16, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Voltorb - Rollout - Level 11
  (100, 10000, 205, 16, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Voltorb - Screech - Level 13
  (100, 10000, 103, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Voltorb - Charge Beam - Level 16
  (100, 10000, 451, 16, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Voltorb - Swift - Level 20
  (100, 10000, 129, 16, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Voltorb - Electro Ball - Level 22
  (100, 10000, 486, 16, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Voltorb - Self-Destruct - Level 26
  (100, 10000, 120, 16, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Voltorb - Light Screen - Level 29
  (100, 10000, 113, 16, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Voltorb - Magnet Rise - Level 34
  (100, 10000, 393, 16, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Voltorb - Discharge - Level 37
  (100, 10000, 435, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Voltorb - Explosion - Level 41
  (100, 10000, 153, 16, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Voltorb - Gyro Ball - Level 46
  (100, 10000, 360, 16, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Voltorb - Mirror Coat - Level 48
  (100, 10000, 243, 16, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Voltorb - Toxic - TM06
  (100, 10000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Voltorb - Hidden Power - TM10
  (100, 10000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Voltorb - Taunt - TM12
  (100, 10000, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 20),
  -- Voltorb - Light Screen - TM16
  (100, 10000, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 21),
  -- Voltorb - Protect - TM17
  (100, 10000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Voltorb - Rain Dance - TM18
  (100, 10000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Voltorb - Frustration - TM21
  (100, 10000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Voltorb - Thunderbolt - TM24
  (100, 10000, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 25),
  -- Voltorb - Thunder - TM25
  (100, 10000, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 26),
  -- Voltorb - Return - TM27
  (100, 10000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Voltorb - Double Team - TM32
  (100, 10000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Voltorb - Torment - TM41
  (100, 10000, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 29),
  -- Voltorb - Facade - TM42
  (100, 10000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Voltorb - Rest - TM44
  (100, 10000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Voltorb - Thief - TM46
  (100, 10000, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 32),
  -- Voltorb - Round - TM48
  (100, 10000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Voltorb - Charge Beam - TM57
  (100, 10000, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 34),
  -- Voltorb - Explosion - TM64
  (100, 10000, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 35),
  -- Voltorb - Volt Switch - TM72
  (100, 10000, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 36),
  -- Voltorb - Thunder Wave - TM73
  (100, 10000, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 37),
  -- Voltorb - Gyro Ball - TM74
  (100, 10000, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 38),
  -- Voltorb - Swagger - TM87
  (100, 10000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Voltorb - Sleep Talk - TM88
  (100, 10000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Voltorb - Substitute - TM90
  (100, 10000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Voltorb - Wild Charge - TM93
  (100, 10000, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 42),
  -- Voltorb - Confide - TM100
  (100, 10000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 43),
  -- Voltorb - Snore - Tutor
  (100, 10000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Voltorb - Magic Coat - Tutor
  (100, 10000, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Voltorb - Signal Beam - Tutor
  (100, 10000, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Voltorb - Shock Wave - Tutor
  (100, 10000, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Voltorb - Magnet Rise - Tutor
  (100, 10000, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Voltorb - Foul Play - Tutor
  (100, 10000, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49);
