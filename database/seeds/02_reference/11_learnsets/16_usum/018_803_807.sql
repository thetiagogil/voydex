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
-- Ultra Sun / Ultra Moon learnsets for default forms, species 803-807.
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
  -- Poipole - Growl - Level 1
  (803, 80300, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poipole - Acid - Level 1
  (803, 80300, 51, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poipole - Peck - Level 1
  (803, 80300, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poipole - Helping Hand - Level 1
  (803, 80300, 270, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Poipole - Dragon Pulse - Level 1
  (803, 80300, 406, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Poipole - Fury Attack - Level 7
  (803, 80300, 31, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Poipole - Venoshock - Level 13
  (803, 80300, 474, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Poipole - Charm - Level 19
  (803, 80300, 204, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Poipole - Venom Drench - Level 23
  (803, 80300, 599, 16, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Poipole - Nasty Plot - Level 31
  (803, 80300, 417, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Poipole - Poison Jab - Level 37
  (803, 80300, 398, 16, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Poipole - Toxic - Level 41
  (803, 80300, 92, 16, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Poipole - Fell Stinger - Level 47
  (803, 80300, 565, 16, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Poipole - Toxic - TM06
  (803, 80300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Poipole - Venoshock - TM09
  (803, 80300, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 15),
  -- Poipole - Hidden Power - TM10
  (803, 80300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Poipole - Protect - TM17
  (803, 80300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 17),
  -- Poipole - Frustration - TM21
  (803, 80300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 18),
  -- Poipole - Return - TM27
  (803, 80300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 19),
  -- Poipole - Sludge Wave - TM34
  (803, 80300, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 20),
  -- Poipole - Sludge Bomb - TM36
  (803, 80300, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 21),
  -- Poipole - Facade - TM42
  (803, 80300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 22),
  -- Poipole - Rest - TM44
  (803, 80300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 23),
  -- Poipole - Round - TM48
  (803, 80300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 24),
  -- Poipole - Echoed Voice - TM49
  (803, 80300, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 25),
  -- Poipole - Poison Jab - TM84
  (803, 80300, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 26),
  -- Poipole - Sleep Talk - TM88
  (803, 80300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 27),
  -- Poipole - Substitute - TM90
  (803, 80300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 28),
  -- Poipole - Confide - TM100
  (803, 80300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 29),
  -- Poipole - Snore - Tutor
  (803, 80300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 30),
  -- Poipole - Iron Tail - Tutor
  (803, 80300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 31),
  -- Poipole - Uproar - Tutor
  (803, 80300, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 32),
  -- Poipole - Helping Hand - Tutor
  (803, 80300, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 33),
  -- Poipole - Snatch - Tutor
  (803, 80300, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 34),
  -- Poipole - Signal Beam - Tutor
  (803, 80300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 35),
  -- Poipole - Covet - Tutor
  (803, 80300, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 36),
  -- Poipole - Gastro Acid - Tutor
  (803, 80300, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 37),
  -- Poipole - Dragon Pulse - Tutor
  (803, 80300, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 38),
  -- Poipole - Gunk Shot - Tutor
  (803, 80300, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 39),

  -- Naganadel - Growl - Level 1
  (804, 80400, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Naganadel - Acid - Level 1
  (804, 80400, 51, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Naganadel - Peck - Level 1
  (804, 80400, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Naganadel - Helping Hand - Level 1
  (804, 80400, 270, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Naganadel - Air Cutter - Level 1
  (804, 80400, 314, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Naganadel - Dragon Pulse - Level 1
  (804, 80400, 406, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Naganadel - Fury Attack - Level 7
  (804, 80400, 31, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Naganadel - Venoshock - Level 13
  (804, 80400, 474, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Naganadel - Charm - Level 19
  (804, 80400, 204, 16, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Naganadel - Venom Drench - Level 23
  (804, 80400, 599, 16, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Naganadel - Nasty Plot - Level 31
  (804, 80400, 417, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Naganadel - Poison Jab - Level 37
  (804, 80400, 398, 16, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Naganadel - Toxic - Level 41
  (804, 80400, 92, 16, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Naganadel - Fell Stinger - Level 47
  (804, 80400, 565, 16, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Naganadel - Air Slash - Level 53
  (804, 80400, 403, 16, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Naganadel - Dragon Pulse - Level 61
  (804, 80400, 406, 16, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Naganadel - Dragon Claw - TM02
  (804, 80400, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 17),
  -- Naganadel - Toxic - TM06
  (804, 80400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Naganadel - Venoshock - TM09
  (804, 80400, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 19),
  -- Naganadel - Hidden Power - TM10
  (804, 80400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Naganadel - Hyper Beam - TM15
  (804, 80400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Naganadel - Protect - TM17
  (804, 80400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Naganadel - Frustration - TM21
  (804, 80400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Naganadel - Thunderbolt - TM24
  (804, 80400, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 24),
  -- Naganadel - Return - TM27
  (804, 80400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Naganadel - Leech Life - TM28
  (804, 80400, 141, 16, NULL, 2, NULL, NULL, 16002028, NULL, 26),
  -- Naganadel - Double Team - TM32
  (804, 80400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Naganadel - Sludge Wave - TM34
  (804, 80400, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 28),
  -- Naganadel - Flamethrower - TM35
  (804, 80400, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 29),
  -- Naganadel - Sludge Bomb - TM36
  (804, 80400, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 30),
  -- Naganadel - Fire Blast - TM38
  (804, 80400, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 31),
  -- Naganadel - Aerial Ace - TM40
  (804, 80400, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Naganadel - Facade - TM42
  (804, 80400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Naganadel - Rest - TM44
  (804, 80400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Naganadel - Thief - TM46
  (804, 80400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 35),
  -- Naganadel - Round - TM48
  (804, 80400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Naganadel - Echoed Voice - TM49
  (804, 80400, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 37),
  -- Naganadel - Sky Drop - TM58
  (804, 80400, 507, 16, NULL, 2, NULL, NULL, 16002058, NULL, 38),
  -- Naganadel - Acrobatics - TM62
  (804, 80400, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 39),
  -- Naganadel - Shadow Claw - TM65
  (804, 80400, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 40),
  -- Naganadel - Smart Strike - TM67
  (804, 80400, 684, 16, NULL, 2, NULL, NULL, 16002067, NULL, 41),
  -- Naganadel - Fly - TM76
  (804, 80400, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 42),
  -- Naganadel - X-Scissor - TM81
  (804, 80400, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 43),
  -- Naganadel - Dragon Tail - TM82
  (804, 80400, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 44),
  -- Naganadel - Poison Jab - TM84
  (804, 80400, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 45),
  -- Naganadel - Sleep Talk - TM88
  (804, 80400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Naganadel - U-turn - TM89
  (804, 80400, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 47),
  -- Naganadel - Substitute - TM90
  (804, 80400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Naganadel - Snarl - TM95
  (804, 80400, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 49),
  -- Naganadel - Dark Pulse - TM97
  (804, 80400, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 50),
  -- Naganadel - Confide - TM100
  (804, 80400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Naganadel - Sky Attack - Tutor
  (804, 80400, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Naganadel - Snore - Tutor
  (804, 80400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Naganadel - Outrage - Tutor
  (804, 80400, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Naganadel - Iron Tail - Tutor
  (804, 80400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Naganadel - Uproar - Tutor
  (804, 80400, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Naganadel - Heat Wave - Tutor
  (804, 80400, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Naganadel - Helping Hand - Tutor
  (804, 80400, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Naganadel - Snatch - Tutor
  (804, 80400, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Naganadel - Signal Beam - Tutor
  (804, 80400, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Naganadel - Shock Wave - Tutor
  (804, 80400, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Naganadel - Tailwind - Tutor
  (804, 80400, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Naganadel - Gastro Acid - Tutor
  (804, 80400, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Naganadel - Dragon Pulse - Tutor
  (804, 80400, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Naganadel - Draco Meteor - Tutor
  (804, 80400, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Naganadel - Gunk Shot - Tutor
  (804, 80400, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Naganadel - Ally Switch - Tutor
  (804, 80400, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Naganadel - Laser Focus - Tutor
  (804, 80400, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Naganadel - Throat Chop - Tutor
  (804, 80400, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Naganadel - Air Cutter - Evolution
  (804, 80400, 314, 16, NULL, 7, NULL, NULL, NULL, NULL, 70),

  -- Stakataka - Tackle - Level 1
  (805, 80500, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stakataka - Protect - Level 1
  (805, 80500, 182, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stakataka - Rock Slide - Level 5
  (805, 80500, 157, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Stakataka - Stealth Rock - Level 11
  (805, 80500, 446, 16, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Stakataka - Bide - Level 17
  (805, 80500, 117, 16, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Stakataka - Take Down - Level 19
  (805, 80500, 36, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Stakataka - Rock Throw - Level 23
  (805, 80500, 88, 16, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Stakataka - Autotomize - Level 31
  (805, 80500, 475, 16, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Stakataka - Iron Defense - Level 37
  (805, 80500, 334, 16, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Stakataka - Iron Head - Level 43
  (805, 80500, 442, 16, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Stakataka - Rock Blast - Level 47
  (805, 80500, 350, 16, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Stakataka - Wide Guard - Level 53
  (805, 80500, 469, 16, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Stakataka - Double-Edge - Level 61
  (805, 80500, 38, 16, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Stakataka - Toxic - TM06
  (805, 80500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Stakataka - Hidden Power - TM10
  (805, 80500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 15),
  -- Stakataka - Light Screen - TM16
  (805, 80500, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 16),
  -- Stakataka - Protect - TM17
  (805, 80500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 17),
  -- Stakataka - Safeguard - TM20
  (805, 80500, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 18),
  -- Stakataka - Frustration - TM21
  (805, 80500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 19),
  -- Stakataka - Smack Down - TM23
  (805, 80500, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 20),
  -- Stakataka - Earthquake - TM26
  (805, 80500, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 21),
  -- Stakataka - Return - TM27
  (805, 80500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 22),
  -- Stakataka - Reflect - TM33
  (805, 80500, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 23),
  -- Stakataka - Sandstorm - TM37
  (805, 80500, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 24),
  -- Stakataka - Rock Tomb - TM39
  (805, 80500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 25),
  -- Stakataka - Facade - TM42
  (805, 80500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 26),
  -- Stakataka - Rest - TM44
  (805, 80500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 27),
  -- Stakataka - Round - TM48
  (805, 80500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 28),
  -- Stakataka - Brutal Swing - TM59
  (805, 80500, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 29),
  -- Stakataka - Giga Impact - TM68
  (805, 80500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 30),
  -- Stakataka - Rock Polish - TM69
  (805, 80500, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 31),
  -- Stakataka - Stone Edge - TM71
  (805, 80500, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 32),
  -- Stakataka - Gyro Ball - TM74
  (805, 80500, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 33),
  -- Stakataka - Bulldoze - TM78
  (805, 80500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 34),
  -- Stakataka - Rock Slide - TM80
  (805, 80500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 35),
  -- Stakataka - Infestation - TM83
  (805, 80500, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 36),
  -- Stakataka - Sleep Talk - TM88
  (805, 80500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 37),
  -- Stakataka - Substitute - TM90
  (805, 80500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Stakataka - Flash Cannon - TM91
  (805, 80500, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 39),
  -- Stakataka - Trick Room - TM92
  (805, 80500, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 40),
  -- Stakataka - Bind - Tutor
  (805, 80500, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Stakataka - Snore - Tutor
  (805, 80500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Stakataka - Role Play - Tutor
  (805, 80500, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Stakataka - Superpower - Tutor
  (805, 80500, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Stakataka - Magic Coat - Tutor
  (805, 80500, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Stakataka - Recycle - Tutor
  (805, 80500, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Stakataka - Skill Swap - Tutor
  (805, 80500, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Stakataka - Iron Defense - Tutor
  (805, 80500, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Stakataka - Block - Tutor
  (805, 80500, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Stakataka - Gravity - Tutor
  (805, 80500, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Stakataka - Magnet Rise - Tutor
  (805, 80500, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Stakataka - Zen Headbutt - Tutor
  (805, 80500, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Stakataka - Iron Head - Tutor
  (805, 80500, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Stakataka - Stealth Rock - Tutor
  (805, 80500, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Stakataka - Wonder Room - Tutor
  (805, 80500, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Stakataka - Telekinesis - Tutor
  (805, 80500, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Stakataka - Magic Room - Tutor
  (805, 80500, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Stakataka - Ally Switch - Tutor
  (805, 80500, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Stakataka - Stomping Tantrum - Tutor
  (805, 80500, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),

  -- Blacephalon - Ember - Level 1
  (806, 80600, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blacephalon - Astonish - Level 1
  (806, 80600, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blacephalon - Magic Coat - Level 7
  (806, 80600, 277, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Blacephalon - Stored Power - Level 13
  (806, 80600, 500, 16, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Blacephalon - Flame Burst - Level 17
  (806, 80600, 481, 16, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Blacephalon - Night Shade - Level 23
  (806, 80600, 101, 16, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Blacephalon - Light Screen - Level 29
  (806, 80600, 113, 16, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Blacephalon - Calm Mind - Level 31
  (806, 80600, 347, 16, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Blacephalon - Fire Blast - Level 37
  (806, 80600, 126, 16, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Blacephalon - Shadow Ball - Level 41
  (806, 80600, 247, 16, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Blacephalon - Trick - Level 47
  (806, 80600, 271, 16, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Blacephalon - Mind Blown - Level 59
  (806, 80600, 720, 16, NULL, 1, 59, NULL, NULL, NULL, 12),
  -- Blacephalon - Psyshock - TM03
  (806, 80600, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 13),
  -- Blacephalon - Calm Mind - TM04
  (806, 80600, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 14),
  -- Blacephalon - Toxic - TM06
  (806, 80600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Blacephalon - Hidden Power - TM10
  (806, 80600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Blacephalon - Sunny Day - TM11
  (806, 80600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 17),
  -- Blacephalon - Taunt - TM12
  (806, 80600, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 18),
  -- Blacephalon - Hyper Beam - TM15
  (806, 80600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 19),
  -- Blacephalon - Light Screen - TM16
  (806, 80600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 20),
  -- Blacephalon - Protect - TM17
  (806, 80600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Blacephalon - Frustration - TM21
  (806, 80600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Blacephalon - Smack Down - TM23
  (806, 80600, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 23),
  -- Blacephalon - Return - TM27
  (806, 80600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Blacephalon - Psychic - TM29
  (806, 80600, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 25),
  -- Blacephalon - Shadow Ball - TM30
  (806, 80600, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 26),
  -- Blacephalon - Double Team - TM32
  (806, 80600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Blacephalon - Flamethrower - TM35
  (806, 80600, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 28),
  -- Blacephalon - Fire Blast - TM38
  (806, 80600, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 29),
  -- Blacephalon - Torment - TM41
  (806, 80600, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 30),
  -- Blacephalon - Facade - TM42
  (806, 80600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Blacephalon - Flame Charge - TM43
  (806, 80600, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 32),
  -- Blacephalon - Rest - TM44
  (806, 80600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Blacephalon - Thief - TM46
  (806, 80600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 34),
  -- Blacephalon - Round - TM48
  (806, 80600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Blacephalon - Overheat - TM50
  (806, 80600, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 36),
  -- Blacephalon - Fling - TM56
  (806, 80600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 37),
  -- Blacephalon - Quash - TM60
  (806, 80600, 511, 16, NULL, 2, NULL, NULL, 16002060, NULL, 38),
  -- Blacephalon - Will-O-Wisp - TM61
  (806, 80600, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 39),
  -- Blacephalon - Explosion - TM64
  (806, 80600, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 40),
  -- Blacephalon - Shadow Claw - TM65
  (806, 80600, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 41),
  -- Blacephalon - Payback - TM66
  (806, 80600, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 42),
  -- Blacephalon - Swagger - TM87
  (806, 80600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Blacephalon - Sleep Talk - TM88
  (806, 80600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Blacephalon - Substitute - TM90
  (806, 80600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Blacephalon - Dark Pulse - TM97
  (806, 80600, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 46),
  -- Blacephalon - Confide - TM100
  (806, 80600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Blacephalon - Snore - Tutor
  (806, 80600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Blacephalon - Spite - Tutor
  (806, 80600, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Blacephalon - Pain Split - Tutor
  (806, 80600, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Blacephalon - Uproar - Tutor
  (806, 80600, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Blacephalon - Heat Wave - Tutor
  (806, 80600, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Blacephalon - Trick - Tutor
  (806, 80600, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Blacephalon - Recycle - Tutor
  (806, 80600, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Blacephalon - Knock Off - Tutor
  (806, 80600, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Blacephalon - Last Resort - Tutor
  (806, 80600, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Blacephalon - Foul Play - Tutor
  (806, 80600, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Blacephalon - After You - Tutor
  (806, 80600, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),

  -- Zeraora - Scratch - Level 1
  (807, 80700, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zeraora - Spark - Level 1
  (807, 80700, 209, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zeraora - Hone Claws - Level 5
  (807, 80700, 468, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zeraora - Quick Attack - Level 8
  (807, 80700, 98, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Zeraora - Fury Swipes - Level 12
  (807, 80700, 154, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Zeraora - Volt Switch - Level 15
  (807, 80700, 521, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Zeraora - Snarl - Level 19
  (807, 80700, 555, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Zeraora - Fake Out - Level 22
  (807, 80700, 252, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Zeraora - Charge - Level 26
  (807, 80700, 268, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Zeraora - Thunder Punch - Level 29
  (807, 80700, 9, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Zeraora - Slash - Level 33
  (807, 80700, 163, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Zeraora - Wild Charge - Level 36
  (807, 80700, 528, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Zeraora - Quick Guard - Level 40
  (807, 80700, 501, 16, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Zeraora - Plasma Fists - Level 43
  (807, 80700, 721, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Zeraora - Close Combat - Level 47
  (807, 80700, 370, 16, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Zeraora - Discharge - Level 50
  (807, 80700, 435, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Zeraora - Work Up - TM01
  (807, 80700, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Zeraora - Calm Mind - TM04
  (807, 80700, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 18),
  -- Zeraora - Toxic - TM06
  (807, 80700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Zeraora - Bulk Up - TM08
  (807, 80700, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 20),
  -- Zeraora - Hidden Power - TM10
  (807, 80700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Zeraora - Taunt - TM12
  (807, 80700, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Zeraora - Protect - TM17
  (807, 80700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Zeraora - Frustration - TM21
  (807, 80700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Zeraora - Thunderbolt - TM24
  (807, 80700, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 25),
  -- Zeraora - Thunder - TM25
  (807, 80700, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 26),
  -- Zeraora - Return - TM27
  (807, 80700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Zeraora - Brick Break - TM31
  (807, 80700, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 28),
  -- Zeraora - Double Team - TM32
  (807, 80700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Zeraora - Aerial Ace - TM40
  (807, 80700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 30),
  -- Zeraora - Facade - TM42
  (807, 80700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Zeraora - Rest - TM44
  (807, 80700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Zeraora - Low Sweep - TM47
  (807, 80700, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 33),
  -- Zeraora - Round - TM48
  (807, 80700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Zeraora - Echoed Voice - TM49
  (807, 80700, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 35),
  -- Zeraora - Focus Blast - TM52
  (807, 80700, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 36),
  -- Zeraora - False Swipe - TM54
  (807, 80700, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 37),
  -- Zeraora - Fling - TM56
  (807, 80700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 38),
  -- Zeraora - Brutal Swing - TM59
  (807, 80700, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 39),
  -- Zeraora - Acrobatics - TM62
  (807, 80700, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 40),
  -- Zeraora - Giga Impact - TM68
  (807, 80700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 41),
  -- Zeraora - Volt Switch - TM72
  (807, 80700, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 42),
  -- Zeraora - Thunder Wave - TM73
  (807, 80700, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 43),
  -- Zeraora - Grass Knot - TM86
  (807, 80700, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 44),
  -- Zeraora - Sleep Talk - TM88
  (807, 80700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Zeraora - Substitute - TM90
  (807, 80700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Zeraora - Wild Charge - TM93
  (807, 80700, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 47),
  -- Zeraora - Snarl - TM95
  (807, 80700, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 48),
  -- Zeraora - Confide - TM100
  (807, 80700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Zeraora - Fire Punch - Tutor
  (807, 80700, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Zeraora - Thunder Punch - Tutor
  (807, 80700, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Zeraora - Low Kick - Tutor
  (807, 80700, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Zeraora - Snore - Tutor
  (807, 80700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Zeraora - Outrage - Tutor
  (807, 80700, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Zeraora - Iron Tail - Tutor
  (807, 80700, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Zeraora - Focus Punch - Tutor
  (807, 80700, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Zeraora - Superpower - Tutor
  (807, 80700, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Zeraora - Knock Off - Tutor
  (807, 80700, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Zeraora - Endeavor - Tutor
  (807, 80700, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Zeraora - Snatch - Tutor
  (807, 80700, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Zeraora - Bounce - Tutor
  (807, 80700, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Zeraora - Shock Wave - Tutor
  (807, 80700, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Zeraora - Drain Punch - Tutor
  (807, 80700, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Zeraora - Electroweb - Tutor
  (807, 80700, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Zeraora - Dual Chop - Tutor
  (807, 80700, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Zeraora - Laser Focus - Tutor
  (807, 80700, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Zeraora - Throat Chop - Tutor
  (807, 80700, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67);
