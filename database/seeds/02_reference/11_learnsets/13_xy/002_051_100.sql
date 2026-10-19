-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VI raw learnset pages.
-- Cross-check: PokemonDB X / Y learnset pages and legacy Voydex Generation VI learnset seeds.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- X / Y learnsets for default forms, species 051-100.
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
  (51, 5100, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dugtrio - Sand Attack - Level 1
  (51, 5100, 28, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dugtrio - Growl - Level 1
  (51, 5100, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dugtrio - Tri Attack - Level 1
  (51, 5100, 161, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dugtrio - Night Slash - Level 1
  (51, 5100, 400, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dugtrio - Rototiller - Level 1
  (51, 5100, 563, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dugtrio - Growl - Level 4
  (51, 5100, 45, 13, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Dugtrio - Astonish - Level 7
  (51, 5100, 310, 13, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Dugtrio - Mud-Slap - Level 12
  (51, 5100, 189, 13, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Dugtrio - Magnitude - Level 15
  (51, 5100, 222, 13, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Dugtrio - Bulldoze - Level 18
  (51, 5100, 523, 13, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Dugtrio - Sucker Punch - Level 23
  (51, 5100, 389, 13, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Dugtrio - Sand Tomb - Level 26
  (51, 5100, 328, 13, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Dugtrio - Mud Bomb - Level 28
  (51, 5100, 426, 13, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Dugtrio - Earth Power - Level 33
  (51, 5100, 414, 13, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Dugtrio - Dig - Level 40
  (51, 5100, 91, 13, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Dugtrio - Slash - Level 45
  (51, 5100, 163, 13, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Dugtrio - Earthquake - Level 50
  (51, 5100, 89, 13, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Dugtrio - Fissure - Level 57
  (51, 5100, 90, 13, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Dugtrio - Hone Claws - TM01
  (51, 5100, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 20),
  -- Dugtrio - Toxic - TM06
  (51, 5100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Dugtrio - Hidden Power - TM10
  (51, 5100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Dugtrio - Sunny Day - TM11
  (51, 5100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Dugtrio - Hyper Beam - TM15
  (51, 5100, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Dugtrio - Protect - TM17
  (51, 5100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Dugtrio - Frustration - TM21
  (51, 5100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Dugtrio - Earthquake - TM26
  (51, 5100, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 27),
  -- Dugtrio - Return - TM27
  (51, 5100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Dugtrio - Dig - TM28
  (51, 5100, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 29),
  -- Dugtrio - Double Team - TM32
  (51, 5100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Dugtrio - Sludge Wave - TM34
  (51, 5100, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 31),
  -- Dugtrio - Sludge Bomb - TM36
  (51, 5100, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 32),
  -- Dugtrio - Sandstorm - TM37
  (51, 5100, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 33),
  -- Dugtrio - Rock Tomb - TM39
  (51, 5100, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 34),
  -- Dugtrio - Aerial Ace - TM40
  (51, 5100, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 35),
  -- Dugtrio - Facade - TM42
  (51, 5100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Dugtrio - Rest - TM44
  (51, 5100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Dugtrio - Attract - TM45
  (51, 5100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Dugtrio - Thief - TM46
  (51, 5100, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 39),
  -- Dugtrio - Round - TM48
  (51, 5100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 40),
  -- Dugtrio - Echoed Voice - TM49
  (51, 5100, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 41),
  -- Dugtrio - Shadow Claw - TM65
  (51, 5100, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 42),
  -- Dugtrio - Giga Impact - TM68
  (51, 5100, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 43),
  -- Dugtrio - Stone Edge - TM71
  (51, 5100, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 44),
  -- Dugtrio - Bulldoze - TM78
  (51, 5100, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 45),
  -- Dugtrio - Rock Slide - TM80
  (51, 5100, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 46),
  -- Dugtrio - Swagger - TM87
  (51, 5100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Dugtrio - Sleep Talk - TM88
  (51, 5100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Dugtrio - Substitute - TM90
  (51, 5100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 49),
  -- Dugtrio - Rock Smash - TM94
  (51, 5100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 50),
  -- Dugtrio - Confide - TM100
  (51, 5100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 51),
  -- Dugtrio - Cut - HM01
  (51, 5100, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 52),
  -- Meowth - Scratch - Level 1
  (52, 5200, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowth - Growl - Level 1
  (52, 5200, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowth - Bite - Level 6
  (52, 5200, 44, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Meowth - Fake Out - Level 9
  (52, 5200, 252, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Meowth - Fury Swipes - Level 14
  (52, 5200, 154, 13, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Meowth - Screech - Level 17
  (52, 5200, 103, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Meowth - Feint Attack - Level 22
  (52, 5200, 185, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Meowth - Taunt - Level 25
  (52, 5200, 269, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Meowth - Pay Day - Level 30
  (52, 5200, 6, 13, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Meowth - Slash - Level 33
  (52, 5200, 163, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Meowth - Nasty Plot - Level 38
  (52, 5200, 417, 13, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Meowth - Assurance - Level 41
  (52, 5200, 372, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Meowth - Captivate - Level 46
  (52, 5200, 445, 13, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Meowth - Night Slash - Level 49
  (52, 5200, 400, 13, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Meowth - Feint - Level 50
  (52, 5200, 364, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Meowth - Hone Claws - TM01
  (52, 5200, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 16),
  -- Meowth - Toxic - TM06
  (52, 5200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Meowth - Hidden Power - TM10
  (52, 5200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Meowth - Sunny Day - TM11
  (52, 5200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Meowth - Taunt - TM12
  (52, 5200, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 20),
  -- Meowth - Protect - TM17
  (52, 5200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Meowth - Rain Dance - TM18
  (52, 5200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Meowth - Frustration - TM21
  (52, 5200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Meowth - Thunderbolt - TM24
  (52, 5200, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 24),
  -- Meowth - Thunder - TM25
  (52, 5200, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 25),
  -- Meowth - Return - TM27
  (52, 5200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Meowth - Dig - TM28
  (52, 5200, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 27),
  -- Meowth - Shadow Ball - TM30
  (52, 5200, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 28),
  -- Meowth - Double Team - TM32
  (52, 5200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Meowth - Aerial Ace - TM40
  (52, 5200, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 30),
  -- Meowth - Torment - TM41
  (52, 5200, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 31),
  -- Meowth - Facade - TM42
  (52, 5200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Meowth - Rest - TM44
  (52, 5200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Meowth - Attract - TM45
  (52, 5200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Meowth - Thief - TM46
  (52, 5200, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 35),
  -- Meowth - Round - TM48
  (52, 5200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 36),
  -- Meowth - Echoed Voice - TM49
  (52, 5200, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 37),
  -- Meowth - Shadow Claw - TM65
  (52, 5200, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 38),
  -- Meowth - Payback - TM66
  (52, 5200, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 39),
  -- Meowth - Retaliate - TM67
  (52, 5200, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 40),
  -- Meowth - Flash - TM70
  (52, 5200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 41),
  -- Meowth - Psych Up - TM77
  (52, 5200, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 42),
  -- Meowth - Dream Eater - TM85
  (52, 5200, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 43),
  -- Meowth - Swagger - TM87
  (52, 5200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Meowth - Sleep Talk - TM88
  (52, 5200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Meowth - U-turn - TM89
  (52, 5200, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 46),
  -- Meowth - Substitute - TM90
  (52, 5200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 47),
  -- Meowth - Dark Pulse - TM97
  (52, 5200, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 48),
  -- Meowth - Confide - TM100
  (52, 5200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 49),
  -- Meowth - Cut - HM01
  (52, 5200, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 50),
  -- Meowth - Tail Whip - Egg
  (52, 5200, 39, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Meowth - Hypnosis - Egg
  (52, 5200, 95, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Meowth - Amnesia - Egg
  (52, 5200, 133, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Meowth - Flail - Egg
  (52, 5200, 175, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Meowth - Spite - Egg
  (52, 5200, 180, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Meowth - Charm - Egg
  (52, 5200, 204, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Meowth - Iron Tail - Egg
  (52, 5200, 231, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Meowth - Assist - Egg
  (52, 5200, 274, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Meowth - Snatch - Egg
  (52, 5200, 289, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Meowth - Odor Sleuth - Egg
  (52, 5200, 316, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Meowth - Punishment - Egg
  (52, 5200, 386, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Meowth - Last Resort - Egg
  (52, 5200, 387, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Meowth - Foul Play - Egg
  (52, 5200, 492, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Persian - Scratch - Level 1
  (53, 5300, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Persian - Bite - Level 1
  (53, 5300, 44, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Persian - Growl - Level 1
  (53, 5300, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Persian - Fake Out - Level 1
  (53, 5300, 252, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Persian - Switcheroo - Level 1
  (53, 5300, 415, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Persian - Play Rough - Level 1
  (53, 5300, 583, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Persian - Bite - Level 6
  (53, 5300, 44, 13, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Persian - Fake Out - Level 9
  (53, 5300, 252, 13, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Persian - Fury Swipes - Level 14
  (53, 5300, 154, 13, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Persian - Screech - Level 17
  (53, 5300, 103, 13, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Persian - Feint Attack - Level 22
  (53, 5300, 185, 13, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Persian - Taunt - Level 25
  (53, 5300, 269, 13, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Persian - Swift - Level 28
  (53, 5300, 129, 13, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Persian - Power Gem - Level 32
  (53, 5300, 408, 13, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Persian - Slash - Level 37
  (53, 5300, 163, 13, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Persian - Nasty Plot - Level 44
  (53, 5300, 417, 13, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Persian - Assurance - Level 49
  (53, 5300, 372, 13, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Persian - Captivate - Level 56
  (53, 5300, 445, 13, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Persian - Night Slash - Level 61
  (53, 5300, 400, 13, NULL, 1, 61, NULL, NULL, NULL, 19),
  -- Persian - Feint - Level 65
  (53, 5300, 364, 13, NULL, 1, 65, NULL, NULL, NULL, 20),
  -- Persian - Hone Claws - TM01
  (53, 5300, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 21),
  -- Persian - Roar - TM05
  (53, 5300, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 22),
  -- Persian - Toxic - TM06
  (53, 5300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 23),
  -- Persian - Hidden Power - TM10
  (53, 5300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Persian - Sunny Day - TM11
  (53, 5300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 25),
  -- Persian - Taunt - TM12
  (53, 5300, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 26),
  -- Persian - Hyper Beam - TM15
  (53, 5300, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 27),
  -- Persian - Protect - TM17
  (53, 5300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 28),
  -- Persian - Rain Dance - TM18
  (53, 5300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 29),
  -- Persian - Frustration - TM21
  (53, 5300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 30),
  -- Persian - Thunderbolt - TM24
  (53, 5300, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 31),
  -- Persian - Thunder - TM25
  (53, 5300, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 32),
  -- Persian - Return - TM27
  (53, 5300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Persian - Dig - TM28
  (53, 5300, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 34),
  -- Persian - Shadow Ball - TM30
  (53, 5300, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 35),
  -- Persian - Double Team - TM32
  (53, 5300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 36),
  -- Persian - Aerial Ace - TM40
  (53, 5300, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 37),
  -- Persian - Torment - TM41
  (53, 5300, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 38),
  -- Persian - Facade - TM42
  (53, 5300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 39),
  -- Persian - Rest - TM44
  (53, 5300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 40),
  -- Persian - Attract - TM45
  (53, 5300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 41),
  -- Persian - Thief - TM46
  (53, 5300, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 42),
  -- Persian - Round - TM48
  (53, 5300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 43),
  -- Persian - Echoed Voice - TM49
  (53, 5300, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 44),
  -- Persian - Embargo - TM63
  (53, 5300, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 45),
  -- Persian - Shadow Claw - TM65
  (53, 5300, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 46),
  -- Persian - Payback - TM66
  (53, 5300, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 47),
  -- Persian - Retaliate - TM67
  (53, 5300, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 48),
  -- Persian - Giga Impact - TM68
  (53, 5300, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 49),
  -- Persian - Flash - TM70
  (53, 5300, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 50),
  -- Persian - Psych Up - TM77
  (53, 5300, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 51),
  -- Persian - Dream Eater - TM85
  (53, 5300, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 52),
  -- Persian - Swagger - TM87
  (53, 5300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 53),
  -- Persian - Sleep Talk - TM88
  (53, 5300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 54),
  -- Persian - U-turn - TM89
  (53, 5300, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 55),
  -- Persian - Substitute - TM90
  (53, 5300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 56),
  -- Persian - Dark Pulse - TM97
  (53, 5300, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 57),
  -- Persian - Confide - TM100
  (53, 5300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 58),
  -- Persian - Cut - HM01
  (53, 5300, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 59),
  -- Psyduck - Scratch - Level 1
  (54, 5400, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Psyduck - Water Sport - Level 1
  (54, 5400, 346, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Psyduck - Tail Whip - Level 4
  (54, 5400, 39, 13, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Psyduck - Water Gun - Level 8
  (54, 5400, 55, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Psyduck - Disable - Level 11
  (54, 5400, 50, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Psyduck - Confusion - Level 15
  (54, 5400, 93, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Psyduck - Water Pulse - Level 18
  (54, 5400, 352, 13, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Psyduck - Fury Swipes - Level 22
  (54, 5400, 154, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Psyduck - Screech - Level 25
  (54, 5400, 103, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Psyduck - Zen Headbutt - Level 29
  (54, 5400, 428, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Psyduck - Aqua Tail - Level 32
  (54, 5400, 401, 13, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Psyduck - Soak - Level 36
  (54, 5400, 487, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Psyduck - Psych Up - Level 39
  (54, 5400, 244, 13, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Psyduck - Amnesia - Level 43
  (54, 5400, 133, 13, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Psyduck - Hydro Pump - Level 46
  (54, 5400, 56, 13, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Psyduck - Wonder Room - Level 50
  (54, 5400, 472, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Psyduck - Hone Claws - TM01
  (54, 5400, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 17),
  -- Psyduck - Psyshock - TM03
  (54, 5400, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 18),
  -- Psyduck - Calm Mind - TM04
  (54, 5400, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 19),
  -- Psyduck - Toxic - TM06
  (54, 5400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Psyduck - Hail - TM07
  (54, 5400, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 21),
  -- Psyduck - Hidden Power - TM10
  (54, 5400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Psyduck - Ice Beam - TM13
  (54, 5400, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 23),
  -- Psyduck - Blizzard - TM14
  (54, 5400, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 24),
  -- Psyduck - Light Screen - TM16
  (54, 5400, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 25),
  -- Psyduck - Protect - TM17
  (54, 5400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Psyduck - Rain Dance - TM18
  (54, 5400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Psyduck - Frustration - TM21
  (54, 5400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Psyduck - Return - TM27
  (54, 5400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Psyduck - Dig - TM28
  (54, 5400, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 30),
  -- Psyduck - Psychic - TM29
  (54, 5400, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 31),
  -- Psyduck - Brick Break - TM31
  (54, 5400, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 32),
  -- Psyduck - Double Team - TM32
  (54, 5400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Psyduck - Aerial Ace - TM40
  (54, 5400, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 34),
  -- Psyduck - Facade - TM42
  (54, 5400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Psyduck - Rest - TM44
  (54, 5400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Psyduck - Attract - TM45
  (54, 5400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Psyduck - Round - TM48
  (54, 5400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Psyduck - Scald - TM55
  (54, 5400, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 39),
  -- Psyduck - Fling - TM56
  (54, 5400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 40),
  -- Psyduck - Shadow Claw - TM65
  (54, 5400, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 41),
  -- Psyduck - Flash - TM70
  (54, 5400, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 42),
  -- Psyduck - Psych Up - TM77
  (54, 5400, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 43),
  -- Psyduck - Swagger - TM87
  (54, 5400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Psyduck - Sleep Talk - TM88
  (54, 5400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Psyduck - Substitute - TM90
  (54, 5400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 46),
  -- Psyduck - Rock Smash - TM94
  (54, 5400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 47),
  -- Psyduck - Power-Up Punch - TM98
  (54, 5400, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 48),
  -- Psyduck - Confide - TM100
  (54, 5400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 49),
  -- Psyduck - Surf - HM03
  (54, 5400, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 50),
  -- Psyduck - Strength - HM04
  (54, 5400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 51),
  -- Psyduck - Waterfall - HM05
  (54, 5400, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 52),
  -- Psyduck - Psybeam - Egg
  (54, 5400, 60, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Psyduck - Hypnosis - Egg
  (54, 5400, 95, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Psyduck - Confuse Ray - Egg
  (54, 5400, 109, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Psyduck - Foresight - Egg
  (54, 5400, 193, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Psyduck - Sleep Talk - Egg
  (54, 5400, 214, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Psyduck - Encore - Egg
  (54, 5400, 227, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Psyduck - Cross Chop - Egg
  (54, 5400, 238, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Psyduck - Future Sight - Egg
  (54, 5400, 248, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Psyduck - Yawn - Egg
  (54, 5400, 281, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Psyduck - Refresh - Egg
  (54, 5400, 287, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Psyduck - Secret Power - Egg
  (54, 5400, 290, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Psyduck - Mud Bomb - Egg
  (54, 5400, 426, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Psyduck - Synchronoise - Egg
  (54, 5400, 485, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Psyduck - Simple Beam - Egg
  (54, 5400, 493, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Psyduck - Clear Smog - Egg
  (54, 5400, 499, 13, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Golduck - Scratch - Level 1
  (55, 5500, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golduck - Tail Whip - Level 1
  (55, 5500, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golduck - Water Gun - Level 1
  (55, 5500, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golduck - Water Sport - Level 1
  (55, 5500, 346, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golduck - Aqua Jet - Level 1
  (55, 5500, 453, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Golduck - Tail Whip - Level 4
  (55, 5500, 39, 13, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Golduck - Water Gun - Level 8
  (55, 5500, 55, 13, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Golduck - Disable - Level 11
  (55, 5500, 50, 13, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Golduck - Confusion - Level 15
  (55, 5500, 93, 13, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Golduck - Water Pulse - Level 18
  (55, 5500, 352, 13, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Golduck - Fury Swipes - Level 22
  (55, 5500, 154, 13, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Golduck - Screech - Level 25
  (55, 5500, 103, 13, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Golduck - Zen Headbutt - Level 29
  (55, 5500, 428, 13, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Golduck - Aqua Tail - Level 32
  (55, 5500, 401, 13, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Golduck - Soak - Level 38
  (55, 5500, 487, 13, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Golduck - Psych Up - Level 43
  (55, 5500, 244, 13, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Golduck - Amnesia - Level 49
  (55, 5500, 133, 13, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Golduck - Hydro Pump - Level 54
  (55, 5500, 56, 13, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Golduck - Wonder Room - Level 60
  (55, 5500, 472, 13, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Golduck - Hone Claws - TM01
  (55, 5500, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 20),
  -- Golduck - Psyshock - TM03
  (55, 5500, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 21),
  -- Golduck - Calm Mind - TM04
  (55, 5500, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 22),
  -- Golduck - Toxic - TM06
  (55, 5500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 23),
  -- Golduck - Hail - TM07
  (55, 5500, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 24),
  -- Golduck - Hidden Power - TM10
  (55, 5500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 25),
  -- Golduck - Ice Beam - TM13
  (55, 5500, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 26),
  -- Golduck - Blizzard - TM14
  (55, 5500, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 27),
  -- Golduck - Hyper Beam - TM15
  (55, 5500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 28),
  -- Golduck - Light Screen - TM16
  (55, 5500, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 29),
  -- Golduck - Protect - TM17
  (55, 5500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 30),
  -- Golduck - Rain Dance - TM18
  (55, 5500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 31),
  -- Golduck - Frustration - TM21
  (55, 5500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 32),
  -- Golduck - Return - TM27
  (55, 5500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Golduck - Dig - TM28
  (55, 5500, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 34),
  -- Golduck - Psychic - TM29
  (55, 5500, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 35),
  -- Golduck - Brick Break - TM31
  (55, 5500, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 36),
  -- Golduck - Double Team - TM32
  (55, 5500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 37),
  -- Golduck - Aerial Ace - TM40
  (55, 5500, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 38),
  -- Golduck - Facade - TM42
  (55, 5500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 39),
  -- Golduck - Rest - TM44
  (55, 5500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 40),
  -- Golduck - Attract - TM45
  (55, 5500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 41),
  -- Golduck - Low Sweep - TM47
  (55, 5500, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 42),
  -- Golduck - Round - TM48
  (55, 5500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 43),
  -- Golduck - Focus Blast - TM52
  (55, 5500, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 44),
  -- Golduck - Scald - TM55
  (55, 5500, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 45),
  -- Golduck - Fling - TM56
  (55, 5500, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 46),
  -- Golduck - Shadow Claw - TM65
  (55, 5500, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 47),
  -- Golduck - Giga Impact - TM68
  (55, 5500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 48),
  -- Golduck - Flash - TM70
  (55, 5500, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 49),
  -- Golduck - Psych Up - TM77
  (55, 5500, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 50),
  -- Golduck - Swagger - TM87
  (55, 5500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 51),
  -- Golduck - Sleep Talk - TM88
  (55, 5500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 52),
  -- Golduck - Substitute - TM90
  (55, 5500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 53),
  -- Golduck - Rock Smash - TM94
  (55, 5500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 54),
  -- Golduck - Power-Up Punch - TM98
  (55, 5500, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 55),
  -- Golduck - Confide - TM100
  (55, 5500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 56),
  -- Golduck - Surf - HM03
  (55, 5500, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 57),
  -- Golduck - Strength - HM04
  (55, 5500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 58),
  -- Golduck - Waterfall - HM05
  (55, 5500, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 59),
  -- Mankey - Scratch - Level 1
  (56, 5600, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mankey - Leer - Level 1
  (56, 5600, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mankey - Low Kick - Level 1
  (56, 5600, 67, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mankey - Focus Energy - Level 1
  (56, 5600, 116, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mankey - Covet - Level 1
  (56, 5600, 343, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mankey - Fury Swipes - Level 9
  (56, 5600, 154, 13, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Mankey - Karate Chop - Level 13
  (56, 5600, 2, 13, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Mankey - Seismic Toss - Level 17
  (56, 5600, 69, 13, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Mankey - Screech - Level 21
  (56, 5600, 103, 13, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Mankey - Assurance - Level 25
  (56, 5600, 372, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Mankey - Swagger - Level 33
  (56, 5600, 207, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Mankey - Cross Chop - Level 37
  (56, 5600, 238, 13, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Mankey - Thrash - Level 41
  (56, 5600, 37, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Mankey - Punishment - Level 45
  (56, 5600, 386, 13, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Mankey - Close Combat - Level 49
  (56, 5600, 370, 13, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Mankey - Final Gambit - Level 53
  (56, 5600, 515, 13, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Mankey - Hone Claws - TM01
  (56, 5600, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 17),
  -- Mankey - Toxic - TM06
  (56, 5600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Mankey - Bulk Up - TM08
  (56, 5600, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 19),
  -- Mankey - Hidden Power - TM10
  (56, 5600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Mankey - Sunny Day - TM11
  (56, 5600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Mankey - Taunt - TM12
  (56, 5600, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 22),
  -- Mankey - Protect - TM17
  (56, 5600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Mankey - Rain Dance - TM18
  (56, 5600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Mankey - Frustration - TM21
  (56, 5600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Mankey - Smack Down - TM23
  (56, 5600, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 26),
  -- Mankey - Thunderbolt - TM24
  (56, 5600, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 27),
  -- Mankey - Thunder - TM25
  (56, 5600, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 28),
  -- Mankey - Earthquake - TM26
  (56, 5600, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 29),
  -- Mankey - Return - TM27
  (56, 5600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Mankey - Dig - TM28
  (56, 5600, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 31),
  -- Mankey - Brick Break - TM31
  (56, 5600, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 32),
  -- Mankey - Double Team - TM32
  (56, 5600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Mankey - Rock Tomb - TM39
  (56, 5600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 34),
  -- Mankey - Aerial Ace - TM40
  (56, 5600, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 35),
  -- Mankey - Facade - TM42
  (56, 5600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Mankey - Rest - TM44
  (56, 5600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Mankey - Attract - TM45
  (56, 5600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Mankey - Thief - TM46
  (56, 5600, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 39),
  -- Mankey - Low Sweep - TM47
  (56, 5600, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 40),
  -- Mankey - Round - TM48
  (56, 5600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Mankey - Overheat - TM50
  (56, 5600, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 42),
  -- Mankey - Focus Blast - TM52
  (56, 5600, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 43),
  -- Mankey - Fling - TM56
  (56, 5600, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 44),
  -- Mankey - Acrobatics - TM62
  (56, 5600, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 45),
  -- Mankey - Payback - TM66
  (56, 5600, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 46),
  -- Mankey - Retaliate - TM67
  (56, 5600, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 47),
  -- Mankey - Bulldoze - TM78
  (56, 5600, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 48),
  -- Mankey - Rock Slide - TM80
  (56, 5600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 49),
  -- Mankey - Poison Jab - TM84
  (56, 5600, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 50),
  -- Mankey - Swagger - TM87
  (56, 5600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 51),
  -- Mankey - Sleep Talk - TM88
  (56, 5600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 52),
  -- Mankey - U-turn - TM89
  (56, 5600, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 53),
  -- Mankey - Substitute - TM90
  (56, 5600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 54),
  -- Mankey - Rock Smash - TM94
  (56, 5600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 55),
  -- Mankey - Power-Up Punch - TM98
  (56, 5600, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 56),
  -- Mankey - Confide - TM100
  (56, 5600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 57),
  -- Mankey - Strength - HM04
  (56, 5600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 58),
  -- Mankey - Counter - Egg
  (56, 5600, 68, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mankey - Meditate - Egg
  (56, 5600, 96, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mankey - Reversal - Egg
  (56, 5600, 179, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mankey - Foresight - Egg
  (56, 5600, 193, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Mankey - Sleep Talk - Egg
  (56, 5600, 214, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Mankey - Encore - Egg
  (56, 5600, 227, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Mankey - Beat Up - Egg
  (56, 5600, 251, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Mankey - Focus Punch - Egg
  (56, 5600, 264, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Mankey - Smelling Salts - Egg
  (56, 5600, 265, 13, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Mankey - Revenge - Egg
  (56, 5600, 279, 13, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Mankey - Close Combat - Egg
  (56, 5600, 370, 13, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Mankey - Night Slash - Egg
  (56, 5600, 400, 13, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Primeape - Scratch - Level 1
  (57, 5700, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Primeape - Leer - Level 1
  (57, 5700, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Primeape - Low Kick - Level 1
  (57, 5700, 67, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Primeape - Focus Energy - Level 1
  (57, 5700, 116, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Primeape - Fling - Level 1
  (57, 5700, 374, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Primeape - Final Gambit - Level 1
  (57, 5700, 515, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Primeape - Fury Swipes - Level 9
  (57, 5700, 154, 13, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Primeape - Karate Chop - Level 13
  (57, 5700, 2, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Primeape - Seismic Toss - Level 17
  (57, 5700, 69, 13, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Primeape - Screech - Level 21
  (57, 5700, 103, 13, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Primeape - Assurance - Level 25
  (57, 5700, 372, 13, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Primeape - Rage - Level 28
  (57, 5700, 99, 13, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Primeape - Swagger - Level 35
  (57, 5700, 207, 13, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Primeape - Cross Chop - Level 41
  (57, 5700, 238, 13, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Primeape - Thrash - Level 47
  (57, 5700, 37, 13, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Primeape - Punishment - Level 53
  (57, 5700, 386, 13, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Primeape - Close Combat - Level 59
  (57, 5700, 370, 13, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Primeape - Final Gambit - Level 63
  (57, 5700, 515, 13, NULL, 1, 63, NULL, NULL, NULL, 18),
  -- Primeape - Hone Claws - TM01
  (57, 5700, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 19),
  -- Primeape - Toxic - TM06
  (57, 5700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Primeape - Bulk Up - TM08
  (57, 5700, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 21),
  -- Primeape - Hidden Power - TM10
  (57, 5700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Primeape - Sunny Day - TM11
  (57, 5700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Primeape - Taunt - TM12
  (57, 5700, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 24),
  -- Primeape - Hyper Beam - TM15
  (57, 5700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Primeape - Protect - TM17
  (57, 5700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Primeape - Rain Dance - TM18
  (57, 5700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Primeape - Frustration - TM21
  (57, 5700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Primeape - Smack Down - TM23
  (57, 5700, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 29),
  -- Primeape - Thunderbolt - TM24
  (57, 5700, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 30),
  -- Primeape - Thunder - TM25
  (57, 5700, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 31),
  -- Primeape - Earthquake - TM26
  (57, 5700, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 32),
  -- Primeape - Return - TM27
  (57, 5700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Primeape - Dig - TM28
  (57, 5700, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 34),
  -- Primeape - Brick Break - TM31
  (57, 5700, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 35),
  -- Primeape - Double Team - TM32
  (57, 5700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 36),
  -- Primeape - Rock Tomb - TM39
  (57, 5700, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 37),
  -- Primeape - Aerial Ace - TM40
  (57, 5700, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 38),
  -- Primeape - Facade - TM42
  (57, 5700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 39),
  -- Primeape - Rest - TM44
  (57, 5700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 40),
  -- Primeape - Attract - TM45
  (57, 5700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 41),
  -- Primeape - Thief - TM46
  (57, 5700, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 42),
  -- Primeape - Low Sweep - TM47
  (57, 5700, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 43),
  -- Primeape - Round - TM48
  (57, 5700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 44),
  -- Primeape - Overheat - TM50
  (57, 5700, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 45),
  -- Primeape - Focus Blast - TM52
  (57, 5700, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 46),
  -- Primeape - Fling - TM56
  (57, 5700, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 47),
  -- Primeape - Acrobatics - TM62
  (57, 5700, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 48),
  -- Primeape - Payback - TM66
  (57, 5700, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 49),
  -- Primeape - Retaliate - TM67
  (57, 5700, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 50),
  -- Primeape - Giga Impact - TM68
  (57, 5700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 51),
  -- Primeape - Stone Edge - TM71
  (57, 5700, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 52),
  -- Primeape - Bulldoze - TM78
  (57, 5700, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 53),
  -- Primeape - Rock Slide - TM80
  (57, 5700, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 54),
  -- Primeape - Poison Jab - TM84
  (57, 5700, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 55),
  -- Primeape - Swagger - TM87
  (57, 5700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 56),
  -- Primeape - Sleep Talk - TM88
  (57, 5700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 57),
  -- Primeape - U-turn - TM89
  (57, 5700, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 58),
  -- Primeape - Substitute - TM90
  (57, 5700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 59),
  -- Primeape - Rock Smash - TM94
  (57, 5700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 60),
  -- Primeape - Power-Up Punch - TM98
  (57, 5700, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 61),
  -- Primeape - Confide - TM100
  (57, 5700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 62),
  -- Primeape - Strength - HM04
  (57, 5700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 63),
  -- Growlithe - Bite - Level 1
  (58, 5800, 44, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Growlithe - Roar - Level 1
  (58, 5800, 46, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Growlithe - Ember - Level 6
  (58, 5800, 52, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Growlithe - Leer - Level 8
  (58, 5800, 43, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Growlithe - Odor Sleuth - Level 10
  (58, 5800, 316, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Growlithe - Helping Hand - Level 12
  (58, 5800, 270, 13, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Growlithe - Flame Wheel - Level 17
  (58, 5800, 172, 13, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Growlithe - Reversal - Level 19
  (58, 5800, 179, 13, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Growlithe - Fire Fang - Level 21
  (58, 5800, 424, 13, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Growlithe - Take Down - Level 23
  (58, 5800, 36, 13, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Growlithe - Flame Burst - Level 28
  (58, 5800, 481, 13, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Growlithe - Agility - Level 30
  (58, 5800, 97, 13, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Growlithe - Retaliate - Level 32
  (58, 5800, 514, 13, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Growlithe - Flamethrower - Level 34
  (58, 5800, 53, 13, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Growlithe - Crunch - Level 39
  (58, 5800, 242, 13, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Growlithe - Heat Wave - Level 41
  (58, 5800, 257, 13, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Growlithe - Outrage - Level 43
  (58, 5800, 200, 13, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Growlithe - Flare Blitz - Level 45
  (58, 5800, 394, 13, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Growlithe - Roar - TM05
  (58, 5800, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 19),
  -- Growlithe - Toxic - TM06
  (58, 5800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Growlithe - Hidden Power - TM10
  (58, 5800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Growlithe - Sunny Day - TM11
  (58, 5800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Growlithe - Protect - TM17
  (58, 5800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Growlithe - Safeguard - TM20
  (58, 5800, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 24),
  -- Growlithe - Frustration - TM21
  (58, 5800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Growlithe - Return - TM27
  (58, 5800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Growlithe - Dig - TM28
  (58, 5800, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 27),
  -- Growlithe - Double Team - TM32
  (58, 5800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Growlithe - Flamethrower - TM35
  (58, 5800, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 29),
  -- Growlithe - Fire Blast - TM38
  (58, 5800, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 30),
  -- Growlithe - Aerial Ace - TM40
  (58, 5800, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 31),
  -- Growlithe - Facade - TM42
  (58, 5800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Growlithe - Flame Charge - TM43
  (58, 5800, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 33),
  -- Growlithe - Rest - TM44
  (58, 5800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Growlithe - Attract - TM45
  (58, 5800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 35),
  -- Growlithe - Thief - TM46
  (58, 5800, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 36),
  -- Growlithe - Round - TM48
  (58, 5800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Growlithe - Overheat - TM50
  (58, 5800, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 38),
  -- Growlithe - Incinerate - TM59
  (58, 5800, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 39),
  -- Growlithe - Will-O-Wisp - TM61
  (58, 5800, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 40),
  -- Growlithe - Retaliate - TM67
  (58, 5800, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 41),
  -- Growlithe - Swagger - TM87
  (58, 5800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 42),
  -- Growlithe - Sleep Talk - TM88
  (58, 5800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 43),
  -- Growlithe - Substitute - TM90
  (58, 5800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 44),
  -- Growlithe - Wild Charge - TM93
  (58, 5800, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 45),
  -- Growlithe - Rock Smash - TM94
  (58, 5800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 46),
  -- Growlithe - Snarl - TM95
  (58, 5800, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 47),
  -- Growlithe - Confide - TM100
  (58, 5800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 48),
  -- Growlithe - Strength - HM04
  (58, 5800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 49),
  -- Growlithe - Double Kick - Egg
  (58, 5800, 24, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Growlithe - Body Slam - Egg
  (58, 5800, 34, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Growlithe - Thrash - Egg
  (58, 5800, 37, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Growlithe - Double-Edge - Egg
  (58, 5800, 38, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Growlithe - Fire Spin - Egg
  (58, 5800, 83, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Growlithe - Iron Tail - Egg
  (58, 5800, 231, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Growlithe - Morning Sun - Egg
  (58, 5800, 234, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Growlithe - Crunch - Egg
  (58, 5800, 242, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Growlithe - Heat Wave - Egg
  (58, 5800, 257, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Growlithe - Howl - Egg
  (58, 5800, 336, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Growlithe - Covet - Egg
  (58, 5800, 343, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Growlithe - Close Combat - Egg
  (58, 5800, 370, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Growlithe - Flare Blitz - Egg
  (58, 5800, 394, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Arcanine - Bite - Level 1
  (59, 5900, 44, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arcanine - Roar - Level 1
  (59, 5900, 46, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arcanine - Odor Sleuth - Level 1
  (59, 5900, 316, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arcanine - Thunder Fang - Level 1
  (59, 5900, 422, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arcanine - Fire Fang - Level 1
  (59, 5900, 424, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Arcanine - Extreme Speed - Level 34
  (59, 5900, 245, 13, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Arcanine - Roar - TM05
  (59, 5900, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 7),
  -- Arcanine - Toxic - TM06
  (59, 5900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 8),
  -- Arcanine - Hidden Power - TM10
  (59, 5900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 9),
  -- Arcanine - Sunny Day - TM11
  (59, 5900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 10),
  -- Arcanine - Hyper Beam - TM15
  (59, 5900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 11),
  -- Arcanine - Protect - TM17
  (59, 5900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 12),
  -- Arcanine - Safeguard - TM20
  (59, 5900, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 13),
  -- Arcanine - Frustration - TM21
  (59, 5900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 14),
  -- Arcanine - Solar Beam - TM22
  (59, 5900, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 15),
  -- Arcanine - Return - TM27
  (59, 5900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 16),
  -- Arcanine - Dig - TM28
  (59, 5900, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 17),
  -- Arcanine - Double Team - TM32
  (59, 5900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 18),
  -- Arcanine - Flamethrower - TM35
  (59, 5900, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 19),
  -- Arcanine - Fire Blast - TM38
  (59, 5900, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 20),
  -- Arcanine - Aerial Ace - TM40
  (59, 5900, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 21),
  -- Arcanine - Facade - TM42
  (59, 5900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 22),
  -- Arcanine - Flame Charge - TM43
  (59, 5900, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 23),
  -- Arcanine - Rest - TM44
  (59, 5900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 24),
  -- Arcanine - Attract - TM45
  (59, 5900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 25),
  -- Arcanine - Thief - TM46
  (59, 5900, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 26),
  -- Arcanine - Round - TM48
  (59, 5900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 27),
  -- Arcanine - Overheat - TM50
  (59, 5900, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 28),
  -- Arcanine - Incinerate - TM59
  (59, 5900, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 29),
  -- Arcanine - Will-O-Wisp - TM61
  (59, 5900, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 30),
  -- Arcanine - Retaliate - TM67
  (59, 5900, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 31),
  -- Arcanine - Giga Impact - TM68
  (59, 5900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 32),
  -- Arcanine - Bulldoze - TM78
  (59, 5900, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 33),
  -- Arcanine - Swagger - TM87
  (59, 5900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 34),
  -- Arcanine - Sleep Talk - TM88
  (59, 5900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 35),
  -- Arcanine - Substitute - TM90
  (59, 5900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 36),
  -- Arcanine - Wild Charge - TM93
  (59, 5900, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 37),
  -- Arcanine - Rock Smash - TM94
  (59, 5900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 38),
  -- Arcanine - Snarl - TM95
  (59, 5900, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 39),
  -- Arcanine - Confide - TM100
  (59, 5900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 40),
  -- Arcanine - Strength - HM04
  (59, 5900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 41),
  -- Poliwag - Water Sport - Level 1
  (60, 6000, 346, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwag - Water Gun - Level 5
  (60, 6000, 55, 13, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Poliwag - Hypnosis - Level 8
  (60, 6000, 95, 13, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Poliwag - Bubble - Level 11
  (60, 6000, 145, 13, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Poliwag - Double Slap - Level 15
  (60, 6000, 3, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Poliwag - Rain Dance - Level 18
  (60, 6000, 240, 13, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Poliwag - Body Slam - Level 21
  (60, 6000, 34, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Poliwag - Bubble Beam - Level 25
  (60, 6000, 61, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Poliwag - Mud Shot - Level 28
  (60, 6000, 341, 13, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Poliwag - Belly Drum - Level 31
  (60, 6000, 187, 13, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Poliwag - Wake-Up Slap - Level 35
  (60, 6000, 358, 13, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Poliwag - Hydro Pump - Level 38
  (60, 6000, 56, 13, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Poliwag - Mud Bomb - Level 41
  (60, 6000, 426, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Poliwag - Toxic - TM06
  (60, 6000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Poliwag - Hail - TM07
  (60, 6000, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 15),
  -- Poliwag - Hidden Power - TM10
  (60, 6000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Poliwag - Ice Beam - TM13
  (60, 6000, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 17),
  -- Poliwag - Blizzard - TM14
  (60, 6000, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 18),
  -- Poliwag - Protect - TM17
  (60, 6000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Poliwag - Rain Dance - TM18
  (60, 6000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Poliwag - Frustration - TM21
  (60, 6000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Poliwag - Return - TM27
  (60, 6000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 22),
  -- Poliwag - Dig - TM28
  (60, 6000, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 23),
  -- Poliwag - Psychic - TM29
  (60, 6000, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 24),
  -- Poliwag - Double Team - TM32
  (60, 6000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 25),
  -- Poliwag - Facade - TM42
  (60, 6000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Poliwag - Rest - TM44
  (60, 6000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Poliwag - Attract - TM45
  (60, 6000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Poliwag - Thief - TM46
  (60, 6000, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 29),
  -- Poliwag - Round - TM48
  (60, 6000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 30),
  -- Poliwag - Scald - TM55
  (60, 6000, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 31),
  -- Poliwag - Swagger - TM87
  (60, 6000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 32),
  -- Poliwag - Sleep Talk - TM88
  (60, 6000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 33),
  -- Poliwag - Substitute - TM90
  (60, 6000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 34),
  -- Poliwag - Confide - TM100
  (60, 6000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 35),
  -- Poliwag - Surf - HM03
  (60, 6000, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 36),
  -- Poliwag - Waterfall - HM05
  (60, 6000, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 37),
  -- Poliwag - Mist - Egg
  (60, 6000, 54, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Poliwag - Bubble Beam - Egg
  (60, 6000, 61, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Poliwag - Haze - Egg
  (60, 6000, 114, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Poliwag - Splash - Egg
  (60, 6000, 150, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Poliwag - Mind Reader - Egg
  (60, 6000, 170, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Poliwag - Endure - Egg
  (60, 6000, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Poliwag - Encore - Egg
  (60, 6000, 227, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Poliwag - Endeavor - Egg
  (60, 6000, 283, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Poliwag - Refresh - Egg
  (60, 6000, 287, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Poliwag - Ice Ball - Egg
  (60, 6000, 301, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Poliwag - Mud Shot - Egg
  (60, 6000, 341, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Poliwag - Water Sport - Egg
  (60, 6000, 346, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Poliwag - Water Pulse - Egg
  (60, 6000, 352, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Poliwhirl - Water Gun - Level 1
  (61, 6100, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwhirl - Hypnosis - Level 1
  (61, 6100, 95, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwhirl - Water Sport - Level 1
  (61, 6100, 346, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwhirl - Water Gun - Level 5
  (61, 6100, 55, 13, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Poliwhirl - Hypnosis - Level 8
  (61, 6100, 95, 13, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Poliwhirl - Bubble - Level 11
  (61, 6100, 145, 13, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Poliwhirl - Double Slap - Level 15
  (61, 6100, 3, 13, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Poliwhirl - Rain Dance - Level 18
  (61, 6100, 240, 13, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Poliwhirl - Body Slam - Level 21
  (61, 6100, 34, 13, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Poliwhirl - Bubble Beam - Level 27
  (61, 6100, 61, 13, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Poliwhirl - Mud Shot - Level 32
  (61, 6100, 341, 13, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Poliwhirl - Belly Drum - Level 37
  (61, 6100, 187, 13, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Poliwhirl - Wake-Up Slap - Level 43
  (61, 6100, 358, 13, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Poliwhirl - Hydro Pump - Level 48
  (61, 6100, 56, 13, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Poliwhirl - Mud Bomb - Level 53
  (61, 6100, 426, 13, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Poliwhirl - Toxic - TM06
  (61, 6100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Poliwhirl - Hail - TM07
  (61, 6100, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 17),
  -- Poliwhirl - Hidden Power - TM10
  (61, 6100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Poliwhirl - Ice Beam - TM13
  (61, 6100, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 19),
  -- Poliwhirl - Blizzard - TM14
  (61, 6100, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 20),
  -- Poliwhirl - Protect - TM17
  (61, 6100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Poliwhirl - Rain Dance - TM18
  (61, 6100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Poliwhirl - Frustration - TM21
  (61, 6100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Poliwhirl - Earthquake - TM26
  (61, 6100, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 24),
  -- Poliwhirl - Return - TM27
  (61, 6100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Poliwhirl - Dig - TM28
  (61, 6100, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 26),
  -- Poliwhirl - Psychic - TM29
  (61, 6100, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 27),
  -- Poliwhirl - Brick Break - TM31
  (61, 6100, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 28),
  -- Poliwhirl - Double Team - TM32
  (61, 6100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Poliwhirl - Facade - TM42
  (61, 6100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Poliwhirl - Rest - TM44
  (61, 6100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Poliwhirl - Attract - TM45
  (61, 6100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Poliwhirl - Thief - TM46
  (61, 6100, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 33),
  -- Poliwhirl - Round - TM48
  (61, 6100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Poliwhirl - Scald - TM55
  (61, 6100, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 35),
  -- Poliwhirl - Fling - TM56
  (61, 6100, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 36),
  -- Poliwhirl - Bulldoze - TM78
  (61, 6100, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 37),
  -- Poliwhirl - Swagger - TM87
  (61, 6100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 38),
  -- Poliwhirl - Sleep Talk - TM88
  (61, 6100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 39),
  -- Poliwhirl - Substitute - TM90
  (61, 6100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 40),
  -- Poliwhirl - Rock Smash - TM94
  (61, 6100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 41),
  -- Poliwhirl - Power-Up Punch - TM98
  (61, 6100, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 42),
  -- Poliwhirl - Confide - TM100
  (61, 6100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 43),
  -- Poliwhirl - Surf - HM03
  (61, 6100, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 44),
  -- Poliwhirl - Strength - HM04
  (61, 6100, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 45),
  -- Poliwhirl - Waterfall - HM05
  (61, 6100, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 46),
  -- Poliwrath - Double Slap - Level 1
  (62, 6200, 3, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwrath - Bubble Beam - Level 1
  (62, 6200, 61, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwrath - Submission - Level 1
  (62, 6200, 66, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwrath - Hypnosis - Level 1
  (62, 6200, 95, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Poliwrath - Circle Throw - Level 1
  (62, 6200, 509, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Poliwrath - Dynamic Punch - Level 32
  (62, 6200, 223, 13, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Poliwrath - Mind Reader - Level 43
  (62, 6200, 170, 13, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Poliwrath - Circle Throw - Level 53
  (62, 6200, 509, 13, NULL, 1, 53, NULL, NULL, NULL, 8),
  -- Poliwrath - Toxic - TM06
  (62, 6200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 9),
  -- Poliwrath - Hail - TM07
  (62, 6200, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 10),
  -- Poliwrath - Bulk Up - TM08
  (62, 6200, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 11),
  -- Poliwrath - Hidden Power - TM10
  (62, 6200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 12),
  -- Poliwrath - Ice Beam - TM13
  (62, 6200, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 13),
  -- Poliwrath - Blizzard - TM14
  (62, 6200, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 14),
  -- Poliwrath - Hyper Beam - TM15
  (62, 6200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 15),
  -- Poliwrath - Protect - TM17
  (62, 6200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 16),
  -- Poliwrath - Rain Dance - TM18
  (62, 6200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 17),
  -- Poliwrath - Frustration - TM21
  (62, 6200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 18),
  -- Poliwrath - Earthquake - TM26
  (62, 6200, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 19),
  -- Poliwrath - Return - TM27
  (62, 6200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 20),
  -- Poliwrath - Dig - TM28
  (62, 6200, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 21),
  -- Poliwrath - Psychic - TM29
  (62, 6200, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 22),
  -- Poliwrath - Brick Break - TM31
  (62, 6200, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 23),
  -- Poliwrath - Double Team - TM32
  (62, 6200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 24),
  -- Poliwrath - Rock Tomb - TM39
  (62, 6200, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 25),
  -- Poliwrath - Facade - TM42
  (62, 6200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Poliwrath - Rest - TM44
  (62, 6200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Poliwrath - Attract - TM45
  (62, 6200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Poliwrath - Thief - TM46
  (62, 6200, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 29),
  -- Poliwrath - Low Sweep - TM47
  (62, 6200, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 30),
  -- Poliwrath - Round - TM48
  (62, 6200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 31),
  -- Poliwrath - Focus Blast - TM52
  (62, 6200, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 32),
  -- Poliwrath - Scald - TM55
  (62, 6200, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 33),
  -- Poliwrath - Fling - TM56
  (62, 6200, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 34),
  -- Poliwrath - Payback - TM66
  (62, 6200, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 35),
  -- Poliwrath - Giga Impact - TM68
  (62, 6200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 36),
  -- Poliwrath - Bulldoze - TM78
  (62, 6200, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 37),
  -- Poliwrath - Rock Slide - TM80
  (62, 6200, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 38),
  -- Poliwrath - Poison Jab - TM84
  (62, 6200, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 39),
  -- Poliwrath - Swagger - TM87
  (62, 6200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Poliwrath - Sleep Talk - TM88
  (62, 6200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Poliwrath - Substitute - TM90
  (62, 6200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Poliwrath - Rock Smash - TM94
  (62, 6200, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 43),
  -- Poliwrath - Power-Up Punch - TM98
  (62, 6200, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 44),
  -- Poliwrath - Confide - TM100
  (62, 6200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 45),
  -- Poliwrath - Surf - HM03
  (62, 6200, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 46),
  -- Poliwrath - Strength - HM04
  (62, 6200, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 47),
  -- Poliwrath - Waterfall - HM05
  (62, 6200, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 48),
  -- Abra - Teleport - Level 1
  (63, 6300, 100, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abra - Psyshock - TM03
  (63, 6300, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 2),
  -- Abra - Calm Mind - TM04
  (63, 6300, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 3),
  -- Abra - Toxic - TM06
  (63, 6300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 4),
  -- Abra - Hidden Power - TM10
  (63, 6300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 5),
  -- Abra - Sunny Day - TM11
  (63, 6300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 6),
  -- Abra - Taunt - TM12
  (63, 6300, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 7),
  -- Abra - Light Screen - TM16
  (63, 6300, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 8),
  -- Abra - Protect - TM17
  (63, 6300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 9),
  -- Abra - Rain Dance - TM18
  (63, 6300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 10),
  -- Abra - Safeguard - TM20
  (63, 6300, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 11),
  -- Abra - Frustration - TM21
  (63, 6300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 12),
  -- Abra - Return - TM27
  (63, 6300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 13),
  -- Abra - Psychic - TM29
  (63, 6300, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 14),
  -- Abra - Shadow Ball - TM30
  (63, 6300, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 15),
  -- Abra - Double Team - TM32
  (63, 6300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 16),
  -- Abra - Reflect - TM33
  (63, 6300, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 17),
  -- Abra - Torment - TM41
  (63, 6300, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 18),
  -- Abra - Facade - TM42
  (63, 6300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 19),
  -- Abra - Rest - TM44
  (63, 6300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 20),
  -- Abra - Attract - TM45
  (63, 6300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 21),
  -- Abra - Thief - TM46
  (63, 6300, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 22),
  -- Abra - Round - TM48
  (63, 6300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 23),
  -- Abra - Energy Ball - TM53
  (63, 6300, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 24),
  -- Abra - Fling - TM56
  (63, 6300, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 25),
  -- Abra - Charge Beam - TM57
  (63, 6300, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 26),
  -- Abra - Embargo - TM63
  (63, 6300, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 27),
  -- Abra - Flash - TM70
  (63, 6300, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 28),
  -- Abra - Thunder Wave - TM73
  (63, 6300, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 29),
  -- Abra - Psych Up - TM77
  (63, 6300, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 30),
  -- Abra - Dream Eater - TM85
  (63, 6300, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 31),
  -- Abra - Grass Knot - TM86
  (63, 6300, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 32),
  -- Abra - Swagger - TM87
  (63, 6300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 33),
  -- Abra - Sleep Talk - TM88
  (63, 6300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 34),
  -- Abra - Substitute - TM90
  (63, 6300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 35),
  -- Abra - Trick Room - TM92
  (63, 6300, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 36),
  -- Abra - Dazzling Gleam - TM99
  (63, 6300, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 37),
  -- Abra - Confide - TM100
  (63, 6300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 38),
  -- Abra - Fire Punch - Egg
  (63, 6300, 7, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Abra - Ice Punch - Egg
  (63, 6300, 8, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Abra - Thunder Punch - Egg
  (63, 6300, 9, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Abra - Barrier - Egg
  (63, 6300, 112, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Abra - Encore - Egg
  (63, 6300, 227, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Abra - Knock Off - Egg
  (63, 6300, 282, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Abra - Skill Swap - Egg
  (63, 6300, 285, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Abra - Psycho Shift - Egg
  (63, 6300, 375, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Abra - Power Trick - Egg
  (63, 6300, 379, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Abra - Guard Swap - Egg
  (63, 6300, 385, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Abra - Guard Split - Egg
  (63, 6300, 470, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Abra - Ally Switch - Egg
  (63, 6300, 502, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Kadabra - Confusion - Level 1
  (64, 6400, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kadabra - Teleport - Level 1
  (64, 6400, 100, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kadabra - Kinesis - Level 1
  (64, 6400, 134, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kadabra - Confusion - Level 16
  (64, 6400, 93, 13, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Kadabra - Disable - Level 18
  (64, 6400, 50, 13, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Kadabra - Miracle Eye - Level 22
  (64, 6400, 357, 13, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Kadabra - Ally Switch - Level 24
  (64, 6400, 502, 13, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Kadabra - Psybeam - Level 28
  (64, 6400, 60, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Kadabra - Reflect - Level 30
  (64, 6400, 115, 13, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Kadabra - Telekinesis - Level 34
  (64, 6400, 477, 13, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Kadabra - Recover - Level 36
  (64, 6400, 105, 13, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Kadabra - Psycho Cut - Level 40
  (64, 6400, 427, 13, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Kadabra - Role Play - Level 42
  (64, 6400, 272, 13, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Kadabra - Psychic - Level 46
  (64, 6400, 94, 13, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Kadabra - Future Sight - Level 48
  (64, 6400, 248, 13, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Kadabra - Trick - Level 50
  (64, 6400, 271, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Kadabra - Psyshock - TM03
  (64, 6400, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 17),
  -- Kadabra - Calm Mind - TM04
  (64, 6400, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 18),
  -- Kadabra - Toxic - TM06
  (64, 6400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Kadabra - Hidden Power - TM10
  (64, 6400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Kadabra - Sunny Day - TM11
  (64, 6400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Kadabra - Taunt - TM12
  (64, 6400, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 22),
  -- Kadabra - Light Screen - TM16
  (64, 6400, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 23),
  -- Kadabra - Protect - TM17
  (64, 6400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Kadabra - Rain Dance - TM18
  (64, 6400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Kadabra - Safeguard - TM20
  (64, 6400, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 26),
  -- Kadabra - Frustration - TM21
  (64, 6400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Kadabra - Return - TM27
  (64, 6400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Kadabra - Psychic - TM29
  (64, 6400, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 29),
  -- Kadabra - Shadow Ball - TM30
  (64, 6400, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 30),
  -- Kadabra - Double Team - TM32
  (64, 6400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Kadabra - Reflect - TM33
  (64, 6400, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 32),
  -- Kadabra - Torment - TM41
  (64, 6400, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 33),
  -- Kadabra - Facade - TM42
  (64, 6400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Kadabra - Rest - TM44
  (64, 6400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Kadabra - Attract - TM45
  (64, 6400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Kadabra - Thief - TM46
  (64, 6400, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 37),
  -- Kadabra - Round - TM48
  (64, 6400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Kadabra - Energy Ball - TM53
  (64, 6400, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 39),
  -- Kadabra - Fling - TM56
  (64, 6400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 40),
  -- Kadabra - Charge Beam - TM57
  (64, 6400, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 41),
  -- Kadabra - Embargo - TM63
  (64, 6400, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 42),
  -- Kadabra - Flash - TM70
  (64, 6400, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 43),
  -- Kadabra - Thunder Wave - TM73
  (64, 6400, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 44),
  -- Kadabra - Psych Up - TM77
  (64, 6400, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 45),
  -- Kadabra - Dream Eater - TM85
  (64, 6400, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 46),
  -- Kadabra - Grass Knot - TM86
  (64, 6400, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 47),
  -- Kadabra - Swagger - TM87
  (64, 6400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Kadabra - Sleep Talk - TM88
  (64, 6400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Kadabra - Substitute - TM90
  (64, 6400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 50),
  -- Kadabra - Trick Room - TM92
  (64, 6400, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 51),
  -- Kadabra - Dazzling Gleam - TM99
  (64, 6400, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 52),
  -- Kadabra - Confide - TM100
  (64, 6400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 53),
  -- Alakazam - Confusion - Level 1
  (65, 6500, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alakazam - Teleport - Level 1
  (65, 6500, 100, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alakazam - Kinesis - Level 1
  (65, 6500, 134, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alakazam - Confusion - Level 16
  (65, 6500, 93, 13, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Alakazam - Disable - Level 18
  (65, 6500, 50, 13, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Alakazam - Miracle Eye - Level 22
  (65, 6500, 357, 13, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Alakazam - Ally Switch - Level 24
  (65, 6500, 502, 13, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Alakazam - Psybeam - Level 28
  (65, 6500, 60, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Alakazam - Reflect - Level 30
  (65, 6500, 115, 13, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Alakazam - Telekinesis - Level 34
  (65, 6500, 477, 13, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Alakazam - Recover - Level 36
  (65, 6500, 105, 13, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Alakazam - Psycho Cut - Level 40
  (65, 6500, 427, 13, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Alakazam - Calm Mind - Level 42
  (65, 6500, 347, 13, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Alakazam - Psychic - Level 46
  (65, 6500, 94, 13, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Alakazam - Future Sight - Level 48
  (65, 6500, 248, 13, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Alakazam - Trick - Level 50
  (65, 6500, 271, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Alakazam - Psyshock - TM03
  (65, 6500, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 17),
  -- Alakazam - Calm Mind - TM04
  (65, 6500, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 18),
  -- Alakazam - Toxic - TM06
  (65, 6500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Alakazam - Hidden Power - TM10
  (65, 6500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Alakazam - Sunny Day - TM11
  (65, 6500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Alakazam - Taunt - TM12
  (65, 6500, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 22),
  -- Alakazam - Hyper Beam - TM15
  (65, 6500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Alakazam - Light Screen - TM16
  (65, 6500, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 24),
  -- Alakazam - Protect - TM17
  (65, 6500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Alakazam - Rain Dance - TM18
  (65, 6500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Alakazam - Safeguard - TM20
  (65, 6500, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 27),
  -- Alakazam - Frustration - TM21
  (65, 6500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Alakazam - Return - TM27
  (65, 6500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Alakazam - Psychic - TM29
  (65, 6500, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 30),
  -- Alakazam - Shadow Ball - TM30
  (65, 6500, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 31),
  -- Alakazam - Double Team - TM32
  (65, 6500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Alakazam - Reflect - TM33
  (65, 6500, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 33),
  -- Alakazam - Torment - TM41
  (65, 6500, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 34),
  -- Alakazam - Facade - TM42
  (65, 6500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Alakazam - Rest - TM44
  (65, 6500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Alakazam - Attract - TM45
  (65, 6500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Alakazam - Thief - TM46
  (65, 6500, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 38),
  -- Alakazam - Round - TM48
  (65, 6500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Alakazam - Focus Blast - TM52
  (65, 6500, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 40),
  -- Alakazam - Energy Ball - TM53
  (65, 6500, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 41),
  -- Alakazam - Fling - TM56
  (65, 6500, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 42),
  -- Alakazam - Charge Beam - TM57
  (65, 6500, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 43),
  -- Alakazam - Embargo - TM63
  (65, 6500, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 44),
  -- Alakazam - Giga Impact - TM68
  (65, 6500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 45),
  -- Alakazam - Flash - TM70
  (65, 6500, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 46),
  -- Alakazam - Thunder Wave - TM73
  (65, 6500, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 47),
  -- Alakazam - Psych Up - TM77
  (65, 6500, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 48),
  -- Alakazam - Dream Eater - TM85
  (65, 6500, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 49),
  -- Alakazam - Grass Knot - TM86
  (65, 6500, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 50),
  -- Alakazam - Swagger - TM87
  (65, 6500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 51),
  -- Alakazam - Sleep Talk - TM88
  (65, 6500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 52),
  -- Alakazam - Substitute - TM90
  (65, 6500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 53),
  -- Alakazam - Trick Room - TM92
  (65, 6500, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 54),
  -- Alakazam - Dazzling Gleam - TM99
  (65, 6500, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 55),
  -- Alakazam - Confide - TM100
  (65, 6500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 56),
  -- Machop - Leer - Level 1
  (66, 6600, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machop - Low Kick - Level 1
  (66, 6600, 67, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machop - Focus Energy - Level 7
  (66, 6600, 116, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Machop - Karate Chop - Level 10
  (66, 6600, 2, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Machop - Low Sweep - Level 13
  (66, 6600, 490, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Machop - Foresight - Level 19
  (66, 6600, 193, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Machop - Seismic Toss - Level 22
  (66, 6600, 69, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Machop - Revenge - Level 25
  (66, 6600, 279, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Machop - Vital Throw - Level 31
  (66, 6600, 233, 13, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Machop - Submission - Level 34
  (66, 6600, 66, 13, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Machop - Wake-Up Slap - Level 37
  (66, 6600, 358, 13, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Machop - Cross Chop - Level 43
  (66, 6600, 238, 13, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Machop - Scary Face - Level 46
  (66, 6600, 184, 13, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Machop - Dynamic Punch - Level 49
  (66, 6600, 223, 13, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Machop - Toxic - TM06
  (66, 6600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Machop - Bulk Up - TM08
  (66, 6600, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 16),
  -- Machop - Hidden Power - TM10
  (66, 6600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Machop - Sunny Day - TM11
  (66, 6600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 18),
  -- Machop - Light Screen - TM16
  (66, 6600, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 19),
  -- Machop - Protect - TM17
  (66, 6600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Machop - Rain Dance - TM18
  (66, 6600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Machop - Frustration - TM21
  (66, 6600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Machop - Smack Down - TM23
  (66, 6600, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 23),
  -- Machop - Earthquake - TM26
  (66, 6600, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 24),
  -- Machop - Return - TM27
  (66, 6600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Machop - Dig - TM28
  (66, 6600, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 26),
  -- Machop - Brick Break - TM31
  (66, 6600, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 27),
  -- Machop - Double Team - TM32
  (66, 6600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Machop - Flamethrower - TM35
  (66, 6600, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 29),
  -- Machop - Fire Blast - TM38
  (66, 6600, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 30),
  -- Machop - Rock Tomb - TM39
  (66, 6600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 31),
  -- Machop - Facade - TM42
  (66, 6600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Machop - Rest - TM44
  (66, 6600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Machop - Attract - TM45
  (66, 6600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Machop - Thief - TM46
  (66, 6600, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 35),
  -- Machop - Low Sweep - TM47
  (66, 6600, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 36),
  -- Machop - Round - TM48
  (66, 6600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Machop - Focus Blast - TM52
  (66, 6600, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 38),
  -- Machop - Fling - TM56
  (66, 6600, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 39),
  -- Machop - Incinerate - TM59
  (66, 6600, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 40),
  -- Machop - Payback - TM66
  (66, 6600, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 41),
  -- Machop - Retaliate - TM67
  (66, 6600, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 42),
  -- Machop - Bulldoze - TM78
  (66, 6600, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 43),
  -- Machop - Rock Slide - TM80
  (66, 6600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 44),
  -- Machop - Poison Jab - TM84
  (66, 6600, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 45),
  -- Machop - Swagger - TM87
  (66, 6600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 46),
  -- Machop - Sleep Talk - TM88
  (66, 6600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 47),
  -- Machop - Substitute - TM90
  (66, 6600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 48),
  -- Machop - Rock Smash - TM94
  (66, 6600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 49),
  -- Machop - Power-Up Punch - TM98
  (66, 6600, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 50),
  -- Machop - Confide - TM100
  (66, 6600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 51),
  -- Machop - Strength - HM04
  (66, 6600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 52),
  -- Machop - Fire Punch - Egg
  (66, 6600, 7, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Machop - Ice Punch - Egg
  (66, 6600, 8, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Machop - Thunder Punch - Egg
  (66, 6600, 9, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Machop - Rolling Kick - Egg
  (66, 6600, 27, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Machop - Counter - Egg
  (66, 6600, 68, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Machop - Meditate - Egg
  (66, 6600, 96, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Machop - Encore - Egg
  (66, 6600, 227, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Machop - Smelling Salts - Egg
  (66, 6600, 265, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Machop - Knock Off - Egg
  (66, 6600, 282, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Machop - Tickle - Egg
  (66, 6600, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Machop - Close Combat - Egg
  (66, 6600, 370, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Machop - Power Trick - Egg
  (66, 6600, 379, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Machop - Bullet Punch - Egg
  (66, 6600, 418, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Machop - Heavy Slam - Egg
  (66, 6600, 484, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Machop - Quick Guard - Egg
  (66, 6600, 501, 13, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Machoke - Karate Chop - Level 1
  (67, 6700, 2, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machoke - Leer - Level 1
  (67, 6700, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machoke - Low Kick - Level 1
  (67, 6700, 67, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Machoke - Focus Energy - Level 1
  (67, 6700, 116, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Machoke - Focus Energy - Level 7
  (67, 6700, 116, 13, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Machoke - Karate Chop - Level 10
  (67, 6700, 2, 13, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Machoke - Low Sweep - Level 13
  (67, 6700, 490, 13, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Machoke - Foresight - Level 19
  (67, 6700, 193, 13, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Machoke - Seismic Toss - Level 22
  (67, 6700, 69, 13, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Machoke - Revenge - Level 25
  (67, 6700, 279, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Machoke - Vital Throw - Level 32
  (67, 6700, 233, 13, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Machoke - Submission - Level 36
  (67, 6700, 66, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Machoke - Wake-Up Slap - Level 40
  (67, 6700, 358, 13, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Machoke - Cross Chop - Level 44
  (67, 6700, 238, 13, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Machoke - Scary Face - Level 51
  (67, 6700, 184, 13, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Machoke - Dynamic Punch - Level 55
  (67, 6700, 223, 13, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Machoke - Toxic - TM06
  (67, 6700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Machoke - Bulk Up - TM08
  (67, 6700, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 18),
  -- Machoke - Hidden Power - TM10
  (67, 6700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Machoke - Sunny Day - TM11
  (67, 6700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Machoke - Light Screen - TM16
  (67, 6700, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 21),
  -- Machoke - Protect - TM17
  (67, 6700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Machoke - Rain Dance - TM18
  (67, 6700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Machoke - Frustration - TM21
  (67, 6700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Machoke - Smack Down - TM23
  (67, 6700, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 25),
  -- Machoke - Earthquake - TM26
  (67, 6700, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 26),
  -- Machoke - Return - TM27
  (67, 6700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Machoke - Dig - TM28
  (67, 6700, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 28),
  -- Machoke - Brick Break - TM31
  (67, 6700, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 29),
  -- Machoke - Double Team - TM32
  (67, 6700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Machoke - Flamethrower - TM35
  (67, 6700, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 31),
  -- Machoke - Fire Blast - TM38
  (67, 6700, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 32),
  -- Machoke - Rock Tomb - TM39
  (67, 6700, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 33),
  -- Machoke - Facade - TM42
  (67, 6700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Machoke - Rest - TM44
  (67, 6700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Machoke - Attract - TM45
  (67, 6700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Machoke - Thief - TM46
  (67, 6700, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 37),
  -- Machoke - Low Sweep - TM47
  (67, 6700, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 38),
  -- Machoke - Round - TM48
  (67, 6700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Machoke - Focus Blast - TM52
  (67, 6700, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 40),
  -- Machoke - Fling - TM56
  (67, 6700, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 41),
  -- Machoke - Incinerate - TM59
  (67, 6700, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 42),
  -- Machoke - Payback - TM66
  (67, 6700, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 43),
  -- Machoke - Retaliate - TM67
  (67, 6700, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 44),
  -- Machoke - Bulldoze - TM78
  (67, 6700, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 45),
  -- Machoke - Rock Slide - TM80
  (67, 6700, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 46),
  -- Machoke - Poison Jab - TM84
  (67, 6700, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 47),
  -- Machoke - Swagger - TM87
  (67, 6700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Machoke - Sleep Talk - TM88
  (67, 6700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Machoke - Substitute - TM90
  (67, 6700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 50),
  -- Machoke - Rock Smash - TM94
  (67, 6700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 51),
  -- Machoke - Power-Up Punch - TM98
  (67, 6700, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 52),
  -- Machoke - Confide - TM100
  (67, 6700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 53),
  -- Machoke - Strength - HM04
  (67, 6700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 54),
  -- Machamp - Karate Chop - Level 1
  (68, 6800, 2, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machamp - Leer - Level 1
  (68, 6800, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machamp - Low Kick - Level 1
  (68, 6800, 67, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Machamp - Focus Energy - Level 1
  (68, 6800, 116, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Machamp - Wide Guard - Level 1
  (68, 6800, 469, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Machamp - Focus Energy - Level 7
  (68, 6800, 116, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Machamp - Karate Chop - Level 10
  (68, 6800, 2, 13, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Machamp - Low Sweep - Level 13
  (68, 6800, 490, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Machamp - Foresight - Level 19
  (68, 6800, 193, 13, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Machamp - Seismic Toss - Level 22
  (68, 6800, 69, 13, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Machamp - Revenge - Level 25
  (68, 6800, 279, 13, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Machamp - Vital Throw - Level 32
  (68, 6800, 233, 13, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Machamp - Submission - Level 36
  (68, 6800, 66, 13, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Machamp - Wake-Up Slap - Level 40
  (68, 6800, 358, 13, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Machamp - Cross Chop - Level 44
  (68, 6800, 238, 13, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Machamp - Scary Face - Level 51
  (68, 6800, 184, 13, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Machamp - Dynamic Punch - Level 55
  (68, 6800, 223, 13, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Machamp - Toxic - TM06
  (68, 6800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Machamp - Bulk Up - TM08
  (68, 6800, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 19),
  -- Machamp - Hidden Power - TM10
  (68, 6800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Machamp - Sunny Day - TM11
  (68, 6800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Machamp - Hyper Beam - TM15
  (68, 6800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 22),
  -- Machamp - Light Screen - TM16
  (68, 6800, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 23),
  -- Machamp - Protect - TM17
  (68, 6800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Machamp - Rain Dance - TM18
  (68, 6800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Machamp - Frustration - TM21
  (68, 6800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Machamp - Smack Down - TM23
  (68, 6800, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 27),
  -- Machamp - Earthquake - TM26
  (68, 6800, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 28),
  -- Machamp - Return - TM27
  (68, 6800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Machamp - Dig - TM28
  (68, 6800, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 30),
  -- Machamp - Brick Break - TM31
  (68, 6800, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 31),
  -- Machamp - Double Team - TM32
  (68, 6800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Machamp - Flamethrower - TM35
  (68, 6800, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 33),
  -- Machamp - Fire Blast - TM38
  (68, 6800, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 34),
  -- Machamp - Rock Tomb - TM39
  (68, 6800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 35),
  -- Machamp - Facade - TM42
  (68, 6800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Machamp - Rest - TM44
  (68, 6800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Machamp - Attract - TM45
  (68, 6800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Machamp - Thief - TM46
  (68, 6800, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 39),
  -- Machamp - Low Sweep - TM47
  (68, 6800, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 40),
  -- Machamp - Round - TM48
  (68, 6800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Machamp - Focus Blast - TM52
  (68, 6800, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 42),
  -- Machamp - Fling - TM56
  (68, 6800, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 43),
  -- Machamp - Incinerate - TM59
  (68, 6800, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 44),
  -- Machamp - Payback - TM66
  (68, 6800, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 45),
  -- Machamp - Retaliate - TM67
  (68, 6800, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 46),
  -- Machamp - Giga Impact - TM68
  (68, 6800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 47),
  -- Machamp - Stone Edge - TM71
  (68, 6800, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 48),
  -- Machamp - Bulldoze - TM78
  (68, 6800, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 49),
  -- Machamp - Rock Slide - TM80
  (68, 6800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 50),
  -- Machamp - Poison Jab - TM84
  (68, 6800, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 51),
  -- Machamp - Swagger - TM87
  (68, 6800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 52),
  -- Machamp - Sleep Talk - TM88
  (68, 6800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 53),
  -- Machamp - Substitute - TM90
  (68, 6800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 54),
  -- Machamp - Rock Smash - TM94
  (68, 6800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 55),
  -- Machamp - Power-Up Punch - TM98
  (68, 6800, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 56),
  -- Machamp - Confide - TM100
  (68, 6800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 57),
  -- Machamp - Strength - HM04
  (68, 6800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 58),
  -- Bellsprout - Vine Whip - Level 1
  (69, 6900, 22, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bellsprout - Growth - Level 7
  (69, 6900, 74, 13, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Bellsprout - Wrap - Level 11
  (69, 6900, 35, 13, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Bellsprout - Sleep Powder - Level 13
  (69, 6900, 79, 13, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Bellsprout - Poison Powder - Level 15
  (69, 6900, 77, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Bellsprout - Stun Spore - Level 17
  (69, 6900, 78, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Bellsprout - Acid - Level 23
  (69, 6900, 51, 13, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Bellsprout - Knock Off - Level 27
  (69, 6900, 282, 13, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Bellsprout - Sweet Scent - Level 29
  (69, 6900, 230, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Bellsprout - Gastro Acid - Level 35
  (69, 6900, 380, 13, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Bellsprout - Razor Leaf - Level 39
  (69, 6900, 75, 13, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Bellsprout - Slam - Level 41
  (69, 6900, 21, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Bellsprout - Wring Out - Level 47
  (69, 6900, 378, 13, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Bellsprout - Toxic - TM06
  (69, 6900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Bellsprout - Venoshock - TM09
  (69, 6900, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 15),
  -- Bellsprout - Hidden Power - TM10
  (69, 6900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Bellsprout - Sunny Day - TM11
  (69, 6900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 17),
  -- Bellsprout - Protect - TM17
  (69, 6900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 18),
  -- Bellsprout - Frustration - TM21
  (69, 6900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 19),
  -- Bellsprout - Solar Beam - TM22
  (69, 6900, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 20),
  -- Bellsprout - Return - TM27
  (69, 6900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 21),
  -- Bellsprout - Double Team - TM32
  (69, 6900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 22),
  -- Bellsprout - Reflect - TM33
  (69, 6900, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 23),
  -- Bellsprout - Sludge Bomb - TM36
  (69, 6900, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 24),
  -- Bellsprout - Facade - TM42
  (69, 6900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 25),
  -- Bellsprout - Rest - TM44
  (69, 6900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 26),
  -- Bellsprout - Attract - TM45
  (69, 6900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 27),
  -- Bellsprout - Thief - TM46
  (69, 6900, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 28),
  -- Bellsprout - Round - TM48
  (69, 6900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 29),
  -- Bellsprout - Energy Ball - TM53
  (69, 6900, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 30),
  -- Bellsprout - Flash - TM70
  (69, 6900, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 31),
  -- Bellsprout - Swords Dance - TM75
  (69, 6900, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 32),
  -- Bellsprout - Infestation - TM83
  (69, 6900, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 33),
  -- Bellsprout - Grass Knot - TM86
  (69, 6900, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 34),
  -- Bellsprout - Swagger - TM87
  (69, 6900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 35),
  -- Bellsprout - Sleep Talk - TM88
  (69, 6900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 36),
  -- Bellsprout - Substitute - TM90
  (69, 6900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 37),
  -- Bellsprout - Nature Power - TM96
  (69, 6900, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 38),
  -- Bellsprout - Confide - TM100
  (69, 6900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 39),
  -- Bellsprout - Cut - HM01
  (69, 6900, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 40),
  -- Bellsprout - Leech Life - Egg
  (69, 6900, 141, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Bellsprout - Giga Drain - Egg
  (69, 6900, 202, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Bellsprout - Encore - Egg
  (69, 6900, 227, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bellsprout - Synthesis - Egg
  (69, 6900, 235, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bellsprout - Ingrain - Egg
  (69, 6900, 275, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bellsprout - Weather Ball - Egg
  (69, 6900, 311, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bellsprout - Tickle - Egg
  (69, 6900, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bellsprout - Bullet Seed - Egg
  (69, 6900, 331, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bellsprout - Magical Leaf - Egg
  (69, 6900, 345, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bellsprout - Natural Gift - Egg
  (69, 6900, 363, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bellsprout - Worry Seed - Egg
  (69, 6900, 388, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bellsprout - Power Whip - Egg
  (69, 6900, 438, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Bellsprout - Acid Spray - Egg
  (69, 6900, 491, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Bellsprout - Clear Smog - Egg
  (69, 6900, 499, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Bellsprout - Belch - Egg
  (69, 6900, 562, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Weepinbell - Vine Whip - Level 1
  (70, 7000, 22, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weepinbell - Wrap - Level 1
  (70, 7000, 35, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weepinbell - Growth - Level 1
  (70, 7000, 74, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weepinbell - Growth - Level 7
  (70, 7000, 74, 13, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Weepinbell - Wrap - Level 11
  (70, 7000, 35, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Weepinbell - Sleep Powder - Level 13
  (70, 7000, 79, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Weepinbell - Poison Powder - Level 15
  (70, 7000, 77, 13, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Weepinbell - Stun Spore - Level 17
  (70, 7000, 78, 13, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Weepinbell - Acid - Level 23
  (70, 7000, 51, 13, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Weepinbell - Knock Off - Level 27
  (70, 7000, 282, 13, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Weepinbell - Sweet Scent - Level 29
  (70, 7000, 230, 13, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Weepinbell - Gastro Acid - Level 35
  (70, 7000, 380, 13, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Weepinbell - Razor Leaf - Level 39
  (70, 7000, 75, 13, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Weepinbell - Slam - Level 41
  (70, 7000, 21, 13, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Weepinbell - Wring Out - Level 47
  (70, 7000, 378, 13, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Weepinbell - Toxic - TM06
  (70, 7000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Weepinbell - Venoshock - TM09
  (70, 7000, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 17),
  -- Weepinbell - Hidden Power - TM10
  (70, 7000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Weepinbell - Sunny Day - TM11
  (70, 7000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Weepinbell - Protect - TM17
  (70, 7000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Weepinbell - Frustration - TM21
  (70, 7000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Weepinbell - Solar Beam - TM22
  (70, 7000, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 22),
  -- Weepinbell - Return - TM27
  (70, 7000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Weepinbell - Double Team - TM32
  (70, 7000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 24),
  -- Weepinbell - Reflect - TM33
  (70, 7000, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 25),
  -- Weepinbell - Sludge Bomb - TM36
  (70, 7000, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 26),
  -- Weepinbell - Facade - TM42
  (70, 7000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 27),
  -- Weepinbell - Rest - TM44
  (70, 7000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 28),
  -- Weepinbell - Attract - TM45
  (70, 7000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 29),
  -- Weepinbell - Thief - TM46
  (70, 7000, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 30),
  -- Weepinbell - Round - TM48
  (70, 7000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 31),
  -- Weepinbell - Energy Ball - TM53
  (70, 7000, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 32),
  -- Weepinbell - Flash - TM70
  (70, 7000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 33),
  -- Weepinbell - Swords Dance - TM75
  (70, 7000, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 34),
  -- Weepinbell - Infestation - TM83
  (70, 7000, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 35),
  -- Weepinbell - Grass Knot - TM86
  (70, 7000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 36),
  -- Weepinbell - Swagger - TM87
  (70, 7000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 37),
  -- Weepinbell - Sleep Talk - TM88
  (70, 7000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 38),
  -- Weepinbell - Substitute - TM90
  (70, 7000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 39),
  -- Weepinbell - Nature Power - TM96
  (70, 7000, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 40),
  -- Weepinbell - Confide - TM100
  (70, 7000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 41),
  -- Weepinbell - Cut - HM01
  (70, 7000, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 42),
  -- Victreebel - Vine Whip - Level 1
  (71, 7100, 22, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Victreebel - Razor Leaf - Level 1
  (71, 7100, 75, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Victreebel - Sleep Powder - Level 1
  (71, 7100, 79, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Victreebel - Sweet Scent - Level 1
  (71, 7100, 230, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Victreebel - Stockpile - Level 1
  (71, 7100, 254, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Victreebel - Spit Up - Level 1
  (71, 7100, 255, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Victreebel - Swallow - Level 1
  (71, 7100, 256, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Victreebel - Leaf Tornado - Level 27
  (71, 7100, 536, 13, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Victreebel - Leaf Blade - Level 47
  (71, 7100, 348, 13, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Victreebel - Leaf Storm - Level 47
  (71, 7100, 437, 13, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Victreebel - Toxic - TM06
  (71, 7100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 11),
  -- Victreebel - Venoshock - TM09
  (71, 7100, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 12),
  -- Victreebel - Hidden Power - TM10
  (71, 7100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 13),
  -- Victreebel - Sunny Day - TM11
  (71, 7100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 14),
  -- Victreebel - Hyper Beam - TM15
  (71, 7100, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 15),
  -- Victreebel - Protect - TM17
  (71, 7100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 16),
  -- Victreebel - Frustration - TM21
  (71, 7100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 17),
  -- Victreebel - Solar Beam - TM22
  (71, 7100, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 18),
  -- Victreebel - Return - TM27
  (71, 7100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 19),
  -- Victreebel - Double Team - TM32
  (71, 7100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 20),
  -- Victreebel - Reflect - TM33
  (71, 7100, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 21),
  -- Victreebel - Sludge Bomb - TM36
  (71, 7100, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 22),
  -- Victreebel - Facade - TM42
  (71, 7100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 23),
  -- Victreebel - Rest - TM44
  (71, 7100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 24),
  -- Victreebel - Attract - TM45
  (71, 7100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 25),
  -- Victreebel - Thief - TM46
  (71, 7100, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 26),
  -- Victreebel - Round - TM48
  (71, 7100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 27),
  -- Victreebel - Energy Ball - TM53
  (71, 7100, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 28),
  -- Victreebel - Giga Impact - TM68
  (71, 7100, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 29),
  -- Victreebel - Flash - TM70
  (71, 7100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 30),
  -- Victreebel - Swords Dance - TM75
  (71, 7100, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 31),
  -- Victreebel - Infestation - TM83
  (71, 7100, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 32),
  -- Victreebel - Grass Knot - TM86
  (71, 7100, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 33),
  -- Victreebel - Swagger - TM87
  (71, 7100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 34),
  -- Victreebel - Sleep Talk - TM88
  (71, 7100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 35),
  -- Victreebel - Substitute - TM90
  (71, 7100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 36),
  -- Victreebel - Nature Power - TM96
  (71, 7100, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 37),
  -- Victreebel - Confide - TM100
  (71, 7100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 38),
  -- Victreebel - Cut - HM01
  (71, 7100, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 39),
  -- Tentacool - Poison Sting - Level 1
  (72, 7200, 40, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacool - Supersonic - Level 5
  (72, 7200, 48, 13, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Tentacool - Constrict - Level 8
  (72, 7200, 132, 13, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Tentacool - Acid - Level 12
  (72, 7200, 51, 13, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Tentacool - Toxic Spikes - Level 15
  (72, 7200, 390, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Tentacool - Bubble Beam - Level 19
  (72, 7200, 61, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Tentacool - Wrap - Level 22
  (72, 7200, 35, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Tentacool - Acid Spray - Level 26
  (72, 7200, 491, 13, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Tentacool - Barrier - Level 29
  (72, 7200, 112, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Tentacool - Water Pulse - Level 33
  (72, 7200, 352, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Tentacool - Poison Jab - Level 36
  (72, 7200, 398, 13, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Tentacool - Screech - Level 40
  (72, 7200, 103, 13, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Tentacool - Hex - Level 43
  (72, 7200, 506, 13, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Tentacool - Hydro Pump - Level 47
  (72, 7200, 56, 13, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Tentacool - Sludge Wave - Level 50
  (72, 7200, 482, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Tentacool - Wring Out - Level 54
  (72, 7200, 378, 13, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Tentacool - Toxic - TM06
  (72, 7200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Tentacool - Hail - TM07
  (72, 7200, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 18),
  -- Tentacool - Venoshock - TM09
  (72, 7200, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 19),
  -- Tentacool - Hidden Power - TM10
  (72, 7200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Tentacool - Ice Beam - TM13
  (72, 7200, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 21),
  -- Tentacool - Blizzard - TM14
  (72, 7200, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 22),
  -- Tentacool - Protect - TM17
  (72, 7200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Tentacool - Rain Dance - TM18
  (72, 7200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Tentacool - Safeguard - TM20
  (72, 7200, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 25),
  -- Tentacool - Frustration - TM21
  (72, 7200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Tentacool - Return - TM27
  (72, 7200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Tentacool - Double Team - TM32
  (72, 7200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Tentacool - Sludge Wave - TM34
  (72, 7200, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 29),
  -- Tentacool - Sludge Bomb - TM36
  (72, 7200, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 30),
  -- Tentacool - Facade - TM42
  (72, 7200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Tentacool - Rest - TM44
  (72, 7200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Tentacool - Attract - TM45
  (72, 7200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Tentacool - Thief - TM46
  (72, 7200, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 34),
  -- Tentacool - Round - TM48
  (72, 7200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Tentacool - Scald - TM55
  (72, 7200, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 36),
  -- Tentacool - Payback - TM66
  (72, 7200, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 37),
  -- Tentacool - Swords Dance - TM75
  (72, 7200, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 38),
  -- Tentacool - Infestation - TM83
  (72, 7200, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 39),
  -- Tentacool - Poison Jab - TM84
  (72, 7200, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 40),
  -- Tentacool - Swagger - TM87
  (72, 7200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 41),
  -- Tentacool - Sleep Talk - TM88
  (72, 7200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 42),
  -- Tentacool - Substitute - TM90
  (72, 7200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 43),
  -- Tentacool - Dazzling Gleam - TM99
  (72, 7200, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 44),
  -- Tentacool - Confide - TM100
  (72, 7200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 45),
  -- Tentacool - Cut - HM01
  (72, 7200, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 46),
  -- Tentacool - Surf - HM03
  (72, 7200, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 47),
  -- Tentacool - Waterfall - HM05
  (72, 7200, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 48),
  -- Tentacool - Aurora Beam - Egg
  (72, 7200, 62, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Tentacool - Confuse Ray - Egg
  (72, 7200, 109, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tentacool - Haze - Egg
  (72, 7200, 114, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tentacool - Bubble - Egg
  (72, 7200, 145, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tentacool - Rapid Spin - Egg
  (72, 7200, 229, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tentacool - Mirror Coat - Egg
  (72, 7200, 243, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tentacool - Knock Off - Egg
  (72, 7200, 282, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Tentacool - Tickle - Egg
  (72, 7200, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tentacool - Muddy Water - Egg
  (72, 7200, 330, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tentacool - Acupressure - Egg
  (72, 7200, 367, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Tentacool - Aqua Ring - Egg
  (72, 7200, 392, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Tentacruel - Poison Sting - Level 1
  (73, 7300, 40, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacruel - Supersonic - Level 1
  (73, 7300, 48, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tentacruel - Constrict - Level 1
  (73, 7300, 132, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tentacruel - Wring Out - Level 1
  (73, 7300, 378, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tentacruel - Reflect Type - Level 1
  (73, 7300, 513, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tentacruel - Supersonic - Level 5
  (73, 7300, 48, 13, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Tentacruel - Constrict - Level 8
  (73, 7300, 132, 13, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Tentacruel - Acid - Level 12
  (73, 7300, 51, 13, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Tentacruel - Toxic Spikes - Level 15
  (73, 7300, 390, 13, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Tentacruel - Bubble Beam - Level 19
  (73, 7300, 61, 13, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Tentacruel - Wrap - Level 22
  (73, 7300, 35, 13, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Tentacruel - Acid Spray - Level 26
  (73, 7300, 491, 13, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Tentacruel - Barrier - Level 29
  (73, 7300, 112, 13, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Tentacruel - Water Pulse - Level 34
  (73, 7300, 352, 13, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Tentacruel - Poison Jab - Level 38
  (73, 7300, 398, 13, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Tentacruel - Screech - Level 43
  (73, 7300, 103, 13, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Tentacruel - Hex - Level 47
  (73, 7300, 506, 13, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Tentacruel - Hydro Pump - Level 52
  (73, 7300, 56, 13, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Tentacruel - Sludge Wave - Level 56
  (73, 7300, 482, 13, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Tentacruel - Wring Out - Level 61
  (73, 7300, 378, 13, NULL, 1, 61, NULL, NULL, NULL, 20),
  -- Tentacruel - Toxic - TM06
  (73, 7300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Tentacruel - Hail - TM07
  (73, 7300, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 22),
  -- Tentacruel - Venoshock - TM09
  (73, 7300, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 23),
  -- Tentacruel - Hidden Power - TM10
  (73, 7300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Tentacruel - Ice Beam - TM13
  (73, 7300, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 25),
  -- Tentacruel - Blizzard - TM14
  (73, 7300, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 26),
  -- Tentacruel - Hyper Beam - TM15
  (73, 7300, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 27),
  -- Tentacruel - Protect - TM17
  (73, 7300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 28),
  -- Tentacruel - Rain Dance - TM18
  (73, 7300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 29),
  -- Tentacruel - Safeguard - TM20
  (73, 7300, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 30),
  -- Tentacruel - Frustration - TM21
  (73, 7300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 31),
  -- Tentacruel - Return - TM27
  (73, 7300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 32),
  -- Tentacruel - Double Team - TM32
  (73, 7300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Tentacruel - Sludge Wave - TM34
  (73, 7300, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 34),
  -- Tentacruel - Sludge Bomb - TM36
  (73, 7300, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 35),
  -- Tentacruel - Facade - TM42
  (73, 7300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Tentacruel - Rest - TM44
  (73, 7300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Tentacruel - Attract - TM45
  (73, 7300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Tentacruel - Thief - TM46
  (73, 7300, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 39),
  -- Tentacruel - Round - TM48
  (73, 7300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 40),
  -- Tentacruel - Scald - TM55
  (73, 7300, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 41),
  -- Tentacruel - Payback - TM66
  (73, 7300, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 42),
  -- Tentacruel - Giga Impact - TM68
  (73, 7300, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 43),
  -- Tentacruel - Swords Dance - TM75
  (73, 7300, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 44),
  -- Tentacruel - Infestation - TM83
  (73, 7300, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 45),
  -- Tentacruel - Poison Jab - TM84
  (73, 7300, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 46),
  -- Tentacruel - Swagger - TM87
  (73, 7300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Tentacruel - Sleep Talk - TM88
  (73, 7300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Tentacruel - Substitute - TM90
  (73, 7300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 49),
  -- Tentacruel - Dazzling Gleam - TM99
  (73, 7300, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 50),
  -- Tentacruel - Confide - TM100
  (73, 7300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 51),
  -- Tentacruel - Cut - HM01
  (73, 7300, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 52),
  -- Tentacruel - Surf - HM03
  (73, 7300, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 53),
  -- Tentacruel - Waterfall - HM05
  (73, 7300, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 54),
  -- Geodude - Tackle - Level 1
  (74, 7400, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Geodude - Defense Curl - Level 1
  (74, 7400, 111, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Geodude - Mud Sport - Level 4
  (74, 7400, 300, 13, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Geodude - Rock Polish - Level 8
  (74, 7400, 397, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Geodude - Rollout - Level 11
  (74, 7400, 205, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Geodude - Magnitude - Level 15
  (74, 7400, 222, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Geodude - Rock Throw - Level 18
  (74, 7400, 88, 13, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Geodude - Rock Blast - Level 22
  (74, 7400, 350, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Geodude - Smack Down - Level 25
  (74, 7400, 479, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Geodude - Self-Destruct - Level 29
  (74, 7400, 120, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Geodude - Bulldoze - Level 32
  (74, 7400, 523, 13, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Geodude - Stealth Rock - Level 36
  (74, 7400, 446, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Geodude - Earthquake - Level 39
  (74, 7400, 89, 13, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Geodude - Explosion - Level 43
  (74, 7400, 153, 13, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Geodude - Double-Edge - Level 46
  (74, 7400, 38, 13, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Geodude - Stone Edge - Level 50
  (74, 7400, 444, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Geodude - Toxic - TM06
  (74, 7400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Geodude - Hidden Power - TM10
  (74, 7400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Geodude - Sunny Day - TM11
  (74, 7400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Geodude - Protect - TM17
  (74, 7400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Geodude - Frustration - TM21
  (74, 7400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Geodude - Smack Down - TM23
  (74, 7400, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 22),
  -- Geodude - Earthquake - TM26
  (74, 7400, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 23),
  -- Geodude - Return - TM27
  (74, 7400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Geodude - Dig - TM28
  (74, 7400, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 25),
  -- Geodude - Brick Break - TM31
  (74, 7400, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 26),
  -- Geodude - Double Team - TM32
  (74, 7400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Geodude - Flamethrower - TM35
  (74, 7400, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 28),
  -- Geodude - Sandstorm - TM37
  (74, 7400, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 29),
  -- Geodude - Fire Blast - TM38
  (74, 7400, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 30),
  -- Geodude - Rock Tomb - TM39
  (74, 7400, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 31),
  -- Geodude - Facade - TM42
  (74, 7400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Geodude - Rest - TM44
  (74, 7400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Geodude - Attract - TM45
  (74, 7400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Geodude - Round - TM48
  (74, 7400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Geodude - Fling - TM56
  (74, 7400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 36),
  -- Geodude - Incinerate - TM59
  (74, 7400, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 37),
  -- Geodude - Explosion - TM64
  (74, 7400, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 38),
  -- Geodude - Rock Polish - TM69
  (74, 7400, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 39),
  -- Geodude - Stone Edge - TM71
  (74, 7400, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 40),
  -- Geodude - Gyro Ball - TM74
  (74, 7400, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 41),
  -- Geodude - Bulldoze - TM78
  (74, 7400, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 42),
  -- Geodude - Rock Slide - TM80
  (74, 7400, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 43),
  -- Geodude - Swagger - TM87
  (74, 7400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Geodude - Sleep Talk - TM88
  (74, 7400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Geodude - Substitute - TM90
  (74, 7400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 46),
  -- Geodude - Rock Smash - TM94
  (74, 7400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 47),
  -- Geodude - Nature Power - TM96
  (74, 7400, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 48),
  -- Geodude - Power-Up Punch - TM98
  (74, 7400, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 49),
  -- Geodude - Confide - TM100
  (74, 7400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 50),
  -- Geodude - Strength - HM04
  (74, 7400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 51),
  -- Geodude - Mega Punch - Egg
  (74, 7400, 5, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Geodude - Curse - Egg
  (74, 7400, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Geodude - Flail - Egg
  (74, 7400, 175, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Geodude - Endure - Egg
  (74, 7400, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Geodude - Focus Punch - Egg
  (74, 7400, 264, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Geodude - Block - Egg
  (74, 7400, 335, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Geodude - Hammer Arm - Egg
  (74, 7400, 359, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Geodude - Rock Climb - Egg
  (74, 7400, 431, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Geodude - Wide Guard - Egg
  (74, 7400, 469, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Geodude - Autotomize - Egg
  (74, 7400, 475, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Graveler - Tackle - Level 1
  (75, 7500, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Graveler - Defense Curl - Level 1
  (75, 7500, 111, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Graveler - Mud Sport - Level 1
  (75, 7500, 300, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Graveler - Rock Polish - Level 1
  (75, 7500, 397, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Graveler - Mud Sport - Level 4
  (75, 7500, 300, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Graveler - Rock Polish - Level 8
  (75, 7500, 397, 13, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Graveler - Rollout - Level 11
  (75, 7500, 205, 13, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Graveler - Magnitude - Level 15
  (75, 7500, 222, 13, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Graveler - Rock Throw - Level 18
  (75, 7500, 88, 13, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Graveler - Rock Blast - Level 22
  (75, 7500, 350, 13, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Graveler - Smack Down - Level 27
  (75, 7500, 479, 13, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Graveler - Self-Destruct - Level 31
  (75, 7500, 120, 13, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Graveler - Bulldoze - Level 36
  (75, 7500, 523, 13, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Graveler - Stealth Rock - Level 42
  (75, 7500, 446, 13, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Graveler - Earthquake - Level 47
  (75, 7500, 89, 13, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Graveler - Explosion - Level 53
  (75, 7500, 153, 13, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Graveler - Double-Edge - Level 58
  (75, 7500, 38, 13, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Graveler - Stone Edge - Level 64
  (75, 7500, 444, 13, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Graveler - Toxic - TM06
  (75, 7500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Graveler - Hidden Power - TM10
  (75, 7500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Graveler - Sunny Day - TM11
  (75, 7500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Graveler - Protect - TM17
  (75, 7500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Graveler - Frustration - TM21
  (75, 7500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Graveler - Smack Down - TM23
  (75, 7500, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 24),
  -- Graveler - Earthquake - TM26
  (75, 7500, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 25),
  -- Graveler - Return - TM27
  (75, 7500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Graveler - Dig - TM28
  (75, 7500, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 27),
  -- Graveler - Brick Break - TM31
  (75, 7500, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 28),
  -- Graveler - Double Team - TM32
  (75, 7500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Graveler - Flamethrower - TM35
  (75, 7500, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 30),
  -- Graveler - Sandstorm - TM37
  (75, 7500, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 31),
  -- Graveler - Fire Blast - TM38
  (75, 7500, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 32),
  -- Graveler - Rock Tomb - TM39
  (75, 7500, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 33),
  -- Graveler - Facade - TM42
  (75, 7500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Graveler - Rest - TM44
  (75, 7500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Graveler - Attract - TM45
  (75, 7500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Graveler - Round - TM48
  (75, 7500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Graveler - Fling - TM56
  (75, 7500, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 38),
  -- Graveler - Incinerate - TM59
  (75, 7500, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 39),
  -- Graveler - Explosion - TM64
  (75, 7500, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 40),
  -- Graveler - Rock Polish - TM69
  (75, 7500, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 41),
  -- Graveler - Stone Edge - TM71
  (75, 7500, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 42),
  -- Graveler - Gyro Ball - TM74
  (75, 7500, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 43),
  -- Graveler - Bulldoze - TM78
  (75, 7500, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 44),
  -- Graveler - Rock Slide - TM80
  (75, 7500, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 45),
  -- Graveler - Swagger - TM87
  (75, 7500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 46),
  -- Graveler - Sleep Talk - TM88
  (75, 7500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 47),
  -- Graveler - Substitute - TM90
  (75, 7500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 48),
  -- Graveler - Rock Smash - TM94
  (75, 7500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 49),
  -- Graveler - Nature Power - TM96
  (75, 7500, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 50),
  -- Graveler - Power-Up Punch - TM98
  (75, 7500, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 51),
  -- Graveler - Confide - TM100
  (75, 7500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 52),
  -- Graveler - Strength - HM04
  (75, 7500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 53),
  -- Golem - Tackle - Level 1
  (76, 7600, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golem - Defense Curl - Level 1
  (76, 7600, 111, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golem - Mud Sport - Level 1
  (76, 7600, 300, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golem - Rock Polish - Level 1
  (76, 7600, 397, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golem - Heavy Slam - Level 1
  (76, 7600, 484, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Golem - Mud Sport - Level 4
  (76, 7600, 300, 13, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Golem - Rock Polish - Level 8
  (76, 7600, 397, 13, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Golem - Steamroller - Level 11
  (76, 7600, 537, 13, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Golem - Magnitude - Level 15
  (76, 7600, 222, 13, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Golem - Rock Throw - Level 18
  (76, 7600, 88, 13, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Golem - Rock Blast - Level 22
  (76, 7600, 350, 13, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Golem - Smack Down - Level 27
  (76, 7600, 479, 13, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Golem - Self-Destruct - Level 31
  (76, 7600, 120, 13, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Golem - Bulldoze - Level 36
  (76, 7600, 523, 13, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Golem - Stealth Rock - Level 42
  (76, 7600, 446, 13, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Golem - Earthquake - Level 47
  (76, 7600, 89, 13, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Golem - Explosion - Level 53
  (76, 7600, 153, 13, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Golem - Double-Edge - Level 58
  (76, 7600, 38, 13, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Golem - Stone Edge - Level 64
  (76, 7600, 444, 13, NULL, 1, 64, NULL, NULL, NULL, 19),
  -- Golem - Heavy Slam - Level 69
  (76, 7600, 484, 13, NULL, 1, 69, NULL, NULL, NULL, 20),
  -- Golem - Roar - TM05
  (76, 7600, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 21),
  -- Golem - Toxic - TM06
  (76, 7600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Golem - Hidden Power - TM10
  (76, 7600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Golem - Sunny Day - TM11
  (76, 7600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 24),
  -- Golem - Hyper Beam - TM15
  (76, 7600, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Golem - Protect - TM17
  (76, 7600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Golem - Frustration - TM21
  (76, 7600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Golem - Smack Down - TM23
  (76, 7600, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 28),
  -- Golem - Earthquake - TM26
  (76, 7600, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 29),
  -- Golem - Return - TM27
  (76, 7600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Golem - Dig - TM28
  (76, 7600, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 31),
  -- Golem - Brick Break - TM31
  (76, 7600, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 32),
  -- Golem - Double Team - TM32
  (76, 7600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Golem - Flamethrower - TM35
  (76, 7600, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 34),
  -- Golem - Sandstorm - TM37
  (76, 7600, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 35),
  -- Golem - Fire Blast - TM38
  (76, 7600, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 36),
  -- Golem - Rock Tomb - TM39
  (76, 7600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 37),
  -- Golem - Facade - TM42
  (76, 7600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 38),
  -- Golem - Rest - TM44
  (76, 7600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 39),
  -- Golem - Attract - TM45
  (76, 7600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 40),
  -- Golem - Round - TM48
  (76, 7600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Golem - Focus Blast - TM52
  (76, 7600, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 42),
  -- Golem - Fling - TM56
  (76, 7600, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 43),
  -- Golem - Incinerate - TM59
  (76, 7600, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 44),
  -- Golem - Explosion - TM64
  (76, 7600, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 45),
  -- Golem - Giga Impact - TM68
  (76, 7600, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 46),
  -- Golem - Rock Polish - TM69
  (76, 7600, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 47),
  -- Golem - Stone Edge - TM71
  (76, 7600, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 48),
  -- Golem - Gyro Ball - TM74
  (76, 7600, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 49),
  -- Golem - Bulldoze - TM78
  (76, 7600, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 50),
  -- Golem - Rock Slide - TM80
  (76, 7600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 51),
  -- Golem - Swagger - TM87
  (76, 7600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 52),
  -- Golem - Sleep Talk - TM88
  (76, 7600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 53),
  -- Golem - Substitute - TM90
  (76, 7600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 54),
  -- Golem - Rock Smash - TM94
  (76, 7600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 55),
  -- Golem - Nature Power - TM96
  (76, 7600, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 56),
  -- Golem - Power-Up Punch - TM98
  (76, 7600, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 57),
  -- Golem - Confide - TM100
  (76, 7600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 58),
  -- Golem - Strength - HM04
  (76, 7600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 59),
  -- Ponyta - Tackle - Level 1
  (77, 7700, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ponyta - Growl - Level 1
  (77, 7700, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ponyta - Tail Whip - Level 4
  (77, 7700, 39, 13, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Ponyta - Ember - Level 9
  (77, 7700, 52, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Ponyta - Flame Wheel - Level 13
  (77, 7700, 172, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Ponyta - Stomp - Level 17
  (77, 7700, 23, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Ponyta - Flame Charge - Level 21
  (77, 7700, 488, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Ponyta - Fire Spin - Level 25
  (77, 7700, 83, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Ponyta - Take Down - Level 29
  (77, 7700, 36, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Ponyta - Inferno - Level 33
  (77, 7700, 517, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Ponyta - Agility - Level 37
  (77, 7700, 97, 13, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Ponyta - Fire Blast - Level 41
  (77, 7700, 126, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Ponyta - Bounce - Level 45
  (77, 7700, 340, 13, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Ponyta - Flare Blitz - Level 49
  (77, 7700, 394, 13, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Ponyta - Toxic - TM06
  (77, 7700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Ponyta - Hidden Power - TM10
  (77, 7700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Ponyta - Sunny Day - TM11
  (77, 7700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 17),
  -- Ponyta - Protect - TM17
  (77, 7700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 18),
  -- Ponyta - Frustration - TM21
  (77, 7700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 19),
  -- Ponyta - Solar Beam - TM22
  (77, 7700, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 20),
  -- Ponyta - Return - TM27
  (77, 7700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 21),
  -- Ponyta - Double Team - TM32
  (77, 7700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 22),
  -- Ponyta - Flamethrower - TM35
  (77, 7700, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 23),
  -- Ponyta - Fire Blast - TM38
  (77, 7700, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 24),
  -- Ponyta - Facade - TM42
  (77, 7700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 25),
  -- Ponyta - Flame Charge - TM43
  (77, 7700, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 26),
  -- Ponyta - Rest - TM44
  (77, 7700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Ponyta - Attract - TM45
  (77, 7700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Ponyta - Round - TM48
  (77, 7700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 29),
  -- Ponyta - Echoed Voice - TM49
  (77, 7700, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 30),
  -- Ponyta - Overheat - TM50
  (77, 7700, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 31),
  -- Ponyta - Incinerate - TM59
  (77, 7700, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 32),
  -- Ponyta - Will-O-Wisp - TM61
  (77, 7700, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 33),
  -- Ponyta - Swagger - TM87
  (77, 7700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 34),
  -- Ponyta - Sleep Talk - TM88
  (77, 7700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 35),
  -- Ponyta - Substitute - TM90
  (77, 7700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 36),
  -- Ponyta - Wild Charge - TM93
  (77, 7700, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 37),
  -- Ponyta - Confide - TM100
  (77, 7700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 38),
  -- Ponyta - Strength - HM04
  (77, 7700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 39),
  -- Ponyta - Double Kick - Egg
  (77, 7700, 24, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Ponyta - Horn Drill - Egg
  (77, 7700, 32, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Ponyta - Thrash - Egg
  (77, 7700, 37, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Ponyta - Double-Edge - Egg
  (77, 7700, 38, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Ponyta - Low Kick - Egg
  (77, 7700, 67, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Ponyta - Hypnosis - Egg
  (77, 7700, 95, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Ponyta - Flame Wheel - Egg
  (77, 7700, 172, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Ponyta - Charm - Egg
  (77, 7700, 204, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ponyta - Morning Sun - Egg
  (77, 7700, 234, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Ponyta - Captivate - Egg
  (77, 7700, 445, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Ponyta - Ally Switch - Egg
  (77, 7700, 502, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Rapidash - Tail Whip - Level 1
  (78, 7800, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rapidash - Growl - Level 1
  (78, 7800, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rapidash - Ember - Level 1
  (78, 7800, 52, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rapidash - Quick Attack - Level 1
  (78, 7800, 98, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rapidash - Megahorn - Level 1
  (78, 7800, 224, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rapidash - Poison Jab - Level 1
  (78, 7800, 398, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rapidash - Tail Whip - Level 4
  (78, 7800, 39, 13, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Rapidash - Ember - Level 9
  (78, 7800, 52, 13, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Rapidash - Flame Wheel - Level 13
  (78, 7800, 172, 13, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Rapidash - Stomp - Level 17
  (78, 7800, 23, 13, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Rapidash - Flame Charge - Level 21
  (78, 7800, 488, 13, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Rapidash - Fire Spin - Level 25
  (78, 7800, 83, 13, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Rapidash - Take Down - Level 29
  (78, 7800, 36, 13, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Rapidash - Inferno - Level 33
  (78, 7800, 517, 13, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Rapidash - Agility - Level 37
  (78, 7800, 97, 13, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Rapidash - Fury Attack - Level 40
  (78, 7800, 31, 13, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Rapidash - Fire Blast - Level 41
  (78, 7800, 126, 13, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Rapidash - Bounce - Level 45
  (78, 7800, 340, 13, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Rapidash - Flare Blitz - Level 49
  (78, 7800, 394, 13, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Rapidash - Toxic - TM06
  (78, 7800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Rapidash - Hidden Power - TM10
  (78, 7800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Rapidash - Sunny Day - TM11
  (78, 7800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Rapidash - Hyper Beam - TM15
  (78, 7800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Rapidash - Protect - TM17
  (78, 7800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Rapidash - Frustration - TM21
  (78, 7800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Rapidash - Solar Beam - TM22
  (78, 7800, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 26),
  -- Rapidash - Return - TM27
  (78, 7800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Rapidash - Double Team - TM32
  (78, 7800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Rapidash - Flamethrower - TM35
  (78, 7800, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 29),
  -- Rapidash - Fire Blast - TM38
  (78, 7800, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 30),
  -- Rapidash - Facade - TM42
  (78, 7800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Rapidash - Flame Charge - TM43
  (78, 7800, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 32),
  -- Rapidash - Rest - TM44
  (78, 7800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Rapidash - Attract - TM45
  (78, 7800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Rapidash - Round - TM48
  (78, 7800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Rapidash - Echoed Voice - TM49
  (78, 7800, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 36),
  -- Rapidash - Overheat - TM50
  (78, 7800, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 37),
  -- Rapidash - Incinerate - TM59
  (78, 7800, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 38),
  -- Rapidash - Will-O-Wisp - TM61
  (78, 7800, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 39),
  -- Rapidash - Giga Impact - TM68
  (78, 7800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 40),
  -- Rapidash - Poison Jab - TM84
  (78, 7800, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 41),
  -- Rapidash - Swagger - TM87
  (78, 7800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 42),
  -- Rapidash - Sleep Talk - TM88
  (78, 7800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 43),
  -- Rapidash - Substitute - TM90
  (78, 7800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 44),
  -- Rapidash - Wild Charge - TM93
  (78, 7800, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 45),
  -- Rapidash - Confide - TM100
  (78, 7800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Rapidash - Strength - HM04
  (78, 7800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 47),
  -- Slowpoke - Tackle - Level 1
  (79, 7900, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowpoke - Curse - Level 1
  (79, 7900, 174, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowpoke - Yawn - Level 1
  (79, 7900, 281, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowpoke - Growl - Level 5
  (79, 7900, 45, 13, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Slowpoke - Water Gun - Level 9
  (79, 7900, 55, 13, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Slowpoke - Confusion - Level 14
  (79, 7900, 93, 13, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Slowpoke - Disable - Level 19
  (79, 7900, 50, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Slowpoke - Headbutt - Level 23
  (79, 7900, 29, 13, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Slowpoke - Water Pulse - Level 28
  (79, 7900, 352, 13, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Slowpoke - Zen Headbutt - Level 32
  (79, 7900, 428, 13, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Slowpoke - Slack Off - Level 36
  (79, 7900, 303, 13, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Slowpoke - Amnesia - Level 41
  (79, 7900, 133, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Slowpoke - Psychic - Level 45
  (79, 7900, 94, 13, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Slowpoke - Rain Dance - Level 49
  (79, 7900, 240, 13, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Slowpoke - Psych Up - Level 54
  (79, 7900, 244, 13, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Slowpoke - Heal Pulse - Level 58
  (79, 7900, 505, 13, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Slowpoke - Psyshock - TM03
  (79, 7900, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 17),
  -- Slowpoke - Calm Mind - TM04
  (79, 7900, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 18),
  -- Slowpoke - Toxic - TM06
  (79, 7900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Slowpoke - Hail - TM07
  (79, 7900, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 20),
  -- Slowpoke - Hidden Power - TM10
  (79, 7900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Slowpoke - Sunny Day - TM11
  (79, 7900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Slowpoke - Ice Beam - TM13
  (79, 7900, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 23),
  -- Slowpoke - Blizzard - TM14
  (79, 7900, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 24),
  -- Slowpoke - Light Screen - TM16
  (79, 7900, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 25),
  -- Slowpoke - Protect - TM17
  (79, 7900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Slowpoke - Rain Dance - TM18
  (79, 7900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Slowpoke - Safeguard - TM20
  (79, 7900, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 28),
  -- Slowpoke - Frustration - TM21
  (79, 7900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Slowpoke - Earthquake - TM26
  (79, 7900, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 30),
  -- Slowpoke - Return - TM27
  (79, 7900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Slowpoke - Dig - TM28
  (79, 7900, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 32),
  -- Slowpoke - Psychic - TM29
  (79, 7900, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 33),
  -- Slowpoke - Shadow Ball - TM30
  (79, 7900, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 34),
  -- Slowpoke - Double Team - TM32
  (79, 7900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 35),
  -- Slowpoke - Flamethrower - TM35
  (79, 7900, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 36),
  -- Slowpoke - Fire Blast - TM38
  (79, 7900, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 37),
  -- Slowpoke - Facade - TM42
  (79, 7900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 38),
  -- Slowpoke - Rest - TM44
  (79, 7900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 39),
  -- Slowpoke - Attract - TM45
  (79, 7900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 40),
  -- Slowpoke - Round - TM48
  (79, 7900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Slowpoke - Echoed Voice - TM49
  (79, 7900, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 42),
  -- Slowpoke - Scald - TM55
  (79, 7900, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 43),
  -- Slowpoke - Incinerate - TM59
  (79, 7900, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 44),
  -- Slowpoke - Flash - TM70
  (79, 7900, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 45),
  -- Slowpoke - Thunder Wave - TM73
  (79, 7900, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 46),
  -- Slowpoke - Psych Up - TM77
  (79, 7900, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 47),
  -- Slowpoke - Bulldoze - TM78
  (79, 7900, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 48),
  -- Slowpoke - Dream Eater - TM85
  (79, 7900, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 49),
  -- Slowpoke - Grass Knot - TM86
  (79, 7900, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 50),
  -- Slowpoke - Swagger - TM87
  (79, 7900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 51),
  -- Slowpoke - Sleep Talk - TM88
  (79, 7900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 52),
  -- Slowpoke - Substitute - TM90
  (79, 7900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 53),
  -- Slowpoke - Trick Room - TM92
  (79, 7900, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 54),
  -- Slowpoke - Confide - TM100
  (79, 7900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 55),
  -- Slowpoke - Surf - HM03
  (79, 7900, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 56),
  -- Slowpoke - Strength - HM04
  (79, 7900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 57),
  -- Slowpoke - Stomp - Egg
  (79, 7900, 23, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Slowpoke - Snore - Egg
  (79, 7900, 173, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Slowpoke - Belly Drum - Egg
  (79, 7900, 187, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Slowpoke - Sleep Talk - Egg
  (79, 7900, 214, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Slowpoke - Future Sight - Egg
  (79, 7900, 248, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Slowpoke - Mud Sport - Egg
  (79, 7900, 300, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Slowpoke - Block - Egg
  (79, 7900, 335, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Slowpoke - Me First - Egg
  (79, 7900, 382, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Slowpoke - Zen Headbutt - Egg
  (79, 7900, 428, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Slowpoke - Wonder Room - Egg
  (79, 7900, 472, 13, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Slowpoke - Belch - Egg
  (79, 7900, 562, 13, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Slowbro - Tackle - Level 1
  (80, 8000, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowbro - Growl - Level 1
  (80, 8000, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowbro - Curse - Level 1
  (80, 8000, 174, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowbro - Yawn - Level 1
  (80, 8000, 281, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slowbro - Heal Pulse - Level 1
  (80, 8000, 505, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Slowbro - Growl - Level 5
  (80, 8000, 45, 13, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Slowbro - Water Gun - Level 9
  (80, 8000, 55, 13, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Slowbro - Confusion - Level 14
  (80, 8000, 93, 13, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Slowbro - Disable - Level 19
  (80, 8000, 50, 13, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Slowbro - Headbutt - Level 23
  (80, 8000, 29, 13, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Slowbro - Water Pulse - Level 28
  (80, 8000, 352, 13, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Slowbro - Zen Headbutt - Level 32
  (80, 8000, 428, 13, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Slowbro - Slack Off - Level 36
  (80, 8000, 303, 13, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Slowbro - Withdraw - Level 37
  (80, 8000, 110, 13, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Slowbro - Amnesia - Level 43
  (80, 8000, 133, 13, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Slowbro - Psychic - Level 49
  (80, 8000, 94, 13, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Slowbro - Rain Dance - Level 55
  (80, 8000, 240, 13, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Slowbro - Psych Up - Level 62
  (80, 8000, 244, 13, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Slowbro - Heal Pulse - Level 68
  (80, 8000, 505, 13, NULL, 1, 68, NULL, NULL, NULL, 19),
  -- Slowbro - Psyshock - TM03
  (80, 8000, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 20),
  -- Slowbro - Calm Mind - TM04
  (80, 8000, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 21),
  -- Slowbro - Toxic - TM06
  (80, 8000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Slowbro - Hail - TM07
  (80, 8000, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 23),
  -- Slowbro - Hidden Power - TM10
  (80, 8000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Slowbro - Sunny Day - TM11
  (80, 8000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 25),
  -- Slowbro - Ice Beam - TM13
  (80, 8000, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 26),
  -- Slowbro - Blizzard - TM14
  (80, 8000, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 27),
  -- Slowbro - Hyper Beam - TM15
  (80, 8000, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 28),
  -- Slowbro - Light Screen - TM16
  (80, 8000, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 29),
  -- Slowbro - Protect - TM17
  (80, 8000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 30),
  -- Slowbro - Rain Dance - TM18
  (80, 8000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 31),
  -- Slowbro - Safeguard - TM20
  (80, 8000, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 32),
  -- Slowbro - Frustration - TM21
  (80, 8000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 33),
  -- Slowbro - Earthquake - TM26
  (80, 8000, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 34),
  -- Slowbro - Return - TM27
  (80, 8000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 35),
  -- Slowbro - Dig - TM28
  (80, 8000, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 36),
  -- Slowbro - Psychic - TM29
  (80, 8000, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 37),
  -- Slowbro - Shadow Ball - TM30
  (80, 8000, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 38),
  -- Slowbro - Brick Break - TM31
  (80, 8000, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 39),
  -- Slowbro - Double Team - TM32
  (80, 8000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 40),
  -- Slowbro - Flamethrower - TM35
  (80, 8000, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 41),
  -- Slowbro - Fire Blast - TM38
  (80, 8000, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 42),
  -- Slowbro - Aerial Ace - TM40
  (80, 8000, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 43),
  -- Slowbro - Facade - TM42
  (80, 8000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 44),
  -- Slowbro - Rest - TM44
  (80, 8000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 45),
  -- Slowbro - Attract - TM45
  (80, 8000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 46),
  -- Slowbro - Round - TM48
  (80, 8000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 47),
  -- Slowbro - Echoed Voice - TM49
  (80, 8000, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 48),
  -- Slowbro - Focus Blast - TM52
  (80, 8000, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 49),
  -- Slowbro - Scald - TM55
  (80, 8000, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 50),
  -- Slowbro - Fling - TM56
  (80, 8000, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 51),
  -- Slowbro - Incinerate - TM59
  (80, 8000, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 52),
  -- Slowbro - Giga Impact - TM68
  (80, 8000, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 53),
  -- Slowbro - Flash - TM70
  (80, 8000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 54),
  -- Slowbro - Thunder Wave - TM73
  (80, 8000, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 55),
  -- Slowbro - Psych Up - TM77
  (80, 8000, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 56),
  -- Slowbro - Bulldoze - TM78
  (80, 8000, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 57),
  -- Slowbro - Dream Eater - TM85
  (80, 8000, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 58),
  -- Slowbro - Grass Knot - TM86
  (80, 8000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 59),
  -- Slowbro - Swagger - TM87
  (80, 8000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 60),
  -- Slowbro - Sleep Talk - TM88
  (80, 8000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 61),
  -- Slowbro - Substitute - TM90
  (80, 8000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 62),
  -- Slowbro - Trick Room - TM92
  (80, 8000, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 63),
  -- Slowbro - Rock Smash - TM94
  (80, 8000, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 64),
  -- Slowbro - Confide - TM100
  (80, 8000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 65),
  -- Slowbro - Surf - HM03
  (80, 8000, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 66),
  -- Slowbro - Strength - HM04
  (80, 8000, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 67),
  -- Magnemite - Tackle - Level 1
  (81, 8100, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magnemite - Supersonic - Level 4
  (81, 8100, 48, 13, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Magnemite - Thunder Shock - Level 7
  (81, 8100, 84, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Magnemite - Sonic Boom - Level 11
  (81, 8100, 49, 13, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Magnemite - Thunder Wave - Level 15
  (81, 8100, 86, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Magnemite - Magnet Bomb - Level 18
  (81, 8100, 443, 13, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Magnemite - Spark - Level 21
  (81, 8100, 209, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Magnemite - Mirror Shot - Level 25
  (81, 8100, 429, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Magnemite - Metal Sound - Level 29
  (81, 8100, 319, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Magnemite - Electro Ball - Level 32
  (81, 8100, 486, 13, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Magnemite - Flash Cannon - Level 35
  (81, 8100, 430, 13, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Magnemite - Screech - Level 39
  (81, 8100, 103, 13, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Magnemite - Discharge - Level 43
  (81, 8100, 435, 13, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Magnemite - Lock-On - Level 46
  (81, 8100, 199, 13, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Magnemite - Magnet Rise - Level 49
  (81, 8100, 393, 13, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Magnemite - Gyro Ball - Level 53
  (81, 8100, 360, 13, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Magnemite - Zap Cannon - Level 57
  (81, 8100, 192, 13, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Magnemite - Toxic - TM06
  (81, 8100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Magnemite - Hidden Power - TM10
  (81, 8100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Magnemite - Sunny Day - TM11
  (81, 8100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Magnemite - Light Screen - TM16
  (81, 8100, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 21),
  -- Magnemite - Protect - TM17
  (81, 8100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Magnemite - Rain Dance - TM18
  (81, 8100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Magnemite - Frustration - TM21
  (81, 8100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Magnemite - Thunderbolt - TM24
  (81, 8100, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 25),
  -- Magnemite - Thunder - TM25
  (81, 8100, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 26),
  -- Magnemite - Return - TM27
  (81, 8100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Magnemite - Double Team - TM32
  (81, 8100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Magnemite - Reflect - TM33
  (81, 8100, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 29),
  -- Magnemite - Facade - TM42
  (81, 8100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Magnemite - Rest - TM44
  (81, 8100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Magnemite - Round - TM48
  (81, 8100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 32),
  -- Magnemite - Charge Beam - TM57
  (81, 8100, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 33),
  -- Magnemite - Explosion - TM64
  (81, 8100, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 34),
  -- Magnemite - Flash - TM70
  (81, 8100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 35),
  -- Magnemite - Volt Switch - TM72
  (81, 8100, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 36),
  -- Magnemite - Thunder Wave - TM73
  (81, 8100, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 37),
  -- Magnemite - Gyro Ball - TM74
  (81, 8100, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 38),
  -- Magnemite - Psych Up - TM77
  (81, 8100, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 39),
  -- Magnemite - Swagger - TM87
  (81, 8100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Magnemite - Sleep Talk - TM88
  (81, 8100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Magnemite - Substitute - TM90
  (81, 8100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Magnemite - Flash Cannon - TM91
  (81, 8100, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 43),
  -- Magnemite - Wild Charge - TM93
  (81, 8100, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 44),
  -- Magnemite - Confide - TM100
  (81, 8100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 45),
  -- Magneton - Tackle - Level 1
  (82, 8200, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magneton - Supersonic - Level 1
  (82, 8200, 48, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magneton - Sonic Boom - Level 1
  (82, 8200, 49, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magneton - Thunder Shock - Level 1
  (82, 8200, 84, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magneton - Tri Attack - Level 1
  (82, 8200, 161, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magneton - Zap Cannon - Level 1
  (82, 8200, 192, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Magneton - Supersonic - Level 4
  (82, 8200, 48, 13, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Magneton - Thunder Shock - Level 7
  (82, 8200, 84, 13, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Magneton - Electric Terrain - Level 11
  (82, 8200, 604, 13, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Magneton - Thunder Wave - Level 15
  (82, 8200, 86, 13, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Magneton - Magnet Bomb - Level 18
  (82, 8200, 443, 13, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Magneton - Spark - Level 21
  (82, 8200, 209, 13, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Magneton - Mirror Shot - Level 25
  (82, 8200, 429, 13, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Magneton - Metal Sound - Level 29
  (82, 8200, 319, 13, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Magneton - Electro Ball - Level 34
  (82, 8200, 486, 13, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Magneton - Flash Cannon - Level 39
  (82, 8200, 430, 13, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Magneton - Screech - Level 45
  (82, 8200, 103, 13, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Magneton - Discharge - Level 51
  (82, 8200, 435, 13, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Magneton - Lock-On - Level 56
  (82, 8200, 199, 13, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Magneton - Magnet Rise - Level 62
  (82, 8200, 393, 13, NULL, 1, 62, NULL, NULL, NULL, 20),
  -- Magneton - Gyro Ball - Level 67
  (82, 8200, 360, 13, NULL, 1, 67, NULL, NULL, NULL, 21),
  -- Magneton - Zap Cannon - Level 73
  (82, 8200, 192, 13, NULL, 1, 73, NULL, NULL, NULL, 22),
  -- Magneton - Toxic - TM06
  (82, 8200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 23),
  -- Magneton - Hidden Power - TM10
  (82, 8200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Magneton - Sunny Day - TM11
  (82, 8200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 25),
  -- Magneton - Hyper Beam - TM15
  (82, 8200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 26),
  -- Magneton - Light Screen - TM16
  (82, 8200, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 27),
  -- Magneton - Protect - TM17
  (82, 8200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 28),
  -- Magneton - Rain Dance - TM18
  (82, 8200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 29),
  -- Magneton - Frustration - TM21
  (82, 8200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 30),
  -- Magneton - Thunderbolt - TM24
  (82, 8200, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 31),
  -- Magneton - Thunder - TM25
  (82, 8200, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 32),
  -- Magneton - Return - TM27
  (82, 8200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Magneton - Double Team - TM32
  (82, 8200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Magneton - Reflect - TM33
  (82, 8200, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 35),
  -- Magneton - Facade - TM42
  (82, 8200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Magneton - Rest - TM44
  (82, 8200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Magneton - Round - TM48
  (82, 8200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Magneton - Charge Beam - TM57
  (82, 8200, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 39),
  -- Magneton - Explosion - TM64
  (82, 8200, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 40),
  -- Magneton - Giga Impact - TM68
  (82, 8200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 41),
  -- Magneton - Flash - TM70
  (82, 8200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 42),
  -- Magneton - Volt Switch - TM72
  (82, 8200, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 43),
  -- Magneton - Thunder Wave - TM73
  (82, 8200, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 44),
  -- Magneton - Gyro Ball - TM74
  (82, 8200, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 45),
  -- Magneton - Psych Up - TM77
  (82, 8200, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 46),
  -- Magneton - Swagger - TM87
  (82, 8200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Magneton - Sleep Talk - TM88
  (82, 8200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Magneton - Substitute - TM90
  (82, 8200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 49),
  -- Magneton - Flash Cannon - TM91
  (82, 8200, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 50),
  -- Magneton - Wild Charge - TM93
  (82, 8200, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 51),
  -- Magneton - Confide - TM100
  (82, 8200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 52),
  -- Farfetch'd - Sand Attack - Level 1
  (83, 8300, 28, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Farfetch'd - Leer - Level 1
  (83, 8300, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Farfetch'd - Peck - Level 1
  (83, 8300, 64, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Farfetch'd - Fury Cutter - Level 1
  (83, 8300, 210, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Farfetch'd - Poison Jab - Level 1
  (83, 8300, 398, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Farfetch'd - Brave Bird - Level 1
  (83, 8300, 413, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Farfetch'd - Fury Attack - Level 7
  (83, 8300, 31, 13, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Farfetch'd - Aerial Ace - Level 9
  (83, 8300, 332, 13, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Farfetch'd - Knock Off - Level 13
  (83, 8300, 282, 13, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Farfetch'd - Slash - Level 19
  (83, 8300, 163, 13, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Farfetch'd - Air Cutter - Level 21
  (83, 8300, 314, 13, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Farfetch'd - Swords Dance - Level 25
  (83, 8300, 14, 13, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Farfetch'd - Agility - Level 31
  (83, 8300, 97, 13, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Farfetch'd - Night Slash - Level 33
  (83, 8300, 400, 13, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Farfetch'd - Acrobatics - Level 37
  (83, 8300, 512, 13, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Farfetch'd - Feint - Level 43
  (83, 8300, 364, 13, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Farfetch'd - False Swipe - Level 45
  (83, 8300, 206, 13, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Farfetch'd - Air Slash - Level 49
  (83, 8300, 403, 13, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Farfetch'd - Brave Bird - Level 55
  (83, 8300, 413, 13, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Farfetch'd - Toxic - TM06
  (83, 8300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Farfetch'd - Hidden Power - TM10
  (83, 8300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Farfetch'd - Sunny Day - TM11
  (83, 8300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Farfetch'd - Protect - TM17
  (83, 8300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Farfetch'd - Roost - TM19
  (83, 8300, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 24),
  -- Farfetch'd - Frustration - TM21
  (83, 8300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Farfetch'd - Return - TM27
  (83, 8300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Farfetch'd - Double Team - TM32
  (83, 8300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Farfetch'd - Aerial Ace - TM40
  (83, 8300, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 28),
  -- Farfetch'd - Facade - TM42
  (83, 8300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Farfetch'd - Rest - TM44
  (83, 8300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Farfetch'd - Attract - TM45
  (83, 8300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Farfetch'd - Thief - TM46
  (83, 8300, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 32),
  -- Farfetch'd - Round - TM48
  (83, 8300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Farfetch'd - Steel Wing - TM51
  (83, 8300, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 34),
  -- Farfetch'd - False Swipe - TM54
  (83, 8300, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 35),
  -- Farfetch'd - Acrobatics - TM62
  (83, 8300, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 36),
  -- Farfetch'd - Retaliate - TM67
  (83, 8300, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 37),
  -- Farfetch'd - Swords Dance - TM75
  (83, 8300, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 38),
  -- Farfetch'd - Psych Up - TM77
  (83, 8300, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 39),
  -- Farfetch'd - Poison Jab - TM84
  (83, 8300, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 40),
  -- Farfetch'd - Swagger - TM87
  (83, 8300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 41),
  -- Farfetch'd - Sleep Talk - TM88
  (83, 8300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 42),
  -- Farfetch'd - U-turn - TM89
  (83, 8300, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 43),
  -- Farfetch'd - Substitute - TM90
  (83, 8300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 44),
  -- Farfetch'd - Confide - TM100
  (83, 8300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 45),
  -- Farfetch'd - Cut - HM01
  (83, 8300, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 46),
  -- Farfetch'd - Fly - HM02
  (83, 8300, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 47),
  -- Farfetch'd - Gust - Egg
  (83, 8300, 16, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Farfetch'd - Quick Attack - Egg
  (83, 8300, 98, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Farfetch'd - Mirror Move - Egg
  (83, 8300, 119, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Farfetch'd - Curse - Egg
  (83, 8300, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Farfetch'd - Flail - Egg
  (83, 8300, 175, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Farfetch'd - Mud-Slap - Egg
  (83, 8300, 189, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Farfetch'd - Foresight - Egg
  (83, 8300, 193, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Farfetch'd - Steel Wing - Egg
  (83, 8300, 211, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Farfetch'd - Revenge - Egg
  (83, 8300, 279, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Farfetch'd - Feather Dance - Egg
  (83, 8300, 297, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Farfetch'd - Covet - Egg
  (83, 8300, 343, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Farfetch'd - Leaf Blade - Egg
  (83, 8300, 348, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Farfetch'd - Roost - Egg
  (83, 8300, 355, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Farfetch'd - Trump Card - Egg
  (83, 8300, 376, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Farfetch'd - Night Slash - Egg
  (83, 8300, 400, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Farfetch'd - Simple Beam - Egg
  (83, 8300, 493, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Doduo - Growl - Level 1
  (84, 8400, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Doduo - Peck - Level 1
  (84, 8400, 64, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Doduo - Quick Attack - Level 5
  (84, 8400, 98, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Doduo - Rage - Level 10
  (84, 8400, 99, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Doduo - Fury Attack - Level 14
  (84, 8400, 31, 13, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Doduo - Pursuit - Level 19
  (84, 8400, 228, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Doduo - Uproar - Level 23
  (84, 8400, 253, 13, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Doduo - Acupressure - Level 28
  (84, 8400, 367, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Doduo - Double Hit - Level 32
  (84, 8400, 458, 13, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Doduo - Agility - Level 37
  (84, 8400, 97, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Doduo - Drill Peck - Level 41
  (84, 8400, 65, 13, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Doduo - Endeavor - Level 46
  (84, 8400, 283, 13, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Doduo - Thrash - Level 50
  (84, 8400, 37, 13, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Doduo - Toxic - TM06
  (84, 8400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Doduo - Hidden Power - TM10
  (84, 8400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Doduo - Sunny Day - TM11
  (84, 8400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 16),
  -- Doduo - Protect - TM17
  (84, 8400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 17),
  -- Doduo - Roost - TM19
  (84, 8400, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 18),
  -- Doduo - Frustration - TM21
  (84, 8400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 19),
  -- Doduo - Return - TM27
  (84, 8400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 20),
  -- Doduo - Double Team - TM32
  (84, 8400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 21),
  -- Doduo - Aerial Ace - TM40
  (84, 8400, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 22),
  -- Doduo - Facade - TM42
  (84, 8400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 23),
  -- Doduo - Rest - TM44
  (84, 8400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 24),
  -- Doduo - Attract - TM45
  (84, 8400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 25),
  -- Doduo - Thief - TM46
  (84, 8400, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 26),
  -- Doduo - Round - TM48
  (84, 8400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 27),
  -- Doduo - Echoed Voice - TM49
  (84, 8400, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 28),
  -- Doduo - Steel Wing - TM51
  (84, 8400, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 29),
  -- Doduo - Swagger - TM87
  (84, 8400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 30),
  -- Doduo - Sleep Talk - TM88
  (84, 8400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 31),
  -- Doduo - Substitute - TM90
  (84, 8400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 32),
  -- Doduo - Confide - TM100
  (84, 8400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 33),
  -- Doduo - Fly - HM02
  (84, 8400, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 34),
  -- Doduo - Supersonic - Egg
  (84, 8400, 48, 13, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Doduo - Quick Attack - Egg
  (84, 8400, 98, 13, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Doduo - Haze - Egg
  (84, 8400, 114, 13, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Doduo - Mirror Move - Egg
  (84, 8400, 119, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Doduo - Flail - Egg
  (84, 8400, 175, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Doduo - Feint Attack - Egg
  (84, 8400, 185, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Doduo - Endeavor - Egg
  (84, 8400, 283, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Doduo - Natural Gift - Egg
  (84, 8400, 363, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Doduo - Assurance - Egg
  (84, 8400, 372, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Doduo - Brave Bird - Egg
  (84, 8400, 413, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Dodrio - Growl - Level 1
  (85, 8500, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dodrio - Peck - Level 1
  (85, 8500, 64, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dodrio - Quick Attack - Level 1
  (85, 8500, 98, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dodrio - Rage - Level 1
  (85, 8500, 99, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dodrio - Pluck - Level 1
  (85, 8500, 365, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dodrio - Quick Attack - Level 5
  (85, 8500, 98, 13, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Dodrio - Rage - Level 10
  (85, 8500, 99, 13, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Dodrio - Fury Attack - Level 14
  (85, 8500, 31, 13, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Dodrio - Pursuit - Level 19
  (85, 8500, 228, 13, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Dodrio - Uproar - Level 23
  (85, 8500, 253, 13, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Dodrio - Acupressure - Level 28
  (85, 8500, 367, 13, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Dodrio - Tri Attack - Level 34
  (85, 8500, 161, 13, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Dodrio - Agility - Level 41
  (85, 8500, 97, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Dodrio - Drill Peck - Level 47
  (85, 8500, 65, 13, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Dodrio - Endeavor - Level 54
  (85, 8500, 283, 13, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Dodrio - Thrash - Level 60
  (85, 8500, 37, 13, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Dodrio - Toxic - TM06
  (85, 8500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Dodrio - Hidden Power - TM10
  (85, 8500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Dodrio - Sunny Day - TM11
  (85, 8500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Dodrio - Taunt - TM12
  (85, 8500, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 20),
  -- Dodrio - Hyper Beam - TM15
  (85, 8500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 21),
  -- Dodrio - Protect - TM17
  (85, 8500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Dodrio - Roost - TM19
  (85, 8500, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 23),
  -- Dodrio - Frustration - TM21
  (85, 8500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Dodrio - Return - TM27
  (85, 8500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Dodrio - Double Team - TM32
  (85, 8500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Dodrio - Aerial Ace - TM40
  (85, 8500, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 27),
  -- Dodrio - Torment - TM41
  (85, 8500, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 28),
  -- Dodrio - Facade - TM42
  (85, 8500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Dodrio - Rest - TM44
  (85, 8500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Dodrio - Attract - TM45
  (85, 8500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Dodrio - Thief - TM46
  (85, 8500, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 32),
  -- Dodrio - Round - TM48
  (85, 8500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Dodrio - Echoed Voice - TM49
  (85, 8500, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 34),
  -- Dodrio - Steel Wing - TM51
  (85, 8500, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 35),
  -- Dodrio - Payback - TM66
  (85, 8500, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 36),
  -- Dodrio - Giga Impact - TM68
  (85, 8500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 37),
  -- Dodrio - Swagger - TM87
  (85, 8500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 38),
  -- Dodrio - Sleep Talk - TM88
  (85, 8500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 39),
  -- Dodrio - Substitute - TM90
  (85, 8500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 40),
  -- Dodrio - Confide - TM100
  (85, 8500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 41),
  -- Dodrio - Fly - HM02
  (85, 8500, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 42),
  -- Seel - Headbutt - Level 1
  (86, 8600, 29, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seel - Growl - Level 3
  (86, 8600, 45, 13, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Seel - Water Sport - Level 7
  (86, 8600, 346, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Seel - Icy Wind - Level 11
  (86, 8600, 196, 13, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Seel - Encore - Level 13
  (86, 8600, 227, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Seel - Ice Shard - Level 17
  (86, 8600, 420, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Seel - Rest - Level 21
  (86, 8600, 156, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Seel - Aqua Ring - Level 23
  (86, 8600, 392, 13, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Seel - Aurora Beam - Level 27
  (86, 8600, 62, 13, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Seel - Aqua Jet - Level 31
  (86, 8600, 453, 13, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Seel - Brine - Level 33
  (86, 8600, 362, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Seel - Take Down - Level 37
  (86, 8600, 36, 13, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Seel - Dive - Level 41
  (86, 8600, 291, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Seel - Aqua Tail - Level 43
  (86, 8600, 401, 13, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Seel - Ice Beam - Level 47
  (86, 8600, 58, 13, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Seel - Safeguard - Level 51
  (86, 8600, 219, 13, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Seel - Hail - Level 53
  (86, 8600, 258, 13, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Seel - Toxic - TM06
  (86, 8600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Seel - Hail - TM07
  (86, 8600, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 19),
  -- Seel - Hidden Power - TM10
  (86, 8600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Seel - Ice Beam - TM13
  (86, 8600, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 21),
  -- Seel - Blizzard - TM14
  (86, 8600, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 22),
  -- Seel - Protect - TM17
  (86, 8600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Seel - Rain Dance - TM18
  (86, 8600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Seel - Safeguard - TM20
  (86, 8600, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 25),
  -- Seel - Frustration - TM21
  (86, 8600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Seel - Return - TM27
  (86, 8600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Seel - Double Team - TM32
  (86, 8600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Seel - Facade - TM42
  (86, 8600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Seel - Rest - TM44
  (86, 8600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Seel - Attract - TM45
  (86, 8600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Seel - Thief - TM46
  (86, 8600, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 32),
  -- Seel - Round - TM48
  (86, 8600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Seel - Echoed Voice - TM49
  (86, 8600, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 34),
  -- Seel - Fling - TM56
  (86, 8600, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 35),
  -- Seel - Swagger - TM87
  (86, 8600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 36),
  -- Seel - Sleep Talk - TM88
  (86, 8600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 37),
  -- Seel - Substitute - TM90
  (86, 8600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 38),
  -- Seel - Confide - TM100
  (86, 8600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 39),
  -- Seel - Surf - HM03
  (86, 8600, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 40),
  -- Seel - Waterfall - HM05
  (86, 8600, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 41),
  -- Seel - Slam - Egg
  (86, 8600, 21, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Seel - Horn Drill - Egg
  (86, 8600, 32, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Seel - Disable - Egg
  (86, 8600, 50, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Seel - Lick - Egg
  (86, 8600, 122, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Seel - Perish Song - Egg
  (86, 8600, 195, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Seel - Sleep Talk - Egg
  (86, 8600, 214, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Seel - Encore - Egg
  (86, 8600, 227, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Seel - Iron Tail - Egg
  (86, 8600, 231, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Seel - Fake Out - Egg
  (86, 8600, 252, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Seel - Stockpile - Egg
  (86, 8600, 254, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Seel - Spit Up - Egg
  (86, 8600, 255, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Seel - Swallow - Egg
  (86, 8600, 256, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Seel - Signal Beam - Egg
  (86, 8600, 324, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Seel - Icicle Spear - Egg
  (86, 8600, 333, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Seel - Water Pulse - Egg
  (86, 8600, 352, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Seel - Entrainment - Egg
  (86, 8600, 494, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Seel - Belch - Egg
  (86, 8600, 562, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Dewgong - Headbutt - Level 1
  (87, 8700, 29, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dewgong - Growl - Level 1
  (87, 8700, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dewgong - Icy Wind - Level 1
  (87, 8700, 196, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dewgong - Signal Beam - Level 1
  (87, 8700, 324, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dewgong - Growl - Level 3
  (87, 8700, 45, 13, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Dewgong - Signal Beam - Level 7
  (87, 8700, 324, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Dewgong - Icy Wind - Level 11
  (87, 8700, 196, 13, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Dewgong - Encore - Level 13
  (87, 8700, 227, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Dewgong - Ice Shard - Level 17
  (87, 8700, 420, 13, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Dewgong - Rest - Level 21
  (87, 8700, 156, 13, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Dewgong - Aqua Ring - Level 23
  (87, 8700, 392, 13, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Dewgong - Aurora Beam - Level 27
  (87, 8700, 62, 13, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Dewgong - Aqua Jet - Level 31
  (87, 8700, 453, 13, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Dewgong - Brine - Level 33
  (87, 8700, 362, 13, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Dewgong - Sheer Cold - Level 34
  (87, 8700, 329, 13, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Dewgong - Take Down - Level 39
  (87, 8700, 36, 13, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Dewgong - Dive - Level 45
  (87, 8700, 291, 13, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Dewgong - Aqua Tail - Level 49
  (87, 8700, 401, 13, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Dewgong - Ice Beam - Level 55
  (87, 8700, 58, 13, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Dewgong - Safeguard - Level 61
  (87, 8700, 219, 13, NULL, 1, 61, NULL, NULL, NULL, 20),
  -- Dewgong - Hail - Level 65
  (87, 8700, 258, 13, NULL, 1, 65, NULL, NULL, NULL, 21),
  -- Dewgong - Toxic - TM06
  (87, 8700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Dewgong - Hail - TM07
  (87, 8700, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 23),
  -- Dewgong - Hidden Power - TM10
  (87, 8700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Dewgong - Ice Beam - TM13
  (87, 8700, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 25),
  -- Dewgong - Blizzard - TM14
  (87, 8700, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 26),
  -- Dewgong - Hyper Beam - TM15
  (87, 8700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 27),
  -- Dewgong - Protect - TM17
  (87, 8700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 28),
  -- Dewgong - Rain Dance - TM18
  (87, 8700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 29),
  -- Dewgong - Safeguard - TM20
  (87, 8700, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 30),
  -- Dewgong - Frustration - TM21
  (87, 8700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 31),
  -- Dewgong - Return - TM27
  (87, 8700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 32),
  -- Dewgong - Double Team - TM32
  (87, 8700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Dewgong - Facade - TM42
  (87, 8700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Dewgong - Rest - TM44
  (87, 8700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Dewgong - Attract - TM45
  (87, 8700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Dewgong - Thief - TM46
  (87, 8700, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 37),
  -- Dewgong - Round - TM48
  (87, 8700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Dewgong - Echoed Voice - TM49
  (87, 8700, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 39),
  -- Dewgong - Fling - TM56
  (87, 8700, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 40),
  -- Dewgong - Giga Impact - TM68
  (87, 8700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 41),
  -- Dewgong - Frost Breath - TM79
  (87, 8700, 524, 13, NULL, 2, NULL, NULL, 13002079, NULL, 42),
  -- Dewgong - Swagger - TM87
  (87, 8700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 43),
  -- Dewgong - Sleep Talk - TM88
  (87, 8700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 44),
  -- Dewgong - Substitute - TM90
  (87, 8700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 45),
  -- Dewgong - Confide - TM100
  (87, 8700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Dewgong - Surf - HM03
  (87, 8700, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 47),
  -- Dewgong - Waterfall - HM05
  (87, 8700, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 48),
  -- Grimer - Pound - Level 1
  (88, 8800, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grimer - Poison Gas - Level 1
  (88, 8800, 139, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grimer - Harden - Level 4
  (88, 8800, 106, 13, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Grimer - Mud-Slap - Level 7
  (88, 8800, 189, 13, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Grimer - Disable - Level 12
  (88, 8800, 50, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Grimer - Sludge - Level 15
  (88, 8800, 124, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Grimer - Minimize - Level 18
  (88, 8800, 107, 13, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Grimer - Mud Bomb - Level 21
  (88, 8800, 426, 13, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Grimer - Sludge Bomb - Level 26
  (88, 8800, 188, 13, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Grimer - Fling - Level 29
  (88, 8800, 374, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Grimer - Screech - Level 32
  (88, 8800, 103, 13, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Grimer - Sludge Wave - Level 37
  (88, 8800, 482, 13, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Grimer - Acid Armor - Level 40
  (88, 8800, 151, 13, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Grimer - Gunk Shot - Level 43
  (88, 8800, 441, 13, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Grimer - Belch - Level 46
  (88, 8800, 562, 13, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Grimer - Memento - Level 48
  (88, 8800, 262, 13, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Grimer - Toxic - TM06
  (88, 8800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Grimer - Venoshock - TM09
  (88, 8800, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 18),
  -- Grimer - Hidden Power - TM10
  (88, 8800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Grimer - Sunny Day - TM11
  (88, 8800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Grimer - Taunt - TM12
  (88, 8800, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 21),
  -- Grimer - Protect - TM17
  (88, 8800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Grimer - Rain Dance - TM18
  (88, 8800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Grimer - Frustration - TM21
  (88, 8800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Grimer - Thunderbolt - TM24
  (88, 8800, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 25),
  -- Grimer - Thunder - TM25
  (88, 8800, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 26),
  -- Grimer - Return - TM27
  (88, 8800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Grimer - Dig - TM28
  (88, 8800, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 28),
  -- Grimer - Shadow Ball - TM30
  (88, 8800, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 29),
  -- Grimer - Double Team - TM32
  (88, 8800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Grimer - Sludge Wave - TM34
  (88, 8800, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 31),
  -- Grimer - Flamethrower - TM35
  (88, 8800, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 32),
  -- Grimer - Sludge Bomb - TM36
  (88, 8800, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 33),
  -- Grimer - Fire Blast - TM38
  (88, 8800, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 34),
  -- Grimer - Rock Tomb - TM39
  (88, 8800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 35),
  -- Grimer - Torment - TM41
  (88, 8800, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 36),
  -- Grimer - Facade - TM42
  (88, 8800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 37),
  -- Grimer - Rest - TM44
  (88, 8800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 38),
  -- Grimer - Attract - TM45
  (88, 8800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 39),
  -- Grimer - Thief - TM46
  (88, 8800, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 40),
  -- Grimer - Round - TM48
  (88, 8800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Grimer - Fling - TM56
  (88, 8800, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 42),
  -- Grimer - Incinerate - TM59
  (88, 8800, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 43),
  -- Grimer - Explosion - TM64
  (88, 8800, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 44),
  -- Grimer - Payback - TM66
  (88, 8800, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 45),
  -- Grimer - Rock Slide - TM80
  (88, 8800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 46),
  -- Grimer - Infestation - TM83
  (88, 8800, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 47),
  -- Grimer - Poison Jab - TM84
  (88, 8800, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 48),
  -- Grimer - Swagger - TM87
  (88, 8800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 49),
  -- Grimer - Sleep Talk - TM88
  (88, 8800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 50),
  -- Grimer - Substitute - TM90
  (88, 8800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 51),
  -- Grimer - Power-Up Punch - TM98
  (88, 8800, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 52),
  -- Grimer - Confide - TM100
  (88, 8800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 53),
  -- Grimer - Strength - HM04
  (88, 8800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 54),
  -- Grimer - Haze - Egg
  (88, 8800, 114, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Grimer - Lick - Egg
  (88, 8800, 122, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Grimer - Curse - Egg
  (88, 8800, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Grimer - Scary Face - Egg
  (88, 8800, 184, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Grimer - Mean Look - Egg
  (88, 8800, 212, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Grimer - Stockpile - Egg
  (88, 8800, 254, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Grimer - Spit Up - Egg
  (88, 8800, 255, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Grimer - Swallow - Egg
  (88, 8800, 256, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Grimer - Imprison - Egg
  (88, 8800, 286, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Grimer - Shadow Punch - Egg
  (88, 8800, 325, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Grimer - Shadow Sneak - Egg
  (88, 8800, 425, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Grimer - Acid Spray - Egg
  (88, 8800, 491, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Muk - Pound - Level 1
  (89, 8900, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Muk - Harden - Level 1
  (89, 8900, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Muk - Poison Gas - Level 1
  (89, 8900, 139, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Muk - Mud-Slap - Level 1
  (89, 8900, 189, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Muk - Harden - Level 4
  (89, 8900, 106, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Muk - Mud-Slap - Level 7
  (89, 8900, 189, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Muk - Disable - Level 12
  (89, 8900, 50, 13, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Muk - Sludge - Level 15
  (89, 8900, 124, 13, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Muk - Minimize - Level 18
  (89, 8900, 107, 13, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Muk - Mud Bomb - Level 21
  (89, 8900, 426, 13, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Muk - Sludge Bomb - Level 26
  (89, 8900, 188, 13, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Muk - Fling - Level 29
  (89, 8900, 374, 13, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Muk - Screech - Level 32
  (89, 8900, 103, 13, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Muk - Sludge Wave - Level 37
  (89, 8900, 482, 13, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Muk - Acid Armor - Level 43
  (89, 8900, 151, 13, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Muk - Gunk Shot - Level 49
  (89, 8900, 441, 13, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Muk - Belch - Level 53
  (89, 8900, 562, 13, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Muk - Memento - Level 57
  (89, 8900, 262, 13, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Muk - Toxic - TM06
  (89, 8900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Muk - Venoshock - TM09
  (89, 8900, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 20),
  -- Muk - Hidden Power - TM10
  (89, 8900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Muk - Sunny Day - TM11
  (89, 8900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Muk - Taunt - TM12
  (89, 8900, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 23),
  -- Muk - Hyper Beam - TM15
  (89, 8900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Muk - Protect - TM17
  (89, 8900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Muk - Rain Dance - TM18
  (89, 8900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Muk - Frustration - TM21
  (89, 8900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Muk - Thunderbolt - TM24
  (89, 8900, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 28),
  -- Muk - Thunder - TM25
  (89, 8900, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 29),
  -- Muk - Return - TM27
  (89, 8900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Muk - Dig - TM28
  (89, 8900, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 31),
  -- Muk - Shadow Ball - TM30
  (89, 8900, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 32),
  -- Muk - Brick Break - TM31
  (89, 8900, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 33),
  -- Muk - Double Team - TM32
  (89, 8900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Muk - Sludge Wave - TM34
  (89, 8900, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 35),
  -- Muk - Flamethrower - TM35
  (89, 8900, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 36),
  -- Muk - Sludge Bomb - TM36
  (89, 8900, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 37),
  -- Muk - Fire Blast - TM38
  (89, 8900, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 38),
  -- Muk - Rock Tomb - TM39
  (89, 8900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 39),
  -- Muk - Torment - TM41
  (89, 8900, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 40),
  -- Muk - Facade - TM42
  (89, 8900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 41),
  -- Muk - Rest - TM44
  (89, 8900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 42),
  -- Muk - Attract - TM45
  (89, 8900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 43),
  -- Muk - Thief - TM46
  (89, 8900, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 44),
  -- Muk - Round - TM48
  (89, 8900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 45),
  -- Muk - Focus Blast - TM52
  (89, 8900, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 46),
  -- Muk - Fling - TM56
  (89, 8900, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 47),
  -- Muk - Incinerate - TM59
  (89, 8900, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 48),
  -- Muk - Explosion - TM64
  (89, 8900, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 49),
  -- Muk - Payback - TM66
  (89, 8900, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 50),
  -- Muk - Giga Impact - TM68
  (89, 8900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 51),
  -- Muk - Rock Slide - TM80
  (89, 8900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 52),
  -- Muk - Infestation - TM83
  (89, 8900, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 53),
  -- Muk - Poison Jab - TM84
  (89, 8900, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 54),
  -- Muk - Swagger - TM87
  (89, 8900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 55),
  -- Muk - Sleep Talk - TM88
  (89, 8900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 56),
  -- Muk - Substitute - TM90
  (89, 8900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 57),
  -- Muk - Rock Smash - TM94
  (89, 8900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 58),
  -- Muk - Dark Pulse - TM97
  (89, 8900, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 59),
  -- Muk - Power-Up Punch - TM98
  (89, 8900, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 60),
  -- Muk - Confide - TM100
  (89, 8900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 61),
  -- Muk - Strength - HM04
  (89, 8900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 62),
  -- Shellder - Tackle - Level 1
  (90, 9000, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shellder - Withdraw - Level 4
  (90, 9000, 110, 13, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Shellder - Supersonic - Level 8
  (90, 9000, 48, 13, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Shellder - Icicle Spear - Level 13
  (90, 9000, 333, 13, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Shellder - Protect - Level 16
  (90, 9000, 182, 13, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Shellder - Leer - Level 20
  (90, 9000, 43, 13, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Shellder - Clamp - Level 25
  (90, 9000, 128, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Shellder - Ice Shard - Level 28
  (90, 9000, 420, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Shellder - Razor Shell - Level 32
  (90, 9000, 534, 13, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Shellder - Aurora Beam - Level 37
  (90, 9000, 62, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Shellder - Whirlpool - Level 40
  (90, 9000, 250, 13, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Shellder - Brine - Level 44
  (90, 9000, 362, 13, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Shellder - Iron Defense - Level 49
  (90, 9000, 334, 13, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Shellder - Ice Beam - Level 52
  (90, 9000, 58, 13, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Shellder - Shell Smash - Level 56
  (90, 9000, 504, 13, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Shellder - Hydro Pump - Level 61
  (90, 9000, 56, 13, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Shellder - Toxic - TM06
  (90, 9000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Shellder - Hail - TM07
  (90, 9000, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 18),
  -- Shellder - Hidden Power - TM10
  (90, 9000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Shellder - Ice Beam - TM13
  (90, 9000, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 20),
  -- Shellder - Blizzard - TM14
  (90, 9000, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 21),
  -- Shellder - Protect - TM17
  (90, 9000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Shellder - Rain Dance - TM18
  (90, 9000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Shellder - Frustration - TM21
  (90, 9000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Shellder - Return - TM27
  (90, 9000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Shellder - Double Team - TM32
  (90, 9000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Shellder - Facade - TM42
  (90, 9000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 27),
  -- Shellder - Rest - TM44
  (90, 9000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 28),
  -- Shellder - Attract - TM45
  (90, 9000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 29),
  -- Shellder - Round - TM48
  (90, 9000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 30),
  -- Shellder - Explosion - TM64
  (90, 9000, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 31),
  -- Shellder - Payback - TM66
  (90, 9000, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 32),
  -- Shellder - Swagger - TM87
  (90, 9000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 33),
  -- Shellder - Sleep Talk - TM88
  (90, 9000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 34),
  -- Shellder - Substitute - TM90
  (90, 9000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 35),
  -- Shellder - Confide - TM100
  (90, 9000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 36),
  -- Shellder - Surf - HM03
  (90, 9000, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 37),
  -- Shellder - Take Down - Egg
  (90, 9000, 36, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Shellder - Twineedle - Egg
  (90, 9000, 41, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Shellder - Bubble Beam - Egg
  (90, 9000, 61, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shellder - Screech - Egg
  (90, 9000, 103, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shellder - Barrier - Egg
  (90, 9000, 112, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shellder - Rapid Spin - Egg
  (90, 9000, 229, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shellder - Icicle Spear - Egg
  (90, 9000, 333, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shellder - Mud Shot - Egg
  (90, 9000, 341, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shellder - Rock Blast - Egg
  (90, 9000, 350, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shellder - Water Pulse - Egg
  (90, 9000, 352, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shellder - Aqua Ring - Egg
  (90, 9000, 392, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Shellder - Avalanche - Egg
  (90, 9000, 419, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cloyster - Supersonic - Level 1
  (91, 9100, 48, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cloyster - Hydro Pump - Level 1
  (91, 9100, 56, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cloyster - Aurora Beam - Level 1
  (91, 9100, 62, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cloyster - Withdraw - Level 1
  (91, 9100, 110, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cloyster - Protect - Level 1
  (91, 9100, 182, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cloyster - Toxic Spikes - Level 1
  (91, 9100, 390, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Cloyster - Shell Smash - Level 1
  (91, 9100, 504, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Cloyster - Spike Cannon - Level 13
  (91, 9100, 131, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Cloyster - Spikes - Level 28
  (91, 9100, 191, 13, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Cloyster - Icicle Crash - Level 50
  (91, 9100, 556, 13, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Cloyster - Toxic - TM06
  (91, 9100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 11),
  -- Cloyster - Hail - TM07
  (91, 9100, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 12),
  -- Cloyster - Hidden Power - TM10
  (91, 9100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 13),
  -- Cloyster - Ice Beam - TM13
  (91, 9100, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 14),
  -- Cloyster - Blizzard - TM14
  (91, 9100, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 15),
  -- Cloyster - Hyper Beam - TM15
  (91, 9100, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 16),
  -- Cloyster - Protect - TM17
  (91, 9100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 17),
  -- Cloyster - Rain Dance - TM18
  (91, 9100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 18),
  -- Cloyster - Frustration - TM21
  (91, 9100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 19),
  -- Cloyster - Return - TM27
  (91, 9100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 20),
  -- Cloyster - Double Team - TM32
  (91, 9100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 21),
  -- Cloyster - Torment - TM41
  (91, 9100, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 22),
  -- Cloyster - Facade - TM42
  (91, 9100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 23),
  -- Cloyster - Rest - TM44
  (91, 9100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 24),
  -- Cloyster - Attract - TM45
  (91, 9100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 25),
  -- Cloyster - Round - TM48
  (91, 9100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 26),
  -- Cloyster - Explosion - TM64
  (91, 9100, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 27),
  -- Cloyster - Payback - TM66
  (91, 9100, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 28),
  -- Cloyster - Giga Impact - TM68
  (91, 9100, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 29),
  -- Cloyster - Frost Breath - TM79
  (91, 9100, 524, 13, NULL, 2, NULL, NULL, 13002079, NULL, 30),
  -- Cloyster - Poison Jab - TM84
  (91, 9100, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 31),
  -- Cloyster - Swagger - TM87
  (91, 9100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 32),
  -- Cloyster - Sleep Talk - TM88
  (91, 9100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 33),
  -- Cloyster - Substitute - TM90
  (91, 9100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 34),
  -- Cloyster - Confide - TM100
  (91, 9100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 35),
  -- Cloyster - Surf - HM03
  (91, 9100, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 36),
  -- Gastly - Hypnosis - Level 1
  (92, 9200, 95, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gastly - Lick - Level 1
  (92, 9200, 122, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gastly - Spite - Level 5
  (92, 9200, 180, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Gastly - Mean Look - Level 8
  (92, 9200, 212, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Gastly - Curse - Level 12
  (92, 9200, 174, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gastly - Night Shade - Level 15
  (92, 9200, 101, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Gastly - Confuse Ray - Level 19
  (92, 9200, 109, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Gastly - Sucker Punch - Level 22
  (92, 9200, 389, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Gastly - Payback - Level 26
  (92, 9200, 371, 13, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Gastly - Shadow Ball - Level 29
  (92, 9200, 247, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Gastly - Dream Eater - Level 33
  (92, 9200, 138, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Gastly - Dark Pulse - Level 36
  (92, 9200, 399, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Gastly - Destiny Bond - Level 40
  (92, 9200, 194, 13, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Gastly - Hex - Level 43
  (92, 9200, 506, 13, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Gastly - Nightmare - Level 47
  (92, 9200, 171, 13, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Gastly - Toxic - TM06
  (92, 9200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Gastly - Venoshock - TM09
  (92, 9200, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 17),
  -- Gastly - Hidden Power - TM10
  (92, 9200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Gastly - Sunny Day - TM11
  (92, 9200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Gastly - Taunt - TM12
  (92, 9200, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 20),
  -- Gastly - Protect - TM17
  (92, 9200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Gastly - Rain Dance - TM18
  (92, 9200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Gastly - Frustration - TM21
  (92, 9200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Gastly - Thunderbolt - TM24
  (92, 9200, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 24),
  -- Gastly - Return - TM27
  (92, 9200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Gastly - Psychic - TM29
  (92, 9200, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 26),
  -- Gastly - Shadow Ball - TM30
  (92, 9200, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 27),
  -- Gastly - Double Team - TM32
  (92, 9200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Gastly - Sludge Bomb - TM36
  (92, 9200, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 29),
  -- Gastly - Torment - TM41
  (92, 9200, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 30),
  -- Gastly - Facade - TM42
  (92, 9200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Gastly - Rest - TM44
  (92, 9200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Gastly - Attract - TM45
  (92, 9200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Gastly - Thief - TM46
  (92, 9200, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 34),
  -- Gastly - Round - TM48
  (92, 9200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Gastly - Energy Ball - TM53
  (92, 9200, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 36),
  -- Gastly - Will-O-Wisp - TM61
  (92, 9200, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 37),
  -- Gastly - Embargo - TM63
  (92, 9200, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 38),
  -- Gastly - Explosion - TM64
  (92, 9200, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 39),
  -- Gastly - Payback - TM66
  (92, 9200, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 40),
  -- Gastly - Psych Up - TM77
  (92, 9200, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 41),
  -- Gastly - Infestation - TM83
  (92, 9200, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 42),
  -- Gastly - Dream Eater - TM85
  (92, 9200, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 43),
  -- Gastly - Swagger - TM87
  (92, 9200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Gastly - Sleep Talk - TM88
  (92, 9200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Gastly - Substitute - TM90
  (92, 9200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 46),
  -- Gastly - Trick Room - TM92
  (92, 9200, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 47),
  -- Gastly - Dark Pulse - TM97
  (92, 9200, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 48),
  -- Gastly - Dazzling Gleam - TM99
  (92, 9200, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 49),
  -- Gastly - Confide - TM100
  (92, 9200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 50),
  -- Gastly - Fire Punch - Egg
  (92, 9200, 7, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Gastly - Ice Punch - Egg
  (92, 9200, 8, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Gastly - Thunder Punch - Egg
  (92, 9200, 9, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Gastly - Disable - Egg
  (92, 9200, 50, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Gastly - Haze - Egg
  (92, 9200, 114, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Gastly - Smog - Egg
  (92, 9200, 123, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Gastly - Psywave - Egg
  (92, 9200, 149, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gastly - Scary Face - Egg
  (92, 9200, 184, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Gastly - Perish Song - Egg
  (92, 9200, 195, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Gastly - Grudge - Egg
  (92, 9200, 288, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gastly - Astonish - Egg
  (92, 9200, 310, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gastly - Clear Smog - Egg
  (92, 9200, 499, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Gastly - Reflect Type - Egg
  (92, 9200, 513, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Haunter - Hypnosis - Level 1
  (93, 9300, 95, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Haunter - Lick - Level 1
  (93, 9300, 122, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Haunter - Spite - Level 1
  (93, 9300, 180, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Haunter - Spite - Level 5
  (93, 9300, 180, 13, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Haunter - Mean Look - Level 8
  (93, 9300, 212, 13, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Haunter - Curse - Level 12
  (93, 9300, 174, 13, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Haunter - Night Shade - Level 15
  (93, 9300, 101, 13, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Haunter - Confuse Ray - Level 19
  (93, 9300, 109, 13, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Haunter - Sucker Punch - Level 22
  (93, 9300, 389, 13, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Haunter - Shadow Punch - Level 25
  (93, 9300, 325, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Haunter - Payback - Level 28
  (93, 9300, 371, 13, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Haunter - Shadow Ball - Level 33
  (93, 9300, 247, 13, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Haunter - Dream Eater - Level 39
  (93, 9300, 138, 13, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Haunter - Dark Pulse - Level 44
  (93, 9300, 399, 13, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Haunter - Destiny Bond - Level 50
  (93, 9300, 194, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Haunter - Hex - Level 55
  (93, 9300, 506, 13, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Haunter - Nightmare - Level 61
  (93, 9300, 171, 13, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Haunter - Toxic - TM06
  (93, 9300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Haunter - Venoshock - TM09
  (93, 9300, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 19),
  -- Haunter - Hidden Power - TM10
  (93, 9300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Haunter - Sunny Day - TM11
  (93, 9300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Haunter - Taunt - TM12
  (93, 9300, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 22),
  -- Haunter - Protect - TM17
  (93, 9300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Haunter - Rain Dance - TM18
  (93, 9300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Haunter - Frustration - TM21
  (93, 9300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Haunter - Thunderbolt - TM24
  (93, 9300, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 26),
  -- Haunter - Return - TM27
  (93, 9300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Haunter - Psychic - TM29
  (93, 9300, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 28),
  -- Haunter - Shadow Ball - TM30
  (93, 9300, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 29),
  -- Haunter - Double Team - TM32
  (93, 9300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Haunter - Sludge Bomb - TM36
  (93, 9300, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 31),
  -- Haunter - Torment - TM41
  (93, 9300, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 32),
  -- Haunter - Facade - TM42
  (93, 9300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 33),
  -- Haunter - Rest - TM44
  (93, 9300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Haunter - Attract - TM45
  (93, 9300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 35),
  -- Haunter - Thief - TM46
  (93, 9300, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 36),
  -- Haunter - Round - TM48
  (93, 9300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Haunter - Energy Ball - TM53
  (93, 9300, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 38),
  -- Haunter - Fling - TM56
  (93, 9300, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 39),
  -- Haunter - Will-O-Wisp - TM61
  (93, 9300, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 40),
  -- Haunter - Embargo - TM63
  (93, 9300, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 41),
  -- Haunter - Explosion - TM64
  (93, 9300, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 42),
  -- Haunter - Shadow Claw - TM65
  (93, 9300, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 43),
  -- Haunter - Payback - TM66
  (93, 9300, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 44),
  -- Haunter - Psych Up - TM77
  (93, 9300, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 45),
  -- Haunter - Infestation - TM83
  (93, 9300, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 46),
  -- Haunter - Poison Jab - TM84
  (93, 9300, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 47),
  -- Haunter - Dream Eater - TM85
  (93, 9300, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 48),
  -- Haunter - Swagger - TM87
  (93, 9300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 49),
  -- Haunter - Sleep Talk - TM88
  (93, 9300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 50),
  -- Haunter - Substitute - TM90
  (93, 9300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 51),
  -- Haunter - Trick Room - TM92
  (93, 9300, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 52),
  -- Haunter - Dark Pulse - TM97
  (93, 9300, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 53),
  -- Haunter - Dazzling Gleam - TM99
  (93, 9300, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 54),
  -- Haunter - Confide - TM100
  (93, 9300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 55),
  -- Gengar - Hypnosis - Level 1
  (94, 9400, 95, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gengar - Lick - Level 1
  (94, 9400, 122, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gengar - Spite - Level 1
  (94, 9400, 180, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gengar - Spite - Level 5
  (94, 9400, 180, 13, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Gengar - Mean Look - Level 8
  (94, 9400, 212, 13, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Gengar - Curse - Level 12
  (94, 9400, 174, 13, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Gengar - Night Shade - Level 15
  (94, 9400, 101, 13, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Gengar - Confuse Ray - Level 19
  (94, 9400, 109, 13, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Gengar - Sucker Punch - Level 22
  (94, 9400, 389, 13, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Gengar - Shadow Punch - Level 25
  (94, 9400, 325, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Gengar - Payback - Level 28
  (94, 9400, 371, 13, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Gengar - Shadow Ball - Level 33
  (94, 9400, 247, 13, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Gengar - Dream Eater - Level 39
  (94, 9400, 138, 13, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Gengar - Dark Pulse - Level 44
  (94, 9400, 399, 13, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Gengar - Destiny Bond - Level 50
  (94, 9400, 194, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Gengar - Hex - Level 55
  (94, 9400, 506, 13, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Gengar - Nightmare - Level 61
  (94, 9400, 171, 13, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Gengar - Toxic - TM06
  (94, 9400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Gengar - Venoshock - TM09
  (94, 9400, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 19),
  -- Gengar - Hidden Power - TM10
  (94, 9400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Gengar - Sunny Day - TM11
  (94, 9400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Gengar - Taunt - TM12
  (94, 9400, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 22),
  -- Gengar - Hyper Beam - TM15
  (94, 9400, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Gengar - Protect - TM17
  (94, 9400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Gengar - Rain Dance - TM18
  (94, 9400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Gengar - Frustration - TM21
  (94, 9400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Gengar - Thunderbolt - TM24
  (94, 9400, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 27),
  -- Gengar - Thunder - TM25
  (94, 9400, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 28),
  -- Gengar - Return - TM27
  (94, 9400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Gengar - Psychic - TM29
  (94, 9400, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 30),
  -- Gengar - Shadow Ball - TM30
  (94, 9400, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 31),
  -- Gengar - Brick Break - TM31
  (94, 9400, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 32),
  -- Gengar - Double Team - TM32
  (94, 9400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Gengar - Sludge Bomb - TM36
  (94, 9400, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 34),
  -- Gengar - Torment - TM41
  (94, 9400, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 35),
  -- Gengar - Facade - TM42
  (94, 9400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Gengar - Rest - TM44
  (94, 9400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Gengar - Attract - TM45
  (94, 9400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Gengar - Thief - TM46
  (94, 9400, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 39),
  -- Gengar - Round - TM48
  (94, 9400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 40),
  -- Gengar - Focus Blast - TM52
  (94, 9400, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 41),
  -- Gengar - Energy Ball - TM53
  (94, 9400, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 42),
  -- Gengar - Fling - TM56
  (94, 9400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 43),
  -- Gengar - Will-O-Wisp - TM61
  (94, 9400, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 44),
  -- Gengar - Embargo - TM63
  (94, 9400, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 45),
  -- Gengar - Explosion - TM64
  (94, 9400, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 46),
  -- Gengar - Shadow Claw - TM65
  (94, 9400, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 47),
  -- Gengar - Payback - TM66
  (94, 9400, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 48),
  -- Gengar - Giga Impact - TM68
  (94, 9400, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 49),
  -- Gengar - Psych Up - TM77
  (94, 9400, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 50),
  -- Gengar - Infestation - TM83
  (94, 9400, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 51),
  -- Gengar - Poison Jab - TM84
  (94, 9400, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 52),
  -- Gengar - Dream Eater - TM85
  (94, 9400, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 53),
  -- Gengar - Swagger - TM87
  (94, 9400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 54),
  -- Gengar - Sleep Talk - TM88
  (94, 9400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 55),
  -- Gengar - Substitute - TM90
  (94, 9400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 56),
  -- Gengar - Trick Room - TM92
  (94, 9400, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 57),
  -- Gengar - Rock Smash - TM94
  (94, 9400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 58),
  -- Gengar - Dark Pulse - TM97
  (94, 9400, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 59),
  -- Gengar - Power-Up Punch - TM98
  (94, 9400, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 60),
  -- Gengar - Dazzling Gleam - TM99
  (94, 9400, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 61),
  -- Gengar - Confide - TM100
  (94, 9400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 62),
  -- Gengar - Strength - HM04
  (94, 9400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 63),
  -- Onix - Bind - Level 1
  (95, 9500, 20, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Onix - Tackle - Level 1
  (95, 9500, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Onix - Harden - Level 1
  (95, 9500, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Onix - Mud Sport - Level 1
  (95, 9500, 300, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Onix - Curse - Level 4
  (95, 9500, 174, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Onix - Rock Throw - Level 7
  (95, 9500, 88, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Onix - Rock Tomb - Level 10
  (95, 9500, 317, 13, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Onix - Rage - Level 13
  (95, 9500, 99, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Onix - Stealth Rock - Level 16
  (95, 9500, 446, 13, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Onix - Rock Polish - Level 19
  (95, 9500, 397, 13, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Onix - Gyro Ball - Level 20
  (95, 9500, 360, 13, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Onix - Smack Down - Level 22
  (95, 9500, 479, 13, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Onix - Dragon Breath - Level 25
  (95, 9500, 225, 13, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Onix - Slam - Level 28
  (95, 9500, 21, 13, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Onix - Screech - Level 31
  (95, 9500, 103, 13, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Onix - Rock Slide - Level 34
  (95, 9500, 157, 13, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Onix - Sand Tomb - Level 37
  (95, 9500, 328, 13, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Onix - Iron Tail - Level 40
  (95, 9500, 231, 13, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Onix - Dig - Level 43
  (95, 9500, 91, 13, NULL, 1, 43, NULL, NULL, NULL, 19),
  -- Onix - Stone Edge - Level 46
  (95, 9500, 444, 13, NULL, 1, 46, NULL, NULL, NULL, 20),
  -- Onix - Double-Edge - Level 49
  (95, 9500, 38, 13, NULL, 1, 49, NULL, NULL, NULL, 21),
  -- Onix - Sandstorm - Level 52
  (95, 9500, 201, 13, NULL, 1, 52, NULL, NULL, NULL, 22),
  -- Onix - Roar - TM05
  (95, 9500, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 23),
  -- Onix - Toxic - TM06
  (95, 9500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 24),
  -- Onix - Hidden Power - TM10
  (95, 9500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 25),
  -- Onix - Sunny Day - TM11
  (95, 9500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 26),
  -- Onix - Taunt - TM12
  (95, 9500, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 27),
  -- Onix - Protect - TM17
  (95, 9500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 28),
  -- Onix - Frustration - TM21
  (95, 9500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Onix - Smack Down - TM23
  (95, 9500, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 30),
  -- Onix - Earthquake - TM26
  (95, 9500, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 31),
  -- Onix - Return - TM27
  (95, 9500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 32),
  -- Onix - Dig - TM28
  (95, 9500, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 33),
  -- Onix - Double Team - TM32
  (95, 9500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Onix - Sandstorm - TM37
  (95, 9500, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 35),
  -- Onix - Rock Tomb - TM39
  (95, 9500, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 36),
  -- Onix - Torment - TM41
  (95, 9500, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 37),
  -- Onix - Facade - TM42
  (95, 9500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 38),
  -- Onix - Rest - TM44
  (95, 9500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 39),
  -- Onix - Attract - TM45
  (95, 9500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 40),
  -- Onix - Round - TM48
  (95, 9500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Onix - Explosion - TM64
  (95, 9500, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 42),
  -- Onix - Payback - TM66
  (95, 9500, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 43),
  -- Onix - Rock Polish - TM69
  (95, 9500, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 44),
  -- Onix - Stone Edge - TM71
  (95, 9500, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 45),
  -- Onix - Gyro Ball - TM74
  (95, 9500, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 46),
  -- Onix - Psych Up - TM77
  (95, 9500, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 47),
  -- Onix - Bulldoze - TM78
  (95, 9500, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 48),
  -- Onix - Rock Slide - TM80
  (95, 9500, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 49),
  -- Onix - Dragon Tail - TM82
  (95, 9500, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 50),
  -- Onix - Swagger - TM87
  (95, 9500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 51),
  -- Onix - Sleep Talk - TM88
  (95, 9500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 52),
  -- Onix - Substitute - TM90
  (95, 9500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 53),
  -- Onix - Flash Cannon - TM91
  (95, 9500, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 54),
  -- Onix - Rock Smash - TM94
  (95, 9500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 55),
  -- Onix - Nature Power - TM96
  (95, 9500, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 56),
  -- Onix - Confide - TM100
  (95, 9500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 57),
  -- Onix - Strength - HM04
  (95, 9500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 58),
  -- Onix - Defense Curl - Egg
  (95, 9500, 111, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Onix - Flail - Egg
  (95, 9500, 175, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Onix - Rollout - Egg
  (95, 9500, 205, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Onix - Block - Egg
  (95, 9500, 335, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Onix - Rock Blast - Egg
  (95, 9500, 350, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Onix - Rock Climb - Egg
  (95, 9500, 431, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Onix - Stealth Rock - Egg
  (95, 9500, 446, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Onix - Heavy Slam - Egg
  (95, 9500, 484, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Onix - Rototiller - Egg
  (95, 9500, 563, 13, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Drowzee - Pound - Level 1
  (96, 9600, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drowzee - Hypnosis - Level 1
  (96, 9600, 95, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drowzee - Disable - Level 5
  (96, 9600, 50, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Drowzee - Confusion - Level 9
  (96, 9600, 93, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Drowzee - Headbutt - Level 13
  (96, 9600, 29, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Drowzee - Poison Gas - Level 17
  (96, 9600, 139, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Drowzee - Meditate - Level 21
  (96, 9600, 96, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Drowzee - Psybeam - Level 25
  (96, 9600, 60, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Drowzee - Headbutt - Level 29
  (96, 9600, 29, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Drowzee - Psych Up - Level 33
  (96, 9600, 244, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Drowzee - Synchronoise - Level 37
  (96, 9600, 485, 13, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Drowzee - Zen Headbutt - Level 41
  (96, 9600, 428, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Drowzee - Swagger - Level 45
  (96, 9600, 207, 13, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Drowzee - Psychic - Level 49
  (96, 9600, 94, 13, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Drowzee - Nasty Plot - Level 53
  (96, 9600, 417, 13, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Drowzee - Psyshock - Level 57
  (96, 9600, 473, 13, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Drowzee - Future Sight - Level 61
  (96, 9600, 248, 13, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Drowzee - Psyshock - TM03
  (96, 9600, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 18),
  -- Drowzee - Calm Mind - TM04
  (96, 9600, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 19),
  -- Drowzee - Toxic - TM06
  (96, 9600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Drowzee - Hidden Power - TM10
  (96, 9600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Drowzee - Sunny Day - TM11
  (96, 9600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Drowzee - Taunt - TM12
  (96, 9600, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 23),
  -- Drowzee - Light Screen - TM16
  (96, 9600, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 24),
  -- Drowzee - Protect - TM17
  (96, 9600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Drowzee - Rain Dance - TM18
  (96, 9600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Drowzee - Safeguard - TM20
  (96, 9600, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 27),
  -- Drowzee - Frustration - TM21
  (96, 9600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Drowzee - Return - TM27
  (96, 9600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Drowzee - Psychic - TM29
  (96, 9600, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 30),
  -- Drowzee - Shadow Ball - TM30
  (96, 9600, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 31),
  -- Drowzee - Brick Break - TM31
  (96, 9600, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 32),
  -- Drowzee - Double Team - TM32
  (96, 9600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Drowzee - Reflect - TM33
  (96, 9600, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 34),
  -- Drowzee - Torment - TM41
  (96, 9600, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 35),
  -- Drowzee - Facade - TM42
  (96, 9600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Drowzee - Rest - TM44
  (96, 9600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Drowzee - Attract - TM45
  (96, 9600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Drowzee - Thief - TM46
  (96, 9600, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 39),
  -- Drowzee - Low Sweep - TM47
  (96, 9600, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 40),
  -- Drowzee - Round - TM48
  (96, 9600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Drowzee - Fling - TM56
  (96, 9600, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 42),
  -- Drowzee - Flash - TM70
  (96, 9600, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 43),
  -- Drowzee - Thunder Wave - TM73
  (96, 9600, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 44),
  -- Drowzee - Psych Up - TM77
  (96, 9600, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 45),
  -- Drowzee - Dream Eater - TM85
  (96, 9600, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 46),
  -- Drowzee - Grass Knot - TM86
  (96, 9600, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 47),
  -- Drowzee - Swagger - TM87
  (96, 9600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Drowzee - Sleep Talk - TM88
  (96, 9600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Drowzee - Substitute - TM90
  (96, 9600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 50),
  -- Drowzee - Trick Room - TM92
  (96, 9600, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 51),
  -- Drowzee - Power-Up Punch - TM98
  (96, 9600, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 52),
  -- Drowzee - Dazzling Gleam - TM99
  (96, 9600, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 53),
  -- Drowzee - Confide - TM100
  (96, 9600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 54),
  -- Drowzee - Fire Punch - Egg
  (96, 9600, 7, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Drowzee - Ice Punch - Egg
  (96, 9600, 8, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Drowzee - Thunder Punch - Egg
  (96, 9600, 9, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Drowzee - Barrier - Egg
  (96, 9600, 112, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Drowzee - Flatter - Egg
  (96, 9600, 260, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Drowzee - Role Play - Egg
  (96, 9600, 272, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Drowzee - Assist - Egg
  (96, 9600, 274, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Drowzee - Skill Swap - Egg
  (96, 9600, 285, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Drowzee - Secret Power - Egg
  (96, 9600, 290, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Drowzee - Guard Swap - Egg
  (96, 9600, 385, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Drowzee - Nasty Plot - Egg
  (96, 9600, 417, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Drowzee - Psycho Cut - Egg
  (96, 9600, 427, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Hypno - Pound - Level 1
  (97, 9700, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hypno - Disable - Level 1
  (97, 9700, 50, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hypno - Confusion - Level 1
  (97, 9700, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hypno - Hypnosis - Level 1
  (97, 9700, 95, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hypno - Nightmare - Level 1
  (97, 9700, 171, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hypno - Future Sight - Level 1
  (97, 9700, 248, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Hypno - Switcheroo - Level 1
  (97, 9700, 415, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Hypno - Nasty Plot - Level 1
  (97, 9700, 417, 13, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Hypno - Disable - Level 5
  (97, 9700, 50, 13, NULL, 1, 5, NULL, NULL, NULL, 9),
  -- Hypno - Confusion - Level 9
  (97, 9700, 93, 13, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Hypno - Headbutt - Level 13
  (97, 9700, 29, 13, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Hypno - Poison Gas - Level 17
  (97, 9700, 139, 13, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Hypno - Meditate - Level 21
  (97, 9700, 96, 13, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Hypno - Psybeam - Level 25
  (97, 9700, 60, 13, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Hypno - Headbutt - Level 29
  (97, 9700, 29, 13, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Hypno - Psych Up - Level 33
  (97, 9700, 244, 13, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Hypno - Synchronoise - Level 37
  (97, 9700, 485, 13, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Hypno - Zen Headbutt - Level 41
  (97, 9700, 428, 13, NULL, 1, 41, NULL, NULL, NULL, 18),
  -- Hypno - Swagger - Level 45
  (97, 9700, 207, 13, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Hypno - Psychic - Level 49
  (97, 9700, 94, 13, NULL, 1, 49, NULL, NULL, NULL, 20),
  -- Hypno - Nasty Plot - Level 53
  (97, 9700, 417, 13, NULL, 1, 53, NULL, NULL, NULL, 21),
  -- Hypno - Psyshock - Level 57
  (97, 9700, 473, 13, NULL, 1, 57, NULL, NULL, NULL, 22),
  -- Hypno - Future Sight - Level 61
  (97, 9700, 248, 13, NULL, 1, 61, NULL, NULL, NULL, 23),
  -- Hypno - Psyshock - TM03
  (97, 9700, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 24),
  -- Hypno - Calm Mind - TM04
  (97, 9700, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 25),
  -- Hypno - Toxic - TM06
  (97, 9700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 26),
  -- Hypno - Hidden Power - TM10
  (97, 9700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 27),
  -- Hypno - Sunny Day - TM11
  (97, 9700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 28),
  -- Hypno - Taunt - TM12
  (97, 9700, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 29),
  -- Hypno - Hyper Beam - TM15
  (97, 9700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 30),
  -- Hypno - Light Screen - TM16
  (97, 9700, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 31),
  -- Hypno - Protect - TM17
  (97, 9700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 32),
  -- Hypno - Rain Dance - TM18
  (97, 9700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 33),
  -- Hypno - Safeguard - TM20
  (97, 9700, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 34),
  -- Hypno - Frustration - TM21
  (97, 9700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 35),
  -- Hypno - Return - TM27
  (97, 9700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 36),
  -- Hypno - Psychic - TM29
  (97, 9700, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 37),
  -- Hypno - Shadow Ball - TM30
  (97, 9700, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 38),
  -- Hypno - Brick Break - TM31
  (97, 9700, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 39),
  -- Hypno - Double Team - TM32
  (97, 9700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 40),
  -- Hypno - Reflect - TM33
  (97, 9700, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 41),
  -- Hypno - Torment - TM41
  (97, 9700, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 42),
  -- Hypno - Facade - TM42
  (97, 9700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 43),
  -- Hypno - Rest - TM44
  (97, 9700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 44),
  -- Hypno - Attract - TM45
  (97, 9700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 45),
  -- Hypno - Thief - TM46
  (97, 9700, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 46),
  -- Hypno - Low Sweep - TM47
  (97, 9700, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 47),
  -- Hypno - Round - TM48
  (97, 9700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 48),
  -- Hypno - Focus Blast - TM52
  (97, 9700, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 49),
  -- Hypno - Fling - TM56
  (97, 9700, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 50),
  -- Hypno - Giga Impact - TM68
  (97, 9700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 51),
  -- Hypno - Flash - TM70
  (97, 9700, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 52),
  -- Hypno - Thunder Wave - TM73
  (97, 9700, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 53),
  -- Hypno - Psych Up - TM77
  (97, 9700, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 54),
  -- Hypno - Dream Eater - TM85
  (97, 9700, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 55),
  -- Hypno - Grass Knot - TM86
  (97, 9700, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 56),
  -- Hypno - Swagger - TM87
  (97, 9700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 57),
  -- Hypno - Sleep Talk - TM88
  (97, 9700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 58),
  -- Hypno - Substitute - TM90
  (97, 9700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 59),
  -- Hypno - Trick Room - TM92
  (97, 9700, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 60),
  -- Hypno - Power-Up Punch - TM98
  (97, 9700, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 61),
  -- Hypno - Dazzling Gleam - TM99
  (97, 9700, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 62),
  -- Hypno - Confide - TM100
  (97, 9700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 63),
  -- Krabby - Bubble - Level 1
  (98, 9800, 145, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krabby - Mud Sport - Level 1
  (98, 9800, 300, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Krabby - Vise Grip - Level 5
  (98, 9800, 11, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Krabby - Leer - Level 9
  (98, 9800, 43, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Krabby - Harden - Level 11
  (98, 9800, 106, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Krabby - Bubble Beam - Level 15
  (98, 9800, 61, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Krabby - Mud Shot - Level 19
  (98, 9800, 341, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Krabby - Metal Claw - Level 21
  (98, 9800, 232, 13, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Krabby - Stomp - Level 25
  (98, 9800, 23, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Krabby - Protect - Level 29
  (98, 9800, 182, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Krabby - Guillotine - Level 31
  (98, 9800, 12, 13, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Krabby - Slam - Level 35
  (98, 9800, 21, 13, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Krabby - Brine - Level 39
  (98, 9800, 362, 13, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Krabby - Crabhammer - Level 41
  (98, 9800, 152, 13, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Krabby - Flail - Level 45
  (98, 9800, 175, 13, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Krabby - Hone Claws - TM01
  (98, 9800, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 16),
  -- Krabby - Toxic - TM06
  (98, 9800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Krabby - Hail - TM07
  (98, 9800, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 18),
  -- Krabby - Hidden Power - TM10
  (98, 9800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Krabby - Ice Beam - TM13
  (98, 9800, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 20),
  -- Krabby - Blizzard - TM14
  (98, 9800, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 21),
  -- Krabby - Protect - TM17
  (98, 9800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Krabby - Rain Dance - TM18
  (98, 9800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Krabby - Frustration - TM21
  (98, 9800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Krabby - Return - TM27
  (98, 9800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Krabby - Dig - TM28
  (98, 9800, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 26),
  -- Krabby - Brick Break - TM31
  (98, 9800, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 27),
  -- Krabby - Double Team - TM32
  (98, 9800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Krabby - Rock Tomb - TM39
  (98, 9800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 29),
  -- Krabby - Facade - TM42
  (98, 9800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Krabby - Rest - TM44
  (98, 9800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Krabby - Attract - TM45
  (98, 9800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Krabby - Thief - TM46
  (98, 9800, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 33),
  -- Krabby - Round - TM48
  (98, 9800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Krabby - False Swipe - TM54
  (98, 9800, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 35),
  -- Krabby - Scald - TM55
  (98, 9800, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 36),
  -- Krabby - Fling - TM56
  (98, 9800, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 37),
  -- Krabby - Swords Dance - TM75
  (98, 9800, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 38),
  -- Krabby - Rock Slide - TM80
  (98, 9800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 39),
  -- Krabby - X-Scissor - TM81
  (98, 9800, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 40),
  -- Krabby - Swagger - TM87
  (98, 9800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 41),
  -- Krabby - Sleep Talk - TM88
  (98, 9800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 42),
  -- Krabby - Substitute - TM90
  (98, 9800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 43),
  -- Krabby - Rock Smash - TM94
  (98, 9800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 44),
  -- Krabby - Confide - TM100
  (98, 9800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 45),
  -- Krabby - Cut - HM01
  (98, 9800, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 46),
  -- Krabby - Surf - HM03
  (98, 9800, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 47),
  -- Krabby - Strength - HM04
  (98, 9800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 48),
  -- Krabby - Slam - Egg
  (98, 9800, 21, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Krabby - Agility - Egg
  (98, 9800, 97, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Krabby - Haze - Egg
  (98, 9800, 114, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Krabby - Bide - Egg
  (98, 9800, 117, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Krabby - Amnesia - Egg
  (98, 9800, 133, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Krabby - Flail - Egg
  (98, 9800, 175, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Krabby - Endure - Egg
  (98, 9800, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Krabby - Ancient Power - Egg
  (98, 9800, 246, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Krabby - Knock Off - Egg
  (98, 9800, 282, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Krabby - Tickle - Egg
  (98, 9800, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Krabby - Chip Away - Egg
  (98, 9800, 498, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Krabby - Ally Switch - Egg
  (98, 9800, 502, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Kingler - Vise Grip - Level 1
  (99, 9900, 11, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kingler - Leer - Level 1
  (99, 9900, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kingler - Bubble - Level 1
  (99, 9900, 145, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kingler - Mud Sport - Level 1
  (99, 9900, 300, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kingler - Wide Guard - Level 1
  (99, 9900, 469, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kingler - Vise Grip - Level 5
  (99, 9900, 11, 13, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Kingler - Leer - Level 9
  (99, 9900, 43, 13, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Kingler - Harden - Level 11
  (99, 9900, 106, 13, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Kingler - Bubble Beam - Level 15
  (99, 9900, 61, 13, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Kingler - Mud Shot - Level 19
  (99, 9900, 341, 13, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Kingler - Metal Claw - Level 21
  (99, 9900, 232, 13, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Kingler - Stomp - Level 25
  (99, 9900, 23, 13, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Kingler - Protect - Level 32
  (99, 9900, 182, 13, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Kingler - Guillotine - Level 37
  (99, 9900, 12, 13, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Kingler - Slam - Level 44
  (99, 9900, 21, 13, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Kingler - Brine - Level 51
  (99, 9900, 362, 13, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Kingler - Crabhammer - Level 56
  (99, 9900, 152, 13, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Kingler - Flail - Level 63
  (99, 9900, 175, 13, NULL, 1, 63, NULL, NULL, NULL, 18),
  -- Kingler - Hone Claws - TM01
  (99, 9900, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 19),
  -- Kingler - Toxic - TM06
  (99, 9900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Kingler - Hail - TM07
  (99, 9900, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 21),
  -- Kingler - Hidden Power - TM10
  (99, 9900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Kingler - Ice Beam - TM13
  (99, 9900, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 23),
  -- Kingler - Blizzard - TM14
  (99, 9900, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 24),
  -- Kingler - Hyper Beam - TM15
  (99, 9900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Kingler - Protect - TM17
  (99, 9900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Kingler - Rain Dance - TM18
  (99, 9900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Kingler - Frustration - TM21
  (99, 9900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Kingler - Return - TM27
  (99, 9900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Kingler - Dig - TM28
  (99, 9900, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 30),
  -- Kingler - Brick Break - TM31
  (99, 9900, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 31),
  -- Kingler - Double Team - TM32
  (99, 9900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Kingler - Rock Tomb - TM39
  (99, 9900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 33),
  -- Kingler - Facade - TM42
  (99, 9900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Kingler - Rest - TM44
  (99, 9900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Kingler - Attract - TM45
  (99, 9900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Kingler - Thief - TM46
  (99, 9900, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 37),
  -- Kingler - Round - TM48
  (99, 9900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Kingler - False Swipe - TM54
  (99, 9900, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 39),
  -- Kingler - Scald - TM55
  (99, 9900, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 40),
  -- Kingler - Fling - TM56
  (99, 9900, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 41),
  -- Kingler - Quash - TM60
  (99, 9900, 511, 13, NULL, 2, NULL, NULL, 13002060, NULL, 42),
  -- Kingler - Giga Impact - TM68
  (99, 9900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 43),
  -- Kingler - Swords Dance - TM75
  (99, 9900, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 44),
  -- Kingler - Rock Slide - TM80
  (99, 9900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 45),
  -- Kingler - X-Scissor - TM81
  (99, 9900, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 46),
  -- Kingler - Swagger - TM87
  (99, 9900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Kingler - Sleep Talk - TM88
  (99, 9900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Kingler - Substitute - TM90
  (99, 9900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 49),
  -- Kingler - Rock Smash - TM94
  (99, 9900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 50),
  -- Kingler - Confide - TM100
  (99, 9900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 51),
  -- Kingler - Cut - HM01
  (99, 9900, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 52),
  -- Kingler - Surf - HM03
  (99, 9900, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 53),
  -- Kingler - Strength - HM04
  (99, 9900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 54),
  -- Voltorb - Charge - Level 1
  (100, 10000, 268, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Voltorb - Tackle - Level 5
  (100, 10000, 33, 13, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Voltorb - Sonic Boom - Level 8
  (100, 10000, 49, 13, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Voltorb - Eerie Impulse - Level 10
  (100, 10000, 598, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Voltorb - Spark - Level 12
  (100, 10000, 209, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Voltorb - Rollout - Level 15
  (100, 10000, 205, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Voltorb - Screech - Level 19
  (100, 10000, 103, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Voltorb - Charge Beam - Level 22
  (100, 10000, 451, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Voltorb - Light Screen - Level 26
  (100, 10000, 113, 13, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Voltorb - Electro Ball - Level 29
  (100, 10000, 486, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Voltorb - Self-Destruct - Level 33
  (100, 10000, 120, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Voltorb - Swift - Level 36
  (100, 10000, 129, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Voltorb - Magnet Rise - Level 40
  (100, 10000, 393, 13, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Voltorb - Gyro Ball - Level 43
  (100, 10000, 360, 13, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Voltorb - Explosion - Level 47
  (100, 10000, 153, 13, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Voltorb - Mirror Coat - Level 50
  (100, 10000, 243, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Voltorb - Toxic - TM06
  (100, 10000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Voltorb - Hidden Power - TM10
  (100, 10000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Voltorb - Taunt - TM12
  (100, 10000, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 19),
  -- Voltorb - Light Screen - TM16
  (100, 10000, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 20),
  -- Voltorb - Protect - TM17
  (100, 10000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Voltorb - Rain Dance - TM18
  (100, 10000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Voltorb - Frustration - TM21
  (100, 10000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Voltorb - Thunderbolt - TM24
  (100, 10000, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 24),
  -- Voltorb - Thunder - TM25
  (100, 10000, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 25),
  -- Voltorb - Return - TM27
  (100, 10000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Voltorb - Double Team - TM32
  (100, 10000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Voltorb - Torment - TM41
  (100, 10000, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 28),
  -- Voltorb - Facade - TM42
  (100, 10000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Voltorb - Rest - TM44
  (100, 10000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Voltorb - Thief - TM46
  (100, 10000, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 31),
  -- Voltorb - Round - TM48
  (100, 10000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 32),
  -- Voltorb - Charge Beam - TM57
  (100, 10000, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 33),
  -- Voltorb - Explosion - TM64
  (100, 10000, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 34),
  -- Voltorb - Flash - TM70
  (100, 10000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 35),
  -- Voltorb - Volt Switch - TM72
  (100, 10000, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 36),
  -- Voltorb - Thunder Wave - TM73
  (100, 10000, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 37),
  -- Voltorb - Gyro Ball - TM74
  (100, 10000, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 38),
  -- Voltorb - Swagger - TM87
  (100, 10000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 39),
  -- Voltorb - Sleep Talk - TM88
  (100, 10000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 40),
  -- Voltorb - Substitute - TM90
  (100, 10000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 41),
  -- Voltorb - Wild Charge - TM93
  (100, 10000, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 42),
  -- Voltorb - Confide - TM100
  (100, 10000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 43);
