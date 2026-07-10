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
-- Ultra Sun / Ultra Moon learnsets for default forms, species 551-600.
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
  -- Sandile - Leer - Level 1
  (551, 55100, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandile - Rage - Level 1
  (551, 55100, 99, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandile - Bite - Level 4
  (551, 55100, 44, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Sandile - Sand Attack - Level 7
  (551, 55100, 28, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Sandile - Torment - Level 10
  (551, 55100, 259, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Sandile - Sand Tomb - Level 13
  (551, 55100, 328, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Sandile - Assurance - Level 16
  (551, 55100, 372, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Sandile - Mud-Slap - Level 19
  (551, 55100, 189, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Sandile - Embargo - Level 22
  (551, 55100, 373, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Sandile - Swagger - Level 25
  (551, 55100, 207, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Sandile - Crunch - Level 28
  (551, 55100, 242, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Sandile - Dig - Level 31
  (551, 55100, 91, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Sandile - Scary Face - Level 34
  (551, 55100, 184, 16, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Sandile - Foul Play - Level 37
  (551, 55100, 492, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Sandile - Sandstorm - Level 40
  (551, 55100, 201, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Sandile - Earthquake - Level 43
  (551, 55100, 89, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Sandile - Thrash - Level 46
  (551, 55100, 37, 16, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Sandile - Roar - TM05
  (551, 55100, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 18),
  -- Sandile - Toxic - TM06
  (551, 55100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Sandile - Hidden Power - TM10
  (551, 55100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Sandile - Taunt - TM12
  (551, 55100, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 21),
  -- Sandile - Protect - TM17
  (551, 55100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Sandile - Frustration - TM21
  (551, 55100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Sandile - Earthquake - TM26
  (551, 55100, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 24),
  -- Sandile - Return - TM27
  (551, 55100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Sandile - Double Team - TM32
  (551, 55100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Sandile - Sludge Bomb - TM36
  (551, 55100, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 27),
  -- Sandile - Sandstorm - TM37
  (551, 55100, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 28),
  -- Sandile - Rock Tomb - TM39
  (551, 55100, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 29),
  -- Sandile - Torment - TM41
  (551, 55100, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 30),
  -- Sandile - Facade - TM42
  (551, 55100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Sandile - Rest - TM44
  (551, 55100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Sandile - Attract - TM45
  (551, 55100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Sandile - Thief - TM46
  (551, 55100, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 34),
  -- Sandile - Round - TM48
  (551, 55100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Sandile - Embargo - TM63
  (551, 55100, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 36),
  -- Sandile - Payback - TM66
  (551, 55100, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 37),
  -- Sandile - Stone Edge - TM71
  (551, 55100, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 38),
  -- Sandile - Bulldoze - TM78
  (551, 55100, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 39),
  -- Sandile - Rock Slide - TM80
  (551, 55100, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 40),
  -- Sandile - Swagger - TM87
  (551, 55100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 41),
  -- Sandile - Sleep Talk - TM88
  (551, 55100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 42),
  -- Sandile - Substitute - TM90
  (551, 55100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 43),
  -- Sandile - Snarl - TM95
  (551, 55100, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 44),
  -- Sandile - Dark Pulse - TM97
  (551, 55100, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 45),
  -- Sandile - Confide - TM100
  (551, 55100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Sandile - Double-Edge - Egg
  (551, 55100, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Sandile - Counter - Egg
  (551, 55100, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Sandile - Focus Energy - Egg
  (551, 55100, 116, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Sandile - Mean Look - Egg
  (551, 55100, 212, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Sandile - Pursuit - Egg
  (551, 55100, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Sandile - Beat Up - Egg
  (551, 55100, 251, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Sandile - Uproar - Egg
  (551, 55100, 253, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Sandile - Me First - Egg
  (551, 55100, 382, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sandile - Thunder Fang - Egg
  (551, 55100, 422, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sandile - Fire Fang - Egg
  (551, 55100, 424, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sandile - Rock Climb - Egg
  (551, 55100, 431, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sandile - Power Trip - Egg
  (551, 55100, 681, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sandile - Snore - Tutor
  (551, 55100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Sandile - Spite - Tutor
  (551, 55100, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Sandile - Iron Tail - Tutor
  (551, 55100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Sandile - Uproar - Tutor
  (551, 55100, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Sandile - Snatch - Tutor
  (551, 55100, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Sandile - Aqua Tail - Tutor
  (551, 55100, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Sandile - Earth Power - Tutor
  (551, 55100, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Sandile - Stealth Rock - Tutor
  (551, 55100, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Sandile - Foul Play - Tutor
  (551, 55100, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),

  -- Krokorok - Sand Attack - Level 1
  (552, 55200, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krokorok - Leer - Level 1
  (552, 55200, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Krokorok - Bite - Level 1
  (552, 55200, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Krokorok - Rage - Level 1
  (552, 55200, 99, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Krokorok - Bite - Level 4
  (552, 55200, 44, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Krokorok - Sand Attack - Level 7
  (552, 55200, 28, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Krokorok - Torment - Level 10
  (552, 55200, 259, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Krokorok - Sand Tomb - Level 13
  (552, 55200, 328, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Krokorok - Assurance - Level 16
  (552, 55200, 372, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Krokorok - Mud-Slap - Level 19
  (552, 55200, 189, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Krokorok - Embargo - Level 22
  (552, 55200, 373, 16, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Krokorok - Swagger - Level 25
  (552, 55200, 207, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Krokorok - Crunch - Level 28
  (552, 55200, 242, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Krokorok - Dig - Level 32
  (552, 55200, 91, 16, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Krokorok - Scary Face - Level 36
  (552, 55200, 184, 16, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Krokorok - Foul Play - Level 40
  (552, 55200, 492, 16, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Krokorok - Sandstorm - Level 44
  (552, 55200, 201, 16, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Krokorok - Earthquake - Level 48
  (552, 55200, 89, 16, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Krokorok - Thrash - Level 52
  (552, 55200, 37, 16, NULL, 1, 52, NULL, NULL, NULL, 19),
  -- Krokorok - Roar - TM05
  (552, 55200, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 20),
  -- Krokorok - Toxic - TM06
  (552, 55200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Krokorok - Hidden Power - TM10
  (552, 55200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Krokorok - Taunt - TM12
  (552, 55200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 23),
  -- Krokorok - Protect - TM17
  (552, 55200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Krokorok - Frustration - TM21
  (552, 55200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Krokorok - Earthquake - TM26
  (552, 55200, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 26),
  -- Krokorok - Return - TM27
  (552, 55200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Krokorok - Brick Break - TM31
  (552, 55200, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 28),
  -- Krokorok - Double Team - TM32
  (552, 55200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Krokorok - Sludge Bomb - TM36
  (552, 55200, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 30),
  -- Krokorok - Sandstorm - TM37
  (552, 55200, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 31),
  -- Krokorok - Rock Tomb - TM39
  (552, 55200, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 32),
  -- Krokorok - Torment - TM41
  (552, 55200, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 33),
  -- Krokorok - Facade - TM42
  (552, 55200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Krokorok - Rest - TM44
  (552, 55200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Krokorok - Attract - TM45
  (552, 55200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Krokorok - Thief - TM46
  (552, 55200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 37),
  -- Krokorok - Low Sweep - TM47
  (552, 55200, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 38),
  -- Krokorok - Round - TM48
  (552, 55200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Krokorok - Fling - TM56
  (552, 55200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 40),
  -- Krokorok - Brutal Swing - TM59
  (552, 55200, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 41),
  -- Krokorok - Embargo - TM63
  (552, 55200, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 42),
  -- Krokorok - Shadow Claw - TM65
  (552, 55200, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 43),
  -- Krokorok - Payback - TM66
  (552, 55200, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 44),
  -- Krokorok - Stone Edge - TM71
  (552, 55200, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 45),
  -- Krokorok - Bulldoze - TM78
  (552, 55200, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 46),
  -- Krokorok - Rock Slide - TM80
  (552, 55200, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 47),
  -- Krokorok - Grass Knot - TM86
  (552, 55200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 48),
  -- Krokorok - Swagger - TM87
  (552, 55200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Krokorok - Sleep Talk - TM88
  (552, 55200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Krokorok - Substitute - TM90
  (552, 55200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Krokorok - Snarl - TM95
  (552, 55200, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 52),
  -- Krokorok - Dark Pulse - TM97
  (552, 55200, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 53),
  -- Krokorok - Confide - TM100
  (552, 55200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Krokorok - Low Kick - Tutor
  (552, 55200, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Krokorok - Snore - Tutor
  (552, 55200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Krokorok - Spite - Tutor
  (552, 55200, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Krokorok - Iron Tail - Tutor
  (552, 55200, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Krokorok - Uproar - Tutor
  (552, 55200, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Krokorok - Focus Punch - Tutor
  (552, 55200, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Krokorok - Knock Off - Tutor
  (552, 55200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Krokorok - Snatch - Tutor
  (552, 55200, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Krokorok - Aqua Tail - Tutor
  (552, 55200, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Krokorok - Earth Power - Tutor
  (552, 55200, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Krokorok - Stealth Rock - Tutor
  (552, 55200, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Krokorok - Foul Play - Tutor
  (552, 55200, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),

  -- Krookodile - Sand Attack - Level 1
  (553, 55300, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krookodile - Leer - Level 1
  (553, 55300, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Krookodile - Bite - Level 1
  (553, 55300, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Krookodile - Rage - Level 1
  (553, 55300, 99, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Krookodile - Power Trip - Level 1
  (553, 55300, 681, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Krookodile - Bite - Level 4
  (553, 55300, 44, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Krookodile - Sand Attack - Level 7
  (553, 55300, 28, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Krookodile - Torment - Level 10
  (553, 55300, 259, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Krookodile - Sand Tomb - Level 13
  (553, 55300, 328, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Krookodile - Assurance - Level 16
  (553, 55300, 372, 16, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Krookodile - Mud-Slap - Level 19
  (553, 55300, 189, 16, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Krookodile - Embargo - Level 22
  (553, 55300, 373, 16, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Krookodile - Swagger - Level 25
  (553, 55300, 207, 16, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Krookodile - Crunch - Level 28
  (553, 55300, 242, 16, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Krookodile - Dig - Level 32
  (553, 55300, 91, 16, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Krookodile - Scary Face - Level 36
  (553, 55300, 184, 16, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Krookodile - Foul Play - Level 42
  (553, 55300, 492, 16, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Krookodile - Sandstorm - Level 48
  (553, 55300, 201, 16, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Krookodile - Earthquake - Level 54
  (553, 55300, 89, 16, NULL, 1, 54, NULL, NULL, NULL, 19),
  -- Krookodile - Outrage - Level 60
  (553, 55300, 200, 16, NULL, 1, 60, NULL, NULL, NULL, 20),
  -- Krookodile - Dragon Claw - TM02
  (553, 55300, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 21),
  -- Krookodile - Roar - TM05
  (553, 55300, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 22),
  -- Krookodile - Toxic - TM06
  (553, 55300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Krookodile - Bulk Up - TM08
  (553, 55300, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 24),
  -- Krookodile - Hidden Power - TM10
  (553, 55300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Krookodile - Taunt - TM12
  (553, 55300, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 26),
  -- Krookodile - Hyper Beam - TM15
  (553, 55300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 27),
  -- Krookodile - Protect - TM17
  (553, 55300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Krookodile - Frustration - TM21
  (553, 55300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Krookodile - Smack Down - TM23
  (553, 55300, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 30),
  -- Krookodile - Earthquake - TM26
  (553, 55300, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 31),
  -- Krookodile - Return - TM27
  (553, 55300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Krookodile - Brick Break - TM31
  (553, 55300, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 33),
  -- Krookodile - Double Team - TM32
  (553, 55300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Krookodile - Sludge Bomb - TM36
  (553, 55300, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 35),
  -- Krookodile - Sandstorm - TM37
  (553, 55300, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 36),
  -- Krookodile - Rock Tomb - TM39
  (553, 55300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 37),
  -- Krookodile - Aerial Ace - TM40
  (553, 55300, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 38),
  -- Krookodile - Torment - TM41
  (553, 55300, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 39),
  -- Krookodile - Facade - TM42
  (553, 55300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 40),
  -- Krookodile - Rest - TM44
  (553, 55300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 41),
  -- Krookodile - Attract - TM45
  (553, 55300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 42),
  -- Krookodile - Thief - TM46
  (553, 55300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 43),
  -- Krookodile - Low Sweep - TM47
  (553, 55300, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 44),
  -- Krookodile - Round - TM48
  (553, 55300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 45),
  -- Krookodile - Focus Blast - TM52
  (553, 55300, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 46),
  -- Krookodile - Fling - TM56
  (553, 55300, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 47),
  -- Krookodile - Brutal Swing - TM59
  (553, 55300, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 48),
  -- Krookodile - Embargo - TM63
  (553, 55300, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 49),
  -- Krookodile - Shadow Claw - TM65
  (553, 55300, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 50),
  -- Krookodile - Payback - TM66
  (553, 55300, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 51),
  -- Krookodile - Giga Impact - TM68
  (553, 55300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 52),
  -- Krookodile - Stone Edge - TM71
  (553, 55300, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 53),
  -- Krookodile - Bulldoze - TM78
  (553, 55300, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 54),
  -- Krookodile - Rock Slide - TM80
  (553, 55300, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 55),
  -- Krookodile - Dragon Tail - TM82
  (553, 55300, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 56),
  -- Krookodile - Grass Knot - TM86
  (553, 55300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 57),
  -- Krookodile - Swagger - TM87
  (553, 55300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 58),
  -- Krookodile - Sleep Talk - TM88
  (553, 55300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 59),
  -- Krookodile - Substitute - TM90
  (553, 55300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 60),
  -- Krookodile - Snarl - TM95
  (553, 55300, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 61),
  -- Krookodile - Dark Pulse - TM97
  (553, 55300, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 62),
  -- Krookodile - Confide - TM100
  (553, 55300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 63),
  -- Krookodile - Low Kick - Tutor
  (553, 55300, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Krookodile - Snore - Tutor
  (553, 55300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Krookodile - Spite - Tutor
  (553, 55300, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Krookodile - Outrage - Tutor
  (553, 55300, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Krookodile - Iron Tail - Tutor
  (553, 55300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Krookodile - Uproar - Tutor
  (553, 55300, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Krookodile - Focus Punch - Tutor
  (553, 55300, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Krookodile - Superpower - Tutor
  (553, 55300, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Krookodile - Knock Off - Tutor
  (553, 55300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Krookodile - Snatch - Tutor
  (553, 55300, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Krookodile - Block - Tutor
  (553, 55300, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Krookodile - Aqua Tail - Tutor
  (553, 55300, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Krookodile - Dragon Pulse - Tutor
  (553, 55300, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Krookodile - Earth Power - Tutor
  (553, 55300, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Krookodile - Stealth Rock - Tutor
  (553, 55300, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Krookodile - Foul Play - Tutor
  (553, 55300, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Krookodile - Throat Chop - Tutor
  (553, 55300, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Krookodile - Stomping Tantrum - Tutor
  (553, 55300, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),

  -- Darumaka - Tackle - Level 1
  (554, 55400, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Darumaka - Rollout - Level 3
  (554, 55400, 205, 16, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Darumaka - Incinerate - Level 6
  (554, 55400, 510, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Darumaka - Rage - Level 9
  (554, 55400, 99, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Darumaka - Fire Fang - Level 11
  (554, 55400, 424, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Darumaka - Headbutt - Level 14
  (554, 55400, 29, 16, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Darumaka - Uproar - Level 17
  (554, 55400, 253, 16, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Darumaka - Facade - Level 19
  (554, 55400, 263, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Darumaka - Fire Punch - Level 22
  (554, 55400, 7, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Darumaka - Work Up - Level 25
  (554, 55400, 526, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Darumaka - Thrash - Level 27
  (554, 55400, 37, 16, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Darumaka - Belly Drum - Level 30
  (554, 55400, 187, 16, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Darumaka - Flare Blitz - Level 33
  (554, 55400, 394, 16, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Darumaka - Taunt - Level 35
  (554, 55400, 269, 16, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Darumaka - Superpower - Level 39
  (554, 55400, 276, 16, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Darumaka - Overheat - Level 42
  (554, 55400, 315, 16, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Darumaka - Work Up - TM01
  (554, 55400, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Darumaka - Roar - TM05
  (554, 55400, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 18),
  -- Darumaka - Toxic - TM06
  (554, 55400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Darumaka - Hidden Power - TM10
  (554, 55400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Darumaka - Sunny Day - TM11
  (554, 55400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Darumaka - Taunt - TM12
  (554, 55400, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Darumaka - Protect - TM17
  (554, 55400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Darumaka - Frustration - TM21
  (554, 55400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Darumaka - Solar Beam - TM22
  (554, 55400, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 25),
  -- Darumaka - Return - TM27
  (554, 55400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Darumaka - Brick Break - TM31
  (554, 55400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 27),
  -- Darumaka - Double Team - TM32
  (554, 55400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Darumaka - Flamethrower - TM35
  (554, 55400, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 29),
  -- Darumaka - Fire Blast - TM38
  (554, 55400, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 30),
  -- Darumaka - Rock Tomb - TM39
  (554, 55400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 31),
  -- Darumaka - Facade - TM42
  (554, 55400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Darumaka - Flame Charge - TM43
  (554, 55400, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 33),
  -- Darumaka - Rest - TM44
  (554, 55400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Darumaka - Attract - TM45
  (554, 55400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Darumaka - Thief - TM46
  (554, 55400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 36),
  -- Darumaka - Round - TM48
  (554, 55400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Darumaka - Overheat - TM50
  (554, 55400, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 38),
  -- Darumaka - Fling - TM56
  (554, 55400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 39),
  -- Darumaka - Will-O-Wisp - TM61
  (554, 55400, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 40),
  -- Darumaka - Gyro Ball - TM74
  (554, 55400, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 41),
  -- Darumaka - Rock Slide - TM80
  (554, 55400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 42),
  -- Darumaka - Grass Knot - TM86
  (554, 55400, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 43),
  -- Darumaka - Swagger - TM87
  (554, 55400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Darumaka - Sleep Talk - TM88
  (554, 55400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Darumaka - U-turn - TM89
  (554, 55400, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 46),
  -- Darumaka - Substitute - TM90
  (554, 55400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Darumaka - Confide - TM100
  (554, 55400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Darumaka - Take Down - Egg
  (554, 55400, 36, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Darumaka - Focus Energy - Egg
  (554, 55400, 116, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Darumaka - Flame Wheel - Egg
  (554, 55400, 172, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Darumaka - Endure - Egg
  (554, 55400, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Darumaka - Sleep Talk - Egg
  (554, 55400, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Darumaka - Encore - Egg
  (554, 55400, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Darumaka - Focus Punch - Egg
  (554, 55400, 264, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Darumaka - Yawn - Egg
  (554, 55400, 281, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Darumaka - Snatch - Egg
  (554, 55400, 289, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Darumaka - Extrasensory - Egg
  (554, 55400, 326, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Darumaka - Hammer Arm - Egg
  (554, 55400, 359, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Darumaka - Fire Punch - Tutor
  (554, 55400, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Darumaka - Snore - Tutor
  (554, 55400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Darumaka - Uproar - Tutor
  (554, 55400, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Darumaka - Heat Wave - Tutor
  (554, 55400, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Darumaka - Focus Punch - Tutor
  (554, 55400, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Darumaka - Superpower - Tutor
  (554, 55400, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Darumaka - Endeavor - Tutor
  (554, 55400, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Darumaka - Snatch - Tutor
  (554, 55400, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Darumaka - Zen Headbutt - Tutor
  (554, 55400, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),

  -- Darmanitan - Tackle - Level 1
  (555, 55500, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Darmanitan - Rage - Level 1
  (555, 55500, 99, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Darmanitan - Rollout - Level 1
  (555, 55500, 205, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Darmanitan - Hammer Arm - Level 1
  (555, 55500, 359, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Darmanitan - Incinerate - Level 1
  (555, 55500, 510, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Darmanitan - Rollout - Level 3
  (555, 55500, 205, 16, NULL, 1, 3, NULL, NULL, NULL, 6),
  -- Darmanitan - Incinerate - Level 6
  (555, 55500, 510, 16, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Darmanitan - Rage - Level 9
  (555, 55500, 99, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Darmanitan - Fire Fang - Level 11
  (555, 55500, 424, 16, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Darmanitan - Headbutt - Level 14
  (555, 55500, 29, 16, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Darmanitan - Swagger - Level 17
  (555, 55500, 207, 16, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Darmanitan - Facade - Level 19
  (555, 55500, 263, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Darmanitan - Fire Punch - Level 22
  (555, 55500, 7, 16, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Darmanitan - Work Up - Level 25
  (555, 55500, 526, 16, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Darmanitan - Thrash - Level 27
  (555, 55500, 37, 16, NULL, 1, 27, NULL, NULL, NULL, 15),
  -- Darmanitan - Belly Drum - Level 30
  (555, 55500, 187, 16, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Darmanitan - Flare Blitz - Level 33
  (555, 55500, 394, 16, NULL, 1, 33, NULL, NULL, NULL, 17),
  -- Darmanitan - Taunt - Level 39
  (555, 55500, 269, 16, NULL, 1, 39, NULL, NULL, NULL, 18),
  -- Darmanitan - Superpower - Level 47
  (555, 55500, 276, 16, NULL, 1, 47, NULL, NULL, NULL, 19),
  -- Darmanitan - Overheat - Level 54
  (555, 55500, 315, 16, NULL, 1, 54, NULL, NULL, NULL, 20),
  -- Darmanitan - Work Up - TM01
  (555, 55500, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 21),
  -- Darmanitan - Roar - TM05
  (555, 55500, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 22),
  -- Darmanitan - Toxic - TM06
  (555, 55500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Darmanitan - Bulk Up - TM08
  (555, 55500, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 24),
  -- Darmanitan - Hidden Power - TM10
  (555, 55500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Darmanitan - Sunny Day - TM11
  (555, 55500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 26),
  -- Darmanitan - Taunt - TM12
  (555, 55500, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 27),
  -- Darmanitan - Hyper Beam - TM15
  (555, 55500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 28),
  -- Darmanitan - Protect - TM17
  (555, 55500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Darmanitan - Frustration - TM21
  (555, 55500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 30),
  -- Darmanitan - Solar Beam - TM22
  (555, 55500, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 31),
  -- Darmanitan - Smack Down - TM23
  (555, 55500, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 32),
  -- Darmanitan - Earthquake - TM26
  (555, 55500, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 33),
  -- Darmanitan - Return - TM27
  (555, 55500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 34),
  -- Darmanitan - Psychic - TM29
  (555, 55500, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 35),
  -- Darmanitan - Brick Break - TM31
  (555, 55500, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 36),
  -- Darmanitan - Double Team - TM32
  (555, 55500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 37),
  -- Darmanitan - Flamethrower - TM35
  (555, 55500, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 38),
  -- Darmanitan - Fire Blast - TM38
  (555, 55500, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 39),
  -- Darmanitan - Rock Tomb - TM39
  (555, 55500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 40),
  -- Darmanitan - Torment - TM41
  (555, 55500, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 41),
  -- Darmanitan - Facade - TM42
  (555, 55500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 42),
  -- Darmanitan - Flame Charge - TM43
  (555, 55500, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 43),
  -- Darmanitan - Rest - TM44
  (555, 55500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 44),
  -- Darmanitan - Attract - TM45
  (555, 55500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 45),
  -- Darmanitan - Thief - TM46
  (555, 55500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 46),
  -- Darmanitan - Round - TM48
  (555, 55500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 47),
  -- Darmanitan - Overheat - TM50
  (555, 55500, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 48),
  -- Darmanitan - Focus Blast - TM52
  (555, 55500, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 49),
  -- Darmanitan - Fling - TM56
  (555, 55500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 50),
  -- Darmanitan - Will-O-Wisp - TM61
  (555, 55500, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 51),
  -- Darmanitan - Payback - TM66
  (555, 55500, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 52),
  -- Darmanitan - Giga Impact - TM68
  (555, 55500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 53),
  -- Darmanitan - Stone Edge - TM71
  (555, 55500, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 54),
  -- Darmanitan - Gyro Ball - TM74
  (555, 55500, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 55),
  -- Darmanitan - Bulldoze - TM78
  (555, 55500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 56),
  -- Darmanitan - Rock Slide - TM80
  (555, 55500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 57),
  -- Darmanitan - Grass Knot - TM86
  (555, 55500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 58),
  -- Darmanitan - Swagger - TM87
  (555, 55500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 59),
  -- Darmanitan - Sleep Talk - TM88
  (555, 55500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 60),
  -- Darmanitan - U-turn - TM89
  (555, 55500, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 61),
  -- Darmanitan - Substitute - TM90
  (555, 55500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 62),
  -- Darmanitan - Confide - TM100
  (555, 55500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 63),
  -- Darmanitan - Fire Punch - Tutor
  (555, 55500, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Darmanitan - Snore - Tutor
  (555, 55500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Darmanitan - Uproar - Tutor
  (555, 55500, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Darmanitan - Heat Wave - Tutor
  (555, 55500, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Darmanitan - Focus Punch - Tutor
  (555, 55500, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Darmanitan - Superpower - Tutor
  (555, 55500, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Darmanitan - Endeavor - Tutor
  (555, 55500, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Darmanitan - Snatch - Tutor
  (555, 55500, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Darmanitan - Zen Headbutt - Tutor
  (555, 55500, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Darmanitan - Laser Focus - Tutor
  (555, 55500, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Darmanitan - Hammer Arm - Evolution
  (555, 55500, 359, 16, NULL, 7, NULL, NULL, NULL, NULL, 74),

  -- Maractus - Peck - Level 1
  (556, 55600, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Maractus - Absorb - Level 1
  (556, 55600, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Maractus - After You - Level 1
  (556, 55600, 495, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Maractus - Cotton Guard - Level 1
  (556, 55600, 538, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Maractus - Spiky Shield - Level 1
  (556, 55600, 596, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Maractus - Sweet Scent - Level 3
  (556, 55600, 230, 16, NULL, 1, 3, NULL, NULL, NULL, 6),
  -- Maractus - Growth - Level 6
  (556, 55600, 74, 16, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Maractus - Pin Missile - Level 10
  (556, 55600, 42, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Maractus - Mega Drain - Level 13
  (556, 55600, 72, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Maractus - Synthesis - Level 15
  (556, 55600, 235, 16, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Maractus - Cotton Spore - Level 18
  (556, 55600, 178, 16, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Maractus - Needle Arm - Level 22
  (556, 55600, 302, 16, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Maractus - Giga Drain - Level 26
  (556, 55600, 202, 16, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Maractus - Acupressure - Level 29
  (556, 55600, 367, 16, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Maractus - Ingrain - Level 33
  (556, 55600, 275, 16, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Maractus - Petal Dance - Level 38
  (556, 55600, 80, 16, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Maractus - Sucker Punch - Level 42
  (556, 55600, 389, 16, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Maractus - Sunny Day - Level 45
  (556, 55600, 241, 16, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Maractus - Petal Blizzard - Level 48
  (556, 55600, 572, 16, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Maractus - Solar Beam - Level 50
  (556, 55600, 76, 16, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Maractus - Cotton Guard - Level 55
  (556, 55600, 538, 16, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Maractus - After You - Level 57
  (556, 55600, 495, 16, NULL, 1, 57, NULL, NULL, NULL, 22),
  -- Maractus - Toxic - TM06
  (556, 55600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Maractus - Hidden Power - TM10
  (556, 55600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Maractus - Sunny Day - TM11
  (556, 55600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Maractus - Protect - TM17
  (556, 55600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Maractus - Safeguard - TM20
  (556, 55600, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 27),
  -- Maractus - Frustration - TM21
  (556, 55600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Maractus - Solar Beam - TM22
  (556, 55600, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 29),
  -- Maractus - Return - TM27
  (556, 55600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Maractus - Double Team - TM32
  (556, 55600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Maractus - Aerial Ace - TM40
  (556, 55600, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Maractus - Facade - TM42
  (556, 55600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Maractus - Rest - TM44
  (556, 55600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Maractus - Attract - TM45
  (556, 55600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Maractus - Round - TM48
  (556, 55600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Maractus - Energy Ball - TM53
  (556, 55600, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 37),
  -- Maractus - Poison Jab - TM84
  (556, 55600, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 38),
  -- Maractus - Grass Knot - TM86
  (556, 55600, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 39),
  -- Maractus - Swagger - TM87
  (556, 55600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Maractus - Sleep Talk - TM88
  (556, 55600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Maractus - Substitute - TM90
  (556, 55600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Maractus - Nature Power - TM96
  (556, 55600, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 43),
  -- Maractus - Confide - TM100
  (556, 55600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Maractus - Leech Seed - Egg
  (556, 55600, 73, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Maractus - Spikes - Egg
  (556, 55600, 191, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Maractus - Grass Whistle - Egg
  (556, 55600, 320, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Maractus - Bullet Seed - Egg
  (556, 55600, 331, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Maractus - Bounce - Egg
  (556, 55600, 340, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Maractus - Worry Seed - Egg
  (556, 55600, 388, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Maractus - Seed Bomb - Egg
  (556, 55600, 402, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Maractus - Wood Hammer - Egg
  (556, 55600, 452, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Maractus - Grassy Terrain - Egg
  (556, 55600, 580, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Maractus - Snore - Tutor
  (556, 55600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Maractus - Giga Drain - Tutor
  (556, 55600, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Maractus - Synthesis - Tutor
  (556, 55600, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Maractus - Uproar - Tutor
  (556, 55600, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Maractus - Helping Hand - Tutor
  (556, 55600, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Maractus - Knock Off - Tutor
  (556, 55600, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Maractus - Endeavor - Tutor
  (556, 55600, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Maractus - Hyper Voice - Tutor
  (556, 55600, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Maractus - Bounce - Tutor
  (556, 55600, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Maractus - Worry Seed - Tutor
  (556, 55600, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Maractus - Seed Bomb - Tutor
  (556, 55600, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Maractus - Drain Punch - Tutor
  (556, 55600, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Maractus - After You - Tutor
  (556, 55600, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Maractus - Throat Chop - Tutor
  (556, 55600, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),

  -- Dwebble - Fury Cutter - Level 1
  (557, 55700, 210, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dwebble - Rock Blast - Level 5
  (557, 55700, 350, 16, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Dwebble - Withdraw - Level 7
  (557, 55700, 110, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Dwebble - Sand Attack - Level 11
  (557, 55700, 28, 16, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Dwebble - Feint Attack - Level 13
  (557, 55700, 185, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Dwebble - Smack Down - Level 17
  (557, 55700, 479, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Dwebble - Rock Polish - Level 19
  (557, 55700, 397, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Dwebble - Bug Bite - Level 23
  (557, 55700, 450, 16, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Dwebble - Stealth Rock - Level 24
  (557, 55700, 446, 16, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Dwebble - Rock Slide - Level 29
  (557, 55700, 157, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Dwebble - Slash - Level 31
  (557, 55700, 163, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Dwebble - X-Scissor - Level 35
  (557, 55700, 404, 16, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Dwebble - Shell Smash - Level 37
  (557, 55700, 504, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Dwebble - Flail - Level 41
  (557, 55700, 175, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Dwebble - Rock Wrecker - Level 43
  (557, 55700, 439, 16, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Dwebble - Toxic - TM06
  (557, 55700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Dwebble - Hidden Power - TM10
  (557, 55700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Dwebble - Protect - TM17
  (557, 55700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 18),
  -- Dwebble - Frustration - TM21
  (557, 55700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 19),
  -- Dwebble - Solar Beam - TM22
  (557, 55700, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 20),
  -- Dwebble - Smack Down - TM23
  (557, 55700, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 21),
  -- Dwebble - Earthquake - TM26
  (557, 55700, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 22),
  -- Dwebble - Return - TM27
  (557, 55700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 23),
  -- Dwebble - Double Team - TM32
  (557, 55700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Dwebble - Sandstorm - TM37
  (557, 55700, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 25),
  -- Dwebble - Rock Tomb - TM39
  (557, 55700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 26),
  -- Dwebble - Aerial Ace - TM40
  (557, 55700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 27),
  -- Dwebble - Facade - TM42
  (557, 55700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Dwebble - Rest - TM44
  (557, 55700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Dwebble - Attract - TM45
  (557, 55700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Dwebble - Round - TM48
  (557, 55700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Dwebble - Shadow Claw - TM65
  (557, 55700, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 32),
  -- Dwebble - Rock Polish - TM69
  (557, 55700, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 33),
  -- Dwebble - Stone Edge - TM71
  (557, 55700, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 34),
  -- Dwebble - Swords Dance - TM75
  (557, 55700, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 35),
  -- Dwebble - Bulldoze - TM78
  (557, 55700, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 36),
  -- Dwebble - Rock Slide - TM80
  (557, 55700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 37),
  -- Dwebble - X-Scissor - TM81
  (557, 55700, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 38),
  -- Dwebble - Poison Jab - TM84
  (557, 55700, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 39),
  -- Dwebble - Swagger - TM87
  (557, 55700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Dwebble - Sleep Talk - TM88
  (557, 55700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Dwebble - Substitute - TM90
  (557, 55700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Dwebble - Nature Power - TM96
  (557, 55700, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 43),
  -- Dwebble - Confide - TM100
  (557, 55700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Dwebble - Counter - Egg
  (557, 55700, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Dwebble - Curse - Egg
  (557, 55700, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Dwebble - Spikes - Egg
  (557, 55700, 191, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Dwebble - Endure - Egg
  (557, 55700, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Dwebble - Sand Tomb - Egg
  (557, 55700, 328, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Dwebble - Iron Defense - Egg
  (557, 55700, 334, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Dwebble - Block - Egg
  (557, 55700, 335, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Dwebble - Night Slash - Egg
  (557, 55700, 400, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Dwebble - Wide Guard - Egg
  (557, 55700, 469, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Dwebble - Rototiller - Egg
  (557, 55700, 563, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Dwebble - Snore - Tutor
  (557, 55700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Dwebble - Knock Off - Tutor
  (557, 55700, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Dwebble - Iron Defense - Tutor
  (557, 55700, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Dwebble - Block - Tutor
  (557, 55700, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Dwebble - Stealth Rock - Tutor
  (557, 55700, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Dwebble - Bug Bite - Tutor
  (557, 55700, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),

  -- Crustle - Sand Attack - Level 1
  (558, 55800, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crustle - Withdraw - Level 1
  (558, 55800, 110, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crustle - Rock Blast - Level 1
  (558, 55800, 350, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crustle - Shell Smash - Level 1
  (558, 55800, 504, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Crustle - Rock Blast - Level 5
  (558, 55800, 350, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Crustle - Withdraw - Level 7
  (558, 55800, 110, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Crustle - Sand Attack - Level 11
  (558, 55800, 28, 16, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Crustle - Feint Attack - Level 13
  (558, 55800, 185, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Crustle - Smack Down - Level 17
  (558, 55800, 479, 16, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Crustle - Rock Polish - Level 19
  (558, 55800, 397, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Crustle - Bug Bite - Level 23
  (558, 55800, 450, 16, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Crustle - Stealth Rock - Level 24
  (558, 55800, 446, 16, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Crustle - Rock Slide - Level 29
  (558, 55800, 157, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Crustle - Slash - Level 31
  (558, 55800, 163, 16, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Crustle - X-Scissor - Level 38
  (558, 55800, 404, 16, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Crustle - Shell Smash - Level 43
  (558, 55800, 504, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Crustle - Flail - Level 50
  (558, 55800, 175, 16, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Crustle - Rock Wrecker - Level 55
  (558, 55800, 439, 16, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Crustle - Toxic - TM06
  (558, 55800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Crustle - Hidden Power - TM10
  (558, 55800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Crustle - Hyper Beam - TM15
  (558, 55800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Crustle - Protect - TM17
  (558, 55800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Crustle - Frustration - TM21
  (558, 55800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Crustle - Solar Beam - TM22
  (558, 55800, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 24),
  -- Crustle - Smack Down - TM23
  (558, 55800, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 25),
  -- Crustle - Earthquake - TM26
  (558, 55800, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 26),
  -- Crustle - Return - TM27
  (558, 55800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Crustle - Double Team - TM32
  (558, 55800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Crustle - Sandstorm - TM37
  (558, 55800, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 29),
  -- Crustle - Rock Tomb - TM39
  (558, 55800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 30),
  -- Crustle - Aerial Ace - TM40
  (558, 55800, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 31),
  -- Crustle - Facade - TM42
  (558, 55800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Crustle - Rest - TM44
  (558, 55800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Crustle - Attract - TM45
  (558, 55800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Crustle - Round - TM48
  (558, 55800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Crustle - Shadow Claw - TM65
  (558, 55800, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 36),
  -- Crustle - Giga Impact - TM68
  (558, 55800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 37),
  -- Crustle - Rock Polish - TM69
  (558, 55800, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 38),
  -- Crustle - Stone Edge - TM71
  (558, 55800, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 39),
  -- Crustle - Swords Dance - TM75
  (558, 55800, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 40),
  -- Crustle - Bulldoze - TM78
  (558, 55800, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 41),
  -- Crustle - Rock Slide - TM80
  (558, 55800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 42),
  -- Crustle - X-Scissor - TM81
  (558, 55800, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 43),
  -- Crustle - Poison Jab - TM84
  (558, 55800, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 44),
  -- Crustle - Swagger - TM87
  (558, 55800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Crustle - Sleep Talk - TM88
  (558, 55800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Crustle - Substitute - TM90
  (558, 55800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Crustle - Nature Power - TM96
  (558, 55800, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 48),
  -- Crustle - Confide - TM100
  (558, 55800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Crustle - Snore - Tutor
  (558, 55800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Crustle - Knock Off - Tutor
  (558, 55800, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Crustle - Iron Defense - Tutor
  (558, 55800, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Crustle - Block - Tutor
  (558, 55800, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Crustle - Stealth Rock - Tutor
  (558, 55800, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Crustle - Bug Bite - Tutor
  (558, 55800, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Crustle - Stomping Tantrum - Tutor
  (558, 55800, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),

  -- Scraggy - Headbutt - Level 1
  (559, 55900, 29, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scraggy - Leer - Level 1
  (559, 55900, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scraggy - Sand Attack - Level 5
  (559, 55900, 28, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Scraggy - Feint Attack - Level 9
  (559, 55900, 185, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Scraggy - Swagger - Level 12
  (559, 55900, 207, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Scraggy - Low Kick - Level 16
  (559, 55900, 67, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Scraggy - Payback - Level 20
  (559, 55900, 371, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Scraggy - Brick Break - Level 23
  (559, 55900, 280, 16, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Scraggy - Chip Away - Level 27
  (559, 55900, 498, 16, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Scraggy - High Jump Kick - Level 31
  (559, 55900, 136, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Scraggy - Scary Face - Level 34
  (559, 55900, 184, 16, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Scraggy - Crunch - Level 38
  (559, 55900, 242, 16, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Scraggy - Facade - Level 42
  (559, 55900, 263, 16, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Scraggy - Rock Climb - Level 45
  (559, 55900, 431, 16, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Scraggy - Focus Punch - Level 48
  (559, 55900, 264, 16, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Scraggy - Head Smash - Level 50
  (559, 55900, 457, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Scraggy - Work Up - TM01
  (559, 55900, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Scraggy - Dragon Claw - TM02
  (559, 55900, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 18),
  -- Scraggy - Roar - TM05
  (559, 55900, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 19),
  -- Scraggy - Toxic - TM06
  (559, 55900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Scraggy - Bulk Up - TM08
  (559, 55900, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 21),
  -- Scraggy - Hidden Power - TM10
  (559, 55900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Scraggy - Sunny Day - TM11
  (559, 55900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Scraggy - Taunt - TM12
  (559, 55900, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Scraggy - Protect - TM17
  (559, 55900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Scraggy - Rain Dance - TM18
  (559, 55900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Scraggy - Frustration - TM21
  (559, 55900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Scraggy - Smack Down - TM23
  (559, 55900, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 28),
  -- Scraggy - Return - TM27
  (559, 55900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Scraggy - Brick Break - TM31
  (559, 55900, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 30),
  -- Scraggy - Double Team - TM32
  (559, 55900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Scraggy - Sludge Bomb - TM36
  (559, 55900, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 32),
  -- Scraggy - Rock Tomb - TM39
  (559, 55900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 33),
  -- Scraggy - Torment - TM41
  (559, 55900, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 34),
  -- Scraggy - Facade - TM42
  (559, 55900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Scraggy - Rest - TM44
  (559, 55900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Scraggy - Attract - TM45
  (559, 55900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Scraggy - Low Sweep - TM47
  (559, 55900, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 38),
  -- Scraggy - Round - TM48
  (559, 55900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Scraggy - Focus Blast - TM52
  (559, 55900, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 40),
  -- Scraggy - Fling - TM56
  (559, 55900, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 41),
  -- Scraggy - Payback - TM66
  (559, 55900, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 42),
  -- Scraggy - Stone Edge - TM71
  (559, 55900, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 43),
  -- Scraggy - Rock Slide - TM80
  (559, 55900, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 44),
  -- Scraggy - Dragon Tail - TM82
  (559, 55900, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 45),
  -- Scraggy - Poison Jab - TM84
  (559, 55900, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 46),
  -- Scraggy - Grass Knot - TM86
  (559, 55900, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 47),
  -- Scraggy - Swagger - TM87
  (559, 55900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Scraggy - Sleep Talk - TM88
  (559, 55900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Scraggy - Substitute - TM90
  (559, 55900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Scraggy - Snarl - TM95
  (559, 55900, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 51),
  -- Scraggy - Dark Pulse - TM97
  (559, 55900, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 52),
  -- Scraggy - Confide - TM100
  (559, 55900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 53),
  -- Scraggy - Fire Punch - Egg
  (559, 55900, 7, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Scraggy - Ice Punch - Egg
  (559, 55900, 8, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Scraggy - Thunder Punch - Egg
  (559, 55900, 9, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Scraggy - Counter - Egg
  (559, 55900, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Scraggy - Amnesia - Egg
  (559, 55900, 133, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Scraggy - Feint Attack - Egg
  (559, 55900, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Scraggy - Detect - Egg
  (559, 55900, 197, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Scraggy - Fake Out - Egg
  (559, 55900, 252, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Scraggy - Dragon Dance - Egg
  (559, 55900, 349, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Scraggy - Drain Punch - Egg
  (559, 55900, 409, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Scraggy - Zen Headbutt - Egg
  (559, 55900, 428, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Scraggy - Acid Spray - Egg
  (559, 55900, 491, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Scraggy - Quick Guard - Egg
  (559, 55900, 501, 16, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Scraggy - Power-Up Punch - Egg
  (559, 55900, 612, 16, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Scraggy - Fire Punch - Tutor
  (559, 55900, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Scraggy - Ice Punch - Tutor
  (559, 55900, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Scraggy - Thunder Punch - Tutor
  (559, 55900, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Scraggy - Low Kick - Tutor
  (559, 55900, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Scraggy - Super Fang - Tutor
  (559, 55900, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Scraggy - Snore - Tutor
  (559, 55900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Scraggy - Spite - Tutor
  (559, 55900, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Scraggy - Iron Tail - Tutor
  (559, 55900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Scraggy - Focus Punch - Tutor
  (559, 55900, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Scraggy - Knock Off - Tutor
  (559, 55900, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Scraggy - Snatch - Tutor
  (559, 55900, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Scraggy - Iron Defense - Tutor
  (559, 55900, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Scraggy - Dragon Pulse - Tutor
  (559, 55900, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Scraggy - Drain Punch - Tutor
  (559, 55900, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Scraggy - Zen Headbutt - Tutor
  (559, 55900, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Scraggy - Iron Head - Tutor
  (559, 55900, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Scraggy - Foul Play - Tutor
  (559, 55900, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Scraggy - Dual Chop - Tutor
  (559, 55900, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),

  -- Scrafty - Sand Attack - Level 1
  (560, 56000, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scrafty - Headbutt - Level 1
  (560, 56000, 29, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scrafty - Leer - Level 1
  (560, 56000, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Scrafty - Feint Attack - Level 1
  (560, 56000, 185, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Scrafty - Sand Attack - Level 5
  (560, 56000, 28, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Scrafty - Feint Attack - Level 9
  (560, 56000, 185, 16, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Scrafty - Swagger - Level 12
  (560, 56000, 207, 16, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Scrafty - Low Kick - Level 16
  (560, 56000, 67, 16, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Scrafty - Payback - Level 20
  (560, 56000, 371, 16, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Scrafty - Brick Break - Level 23
  (560, 56000, 280, 16, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Scrafty - Chip Away - Level 27
  (560, 56000, 498, 16, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Scrafty - High Jump Kick - Level 31
  (560, 56000, 136, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Scrafty - Scary Face - Level 34
  (560, 56000, 184, 16, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Scrafty - Crunch - Level 38
  (560, 56000, 242, 16, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Scrafty - Facade - Level 45
  (560, 56000, 263, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Scrafty - Rock Climb - Level 51
  (560, 56000, 431, 16, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Scrafty - Focus Punch - Level 58
  (560, 56000, 264, 16, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Scrafty - Head Smash - Level 65
  (560, 56000, 457, 16, NULL, 1, 65, NULL, NULL, NULL, 18),
  -- Scrafty - Work Up - TM01
  (560, 56000, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 19),
  -- Scrafty - Dragon Claw - TM02
  (560, 56000, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 20),
  -- Scrafty - Roar - TM05
  (560, 56000, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 21),
  -- Scrafty - Toxic - TM06
  (560, 56000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Scrafty - Bulk Up - TM08
  (560, 56000, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 23),
  -- Scrafty - Hidden Power - TM10
  (560, 56000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Scrafty - Sunny Day - TM11
  (560, 56000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Scrafty - Taunt - TM12
  (560, 56000, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 26),
  -- Scrafty - Hyper Beam - TM15
  (560, 56000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 27),
  -- Scrafty - Protect - TM17
  (560, 56000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Scrafty - Rain Dance - TM18
  (560, 56000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 29),
  -- Scrafty - Frustration - TM21
  (560, 56000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 30),
  -- Scrafty - Smack Down - TM23
  (560, 56000, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 31),
  -- Scrafty - Return - TM27
  (560, 56000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Scrafty - Brick Break - TM31
  (560, 56000, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 33),
  -- Scrafty - Double Team - TM32
  (560, 56000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Scrafty - Sludge Bomb - TM36
  (560, 56000, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 35),
  -- Scrafty - Rock Tomb - TM39
  (560, 56000, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 36),
  -- Scrafty - Torment - TM41
  (560, 56000, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 37),
  -- Scrafty - Facade - TM42
  (560, 56000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Scrafty - Rest - TM44
  (560, 56000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Scrafty - Attract - TM45
  (560, 56000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Scrafty - Thief - TM46
  (560, 56000, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 41),
  -- Scrafty - Low Sweep - TM47
  (560, 56000, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 42),
  -- Scrafty - Round - TM48
  (560, 56000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 43),
  -- Scrafty - Focus Blast - TM52
  (560, 56000, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 44),
  -- Scrafty - Fling - TM56
  (560, 56000, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 45),
  -- Scrafty - Payback - TM66
  (560, 56000, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 46),
  -- Scrafty - Giga Impact - TM68
  (560, 56000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 47),
  -- Scrafty - Stone Edge - TM71
  (560, 56000, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 48),
  -- Scrafty - Rock Slide - TM80
  (560, 56000, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 49),
  -- Scrafty - Dragon Tail - TM82
  (560, 56000, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 50),
  -- Scrafty - Poison Jab - TM84
  (560, 56000, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 51),
  -- Scrafty - Grass Knot - TM86
  (560, 56000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 52),
  -- Scrafty - Swagger - TM87
  (560, 56000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 53),
  -- Scrafty - Sleep Talk - TM88
  (560, 56000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 54),
  -- Scrafty - Substitute - TM90
  (560, 56000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 55),
  -- Scrafty - Snarl - TM95
  (560, 56000, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 56),
  -- Scrafty - Dark Pulse - TM97
  (560, 56000, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 57),
  -- Scrafty - Confide - TM100
  (560, 56000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 58),
  -- Scrafty - Fire Punch - Tutor
  (560, 56000, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Scrafty - Ice Punch - Tutor
  (560, 56000, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Scrafty - Thunder Punch - Tutor
  (560, 56000, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Scrafty - Low Kick - Tutor
  (560, 56000, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Scrafty - Super Fang - Tutor
  (560, 56000, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Scrafty - Snore - Tutor
  (560, 56000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Scrafty - Spite - Tutor
  (560, 56000, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Scrafty - Outrage - Tutor
  (560, 56000, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Scrafty - Iron Tail - Tutor
  (560, 56000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Scrafty - Focus Punch - Tutor
  (560, 56000, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Scrafty - Knock Off - Tutor
  (560, 56000, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Scrafty - Snatch - Tutor
  (560, 56000, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Scrafty - Iron Defense - Tutor
  (560, 56000, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Scrafty - Dragon Pulse - Tutor
  (560, 56000, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Scrafty - Drain Punch - Tutor
  (560, 56000, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Scrafty - Zen Headbutt - Tutor
  (560, 56000, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Scrafty - Iron Head - Tutor
  (560, 56000, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Scrafty - Foul Play - Tutor
  (560, 56000, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Scrafty - Dual Chop - Tutor
  (560, 56000, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Scrafty - Throat Chop - Tutor
  (560, 56000, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),

  -- Sigilyph - Gust - Level 1
  (561, 56100, 16, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sigilyph - Miracle Eye - Level 1
  (561, 56100, 357, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sigilyph - Hypnosis - Level 4
  (561, 56100, 95, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Sigilyph - Psywave - Level 8
  (561, 56100, 149, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Sigilyph - Tailwind - Level 11
  (561, 56100, 366, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Sigilyph - Whirlwind - Level 14
  (561, 56100, 18, 16, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Sigilyph - Psybeam - Level 18
  (561, 56100, 60, 16, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Sigilyph - Air Cutter - Level 21
  (561, 56100, 314, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Sigilyph - Light Screen - Level 24
  (561, 56100, 113, 16, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Sigilyph - Reflect - Level 28
  (561, 56100, 115, 16, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Sigilyph - Synchronoise - Level 31
  (561, 56100, 485, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Sigilyph - Mirror Move - Level 34
  (561, 56100, 119, 16, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Sigilyph - Gravity - Level 38
  (561, 56100, 356, 16, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Sigilyph - Air Slash - Level 41
  (561, 56100, 403, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Sigilyph - Psychic - Level 44
  (561, 56100, 94, 16, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Sigilyph - Cosmic Power - Level 48
  (561, 56100, 322, 16, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Sigilyph - Sky Attack - Level 50
  (561, 56100, 143, 16, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Sigilyph - Psyshock - TM03
  (561, 56100, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 18),
  -- Sigilyph - Calm Mind - TM04
  (561, 56100, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 19),
  -- Sigilyph - Toxic - TM06
  (561, 56100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Sigilyph - Hidden Power - TM10
  (561, 56100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Sigilyph - Ice Beam - TM13
  (561, 56100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 22),
  -- Sigilyph - Hyper Beam - TM15
  (561, 56100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Sigilyph - Light Screen - TM16
  (561, 56100, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 24),
  -- Sigilyph - Protect - TM17
  (561, 56100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Sigilyph - Rain Dance - TM18
  (561, 56100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Sigilyph - Roost - TM19
  (561, 56100, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 27),
  -- Sigilyph - Safeguard - TM20
  (561, 56100, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 28),
  -- Sigilyph - Frustration - TM21
  (561, 56100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Sigilyph - Solar Beam - TM22
  (561, 56100, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 30),
  -- Sigilyph - Smack Down - TM23
  (561, 56100, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 31),
  -- Sigilyph - Return - TM27
  (561, 56100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Sigilyph - Psychic - TM29
  (561, 56100, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 33),
  -- Sigilyph - Shadow Ball - TM30
  (561, 56100, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 34),
  -- Sigilyph - Double Team - TM32
  (561, 56100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Sigilyph - Reflect - TM33
  (561, 56100, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 36),
  -- Sigilyph - Aerial Ace - TM40
  (561, 56100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 37),
  -- Sigilyph - Facade - TM42
  (561, 56100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Sigilyph - Rest - TM44
  (561, 56100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Sigilyph - Attract - TM45
  (561, 56100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Sigilyph - Thief - TM46
  (561, 56100, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 41),
  -- Sigilyph - Round - TM48
  (561, 56100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Sigilyph - Steel Wing - TM51
  (561, 56100, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 43),
  -- Sigilyph - Energy Ball - TM53
  (561, 56100, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 44),
  -- Sigilyph - Charge Beam - TM57
  (561, 56100, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 45),
  -- Sigilyph - Thunder Wave - TM73
  (561, 56100, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 46),
  -- Sigilyph - Fly - TM76
  (561, 56100, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 47),
  -- Sigilyph - Psych Up - TM77
  (561, 56100, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 48),
  -- Sigilyph - Dream Eater - TM85
  (561, 56100, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 49),
  -- Sigilyph - Swagger - TM87
  (561, 56100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 50),
  -- Sigilyph - Sleep Talk - TM88
  (561, 56100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 51),
  -- Sigilyph - Substitute - TM90
  (561, 56100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 52),
  -- Sigilyph - Flash Cannon - TM91
  (561, 56100, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 53),
  -- Sigilyph - Trick Room - TM92
  (561, 56100, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 54),
  -- Sigilyph - Dark Pulse - TM97
  (561, 56100, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 55),
  -- Sigilyph - Dazzling Gleam - TM99
  (561, 56100, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 56),
  -- Sigilyph - Confide - TM100
  (561, 56100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 57),
  -- Sigilyph - Steel Wing - Egg
  (561, 56100, 211, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sigilyph - Ancient Power - Egg
  (561, 56100, 246, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sigilyph - Future Sight - Egg
  (561, 56100, 248, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sigilyph - Skill Swap - Egg
  (561, 56100, 285, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sigilyph - Roost - Egg
  (561, 56100, 355, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sigilyph - Psycho Shift - Egg
  (561, 56100, 375, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sigilyph - Stored Power - Egg
  (561, 56100, 500, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Sigilyph - Sky Attack - Tutor
  (561, 56100, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Sigilyph - Snore - Tutor
  (561, 56100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Sigilyph - Icy Wind - Tutor
  (561, 56100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Sigilyph - Heat Wave - Tutor
  (561, 56100, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Sigilyph - Trick - Tutor
  (561, 56100, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Sigilyph - Magic Coat - Tutor
  (561, 56100, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Sigilyph - Skill Swap - Tutor
  (561, 56100, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Sigilyph - Signal Beam - Tutor
  (561, 56100, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Sigilyph - Shock Wave - Tutor
  (561, 56100, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Sigilyph - Gravity - Tutor
  (561, 56100, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Sigilyph - Tailwind - Tutor
  (561, 56100, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Sigilyph - Zen Headbutt - Tutor
  (561, 56100, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Sigilyph - Defog - Tutor
  (561, 56100, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Sigilyph - Telekinesis - Tutor
  (561, 56100, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Sigilyph - Magic Room - Tutor
  (561, 56100, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),

  -- Yamask - Protect - Level 1
  (562, 56200, 182, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yamask - Astonish - Level 1
  (562, 56200, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yamask - Disable - Level 5
  (562, 56200, 50, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Yamask - Haze - Level 9
  (562, 56200, 114, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Yamask - Night Shade - Level 13
  (562, 56200, 101, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Yamask - Hex - Level 17
  (562, 56200, 506, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Yamask - Will-O-Wisp - Level 21
  (562, 56200, 261, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Yamask - Ominous Wind - Level 25
  (562, 56200, 466, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Yamask - Curse - Level 29
  (562, 56200, 174, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Yamask - Guard Split - Level 33
  (562, 56200, 470, 16, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Yamask - Power Split - Level 33
  (562, 56200, 471, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Yamask - Shadow Ball - Level 37
  (562, 56200, 247, 16, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Yamask - Grudge - Level 41
  (562, 56200, 288, 16, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Yamask - Mean Look - Level 45
  (562, 56200, 212, 16, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Yamask - Destiny Bond - Level 49
  (562, 56200, 194, 16, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Yamask - Calm Mind - TM04
  (562, 56200, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 16),
  -- Yamask - Toxic - TM06
  (562, 56200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Yamask - Hidden Power - TM10
  (562, 56200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Yamask - Protect - TM17
  (562, 56200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Yamask - Rain Dance - TM18
  (562, 56200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 20),
  -- Yamask - Safeguard - TM20
  (562, 56200, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 21),
  -- Yamask - Frustration - TM21
  (562, 56200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Yamask - Return - TM27
  (562, 56200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 23),
  -- Yamask - Psychic - TM29
  (562, 56200, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 24),
  -- Yamask - Shadow Ball - TM30
  (562, 56200, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 25),
  -- Yamask - Double Team - TM32
  (562, 56200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Yamask - Facade - TM42
  (562, 56200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Yamask - Rest - TM44
  (562, 56200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Yamask - Attract - TM45
  (562, 56200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Yamask - Thief - TM46
  (562, 56200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 30),
  -- Yamask - Round - TM48
  (562, 56200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Yamask - Energy Ball - TM53
  (562, 56200, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 32),
  -- Yamask - Will-O-Wisp - TM61
  (562, 56200, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 33),
  -- Yamask - Embargo - TM63
  (562, 56200, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 34),
  -- Yamask - Payback - TM66
  (562, 56200, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 35),
  -- Yamask - Psych Up - TM77
  (562, 56200, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 36),
  -- Yamask - Infestation - TM83
  (562, 56200, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 37),
  -- Yamask - Dream Eater - TM85
  (562, 56200, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 38),
  -- Yamask - Swagger - TM87
  (562, 56200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Yamask - Sleep Talk - TM88
  (562, 56200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Yamask - Substitute - TM90
  (562, 56200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Yamask - Trick Room - TM92
  (562, 56200, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 42),
  -- Yamask - Dark Pulse - TM97
  (562, 56200, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 43),
  -- Yamask - Confide - TM100
  (562, 56200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Yamask - Disable - Egg
  (562, 56200, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Yamask - Nightmare - Egg
  (562, 56200, 171, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Yamask - Endure - Egg
  (562, 56200, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Yamask - Memento - Egg
  (562, 56200, 262, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Yamask - Imprison - Egg
  (562, 56200, 286, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Yamask - Fake Tears - Egg
  (562, 56200, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Yamask - Heal Block - Egg
  (562, 56200, 377, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Yamask - Toxic Spikes - Egg
  (562, 56200, 390, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Yamask - Nasty Plot - Egg
  (562, 56200, 417, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Yamask - Ally Switch - Egg
  (562, 56200, 502, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Yamask - Crafty Shield - Egg
  (562, 56200, 578, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Yamask - Snore - Tutor
  (562, 56200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Yamask - Spite - Tutor
  (562, 56200, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Yamask - Pain Split - Tutor
  (562, 56200, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Yamask - Trick - Tutor
  (562, 56200, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Yamask - Role Play - Tutor
  (562, 56200, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Yamask - Magic Coat - Tutor
  (562, 56200, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Yamask - Knock Off - Tutor
  (562, 56200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Yamask - Skill Swap - Tutor
  (562, 56200, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Yamask - Snatch - Tutor
  (562, 56200, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Yamask - Iron Defense - Tutor
  (562, 56200, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Yamask - Block - Tutor
  (562, 56200, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Yamask - Shock Wave - Tutor
  (562, 56200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Yamask - Zen Headbutt - Tutor
  (562, 56200, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Yamask - Wonder Room - Tutor
  (562, 56200, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Yamask - Telekinesis - Tutor
  (562, 56200, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Yamask - After You - Tutor
  (562, 56200, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Yamask - Ally Switch - Tutor
  (562, 56200, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),

  -- Cofagrigus - Disable - Level 1
  (563, 56300, 50, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cofagrigus - Haze - Level 1
  (563, 56300, 114, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cofagrigus - Protect - Level 1
  (563, 56300, 182, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cofagrigus - Scary Face - Level 1
  (563, 56300, 184, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cofagrigus - Astonish - Level 1
  (563, 56300, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cofagrigus - Disable - Level 5
  (563, 56300, 50, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Cofagrigus - Haze - Level 9
  (563, 56300, 114, 16, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Cofagrigus - Night Shade - Level 13
  (563, 56300, 101, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Cofagrigus - Hex - Level 17
  (563, 56300, 506, 16, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Cofagrigus - Will-O-Wisp - Level 21
  (563, 56300, 261, 16, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Cofagrigus - Ominous Wind - Level 25
  (563, 56300, 466, 16, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Cofagrigus - Curse - Level 29
  (563, 56300, 174, 16, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Cofagrigus - Guard Split - Level 33
  (563, 56300, 470, 16, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Cofagrigus - Power Split - Level 33
  (563, 56300, 471, 16, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Cofagrigus - Shadow Ball - Level 39
  (563, 56300, 247, 16, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Cofagrigus - Grudge - Level 45
  (563, 56300, 288, 16, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Cofagrigus - Mean Look - Level 51
  (563, 56300, 212, 16, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Cofagrigus - Destiny Bond - Level 57
  (563, 56300, 194, 16, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Cofagrigus - Calm Mind - TM04
  (563, 56300, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 19),
  -- Cofagrigus - Toxic - TM06
  (563, 56300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Cofagrigus - Hidden Power - TM10
  (563, 56300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Cofagrigus - Hyper Beam - TM15
  (563, 56300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 22),
  -- Cofagrigus - Protect - TM17
  (563, 56300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Cofagrigus - Rain Dance - TM18
  (563, 56300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Cofagrigus - Safeguard - TM20
  (563, 56300, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 25),
  -- Cofagrigus - Frustration - TM21
  (563, 56300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Cofagrigus - Return - TM27
  (563, 56300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Cofagrigus - Psychic - TM29
  (563, 56300, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 28),
  -- Cofagrigus - Shadow Ball - TM30
  (563, 56300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 29),
  -- Cofagrigus - Double Team - TM32
  (563, 56300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Cofagrigus - Facade - TM42
  (563, 56300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Cofagrigus - Rest - TM44
  (563, 56300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Cofagrigus - Attract - TM45
  (563, 56300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Cofagrigus - Thief - TM46
  (563, 56300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 34),
  -- Cofagrigus - Round - TM48
  (563, 56300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Cofagrigus - Energy Ball - TM53
  (563, 56300, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 36),
  -- Cofagrigus - Will-O-Wisp - TM61
  (563, 56300, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 37),
  -- Cofagrigus - Embargo - TM63
  (563, 56300, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 38),
  -- Cofagrigus - Payback - TM66
  (563, 56300, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 39),
  -- Cofagrigus - Giga Impact - TM68
  (563, 56300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Cofagrigus - Psych Up - TM77
  (563, 56300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 41),
  -- Cofagrigus - Infestation - TM83
  (563, 56300, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 42),
  -- Cofagrigus - Dream Eater - TM85
  (563, 56300, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 43),
  -- Cofagrigus - Grass Knot - TM86
  (563, 56300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 44),
  -- Cofagrigus - Swagger - TM87
  (563, 56300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Cofagrigus - Sleep Talk - TM88
  (563, 56300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Cofagrigus - Substitute - TM90
  (563, 56300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Cofagrigus - Trick Room - TM92
  (563, 56300, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 48),
  -- Cofagrigus - Dark Pulse - TM97
  (563, 56300, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 49),
  -- Cofagrigus - Confide - TM100
  (563, 56300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Cofagrigus - Snore - Tutor
  (563, 56300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Cofagrigus - Spite - Tutor
  (563, 56300, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Cofagrigus - Pain Split - Tutor
  (563, 56300, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Cofagrigus - Trick - Tutor
  (563, 56300, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Cofagrigus - Role Play - Tutor
  (563, 56300, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Cofagrigus - Magic Coat - Tutor
  (563, 56300, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Cofagrigus - Knock Off - Tutor
  (563, 56300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Cofagrigus - Skill Swap - Tutor
  (563, 56300, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Cofagrigus - Snatch - Tutor
  (563, 56300, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Cofagrigus - Iron Defense - Tutor
  (563, 56300, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Cofagrigus - Block - Tutor
  (563, 56300, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Cofagrigus - Shock Wave - Tutor
  (563, 56300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Cofagrigus - Zen Headbutt - Tutor
  (563, 56300, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Cofagrigus - Wonder Room - Tutor
  (563, 56300, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Cofagrigus - Telekinesis - Tutor
  (563, 56300, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Cofagrigus - After You - Tutor
  (563, 56300, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Cofagrigus - Ally Switch - Tutor
  (563, 56300, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Cofagrigus - Scary Face - Evolution
  (563, 56300, 184, 16, NULL, 7, NULL, NULL, NULL, NULL, 68),

  -- Tirtouga - Water Gun - Level 1
  (564, 56400, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tirtouga - Withdraw - Level 1
  (564, 56400, 110, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tirtouga - Bide - Level 1
  (564, 56400, 117, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tirtouga - Rollout - Level 5
  (564, 56400, 205, 16, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Tirtouga - Bite - Level 8
  (564, 56400, 44, 16, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Tirtouga - Protect - Level 11
  (564, 56400, 182, 16, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Tirtouga - Aqua Jet - Level 15
  (564, 56400, 453, 16, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Tirtouga - Ancient Power - Level 18
  (564, 56400, 246, 16, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Tirtouga - Crunch - Level 21
  (564, 56400, 242, 16, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Tirtouga - Wide Guard - Level 25
  (564, 56400, 469, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Tirtouga - Brine - Level 28
  (564, 56400, 362, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Tirtouga - Smack Down - Level 31
  (564, 56400, 479, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Tirtouga - Curse - Level 35
  (564, 56400, 174, 16, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Tirtouga - Shell Smash - Level 38
  (564, 56400, 504, 16, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Tirtouga - Aqua Tail - Level 41
  (564, 56400, 401, 16, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Tirtouga - Rock Slide - Level 45
  (564, 56400, 157, 16, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Tirtouga - Rain Dance - Level 48
  (564, 56400, 240, 16, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Tirtouga - Hydro Pump - Level 50
  (564, 56400, 56, 16, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Tirtouga - Toxic - TM06
  (564, 56400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Tirtouga - Hidden Power - TM10
  (564, 56400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Tirtouga - Ice Beam - TM13
  (564, 56400, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Tirtouga - Blizzard - TM14
  (564, 56400, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 22),
  -- Tirtouga - Protect - TM17
  (564, 56400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Tirtouga - Rain Dance - TM18
  (564, 56400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Tirtouga - Frustration - TM21
  (564, 56400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Tirtouga - Smack Down - TM23
  (564, 56400, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 26),
  -- Tirtouga - Earthquake - TM26
  (564, 56400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 27),
  -- Tirtouga - Return - TM27
  (564, 56400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Tirtouga - Double Team - TM32
  (564, 56400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Tirtouga - Sandstorm - TM37
  (564, 56400, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 30),
  -- Tirtouga - Rock Tomb - TM39
  (564, 56400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 31),
  -- Tirtouga - Facade - TM42
  (564, 56400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Tirtouga - Rest - TM44
  (564, 56400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Tirtouga - Attract - TM45
  (564, 56400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Tirtouga - Round - TM48
  (564, 56400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Tirtouga - Scald - TM55
  (564, 56400, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 36),
  -- Tirtouga - Rock Polish - TM69
  (564, 56400, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 37),
  -- Tirtouga - Stone Edge - TM71
  (564, 56400, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 38),
  -- Tirtouga - Bulldoze - TM78
  (564, 56400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 39),
  -- Tirtouga - Rock Slide - TM80
  (564, 56400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 40),
  -- Tirtouga - Swagger - TM87
  (564, 56400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 41),
  -- Tirtouga - Sleep Talk - TM88
  (564, 56400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 42),
  -- Tirtouga - Substitute - TM90
  (564, 56400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 43),
  -- Tirtouga - Surf - TM94
  (564, 56400, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 44),
  -- Tirtouga - Waterfall - TM98
  (564, 56400, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 45),
  -- Tirtouga - Confide - TM100
  (564, 56400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Tirtouga - Slam - Egg
  (564, 56400, 21, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Tirtouga - Body Slam - Egg
  (564, 56400, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Tirtouga - Rock Throw - Egg
  (564, 56400, 88, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Tirtouga - Bide - Egg
  (564, 56400, 117, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tirtouga - Flail - Egg
  (564, 56400, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tirtouga - Whirlpool - Egg
  (564, 56400, 250, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tirtouga - Knock Off - Egg
  (564, 56400, 282, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tirtouga - Iron Defense - Egg
  (564, 56400, 334, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tirtouga - Water Pulse - Egg
  (564, 56400, 352, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Tirtouga - Guard Swap - Egg
  (564, 56400, 385, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tirtouga - Liquidation - Egg
  (564, 56400, 710, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tirtouga - Snore - Tutor
  (564, 56400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Tirtouga - Icy Wind - Tutor
  (564, 56400, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Tirtouga - Iron Tail - Tutor
  (564, 56400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Tirtouga - Knock Off - Tutor
  (564, 56400, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Tirtouga - Iron Defense - Tutor
  (564, 56400, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Tirtouga - Block - Tutor
  (564, 56400, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Tirtouga - Water Pulse - Tutor
  (564, 56400, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Tirtouga - Aqua Tail - Tutor
  (564, 56400, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Tirtouga - Earth Power - Tutor
  (564, 56400, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Tirtouga - Zen Headbutt - Tutor
  (564, 56400, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Tirtouga - Stealth Rock - Tutor
  (564, 56400, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Tirtouga - Liquidation - Tutor
  (564, 56400, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),

  -- Carracosta - Water Gun - Level 1
  (565, 56500, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carracosta - Withdraw - Level 1
  (565, 56500, 110, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carracosta - Bide - Level 1
  (565, 56500, 117, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Carracosta - Rollout - Level 1
  (565, 56500, 205, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Carracosta - Rollout - Level 5
  (565, 56500, 205, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Carracosta - Bite - Level 8
  (565, 56500, 44, 16, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Carracosta - Protect - Level 11
  (565, 56500, 182, 16, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Carracosta - Aqua Jet - Level 15
  (565, 56500, 453, 16, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Carracosta - Ancient Power - Level 18
  (565, 56500, 246, 16, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Carracosta - Crunch - Level 21
  (565, 56500, 242, 16, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Carracosta - Wide Guard - Level 25
  (565, 56500, 469, 16, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Carracosta - Brine - Level 28
  (565, 56500, 362, 16, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Carracosta - Smack Down - Level 31
  (565, 56500, 479, 16, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Carracosta - Curse - Level 35
  (565, 56500, 174, 16, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Carracosta - Shell Smash - Level 40
  (565, 56500, 504, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Carracosta - Aqua Tail - Level 45
  (565, 56500, 401, 16, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Carracosta - Rock Slide - Level 51
  (565, 56500, 157, 16, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Carracosta - Rain Dance - Level 56
  (565, 56500, 240, 16, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Carracosta - Hydro Pump - Level 61
  (565, 56500, 56, 16, NULL, 1, 61, NULL, NULL, NULL, 19),
  -- Carracosta - Toxic - TM06
  (565, 56500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Carracosta - Hidden Power - TM10
  (565, 56500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Carracosta - Ice Beam - TM13
  (565, 56500, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 22),
  -- Carracosta - Blizzard - TM14
  (565, 56500, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 23),
  -- Carracosta - Hyper Beam - TM15
  (565, 56500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Carracosta - Protect - TM17
  (565, 56500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Carracosta - Rain Dance - TM18
  (565, 56500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Carracosta - Frustration - TM21
  (565, 56500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Carracosta - Smack Down - TM23
  (565, 56500, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 28),
  -- Carracosta - Earthquake - TM26
  (565, 56500, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 29),
  -- Carracosta - Return - TM27
  (565, 56500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Carracosta - Double Team - TM32
  (565, 56500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Carracosta - Sandstorm - TM37
  (565, 56500, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 32),
  -- Carracosta - Rock Tomb - TM39
  (565, 56500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 33),
  -- Carracosta - Facade - TM42
  (565, 56500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Carracosta - Rest - TM44
  (565, 56500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Carracosta - Attract - TM45
  (565, 56500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Carracosta - Round - TM48
  (565, 56500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Carracosta - Focus Blast - TM52
  (565, 56500, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 38),
  -- Carracosta - Scald - TM55
  (565, 56500, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 39),
  -- Carracosta - Giga Impact - TM68
  (565, 56500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Carracosta - Rock Polish - TM69
  (565, 56500, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 41),
  -- Carracosta - Stone Edge - TM71
  (565, 56500, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 42),
  -- Carracosta - Bulldoze - TM78
  (565, 56500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 43),
  -- Carracosta - Rock Slide - TM80
  (565, 56500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 44),
  -- Carracosta - Swagger - TM87
  (565, 56500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Carracosta - Sleep Talk - TM88
  (565, 56500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Carracosta - Substitute - TM90
  (565, 56500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Carracosta - Surf - TM94
  (565, 56500, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 48),
  -- Carracosta - Waterfall - TM98
  (565, 56500, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 49),
  -- Carracosta - Confide - TM100
  (565, 56500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Carracosta - Low Kick - Tutor
  (565, 56500, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Carracosta - Snore - Tutor
  (565, 56500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Carracosta - Icy Wind - Tutor
  (565, 56500, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Carracosta - Iron Tail - Tutor
  (565, 56500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Carracosta - Superpower - Tutor
  (565, 56500, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Carracosta - Knock Off - Tutor
  (565, 56500, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Carracosta - Iron Defense - Tutor
  (565, 56500, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Carracosta - Block - Tutor
  (565, 56500, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Carracosta - Water Pulse - Tutor
  (565, 56500, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Carracosta - Aqua Tail - Tutor
  (565, 56500, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Carracosta - Earth Power - Tutor
  (565, 56500, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Carracosta - Zen Headbutt - Tutor
  (565, 56500, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Carracosta - Iron Head - Tutor
  (565, 56500, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Carracosta - Stealth Rock - Tutor
  (565, 56500, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Carracosta - Liquidation - Tutor
  (565, 56500, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),

  -- Archen - Wing Attack - Level 1
  (566, 56600, 17, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Archen - Leer - Level 1
  (566, 56600, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Archen - Quick Attack - Level 1
  (566, 56600, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Archen - Rock Throw - Level 5
  (566, 56600, 88, 16, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Archen - Double Team - Level 8
  (566, 56600, 104, 16, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Archen - Scary Face - Level 11
  (566, 56600, 184, 16, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Archen - Pluck - Level 15
  (566, 56600, 365, 16, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Archen - Ancient Power - Level 18
  (566, 56600, 246, 16, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Archen - Agility - Level 21
  (566, 56600, 97, 16, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Archen - Quick Guard - Level 25
  (566, 56600, 501, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Archen - Acrobatics - Level 28
  (566, 56600, 512, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Archen - Dragon Breath - Level 31
  (566, 56600, 225, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Archen - Crunch - Level 35
  (566, 56600, 242, 16, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Archen - Endeavor - Level 38
  (566, 56600, 283, 16, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Archen - U-turn - Level 41
  (566, 56600, 369, 16, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Archen - Rock Slide - Level 45
  (566, 56600, 157, 16, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Archen - Dragon Claw - Level 48
  (566, 56600, 337, 16, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Archen - Thrash - Level 50
  (566, 56600, 37, 16, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Archen - Dragon Claw - TM02
  (566, 56600, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 19),
  -- Archen - Roar - TM05
  (566, 56600, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 20),
  -- Archen - Toxic - TM06
  (566, 56600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Archen - Hidden Power - TM10
  (566, 56600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Archen - Taunt - TM12
  (566, 56600, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 23),
  -- Archen - Protect - TM17
  (566, 56600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Archen - Roost - TM19
  (566, 56600, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 25),
  -- Archen - Frustration - TM21
  (566, 56600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Archen - Smack Down - TM23
  (566, 56600, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 27),
  -- Archen - Earthquake - TM26
  (566, 56600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 28),
  -- Archen - Return - TM27
  (566, 56600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Archen - Double Team - TM32
  (566, 56600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Archen - Sandstorm - TM37
  (566, 56600, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 31),
  -- Archen - Rock Tomb - TM39
  (566, 56600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 32),
  -- Archen - Aerial Ace - TM40
  (566, 56600, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 33),
  -- Archen - Torment - TM41
  (566, 56600, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 34),
  -- Archen - Facade - TM42
  (566, 56600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Archen - Rest - TM44
  (566, 56600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Archen - Attract - TM45
  (566, 56600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Archen - Round - TM48
  (566, 56600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Archen - Steel Wing - TM51
  (566, 56600, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 39),
  -- Archen - Acrobatics - TM62
  (566, 56600, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 40),
  -- Archen - Shadow Claw - TM65
  (566, 56600, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 41),
  -- Archen - Rock Polish - TM69
  (566, 56600, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 42),
  -- Archen - Stone Edge - TM71
  (566, 56600, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 43),
  -- Archen - Bulldoze - TM78
  (566, 56600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 44),
  -- Archen - Rock Slide - TM80
  (566, 56600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 45),
  -- Archen - Swagger - TM87
  (566, 56600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Archen - Sleep Talk - TM88
  (566, 56600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Archen - U-turn - TM89
  (566, 56600, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 48),
  -- Archen - Substitute - TM90
  (566, 56600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Archen - Confide - TM100
  (566, 56600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Archen - Bite - Egg
  (566, 56600, 44, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Archen - Steel Wing - Egg
  (566, 56600, 211, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Archen - Knock Off - Egg
  (566, 56600, 282, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Archen - Dragon Pulse - Egg
  (566, 56600, 406, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Archen - Earth Power - Egg
  (566, 56600, 414, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Archen - Switcheroo - Egg
  (566, 56600, 415, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Archen - Defog - Egg
  (566, 56600, 432, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Archen - Head Smash - Egg
  (566, 56600, 457, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Archen - Ally Switch - Egg
  (566, 56600, 502, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Archen - Snore - Tutor
  (566, 56600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Archen - Iron Tail - Tutor
  (566, 56600, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Archen - Uproar - Tutor
  (566, 56600, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Archen - Heat Wave - Tutor
  (566, 56600, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Archen - Knock Off - Tutor
  (566, 56600, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Archen - Endeavor - Tutor
  (566, 56600, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Archen - Iron Defense - Tutor
  (566, 56600, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Archen - Bounce - Tutor
  (566, 56600, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Archen - Tailwind - Tutor
  (566, 56600, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Archen - Aqua Tail - Tutor
  (566, 56600, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Archen - Dragon Pulse - Tutor
  (566, 56600, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Archen - Earth Power - Tutor
  (566, 56600, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Archen - Zen Headbutt - Tutor
  (566, 56600, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Archen - Defog - Tutor
  (566, 56600, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Archen - Stealth Rock - Tutor
  (566, 56600, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Archen - Ally Switch - Tutor
  (566, 56600, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),

  -- Archeops - Wing Attack - Level 1
  (567, 56700, 17, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Archeops - Leer - Level 1
  (567, 56700, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Archeops - Rock Throw - Level 1
  (567, 56700, 88, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Archeops - Quick Attack - Level 1
  (567, 56700, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Archeops - Rock Throw - Level 5
  (567, 56700, 88, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Archeops - Double Team - Level 8
  (567, 56700, 104, 16, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Archeops - Scary Face - Level 11
  (567, 56700, 184, 16, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Archeops - Pluck - Level 15
  (567, 56700, 365, 16, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Archeops - Ancient Power - Level 18
  (567, 56700, 246, 16, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Archeops - Agility - Level 21
  (567, 56700, 97, 16, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Archeops - Quick Guard - Level 25
  (567, 56700, 501, 16, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Archeops - Acrobatics - Level 28
  (567, 56700, 512, 16, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Archeops - Dragon Breath - Level 31
  (567, 56700, 225, 16, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Archeops - Crunch - Level 35
  (567, 56700, 242, 16, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Archeops - Endeavor - Level 40
  (567, 56700, 283, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Archeops - U-turn - Level 45
  (567, 56700, 369, 16, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Archeops - Rock Slide - Level 51
  (567, 56700, 157, 16, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Archeops - Dragon Claw - Level 56
  (567, 56700, 337, 16, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Archeops - Thrash - Level 61
  (567, 56700, 37, 16, NULL, 1, 61, NULL, NULL, NULL, 19),
  -- Archeops - Dragon Claw - TM02
  (567, 56700, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 20),
  -- Archeops - Roar - TM05
  (567, 56700, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 21),
  -- Archeops - Toxic - TM06
  (567, 56700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Archeops - Hidden Power - TM10
  (567, 56700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Archeops - Taunt - TM12
  (567, 56700, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Archeops - Hyper Beam - TM15
  (567, 56700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Archeops - Protect - TM17
  (567, 56700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Archeops - Roost - TM19
  (567, 56700, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 27),
  -- Archeops - Frustration - TM21
  (567, 56700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Archeops - Smack Down - TM23
  (567, 56700, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 29),
  -- Archeops - Earthquake - TM26
  (567, 56700, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 30),
  -- Archeops - Return - TM27
  (567, 56700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Archeops - Double Team - TM32
  (567, 56700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Archeops - Sandstorm - TM37
  (567, 56700, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 33),
  -- Archeops - Rock Tomb - TM39
  (567, 56700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 34),
  -- Archeops - Aerial Ace - TM40
  (567, 56700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 35),
  -- Archeops - Torment - TM41
  (567, 56700, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 36),
  -- Archeops - Facade - TM42
  (567, 56700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Archeops - Rest - TM44
  (567, 56700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Archeops - Attract - TM45
  (567, 56700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Archeops - Round - TM48
  (567, 56700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Archeops - Steel Wing - TM51
  (567, 56700, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 41),
  -- Archeops - Focus Blast - TM52
  (567, 56700, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 42),
  -- Archeops - Acrobatics - TM62
  (567, 56700, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 43),
  -- Archeops - Shadow Claw - TM65
  (567, 56700, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 44),
  -- Archeops - Giga Impact - TM68
  (567, 56700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 45),
  -- Archeops - Rock Polish - TM69
  (567, 56700, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 46),
  -- Archeops - Stone Edge - TM71
  (567, 56700, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 47),
  -- Archeops - Fly - TM76
  (567, 56700, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 48),
  -- Archeops - Bulldoze - TM78
  (567, 56700, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 49),
  -- Archeops - Rock Slide - TM80
  (567, 56700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 50),
  -- Archeops - Dragon Tail - TM82
  (567, 56700, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 51),
  -- Archeops - Swagger - TM87
  (567, 56700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 52),
  -- Archeops - Sleep Talk - TM88
  (567, 56700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 53),
  -- Archeops - U-turn - TM89
  (567, 56700, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 54),
  -- Archeops - Substitute - TM90
  (567, 56700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 55),
  -- Archeops - Confide - TM100
  (567, 56700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 56),
  -- Archeops - Sky Attack - Tutor
  (567, 56700, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Archeops - Snore - Tutor
  (567, 56700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Archeops - Outrage - Tutor
  (567, 56700, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Archeops - Iron Tail - Tutor
  (567, 56700, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Archeops - Uproar - Tutor
  (567, 56700, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Archeops - Heat Wave - Tutor
  (567, 56700, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Archeops - Knock Off - Tutor
  (567, 56700, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Archeops - Endeavor - Tutor
  (567, 56700, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Archeops - Iron Defense - Tutor
  (567, 56700, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Archeops - Bounce - Tutor
  (567, 56700, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Archeops - Tailwind - Tutor
  (567, 56700, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Archeops - Aqua Tail - Tutor
  (567, 56700, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Archeops - Dragon Pulse - Tutor
  (567, 56700, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Archeops - Earth Power - Tutor
  (567, 56700, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Archeops - Zen Headbutt - Tutor
  (567, 56700, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Archeops - Defog - Tutor
  (567, 56700, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Archeops - Stealth Rock - Tutor
  (567, 56700, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Archeops - Ally Switch - Tutor
  (567, 56700, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),

  -- Trubbish - Pound - Level 1
  (568, 56800, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Trubbish - Poison Gas - Level 1
  (568, 56800, 139, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Trubbish - Recycle - Level 3
  (568, 56800, 278, 16, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Trubbish - Toxic Spikes - Level 7
  (568, 56800, 390, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Trubbish - Acid Spray - Level 12
  (568, 56800, 491, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Trubbish - Double Slap - Level 14
  (568, 56800, 3, 16, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Trubbish - Sludge - Level 18
  (568, 56800, 124, 16, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Trubbish - Stockpile - Level 23
  (568, 56800, 254, 16, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Trubbish - Swallow - Level 23
  (568, 56800, 256, 16, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Trubbish - Take Down - Level 25
  (568, 56800, 36, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Trubbish - Sludge Bomb - Level 29
  (568, 56800, 188, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Trubbish - Clear Smog - Level 34
  (568, 56800, 499, 16, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Trubbish - Toxic - Level 36
  (568, 56800, 92, 16, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Trubbish - Amnesia - Level 40
  (568, 56800, 133, 16, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Trubbish - Belch - Level 42
  (568, 56800, 562, 16, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Trubbish - Gunk Shot - Level 45
  (568, 56800, 441, 16, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Trubbish - Explosion - Level 47
  (568, 56800, 153, 16, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Trubbish - Toxic - TM06
  (568, 56800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Trubbish - Venoshock - TM09
  (568, 56800, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 19),
  -- Trubbish - Hidden Power - TM10
  (568, 56800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Trubbish - Sunny Day - TM11
  (568, 56800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Trubbish - Protect - TM17
  (568, 56800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Trubbish - Rain Dance - TM18
  (568, 56800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Trubbish - Frustration - TM21
  (568, 56800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Trubbish - Return - TM27
  (568, 56800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Trubbish - Double Team - TM32
  (568, 56800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Trubbish - Sludge Wave - TM34
  (568, 56800, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 27),
  -- Trubbish - Sludge Bomb - TM36
  (568, 56800, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 28),
  -- Trubbish - Facade - TM42
  (568, 56800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Trubbish - Rest - TM44
  (568, 56800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Trubbish - Attract - TM45
  (568, 56800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Trubbish - Thief - TM46
  (568, 56800, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 32),
  -- Trubbish - Round - TM48
  (568, 56800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Trubbish - Explosion - TM64
  (568, 56800, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 34),
  -- Trubbish - Payback - TM66
  (568, 56800, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 35),
  -- Trubbish - Infestation - TM83
  (568, 56800, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 36),
  -- Trubbish - Swagger - TM87
  (568, 56800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Trubbish - Sleep Talk - TM88
  (568, 56800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Trubbish - Substitute - TM90
  (568, 56800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Trubbish - Dark Pulse - TM97
  (568, 56800, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 40),
  -- Trubbish - Confide - TM100
  (568, 56800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Trubbish - Sand Attack - Egg
  (568, 56800, 28, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Trubbish - Haze - Egg
  (568, 56800, 114, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Trubbish - Self-Destruct - Egg
  (568, 56800, 120, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Trubbish - Curse - Egg
  (568, 56800, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Trubbish - Spikes - Egg
  (568, 56800, 191, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Trubbish - Rollout - Egg
  (568, 56800, 205, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Trubbish - Mud Sport - Egg
  (568, 56800, 300, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Trubbish - Rock Blast - Egg
  (568, 56800, 350, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Trubbish - Autotomize - Egg
  (568, 56800, 475, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Trubbish - Snore - Tutor
  (568, 56800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Trubbish - Spite - Tutor
  (568, 56800, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Trubbish - Giga Drain - Tutor
  (568, 56800, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Trubbish - Pain Split - Tutor
  (568, 56800, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Trubbish - Recycle - Tutor
  (568, 56800, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Trubbish - Seed Bomb - Tutor
  (568, 56800, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Trubbish - Drain Punch - Tutor
  (568, 56800, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Trubbish - Gunk Shot - Tutor
  (568, 56800, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),

  -- Garbodor - Pound - Level 1
  (569, 56900, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Garbodor - Poison Gas - Level 1
  (569, 56900, 139, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Garbodor - Recycle - Level 1
  (569, 56900, 278, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Garbodor - Toxic Spikes - Level 1
  (569, 56900, 390, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Garbodor - Recycle - Level 3
  (569, 56900, 278, 16, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Garbodor - Toxic Spikes - Level 7
  (569, 56900, 390, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Garbodor - Acid Spray - Level 12
  (569, 56900, 491, 16, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Garbodor - Double Slap - Level 14
  (569, 56900, 3, 16, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Garbodor - Sludge - Level 18
  (569, 56900, 124, 16, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Garbodor - Stockpile - Level 23
  (569, 56900, 254, 16, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Garbodor - Swallow - Level 23
  (569, 56900, 256, 16, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Garbodor - Body Slam - Level 25
  (569, 56900, 34, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Garbodor - Sludge Bomb - Level 29
  (569, 56900, 188, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Garbodor - Clear Smog - Level 34
  (569, 56900, 499, 16, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Garbodor - Toxic - Level 39
  (569, 56900, 92, 16, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Garbodor - Amnesia - Level 46
  (569, 56900, 133, 16, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Garbodor - Belch - Level 49
  (569, 56900, 562, 16, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Garbodor - Gunk Shot - Level 54
  (569, 56900, 441, 16, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Garbodor - Explosion - Level 59
  (569, 56900, 153, 16, NULL, 1, 59, NULL, NULL, NULL, 19),
  -- Garbodor - Toxic - TM06
  (569, 56900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Garbodor - Venoshock - TM09
  (569, 56900, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 21),
  -- Garbodor - Hidden Power - TM10
  (569, 56900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Garbodor - Sunny Day - TM11
  (569, 56900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Garbodor - Hyper Beam - TM15
  (569, 56900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Garbodor - Protect - TM17
  (569, 56900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Garbodor - Rain Dance - TM18
  (569, 56900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Garbodor - Frustration - TM21
  (569, 56900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Garbodor - Solar Beam - TM22
  (569, 56900, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 28),
  -- Garbodor - Smack Down - TM23
  (569, 56900, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 29),
  -- Garbodor - Thunderbolt - TM24
  (569, 56900, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 30),
  -- Garbodor - Return - TM27
  (569, 56900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Garbodor - Psychic - TM29
  (569, 56900, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 32),
  -- Garbodor - Double Team - TM32
  (569, 56900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Garbodor - Sludge Wave - TM34
  (569, 56900, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 34),
  -- Garbodor - Sludge Bomb - TM36
  (569, 56900, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 35),
  -- Garbodor - Facade - TM42
  (569, 56900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Garbodor - Rest - TM44
  (569, 56900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Garbodor - Attract - TM45
  (569, 56900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Garbodor - Thief - TM46
  (569, 56900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 39),
  -- Garbodor - Round - TM48
  (569, 56900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Garbodor - Focus Blast - TM52
  (569, 56900, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 41),
  -- Garbodor - Fling - TM56
  (569, 56900, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 42),
  -- Garbodor - Explosion - TM64
  (569, 56900, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 43),
  -- Garbodor - Payback - TM66
  (569, 56900, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 44),
  -- Garbodor - Giga Impact - TM68
  (569, 56900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 45),
  -- Garbodor - Rock Polish - TM69
  (569, 56900, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 46),
  -- Garbodor - Infestation - TM83
  (569, 56900, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 47),
  -- Garbodor - Swagger - TM87
  (569, 56900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Garbodor - Sleep Talk - TM88
  (569, 56900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Garbodor - Substitute - TM90
  (569, 56900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Garbodor - Dark Pulse - TM97
  (569, 56900, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 51),
  -- Garbodor - Confide - TM100
  (569, 56900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 52),
  -- Garbodor - Snore - Tutor
  (569, 56900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Garbodor - Spite - Tutor
  (569, 56900, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Garbodor - Giga Drain - Tutor
  (569, 56900, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Garbodor - Pain Split - Tutor
  (569, 56900, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Garbodor - Recycle - Tutor
  (569, 56900, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Garbodor - Seed Bomb - Tutor
  (569, 56900, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Garbodor - Drain Punch - Tutor
  (569, 56900, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Garbodor - Gunk Shot - Tutor
  (569, 56900, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Garbodor - Stomping Tantrum - Tutor
  (569, 56900, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),

  -- Zorua - Scratch - Level 1
  (570, 57000, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zorua - Leer - Level 1
  (570, 57000, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zorua - Pursuit - Level 5
  (570, 57000, 228, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zorua - Fake Tears - Level 9
  (570, 57000, 313, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Zorua - Fury Swipes - Level 13
  (570, 57000, 154, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Zorua - Feint Attack - Level 17
  (570, 57000, 185, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Zorua - Scary Face - Level 21
  (570, 57000, 184, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Zorua - Taunt - Level 25
  (570, 57000, 269, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Zorua - Foul Play - Level 29
  (570, 57000, 492, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Zorua - Torment - Level 33
  (570, 57000, 259, 16, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Zorua - Agility - Level 37
  (570, 57000, 97, 16, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Zorua - Embargo - Level 41
  (570, 57000, 373, 16, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Zorua - Punishment - Level 45
  (570, 57000, 386, 16, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Zorua - Nasty Plot - Level 49
  (570, 57000, 417, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Zorua - Imprison - Level 53
  (570, 57000, 286, 16, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Zorua - Night Daze - Level 57
  (570, 57000, 539, 16, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Zorua - Calm Mind - TM04
  (570, 57000, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 17),
  -- Zorua - Roar - TM05
  (570, 57000, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 18),
  -- Zorua - Toxic - TM06
  (570, 57000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Zorua - Hidden Power - TM10
  (570, 57000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Zorua - Sunny Day - TM11
  (570, 57000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Zorua - Taunt - TM12
  (570, 57000, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Zorua - Protect - TM17
  (570, 57000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Zorua - Rain Dance - TM18
  (570, 57000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Zorua - Frustration - TM21
  (570, 57000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Zorua - Return - TM27
  (570, 57000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Zorua - Shadow Ball - TM30
  (570, 57000, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Zorua - Double Team - TM32
  (570, 57000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Zorua - Aerial Ace - TM40
  (570, 57000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 29),
  -- Zorua - Torment - TM41
  (570, 57000, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 30),
  -- Zorua - Facade - TM42
  (570, 57000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Zorua - Rest - TM44
  (570, 57000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Zorua - Attract - TM45
  (570, 57000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Zorua - Thief - TM46
  (570, 57000, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 34),
  -- Zorua - Round - TM48
  (570, 57000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Zorua - Fling - TM56
  (570, 57000, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 36),
  -- Zorua - Embargo - TM63
  (570, 57000, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 37),
  -- Zorua - Payback - TM66
  (570, 57000, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 38),
  -- Zorua - Swords Dance - TM75
  (570, 57000, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 39),
  -- Zorua - Psych Up - TM77
  (570, 57000, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 40),
  -- Zorua - Grass Knot - TM86
  (570, 57000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 41),
  -- Zorua - Swagger - TM87
  (570, 57000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 42),
  -- Zorua - Sleep Talk - TM88
  (570, 57000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 43),
  -- Zorua - U-turn - TM89
  (570, 57000, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 44),
  -- Zorua - Substitute - TM90
  (570, 57000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Zorua - Snarl - TM95
  (570, 57000, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 46),
  -- Zorua - Dark Pulse - TM97
  (570, 57000, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 47),
  -- Zorua - Confide - TM100
  (570, 57000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Zorua - Counter - Egg
  (570, 57000, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Zorua - Detect - Egg
  (570, 57000, 197, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Zorua - Memento - Egg
  (570, 57000, 262, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Zorua - Snatch - Egg
  (570, 57000, 289, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Zorua - Extrasensory - Egg
  (570, 57000, 326, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Zorua - Copycat - Egg
  (570, 57000, 383, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Zorua - Sucker Punch - Egg
  (570, 57000, 389, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Zorua - Dark Pulse - Egg
  (570, 57000, 399, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Zorua - Captivate - Egg
  (570, 57000, 445, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Zorua - Snore - Tutor
  (570, 57000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Zorua - Spite - Tutor
  (570, 57000, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Zorua - Uproar - Tutor
  (570, 57000, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Zorua - Trick - Tutor
  (570, 57000, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Zorua - Knock Off - Tutor
  (570, 57000, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Zorua - Snatch - Tutor
  (570, 57000, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Zorua - Hyper Voice - Tutor
  (570, 57000, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Zorua - Bounce - Tutor
  (570, 57000, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Zorua - Covet - Tutor
  (570, 57000, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Zorua - Foul Play - Tutor
  (570, 57000, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),

  -- Zoroark - Scratch - Level 1
  (571, 57100, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zoroark - Leer - Level 1
  (571, 57100, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zoroark - Pursuit - Level 1
  (571, 57100, 228, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zoroark - Imprison - Level 1
  (571, 57100, 286, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zoroark - U-turn - Level 1
  (571, 57100, 369, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Zoroark - Night Slash - Level 1
  (571, 57100, 400, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Zoroark - Hone Claws - Level 1
  (571, 57100, 468, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Zoroark - Night Daze - Level 1
  (571, 57100, 539, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Zoroark - Pursuit - Level 5
  (571, 57100, 228, 16, NULL, 1, 5, NULL, NULL, NULL, 9),
  -- Zoroark - Hone Claws - Level 9
  (571, 57100, 468, 16, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Zoroark - Fury Swipes - Level 13
  (571, 57100, 154, 16, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Zoroark - Feint Attack - Level 17
  (571, 57100, 185, 16, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Zoroark - Scary Face - Level 21
  (571, 57100, 184, 16, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Zoroark - Taunt - Level 25
  (571, 57100, 269, 16, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Zoroark - Foul Play - Level 29
  (571, 57100, 492, 16, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Zoroark - Torment - Level 34
  (571, 57100, 259, 16, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Zoroark - Agility - Level 39
  (571, 57100, 97, 16, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Zoroark - Embargo - Level 44
  (571, 57100, 373, 16, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Zoroark - Punishment - Level 49
  (571, 57100, 386, 16, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Zoroark - Nasty Plot - Level 54
  (571, 57100, 417, 16, NULL, 1, 54, NULL, NULL, NULL, 20),
  -- Zoroark - Imprison - Level 59
  (571, 57100, 286, 16, NULL, 1, 59, NULL, NULL, NULL, 21),
  -- Zoroark - Night Daze - Level 64
  (571, 57100, 539, 16, NULL, 1, 64, NULL, NULL, NULL, 22),
  -- Zoroark - Calm Mind - TM04
  (571, 57100, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 23),
  -- Zoroark - Roar - TM05
  (571, 57100, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 24),
  -- Zoroark - Toxic - TM06
  (571, 57100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 25),
  -- Zoroark - Hidden Power - TM10
  (571, 57100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 26),
  -- Zoroark - Sunny Day - TM11
  (571, 57100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 27),
  -- Zoroark - Taunt - TM12
  (571, 57100, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 28),
  -- Zoroark - Hyper Beam - TM15
  (571, 57100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 29),
  -- Zoroark - Protect - TM17
  (571, 57100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 30),
  -- Zoroark - Rain Dance - TM18
  (571, 57100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 31),
  -- Zoroark - Frustration - TM21
  (571, 57100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Zoroark - Return - TM27
  (571, 57100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Zoroark - Shadow Ball - TM30
  (571, 57100, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 34),
  -- Zoroark - Double Team - TM32
  (571, 57100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Zoroark - Flamethrower - TM35
  (571, 57100, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 36),
  -- Zoroark - Aerial Ace - TM40
  (571, 57100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 37),
  -- Zoroark - Torment - TM41
  (571, 57100, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 38),
  -- Zoroark - Facade - TM42
  (571, 57100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 39),
  -- Zoroark - Rest - TM44
  (571, 57100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 40),
  -- Zoroark - Attract - TM45
  (571, 57100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 41),
  -- Zoroark - Thief - TM46
  (571, 57100, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 42),
  -- Zoroark - Low Sweep - TM47
  (571, 57100, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 43),
  -- Zoroark - Round - TM48
  (571, 57100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 44),
  -- Zoroark - Focus Blast - TM52
  (571, 57100, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 45),
  -- Zoroark - Fling - TM56
  (571, 57100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 46),
  -- Zoroark - Embargo - TM63
  (571, 57100, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 47),
  -- Zoroark - Shadow Claw - TM65
  (571, 57100, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 48),
  -- Zoroark - Payback - TM66
  (571, 57100, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 49),
  -- Zoroark - Giga Impact - TM68
  (571, 57100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 50),
  -- Zoroark - Swords Dance - TM75
  (571, 57100, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 51),
  -- Zoroark - Psych Up - TM77
  (571, 57100, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 52),
  -- Zoroark - Grass Knot - TM86
  (571, 57100, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 53),
  -- Zoroark - Swagger - TM87
  (571, 57100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 54),
  -- Zoroark - Sleep Talk - TM88
  (571, 57100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 55),
  -- Zoroark - U-turn - TM89
  (571, 57100, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 56),
  -- Zoroark - Substitute - TM90
  (571, 57100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 57),
  -- Zoroark - Snarl - TM95
  (571, 57100, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 58),
  -- Zoroark - Dark Pulse - TM97
  (571, 57100, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 59),
  -- Zoroark - Confide - TM100
  (571, 57100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 60),
  -- Zoroark - Low Kick - Tutor
  (571, 57100, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Zoroark - Snore - Tutor
  (571, 57100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Zoroark - Spite - Tutor
  (571, 57100, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Zoroark - Uproar - Tutor
  (571, 57100, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Zoroark - Trick - Tutor
  (571, 57100, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Zoroark - Knock Off - Tutor
  (571, 57100, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Zoroark - Snatch - Tutor
  (571, 57100, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Zoroark - Hyper Voice - Tutor
  (571, 57100, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Zoroark - Bounce - Tutor
  (571, 57100, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Zoroark - Covet - Tutor
  (571, 57100, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Zoroark - Foul Play - Tutor
  (571, 57100, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Zoroark - Laser Focus - Tutor
  (571, 57100, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Zoroark - Throat Chop - Tutor
  (571, 57100, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Zoroark - Night Slash - Evolution
  (571, 57100, 400, 16, NULL, 7, NULL, NULL, NULL, NULL, 74),

  -- Minccino - Pound - Level 1
  (572, 57200, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Minccino - Baby-Doll Eyes - Level 3
  (572, 57200, 608, 16, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Minccino - Helping Hand - Level 7
  (572, 57200, 270, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Minccino - Tickle - Level 9
  (572, 57200, 321, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Minccino - Double Slap - Level 13
  (572, 57200, 3, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Minccino - Encore - Level 15
  (572, 57200, 227, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Minccino - Swift - Level 19
  (572, 57200, 129, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Minccino - Sing - Level 21
  (572, 57200, 47, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Minccino - Tail Slap - Level 25
  (572, 57200, 541, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Minccino - Charm - Level 27
  (572, 57200, 204, 16, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Minccino - Wake-Up Slap - Level 31
  (572, 57200, 358, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Minccino - Echoed Voice - Level 33
  (572, 57200, 497, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Minccino - Slam - Level 37
  (572, 57200, 21, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Minccino - Captivate - Level 39
  (572, 57200, 445, 16, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Minccino - Hyper Voice - Level 43
  (572, 57200, 304, 16, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Minccino - Last Resort - Level 45
  (572, 57200, 387, 16, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Minccino - After You - Level 49
  (572, 57200, 495, 16, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Minccino - Work Up - TM01
  (572, 57200, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 18),
  -- Minccino - Calm Mind - TM04
  (572, 57200, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 19),
  -- Minccino - Toxic - TM06
  (572, 57200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Minccino - Hidden Power - TM10
  (572, 57200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Minccino - Sunny Day - TM11
  (572, 57200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Minccino - Protect - TM17
  (572, 57200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Minccino - Rain Dance - TM18
  (572, 57200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Minccino - Safeguard - TM20
  (572, 57200, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 25),
  -- Minccino - Frustration - TM21
  (572, 57200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Minccino - Thunderbolt - TM24
  (572, 57200, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 27),
  -- Minccino - Return - TM27
  (572, 57200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Minccino - Double Team - TM32
  (572, 57200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Minccino - Facade - TM42
  (572, 57200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Minccino - Rest - TM44
  (572, 57200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Minccino - Attract - TM45
  (572, 57200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Minccino - Thief - TM46
  (572, 57200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 33),
  -- Minccino - Round - TM48
  (572, 57200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Minccino - Echoed Voice - TM49
  (572, 57200, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 35),
  -- Minccino - Fling - TM56
  (572, 57200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 36),
  -- Minccino - Thunder Wave - TM73
  (572, 57200, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 37),
  -- Minccino - Grass Knot - TM86
  (572, 57200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 38),
  -- Minccino - Swagger - TM87
  (572, 57200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Minccino - Sleep Talk - TM88
  (572, 57200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Minccino - U-turn - TM89
  (572, 57200, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 41),
  -- Minccino - Substitute - TM90
  (572, 57200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Minccino - Dazzling Gleam - TM99
  (572, 57200, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 43),
  -- Minccino - Confide - TM100
  (572, 57200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Minccino - Tail Whip - Egg
  (572, 57200, 39, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Minccino - Flail - Egg
  (572, 57200, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Minccino - Mud-Slap - Egg
  (572, 57200, 189, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Minccino - Endure - Egg
  (572, 57200, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Minccino - Sleep Talk - Egg
  (572, 57200, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Minccino - Iron Tail - Egg
  (572, 57200, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Minccino - Knock Off - Egg
  (572, 57200, 282, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Minccino - Fake Tears - Egg
  (572, 57200, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Minccino - Aqua Tail - Egg
  (572, 57200, 401, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Minccino - Snore - Tutor
  (572, 57200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Minccino - Iron Tail - Tutor
  (572, 57200, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Minccino - Uproar - Tutor
  (572, 57200, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Minccino - Helping Hand - Tutor
  (572, 57200, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Minccino - Knock Off - Tutor
  (572, 57200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Minccino - Hyper Voice - Tutor
  (572, 57200, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Minccino - Covet - Tutor
  (572, 57200, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Minccino - Shock Wave - Tutor
  (572, 57200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Minccino - Last Resort - Tutor
  (572, 57200, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Minccino - Aqua Tail - Tutor
  (572, 57200, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Minccino - Seed Bomb - Tutor
  (572, 57200, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Minccino - Gunk Shot - Tutor
  (572, 57200, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Minccino - After You - Tutor
  (572, 57200, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),

  -- Cinccino - Sing - Level 1
  (573, 57300, 47, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cinccino - Helping Hand - Level 1
  (573, 57300, 270, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cinccino - Tickle - Level 1
  (573, 57300, 321, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cinccino - Bullet Seed - Level 1
  (573, 57300, 331, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cinccino - Rock Blast - Level 1
  (573, 57300, 350, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cinccino - Tail Slap - Level 1
  (573, 57300, 541, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Cinccino - Work Up - TM01
  (573, 57300, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 7),
  -- Cinccino - Calm Mind - TM04
  (573, 57300, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 8),
  -- Cinccino - Toxic - TM06
  (573, 57300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 9),
  -- Cinccino - Hidden Power - TM10
  (573, 57300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 10),
  -- Cinccino - Sunny Day - TM11
  (573, 57300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 11),
  -- Cinccino - Hyper Beam - TM15
  (573, 57300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 12),
  -- Cinccino - Light Screen - TM16
  (573, 57300, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 13),
  -- Cinccino - Protect - TM17
  (573, 57300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 14),
  -- Cinccino - Rain Dance - TM18
  (573, 57300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 15),
  -- Cinccino - Safeguard - TM20
  (573, 57300, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 16),
  -- Cinccino - Frustration - TM21
  (573, 57300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 17),
  -- Cinccino - Thunderbolt - TM24
  (573, 57300, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 18),
  -- Cinccino - Thunder - TM25
  (573, 57300, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 19),
  -- Cinccino - Return - TM27
  (573, 57300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 20),
  -- Cinccino - Double Team - TM32
  (573, 57300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 21),
  -- Cinccino - Facade - TM42
  (573, 57300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 22),
  -- Cinccino - Rest - TM44
  (573, 57300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 23),
  -- Cinccino - Attract - TM45
  (573, 57300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 24),
  -- Cinccino - Thief - TM46
  (573, 57300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 25),
  -- Cinccino - Round - TM48
  (573, 57300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 26),
  -- Cinccino - Echoed Voice - TM49
  (573, 57300, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 27),
  -- Cinccino - Focus Blast - TM52
  (573, 57300, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 28),
  -- Cinccino - Fling - TM56
  (573, 57300, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 29),
  -- Cinccino - Giga Impact - TM68
  (573, 57300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 30),
  -- Cinccino - Thunder Wave - TM73
  (573, 57300, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 31),
  -- Cinccino - Grass Knot - TM86
  (573, 57300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 32),
  -- Cinccino - Swagger - TM87
  (573, 57300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 33),
  -- Cinccino - Sleep Talk - TM88
  (573, 57300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 34),
  -- Cinccino - U-turn - TM89
  (573, 57300, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 35),
  -- Cinccino - Substitute - TM90
  (573, 57300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Cinccino - Dazzling Gleam - TM99
  (573, 57300, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 37),
  -- Cinccino - Confide - TM100
  (573, 57300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 38),
  -- Cinccino - Snore - Tutor
  (573, 57300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 39),
  -- Cinccino - Iron Tail - Tutor
  (573, 57300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Cinccino - Uproar - Tutor
  (573, 57300, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Cinccino - Helping Hand - Tutor
  (573, 57300, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Cinccino - Knock Off - Tutor
  (573, 57300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Cinccino - Hyper Voice - Tutor
  (573, 57300, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Cinccino - Covet - Tutor
  (573, 57300, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Cinccino - Shock Wave - Tutor
  (573, 57300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Cinccino - Last Resort - Tutor
  (573, 57300, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Cinccino - Aqua Tail - Tutor
  (573, 57300, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Cinccino - Seed Bomb - Tutor
  (573, 57300, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Cinccino - Gunk Shot - Tutor
  (573, 57300, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Cinccino - After You - Tutor
  (573, 57300, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Cinccino - Laser Focus - Tutor
  (573, 57300, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),

  -- Gothita - Pound - Level 1
  (574, 57400, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gothita - Confusion - Level 3
  (574, 57400, 93, 16, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Gothita - Tickle - Level 7
  (574, 57400, 321, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Gothita - Play Nice - Level 8
  (574, 57400, 589, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Gothita - Fake Tears - Level 10
  (574, 57400, 313, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Gothita - Double Slap - Level 14
  (574, 57400, 3, 16, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Gothita - Psybeam - Level 16
  (574, 57400, 60, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Gothita - Embargo - Level 19
  (574, 57400, 373, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Gothita - Feint Attack - Level 24
  (574, 57400, 185, 16, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Gothita - Psyshock - Level 25
  (574, 57400, 473, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Gothita - Flatter - Level 28
  (574, 57400, 260, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Gothita - Future Sight - Level 31
  (574, 57400, 248, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Gothita - Heal Block - Level 33
  (574, 57400, 377, 16, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Gothita - Psychic - Level 37
  (574, 57400, 94, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Gothita - Telekinesis - Level 40
  (574, 57400, 477, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Gothita - Charm - Level 46
  (574, 57400, 204, 16, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Gothita - Magic Room - Level 48
  (574, 57400, 478, 16, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Gothita - Psyshock - TM03
  (574, 57400, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 18),
  -- Gothita - Calm Mind - TM04
  (574, 57400, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 19),
  -- Gothita - Toxic - TM06
  (574, 57400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Gothita - Hidden Power - TM10
  (574, 57400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Gothita - Taunt - TM12
  (574, 57400, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Gothita - Light Screen - TM16
  (574, 57400, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 23),
  -- Gothita - Protect - TM17
  (574, 57400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Gothita - Rain Dance - TM18
  (574, 57400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Gothita - Safeguard - TM20
  (574, 57400, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 26),
  -- Gothita - Frustration - TM21
  (574, 57400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Gothita - Thunderbolt - TM24
  (574, 57400, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 28),
  -- Gothita - Return - TM27
  (574, 57400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Gothita - Psychic - TM29
  (574, 57400, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 30),
  -- Gothita - Shadow Ball - TM30
  (574, 57400, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 31),
  -- Gothita - Double Team - TM32
  (574, 57400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Gothita - Reflect - TM33
  (574, 57400, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 33),
  -- Gothita - Rock Tomb - TM39
  (574, 57400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 34),
  -- Gothita - Torment - TM41
  (574, 57400, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 35),
  -- Gothita - Facade - TM42
  (574, 57400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Gothita - Rest - TM44
  (574, 57400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Gothita - Attract - TM45
  (574, 57400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Gothita - Thief - TM46
  (574, 57400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 39),
  -- Gothita - Round - TM48
  (574, 57400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Gothita - Energy Ball - TM53
  (574, 57400, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 41),
  -- Gothita - Fling - TM56
  (574, 57400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 42),
  -- Gothita - Charge Beam - TM57
  (574, 57400, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 43),
  -- Gothita - Embargo - TM63
  (574, 57400, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 44),
  -- Gothita - Payback - TM66
  (574, 57400, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 45),
  -- Gothita - Thunder Wave - TM73
  (574, 57400, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 46),
  -- Gothita - Psych Up - TM77
  (574, 57400, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 47),
  -- Gothita - Rock Slide - TM80
  (574, 57400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 48),
  -- Gothita - Dream Eater - TM85
  (574, 57400, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 49),
  -- Gothita - Grass Knot - TM86
  (574, 57400, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 50),
  -- Gothita - Swagger - TM87
  (574, 57400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 51),
  -- Gothita - Sleep Talk - TM88
  (574, 57400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 52),
  -- Gothita - Substitute - TM90
  (574, 57400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 53),
  -- Gothita - Trick Room - TM92
  (574, 57400, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 54),
  -- Gothita - Dark Pulse - TM97
  (574, 57400, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 55),
  -- Gothita - Confide - TM100
  (574, 57400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 56),
  -- Gothita - Mean Look - Egg
  (574, 57400, 212, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gothita - Mirror Coat - Egg
  (574, 57400, 243, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Gothita - Uproar - Egg
  (574, 57400, 253, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Gothita - Miracle Eye - Egg
  (574, 57400, 357, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gothita - Dark Pulse - Egg
  (574, 57400, 399, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gothita - Captivate - Egg
  (574, 57400, 445, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Gothita - Heal Pulse - Egg
  (574, 57400, 505, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Gothita - Snore - Tutor
  (574, 57400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Gothita - Heal Bell - Tutor
  (574, 57400, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Gothita - Uproar - Tutor
  (574, 57400, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Gothita - Helping Hand - Tutor
  (574, 57400, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Gothita - Trick - Tutor
  (574, 57400, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Gothita - Role Play - Tutor
  (574, 57400, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Gothita - Magic Coat - Tutor
  (574, 57400, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Gothita - Recycle - Tutor
  (574, 57400, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Gothita - Skill Swap - Tutor
  (574, 57400, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Gothita - Snatch - Tutor
  (574, 57400, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Gothita - Signal Beam - Tutor
  (574, 57400, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Gothita - Covet - Tutor
  (574, 57400, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Gothita - Shock Wave - Tutor
  (574, 57400, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Gothita - Gravity - Tutor
  (574, 57400, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Gothita - Zen Headbutt - Tutor
  (574, 57400, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Gothita - Telekinesis - Tutor
  (574, 57400, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Gothita - Magic Room - Tutor
  (574, 57400, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Gothita - Foul Play - Tutor
  (574, 57400, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Gothita - Ally Switch - Tutor
  (574, 57400, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),

  -- Gothorita - Pound - Level 1
  (575, 57500, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gothorita - Confusion - Level 1
  (575, 57500, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gothorita - Tickle - Level 1
  (575, 57500, 321, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gothorita - Play Nice - Level 1
  (575, 57500, 589, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gothorita - Confusion - Level 3
  (575, 57500, 93, 16, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Gothorita - Tickle - Level 7
  (575, 57500, 321, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Gothorita - Fake Tears - Level 10
  (575, 57500, 313, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Gothorita - Double Slap - Level 14
  (575, 57500, 3, 16, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Gothorita - Psybeam - Level 16
  (575, 57500, 60, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gothorita - Embargo - Level 19
  (575, 57500, 373, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Gothorita - Feint Attack - Level 24
  (575, 57500, 185, 16, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Gothorita - Psyshock - Level 25
  (575, 57500, 473, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Gothorita - Flatter - Level 28
  (575, 57500, 260, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Gothorita - Future Sight - Level 31
  (575, 57500, 248, 16, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Gothorita - Heal Block - Level 34
  (575, 57500, 377, 16, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Gothorita - Psychic - Level 39
  (575, 57500, 94, 16, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Gothorita - Telekinesis - Level 43
  (575, 57500, 477, 16, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Gothorita - Charm - Level 50
  (575, 57500, 204, 16, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Gothorita - Magic Room - Level 53
  (575, 57500, 478, 16, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Gothorita - Psyshock - TM03
  (575, 57500, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 20),
  -- Gothorita - Calm Mind - TM04
  (575, 57500, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 21),
  -- Gothorita - Toxic - TM06
  (575, 57500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Gothorita - Hidden Power - TM10
  (575, 57500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Gothorita - Taunt - TM12
  (575, 57500, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Gothorita - Light Screen - TM16
  (575, 57500, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 25),
  -- Gothorita - Protect - TM17
  (575, 57500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Gothorita - Rain Dance - TM18
  (575, 57500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Gothorita - Safeguard - TM20
  (575, 57500, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 28),
  -- Gothorita - Frustration - TM21
  (575, 57500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Gothorita - Thunderbolt - TM24
  (575, 57500, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 30),
  -- Gothorita - Return - TM27
  (575, 57500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Gothorita - Psychic - TM29
  (575, 57500, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 32),
  -- Gothorita - Shadow Ball - TM30
  (575, 57500, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 33),
  -- Gothorita - Double Team - TM32
  (575, 57500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Gothorita - Reflect - TM33
  (575, 57500, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 35),
  -- Gothorita - Rock Tomb - TM39
  (575, 57500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 36),
  -- Gothorita - Torment - TM41
  (575, 57500, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 37),
  -- Gothorita - Facade - TM42
  (575, 57500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Gothorita - Rest - TM44
  (575, 57500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Gothorita - Attract - TM45
  (575, 57500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Gothorita - Thief - TM46
  (575, 57500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 41),
  -- Gothorita - Round - TM48
  (575, 57500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Gothorita - Energy Ball - TM53
  (575, 57500, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 43),
  -- Gothorita - Fling - TM56
  (575, 57500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 44),
  -- Gothorita - Charge Beam - TM57
  (575, 57500, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 45),
  -- Gothorita - Embargo - TM63
  (575, 57500, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 46),
  -- Gothorita - Payback - TM66
  (575, 57500, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 47),
  -- Gothorita - Thunder Wave - TM73
  (575, 57500, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 48),
  -- Gothorita - Psych Up - TM77
  (575, 57500, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 49),
  -- Gothorita - Rock Slide - TM80
  (575, 57500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 50),
  -- Gothorita - Dream Eater - TM85
  (575, 57500, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 51),
  -- Gothorita - Grass Knot - TM86
  (575, 57500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 52),
  -- Gothorita - Swagger - TM87
  (575, 57500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 53),
  -- Gothorita - Sleep Talk - TM88
  (575, 57500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 54),
  -- Gothorita - Substitute - TM90
  (575, 57500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 55),
  -- Gothorita - Trick Room - TM92
  (575, 57500, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 56),
  -- Gothorita - Dark Pulse - TM97
  (575, 57500, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 57),
  -- Gothorita - Confide - TM100
  (575, 57500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 58),
  -- Gothorita - Snore - Tutor
  (575, 57500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Gothorita - Heal Bell - Tutor
  (575, 57500, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Gothorita - Uproar - Tutor
  (575, 57500, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Gothorita - Helping Hand - Tutor
  (575, 57500, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Gothorita - Trick - Tutor
  (575, 57500, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Gothorita - Role Play - Tutor
  (575, 57500, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Gothorita - Magic Coat - Tutor
  (575, 57500, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Gothorita - Recycle - Tutor
  (575, 57500, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Gothorita - Skill Swap - Tutor
  (575, 57500, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Gothorita - Snatch - Tutor
  (575, 57500, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Gothorita - Signal Beam - Tutor
  (575, 57500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Gothorita - Covet - Tutor
  (575, 57500, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Gothorita - Shock Wave - Tutor
  (575, 57500, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Gothorita - Gravity - Tutor
  (575, 57500, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Gothorita - Zen Headbutt - Tutor
  (575, 57500, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Gothorita - Telekinesis - Tutor
  (575, 57500, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Gothorita - Magic Room - Tutor
  (575, 57500, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Gothorita - Foul Play - Tutor
  (575, 57500, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Gothorita - Ally Switch - Tutor
  (575, 57500, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),

  -- Gothitelle - Pound - Level 1
  (576, 57600, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gothitelle - Confusion - Level 1
  (576, 57600, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gothitelle - Tickle - Level 1
  (576, 57600, 321, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gothitelle - Play Nice - Level 1
  (576, 57600, 589, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gothitelle - Confusion - Level 3
  (576, 57600, 93, 16, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Gothitelle - Tickle - Level 7
  (576, 57600, 321, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Gothitelle - Fake Tears - Level 10
  (576, 57600, 313, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Gothitelle - Double Slap - Level 14
  (576, 57600, 3, 16, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Gothitelle - Psybeam - Level 16
  (576, 57600, 60, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gothitelle - Embargo - Level 19
  (576, 57600, 373, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Gothitelle - Feint Attack - Level 24
  (576, 57600, 185, 16, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Gothitelle - Psyshock - Level 25
  (576, 57600, 473, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Gothitelle - Flatter - Level 28
  (576, 57600, 260, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Gothitelle - Future Sight - Level 31
  (576, 57600, 248, 16, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Gothitelle - Heal Block - Level 34
  (576, 57600, 377, 16, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Gothitelle - Psychic - Level 39
  (576, 57600, 94, 16, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Gothitelle - Telekinesis - Level 45
  (576, 57600, 477, 16, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Gothitelle - Charm - Level 54
  (576, 57600, 204, 16, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Gothitelle - Magic Room - Level 59
  (576, 57600, 478, 16, NULL, 1, 59, NULL, NULL, NULL, 19),
  -- Gothitelle - Psyshock - TM03
  (576, 57600, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 20),
  -- Gothitelle - Calm Mind - TM04
  (576, 57600, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 21),
  -- Gothitelle - Toxic - TM06
  (576, 57600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Gothitelle - Hidden Power - TM10
  (576, 57600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Gothitelle - Taunt - TM12
  (576, 57600, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Gothitelle - Hyper Beam - TM15
  (576, 57600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Gothitelle - Light Screen - TM16
  (576, 57600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 26),
  -- Gothitelle - Protect - TM17
  (576, 57600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Gothitelle - Rain Dance - TM18
  (576, 57600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Gothitelle - Safeguard - TM20
  (576, 57600, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 29),
  -- Gothitelle - Frustration - TM21
  (576, 57600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 30),
  -- Gothitelle - Thunderbolt - TM24
  (576, 57600, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 31),
  -- Gothitelle - Return - TM27
  (576, 57600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Gothitelle - Psychic - TM29
  (576, 57600, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 33),
  -- Gothitelle - Shadow Ball - TM30
  (576, 57600, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 34),
  -- Gothitelle - Brick Break - TM31
  (576, 57600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 35),
  -- Gothitelle - Double Team - TM32
  (576, 57600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Gothitelle - Reflect - TM33
  (576, 57600, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 37),
  -- Gothitelle - Rock Tomb - TM39
  (576, 57600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 38),
  -- Gothitelle - Torment - TM41
  (576, 57600, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 39),
  -- Gothitelle - Facade - TM42
  (576, 57600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 40),
  -- Gothitelle - Rest - TM44
  (576, 57600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 41),
  -- Gothitelle - Attract - TM45
  (576, 57600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 42),
  -- Gothitelle - Thief - TM46
  (576, 57600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 43),
  -- Gothitelle - Low Sweep - TM47
  (576, 57600, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 44),
  -- Gothitelle - Round - TM48
  (576, 57600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 45),
  -- Gothitelle - Energy Ball - TM53
  (576, 57600, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 46),
  -- Gothitelle - Fling - TM56
  (576, 57600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 47),
  -- Gothitelle - Charge Beam - TM57
  (576, 57600, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 48),
  -- Gothitelle - Embargo - TM63
  (576, 57600, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 49),
  -- Gothitelle - Payback - TM66
  (576, 57600, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 50),
  -- Gothitelle - Giga Impact - TM68
  (576, 57600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 51),
  -- Gothitelle - Thunder Wave - TM73
  (576, 57600, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 52),
  -- Gothitelle - Psych Up - TM77
  (576, 57600, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 53),
  -- Gothitelle - Rock Slide - TM80
  (576, 57600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 54),
  -- Gothitelle - Dream Eater - TM85
  (576, 57600, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 55),
  -- Gothitelle - Grass Knot - TM86
  (576, 57600, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 56),
  -- Gothitelle - Swagger - TM87
  (576, 57600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 57),
  -- Gothitelle - Sleep Talk - TM88
  (576, 57600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 58),
  -- Gothitelle - Substitute - TM90
  (576, 57600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 59),
  -- Gothitelle - Trick Room - TM92
  (576, 57600, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 60),
  -- Gothitelle - Dark Pulse - TM97
  (576, 57600, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 61),
  -- Gothitelle - Confide - TM100
  (576, 57600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 62),
  -- Gothitelle - Snore - Tutor
  (576, 57600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Gothitelle - Heal Bell - Tutor
  (576, 57600, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Gothitelle - Uproar - Tutor
  (576, 57600, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Gothitelle - Helping Hand - Tutor
  (576, 57600, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Gothitelle - Trick - Tutor
  (576, 57600, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Gothitelle - Role Play - Tutor
  (576, 57600, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Gothitelle - Magic Coat - Tutor
  (576, 57600, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Gothitelle - Recycle - Tutor
  (576, 57600, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Gothitelle - Skill Swap - Tutor
  (576, 57600, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Gothitelle - Snatch - Tutor
  (576, 57600, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Gothitelle - Signal Beam - Tutor
  (576, 57600, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Gothitelle - Covet - Tutor
  (576, 57600, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Gothitelle - Shock Wave - Tutor
  (576, 57600, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Gothitelle - Gravity - Tutor
  (576, 57600, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Gothitelle - Zen Headbutt - Tutor
  (576, 57600, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Gothitelle - Telekinesis - Tutor
  (576, 57600, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Gothitelle - Magic Room - Tutor
  (576, 57600, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Gothitelle - Foul Play - Tutor
  (576, 57600, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Gothitelle - Ally Switch - Tutor
  (576, 57600, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Gothitelle - Laser Focus - Tutor
  (576, 57600, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),

  -- Solosis - Psywave - Level 1
  (577, 57700, 149, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Solosis - Reflect - Level 3
  (577, 57700, 115, 16, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Solosis - Rollout - Level 7
  (577, 57700, 205, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Solosis - Snatch - Level 10
  (577, 57700, 289, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Solosis - Hidden Power - Level 14
  (577, 57700, 237, 16, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Solosis - Light Screen - Level 16
  (577, 57700, 113, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Solosis - Charm - Level 19
  (577, 57700, 204, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Solosis - Recover - Level 24
  (577, 57700, 105, 16, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Solosis - Psyshock - Level 25
  (577, 57700, 473, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Solosis - Endeavor - Level 28
  (577, 57700, 283, 16, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Solosis - Future Sight - Level 31
  (577, 57700, 248, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Solosis - Pain Split - Level 33
  (577, 57700, 220, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Solosis - Psychic - Level 37
  (577, 57700, 94, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Solosis - Skill Swap - Level 40
  (577, 57700, 285, 16, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Solosis - Heal Block - Level 46
  (577, 57700, 377, 16, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Solosis - Wonder Room - Level 48
  (577, 57700, 472, 16, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Solosis - Psyshock - TM03
  (577, 57700, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 17),
  -- Solosis - Calm Mind - TM04
  (577, 57700, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 18),
  -- Solosis - Toxic - TM06
  (577, 57700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Solosis - Hidden Power - TM10
  (577, 57700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Solosis - Light Screen - TM16
  (577, 57700, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 21),
  -- Solosis - Protect - TM17
  (577, 57700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Solosis - Rain Dance - TM18
  (577, 57700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Solosis - Safeguard - TM20
  (577, 57700, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 24),
  -- Solosis - Frustration - TM21
  (577, 57700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Solosis - Thunder - TM25
  (577, 57700, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 26),
  -- Solosis - Return - TM27
  (577, 57700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Solosis - Psychic - TM29
  (577, 57700, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 28),
  -- Solosis - Shadow Ball - TM30
  (577, 57700, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 29),
  -- Solosis - Double Team - TM32
  (577, 57700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Solosis - Reflect - TM33
  (577, 57700, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 31),
  -- Solosis - Rock Tomb - TM39
  (577, 57700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 32),
  -- Solosis - Facade - TM42
  (577, 57700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Solosis - Rest - TM44
  (577, 57700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Solosis - Attract - TM45
  (577, 57700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Solosis - Round - TM48
  (577, 57700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Solosis - Energy Ball - TM53
  (577, 57700, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 37),
  -- Solosis - Embargo - TM63
  (577, 57700, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 38),
  -- Solosis - Explosion - TM64
  (577, 57700, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 39),
  -- Solosis - Thunder Wave - TM73
  (577, 57700, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 40),
  -- Solosis - Gyro Ball - TM74
  (577, 57700, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 41),
  -- Solosis - Psych Up - TM77
  (577, 57700, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 42),
  -- Solosis - Rock Slide - TM80
  (577, 57700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 43),
  -- Solosis - Infestation - TM83
  (577, 57700, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 44),
  -- Solosis - Dream Eater - TM85
  (577, 57700, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 45),
  -- Solosis - Swagger - TM87
  (577, 57700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Solosis - Sleep Talk - TM88
  (577, 57700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Solosis - Substitute - TM90
  (577, 57700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Solosis - Flash Cannon - TM91
  (577, 57700, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 49),
  -- Solosis - Trick Room - TM92
  (577, 57700, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 50),
  -- Solosis - Confide - TM100
  (577, 57700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Solosis - Night Shade - Egg
  (577, 57700, 101, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Solosis - Confuse Ray - Egg
  (577, 57700, 109, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Solosis - Acid Armor - Egg
  (577, 57700, 151, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Solosis - Helping Hand - Egg
  (577, 57700, 270, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Solosis - Trick - Egg
  (577, 57700, 271, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Solosis - Imprison - Egg
  (577, 57700, 286, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Solosis - Secret Power - Egg
  (577, 57700, 290, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Solosis - Astonish - Egg
  (577, 57700, 310, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Solosis - Snore - Tutor
  (577, 57700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Solosis - Pain Split - Tutor
  (577, 57700, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Solosis - Helping Hand - Tutor
  (577, 57700, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Solosis - Trick - Tutor
  (577, 57700, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Solosis - Role Play - Tutor
  (577, 57700, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Solosis - Magic Coat - Tutor
  (577, 57700, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Solosis - Endeavor - Tutor
  (577, 57700, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Solosis - Skill Swap - Tutor
  (577, 57700, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Solosis - Snatch - Tutor
  (577, 57700, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Solosis - Signal Beam - Tutor
  (577, 57700, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Solosis - Iron Defense - Tutor
  (577, 57700, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Solosis - Shock Wave - Tutor
  (577, 57700, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Solosis - Gravity - Tutor
  (577, 57700, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Solosis - Zen Headbutt - Tutor
  (577, 57700, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Solosis - Wonder Room - Tutor
  (577, 57700, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Solosis - Telekinesis - Tutor
  (577, 57700, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Solosis - After You - Tutor
  (577, 57700, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Solosis - Ally Switch - Tutor
  (577, 57700, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),

  -- Duosion - Reflect - Level 1
  (578, 57800, 115, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Duosion - Psywave - Level 1
  (578, 57800, 149, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Duosion - Rollout - Level 1
  (578, 57800, 205, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Duosion - Snatch - Level 1
  (578, 57800, 289, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Duosion - Reflect - Level 3
  (578, 57800, 115, 16, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Duosion - Rollout - Level 7
  (578, 57800, 205, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Duosion - Snatch - Level 10
  (578, 57800, 289, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Duosion - Hidden Power - Level 14
  (578, 57800, 237, 16, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Duosion - Light Screen - Level 16
  (578, 57800, 113, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Duosion - Charm - Level 19
  (578, 57800, 204, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Duosion - Recover - Level 24
  (578, 57800, 105, 16, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Duosion - Psyshock - Level 25
  (578, 57800, 473, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Duosion - Endeavor - Level 28
  (578, 57800, 283, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Duosion - Future Sight - Level 31
  (578, 57800, 248, 16, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Duosion - Pain Split - Level 34
  (578, 57800, 220, 16, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Duosion - Psychic - Level 39
  (578, 57800, 94, 16, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Duosion - Skill Swap - Level 43
  (578, 57800, 285, 16, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Duosion - Heal Block - Level 50
  (578, 57800, 377, 16, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Duosion - Wonder Room - Level 53
  (578, 57800, 472, 16, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Duosion - Psyshock - TM03
  (578, 57800, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 20),
  -- Duosion - Calm Mind - TM04
  (578, 57800, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 21),
  -- Duosion - Toxic - TM06
  (578, 57800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Duosion - Hidden Power - TM10
  (578, 57800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Duosion - Light Screen - TM16
  (578, 57800, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 24),
  -- Duosion - Protect - TM17
  (578, 57800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Duosion - Rain Dance - TM18
  (578, 57800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Duosion - Safeguard - TM20
  (578, 57800, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 27),
  -- Duosion - Frustration - TM21
  (578, 57800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Duosion - Thunder - TM25
  (578, 57800, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 29),
  -- Duosion - Return - TM27
  (578, 57800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Duosion - Psychic - TM29
  (578, 57800, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 31),
  -- Duosion - Shadow Ball - TM30
  (578, 57800, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 32),
  -- Duosion - Double Team - TM32
  (578, 57800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Duosion - Reflect - TM33
  (578, 57800, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 34),
  -- Duosion - Rock Tomb - TM39
  (578, 57800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Duosion - Facade - TM42
  (578, 57800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Duosion - Rest - TM44
  (578, 57800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Duosion - Attract - TM45
  (578, 57800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Duosion - Round - TM48
  (578, 57800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Duosion - Energy Ball - TM53
  (578, 57800, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 40),
  -- Duosion - Embargo - TM63
  (578, 57800, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 41),
  -- Duosion - Explosion - TM64
  (578, 57800, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 42),
  -- Duosion - Thunder Wave - TM73
  (578, 57800, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 43),
  -- Duosion - Gyro Ball - TM74
  (578, 57800, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 44),
  -- Duosion - Psych Up - TM77
  (578, 57800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 45),
  -- Duosion - Rock Slide - TM80
  (578, 57800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 46),
  -- Duosion - Infestation - TM83
  (578, 57800, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 47),
  -- Duosion - Dream Eater - TM85
  (578, 57800, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 48),
  -- Duosion - Swagger - TM87
  (578, 57800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Duosion - Sleep Talk - TM88
  (578, 57800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Duosion - Substitute - TM90
  (578, 57800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Duosion - Flash Cannon - TM91
  (578, 57800, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 52),
  -- Duosion - Trick Room - TM92
  (578, 57800, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 53),
  -- Duosion - Confide - TM100
  (578, 57800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Duosion - Snore - Tutor
  (578, 57800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Duosion - Pain Split - Tutor
  (578, 57800, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Duosion - Helping Hand - Tutor
  (578, 57800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Duosion - Trick - Tutor
  (578, 57800, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Duosion - Role Play - Tutor
  (578, 57800, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Duosion - Magic Coat - Tutor
  (578, 57800, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Duosion - Endeavor - Tutor
  (578, 57800, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Duosion - Skill Swap - Tutor
  (578, 57800, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Duosion - Snatch - Tutor
  (578, 57800, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Duosion - Signal Beam - Tutor
  (578, 57800, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Duosion - Iron Defense - Tutor
  (578, 57800, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Duosion - Shock Wave - Tutor
  (578, 57800, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Duosion - Gravity - Tutor
  (578, 57800, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Duosion - Zen Headbutt - Tutor
  (578, 57800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Duosion - Wonder Room - Tutor
  (578, 57800, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Duosion - Telekinesis - Tutor
  (578, 57800, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Duosion - After You - Tutor
  (578, 57800, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Duosion - Ally Switch - Tutor
  (578, 57800, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),

  -- Reuniclus - Reflect - Level 1
  (579, 57900, 115, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Reuniclus - Dizzy Punch - Level 1
  (579, 57900, 146, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Reuniclus - Psywave - Level 1
  (579, 57900, 149, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Reuniclus - Rollout - Level 1
  (579, 57900, 205, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Reuniclus - Snatch - Level 1
  (579, 57900, 289, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Reuniclus - Reflect - Level 3
  (579, 57900, 115, 16, NULL, 1, 3, NULL, NULL, NULL, 6),
  -- Reuniclus - Rollout - Level 7
  (579, 57900, 205, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Reuniclus - Snatch - Level 10
  (579, 57900, 289, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Reuniclus - Hidden Power - Level 14
  (579, 57900, 237, 16, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Reuniclus - Light Screen - Level 16
  (579, 57900, 113, 16, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Reuniclus - Charm - Level 19
  (579, 57900, 204, 16, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Reuniclus - Recover - Level 24
  (579, 57900, 105, 16, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Reuniclus - Psyshock - Level 25
  (579, 57900, 473, 16, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Reuniclus - Endeavor - Level 28
  (579, 57900, 283, 16, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Reuniclus - Future Sight - Level 31
  (579, 57900, 248, 16, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Reuniclus - Pain Split - Level 34
  (579, 57900, 220, 16, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Reuniclus - Psychic - Level 39
  (579, 57900, 94, 16, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Reuniclus - Skill Swap - Level 45
  (579, 57900, 285, 16, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Reuniclus - Heal Block - Level 54
  (579, 57900, 377, 16, NULL, 1, 54, NULL, NULL, NULL, 19),
  -- Reuniclus - Wonder Room - Level 59
  (579, 57900, 472, 16, NULL, 1, 59, NULL, NULL, NULL, 20),
  -- Reuniclus - Psyshock - TM03
  (579, 57900, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 21),
  -- Reuniclus - Calm Mind - TM04
  (579, 57900, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 22),
  -- Reuniclus - Toxic - TM06
  (579, 57900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Reuniclus - Hidden Power - TM10
  (579, 57900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Reuniclus - Hyper Beam - TM15
  (579, 57900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Reuniclus - Light Screen - TM16
  (579, 57900, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 26),
  -- Reuniclus - Protect - TM17
  (579, 57900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Reuniclus - Rain Dance - TM18
  (579, 57900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Reuniclus - Safeguard - TM20
  (579, 57900, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 29),
  -- Reuniclus - Frustration - TM21
  (579, 57900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 30),
  -- Reuniclus - Thunder - TM25
  (579, 57900, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 31),
  -- Reuniclus - Return - TM27
  (579, 57900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Reuniclus - Psychic - TM29
  (579, 57900, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 33),
  -- Reuniclus - Shadow Ball - TM30
  (579, 57900, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 34),
  -- Reuniclus - Double Team - TM32
  (579, 57900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Reuniclus - Reflect - TM33
  (579, 57900, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 36),
  -- Reuniclus - Rock Tomb - TM39
  (579, 57900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 37),
  -- Reuniclus - Facade - TM42
  (579, 57900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Reuniclus - Rest - TM44
  (579, 57900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Reuniclus - Attract - TM45
  (579, 57900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Reuniclus - Round - TM48
  (579, 57900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Reuniclus - Focus Blast - TM52
  (579, 57900, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 42),
  -- Reuniclus - Energy Ball - TM53
  (579, 57900, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 43),
  -- Reuniclus - Fling - TM56
  (579, 57900, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 44),
  -- Reuniclus - Embargo - TM63
  (579, 57900, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 45),
  -- Reuniclus - Explosion - TM64
  (579, 57900, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 46),
  -- Reuniclus - Giga Impact - TM68
  (579, 57900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 47),
  -- Reuniclus - Thunder Wave - TM73
  (579, 57900, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 48),
  -- Reuniclus - Gyro Ball - TM74
  (579, 57900, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 49),
  -- Reuniclus - Psych Up - TM77
  (579, 57900, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 50),
  -- Reuniclus - Rock Slide - TM80
  (579, 57900, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 51),
  -- Reuniclus - Infestation - TM83
  (579, 57900, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 52),
  -- Reuniclus - Dream Eater - TM85
  (579, 57900, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 53),
  -- Reuniclus - Grass Knot - TM86
  (579, 57900, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 54),
  -- Reuniclus - Swagger - TM87
  (579, 57900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 55),
  -- Reuniclus - Sleep Talk - TM88
  (579, 57900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 56),
  -- Reuniclus - Substitute - TM90
  (579, 57900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 57),
  -- Reuniclus - Flash Cannon - TM91
  (579, 57900, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 58),
  -- Reuniclus - Trick Room - TM92
  (579, 57900, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 59),
  -- Reuniclus - Confide - TM100
  (579, 57900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 60),
  -- Reuniclus - Fire Punch - Tutor
  (579, 57900, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Reuniclus - Ice Punch - Tutor
  (579, 57900, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Reuniclus - Thunder Punch - Tutor
  (579, 57900, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Reuniclus - Snore - Tutor
  (579, 57900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Reuniclus - Pain Split - Tutor
  (579, 57900, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Reuniclus - Focus Punch - Tutor
  (579, 57900, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Reuniclus - Helping Hand - Tutor
  (579, 57900, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Reuniclus - Trick - Tutor
  (579, 57900, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Reuniclus - Role Play - Tutor
  (579, 57900, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Reuniclus - Superpower - Tutor
  (579, 57900, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Reuniclus - Magic Coat - Tutor
  (579, 57900, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Reuniclus - Knock Off - Tutor
  (579, 57900, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Reuniclus - Endeavor - Tutor
  (579, 57900, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Reuniclus - Skill Swap - Tutor
  (579, 57900, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Reuniclus - Snatch - Tutor
  (579, 57900, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Reuniclus - Signal Beam - Tutor
  (579, 57900, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Reuniclus - Iron Defense - Tutor
  (579, 57900, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Reuniclus - Shock Wave - Tutor
  (579, 57900, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Reuniclus - Gravity - Tutor
  (579, 57900, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Reuniclus - Drain Punch - Tutor
  (579, 57900, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Reuniclus - Zen Headbutt - Tutor
  (579, 57900, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Reuniclus - Wonder Room - Tutor
  (579, 57900, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Reuniclus - Telekinesis - Tutor
  (579, 57900, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Reuniclus - After You - Tutor
  (579, 57900, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Reuniclus - Ally Switch - Tutor
  (579, 57900, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Reuniclus - Laser Focus - Tutor
  (579, 57900, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Reuniclus - Dizzy Punch - Evolution
  (579, 57900, 146, 16, NULL, 7, NULL, NULL, NULL, NULL, 87),

  -- Ducklett - Water Gun - Level 1
  (580, 58000, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ducklett - Water Sport - Level 3
  (580, 58000, 346, 16, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Ducklett - Defog - Level 6
  (580, 58000, 432, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Ducklett - Wing Attack - Level 9
  (580, 58000, 17, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Ducklett - Water Pulse - Level 13
  (580, 58000, 352, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Ducklett - Aerial Ace - Level 15
  (580, 58000, 332, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Ducklett - Bubble Beam - Level 19
  (580, 58000, 61, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Ducklett - Feather Dance - Level 21
  (580, 58000, 297, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Ducklett - Aqua Ring - Level 24
  (580, 58000, 392, 16, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Ducklett - Air Slash - Level 27
  (580, 58000, 403, 16, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Ducklett - Roost - Level 30
  (580, 58000, 355, 16, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Ducklett - Rain Dance - Level 34
  (580, 58000, 240, 16, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Ducklett - Tailwind - Level 37
  (580, 58000, 366, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Ducklett - Brave Bird - Level 41
  (580, 58000, 413, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Ducklett - Hurricane - Level 46
  (580, 58000, 542, 16, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Ducklett - Toxic - TM06
  (580, 58000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Ducklett - Hail - TM07
  (580, 58000, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 17),
  -- Ducklett - Hidden Power - TM10
  (580, 58000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Ducklett - Ice Beam - TM13
  (580, 58000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 19),
  -- Ducklett - Protect - TM17
  (580, 58000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Ducklett - Rain Dance - TM18
  (580, 58000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Ducklett - Roost - TM19
  (580, 58000, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 22),
  -- Ducklett - Frustration - TM21
  (580, 58000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Ducklett - Return - TM27
  (580, 58000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Ducklett - Double Team - TM32
  (580, 58000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Ducklett - Aerial Ace - TM40
  (580, 58000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 26),
  -- Ducklett - Facade - TM42
  (580, 58000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Ducklett - Rest - TM44
  (580, 58000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Ducklett - Attract - TM45
  (580, 58000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Ducklett - Round - TM48
  (580, 58000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 30),
  -- Ducklett - Steel Wing - TM51
  (580, 58000, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 31),
  -- Ducklett - Scald - TM55
  (580, 58000, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 32),
  -- Ducklett - Fly - TM76
  (580, 58000, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 33),
  -- Ducklett - Swagger - TM87
  (580, 58000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 34),
  -- Ducklett - Sleep Talk - TM88
  (580, 58000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 35),
  -- Ducklett - Substitute - TM90
  (580, 58000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Ducklett - Surf - TM94
  (580, 58000, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 37),
  -- Ducklett - Confide - TM100
  (580, 58000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 38),
  -- Ducklett - Gust - Egg
  (580, 58000, 16, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Ducklett - Mirror Move - Egg
  (580, 58000, 119, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Ducklett - Steel Wing - Egg
  (580, 58000, 211, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Ducklett - Mud Sport - Egg
  (580, 58000, 300, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Ducklett - Air Cutter - Egg
  (580, 58000, 314, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Ducklett - Brine - Egg
  (580, 58000, 362, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Ducklett - Lucky Chant - Egg
  (580, 58000, 381, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Ducklett - Me First - Egg
  (580, 58000, 382, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Ducklett - Aqua Jet - Egg
  (580, 58000, 453, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ducklett - Snore - Tutor
  (580, 58000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Ducklett - Icy Wind - Tutor
  (580, 58000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Ducklett - Uproar - Tutor
  (580, 58000, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Ducklett - Endeavor - Tutor
  (580, 58000, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Ducklett - Water Pulse - Tutor
  (580, 58000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Ducklett - Tailwind - Tutor
  (580, 58000, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Ducklett - Defog - Tutor
  (580, 58000, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Ducklett - Liquidation - Tutor
  (580, 58000, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),

  -- Swanna - Wing Attack - Level 1
  (581, 58100, 17, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swanna - Water Gun - Level 1
  (581, 58100, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swanna - Water Sport - Level 1
  (581, 58100, 346, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swanna - Defog - Level 1
  (581, 58100, 432, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swanna - Water Sport - Level 3
  (581, 58100, 346, 16, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Swanna - Defog - Level 6
  (581, 58100, 432, 16, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Swanna - Wing Attack - Level 9
  (581, 58100, 17, 16, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Swanna - Water Pulse - Level 13
  (581, 58100, 352, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Swanna - Aerial Ace - Level 15
  (581, 58100, 332, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Swanna - Bubble Beam - Level 19
  (581, 58100, 61, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Swanna - Feather Dance - Level 21
  (581, 58100, 297, 16, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Swanna - Aqua Ring - Level 24
  (581, 58100, 392, 16, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Swanna - Air Slash - Level 27
  (581, 58100, 403, 16, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Swanna - Roost - Level 30
  (581, 58100, 355, 16, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Swanna - Rain Dance - Level 34
  (581, 58100, 240, 16, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Swanna - Tailwind - Level 40
  (581, 58100, 366, 16, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Swanna - Brave Bird - Level 47
  (581, 58100, 413, 16, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Swanna - Hurricane - Level 55
  (581, 58100, 542, 16, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Swanna - Toxic - TM06
  (581, 58100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Swanna - Hail - TM07
  (581, 58100, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 20),
  -- Swanna - Hidden Power - TM10
  (581, 58100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Swanna - Ice Beam - TM13
  (581, 58100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 22),
  -- Swanna - Hyper Beam - TM15
  (581, 58100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Swanna - Protect - TM17
  (581, 58100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Swanna - Rain Dance - TM18
  (581, 58100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Swanna - Roost - TM19
  (581, 58100, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 26),
  -- Swanna - Frustration - TM21
  (581, 58100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Swanna - Return - TM27
  (581, 58100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Swanna - Double Team - TM32
  (581, 58100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Swanna - Aerial Ace - TM40
  (581, 58100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 30),
  -- Swanna - Facade - TM42
  (581, 58100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Swanna - Rest - TM44
  (581, 58100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Swanna - Attract - TM45
  (581, 58100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Swanna - Round - TM48
  (581, 58100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Swanna - Steel Wing - TM51
  (581, 58100, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 35),
  -- Swanna - Scald - TM55
  (581, 58100, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 36),
  -- Swanna - Giga Impact - TM68
  (581, 58100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 37),
  -- Swanna - Fly - TM76
  (581, 58100, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 38),
  -- Swanna - Swagger - TM87
  (581, 58100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Swanna - Sleep Talk - TM88
  (581, 58100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Swanna - Substitute - TM90
  (581, 58100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Swanna - Surf - TM94
  (581, 58100, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 42),
  -- Swanna - Confide - TM100
  (581, 58100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 43),
  -- Swanna - Sky Attack - Tutor
  (581, 58100, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Swanna - Snore - Tutor
  (581, 58100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Swanna - Icy Wind - Tutor
  (581, 58100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Swanna - Uproar - Tutor
  (581, 58100, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Swanna - Endeavor - Tutor
  (581, 58100, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Swanna - Water Pulse - Tutor
  (581, 58100, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Swanna - Tailwind - Tutor
  (581, 58100, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Swanna - Defog - Tutor
  (581, 58100, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Swanna - Liquidation - Tutor
  (581, 58100, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),

  -- Vanillite - Icicle Spear - Level 1
  (582, 58200, 333, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vanillite - Harden - Level 4
  (582, 58200, 106, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Vanillite - Astonish - Level 7
  (582, 58200, 310, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Vanillite - Uproar - Level 10
  (582, 58200, 253, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Vanillite - Icy Wind - Level 13
  (582, 58200, 196, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Vanillite - Mist - Level 16
  (582, 58200, 54, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Vanillite - Avalanche - Level 19
  (582, 58200, 419, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Vanillite - Taunt - Level 22
  (582, 58200, 269, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Vanillite - Mirror Shot - Level 26
  (582, 58200, 429, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Vanillite - Acid Armor - Level 31
  (582, 58200, 151, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Vanillite - Ice Beam - Level 35
  (582, 58200, 58, 16, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Vanillite - Hail - Level 40
  (582, 58200, 258, 16, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Vanillite - Mirror Coat - Level 44
  (582, 58200, 243, 16, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Vanillite - Blizzard - Level 49
  (582, 58200, 59, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Vanillite - Sheer Cold - Level 53
  (582, 58200, 329, 16, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Vanillite - Toxic - TM06
  (582, 58200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Vanillite - Hail - TM07
  (582, 58200, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 17),
  -- Vanillite - Hidden Power - TM10
  (582, 58200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Vanillite - Taunt - TM12
  (582, 58200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 19),
  -- Vanillite - Ice Beam - TM13
  (582, 58200, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 20),
  -- Vanillite - Blizzard - TM14
  (582, 58200, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 21),
  -- Vanillite - Light Screen - TM16
  (582, 58200, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 22),
  -- Vanillite - Protect - TM17
  (582, 58200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Vanillite - Rain Dance - TM18
  (582, 58200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Vanillite - Frustration - TM21
  (582, 58200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Vanillite - Return - TM27
  (582, 58200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Vanillite - Double Team - TM32
  (582, 58200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Vanillite - Facade - TM42
  (582, 58200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Vanillite - Rest - TM44
  (582, 58200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Vanillite - Attract - TM45
  (582, 58200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Vanillite - Round - TM48
  (582, 58200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Vanillite - Explosion - TM64
  (582, 58200, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 32),
  -- Vanillite - Frost Breath - TM79
  (582, 58200, 524, 16, NULL, 2, NULL, NULL, 16002079, NULL, 33),
  -- Vanillite - Swagger - TM87
  (582, 58200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 34),
  -- Vanillite - Sleep Talk - TM88
  (582, 58200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 35),
  -- Vanillite - Substitute - TM90
  (582, 58200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Vanillite - Flash Cannon - TM91
  (582, 58200, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 37),
  -- Vanillite - Confide - TM100
  (582, 58200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 38),
  -- Vanillite - Powder Snow - Egg
  (582, 58200, 181, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Vanillite - Imprison - Egg
  (582, 58200, 286, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Vanillite - Iron Defense - Egg
  (582, 58200, 334, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Vanillite - Water Pulse - Egg
  (582, 58200, 352, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Vanillite - Natural Gift - Egg
  (582, 58200, 363, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Vanillite - Magnet Rise - Egg
  (582, 58200, 393, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Vanillite - Ice Shard - Egg
  (582, 58200, 420, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Vanillite - Autotomize - Egg
  (582, 58200, 475, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Vanillite - Snore - Tutor
  (582, 58200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Vanillite - Icy Wind - Tutor
  (582, 58200, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Vanillite - Uproar - Tutor
  (582, 58200, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Vanillite - Magic Coat - Tutor
  (582, 58200, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Vanillite - Signal Beam - Tutor
  (582, 58200, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Vanillite - Iron Defense - Tutor
  (582, 58200, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Vanillite - Water Pulse - Tutor
  (582, 58200, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Vanillite - Magnet Rise - Tutor
  (582, 58200, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Vanillite - Ally Switch - Tutor
  (582, 58200, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),

  -- Vanillish - Harden - Level 1
  (583, 58300, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vanillish - Uproar - Level 1
  (583, 58300, 253, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vanillish - Astonish - Level 1
  (583, 58300, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vanillish - Icicle Spear - Level 1
  (583, 58300, 333, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vanillish - Harden - Level 4
  (583, 58300, 106, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Vanillish - Astonish - Level 7
  (583, 58300, 310, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Vanillish - Uproar - Level 10
  (583, 58300, 253, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Vanillish - Icy Wind - Level 13
  (583, 58300, 196, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Vanillish - Mist - Level 16
  (583, 58300, 54, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Vanillish - Avalanche - Level 19
  (583, 58300, 419, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Vanillish - Taunt - Level 22
  (583, 58300, 269, 16, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Vanillish - Mirror Shot - Level 26
  (583, 58300, 429, 16, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Vanillish - Acid Armor - Level 31
  (583, 58300, 151, 16, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Vanillish - Ice Beam - Level 36
  (583, 58300, 58, 16, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Vanillish - Hail - Level 42
  (583, 58300, 258, 16, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Vanillish - Mirror Coat - Level 47
  (583, 58300, 243, 16, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Vanillish - Blizzard - Level 53
  (583, 58300, 59, 16, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Vanillish - Sheer Cold - Level 58
  (583, 58300, 329, 16, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Vanillish - Toxic - TM06
  (583, 58300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Vanillish - Hail - TM07
  (583, 58300, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 20),
  -- Vanillish - Hidden Power - TM10
  (583, 58300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Vanillish - Taunt - TM12
  (583, 58300, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Vanillish - Ice Beam - TM13
  (583, 58300, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 23),
  -- Vanillish - Blizzard - TM14
  (583, 58300, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 24),
  -- Vanillish - Light Screen - TM16
  (583, 58300, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 25),
  -- Vanillish - Protect - TM17
  (583, 58300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Vanillish - Rain Dance - TM18
  (583, 58300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Vanillish - Frustration - TM21
  (583, 58300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Vanillish - Return - TM27
  (583, 58300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Vanillish - Double Team - TM32
  (583, 58300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Vanillish - Facade - TM42
  (583, 58300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Vanillish - Rest - TM44
  (583, 58300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Vanillish - Attract - TM45
  (583, 58300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Vanillish - Round - TM48
  (583, 58300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Vanillish - Explosion - TM64
  (583, 58300, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 35),
  -- Vanillish - Frost Breath - TM79
  (583, 58300, 524, 16, NULL, 2, NULL, NULL, 16002079, NULL, 36),
  -- Vanillish - Swagger - TM87
  (583, 58300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Vanillish - Sleep Talk - TM88
  (583, 58300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Vanillish - Substitute - TM90
  (583, 58300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Vanillish - Flash Cannon - TM91
  (583, 58300, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 40),
  -- Vanillish - Confide - TM100
  (583, 58300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Vanillish - Snore - Tutor
  (583, 58300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Vanillish - Icy Wind - Tutor
  (583, 58300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Vanillish - Uproar - Tutor
  (583, 58300, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Vanillish - Magic Coat - Tutor
  (583, 58300, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Vanillish - Signal Beam - Tutor
  (583, 58300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Vanillish - Iron Defense - Tutor
  (583, 58300, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Vanillish - Water Pulse - Tutor
  (583, 58300, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Vanillish - Magnet Rise - Tutor
  (583, 58300, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Vanillish - Ally Switch - Tutor
  (583, 58300, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),

  -- Vanilluxe - Harden - Level 1
  (584, 58400, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vanilluxe - Uproar - Level 1
  (584, 58400, 253, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vanilluxe - Astonish - Level 1
  (584, 58400, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vanilluxe - Weather Ball - Level 1
  (584, 58400, 311, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vanilluxe - Sheer Cold - Level 1
  (584, 58400, 329, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vanilluxe - Icicle Spear - Level 1
  (584, 58400, 333, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Vanilluxe - Freeze-Dry - Level 1
  (584, 58400, 573, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Vanilluxe - Harden - Level 4
  (584, 58400, 106, 16, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Vanilluxe - Astonish - Level 7
  (584, 58400, 310, 16, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Vanilluxe - Uproar - Level 10
  (584, 58400, 253, 16, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Vanilluxe - Icy Wind - Level 13
  (584, 58400, 196, 16, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Vanilluxe - Mist - Level 16
  (584, 58400, 54, 16, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Vanilluxe - Avalanche - Level 19
  (584, 58400, 419, 16, NULL, 1, 19, NULL, NULL, NULL, 13),
  -- Vanilluxe - Taunt - Level 22
  (584, 58400, 269, 16, NULL, 1, 22, NULL, NULL, NULL, 14),
  -- Vanilluxe - Mirror Shot - Level 26
  (584, 58400, 429, 16, NULL, 1, 26, NULL, NULL, NULL, 15),
  -- Vanilluxe - Acid Armor - Level 31
  (584, 58400, 151, 16, NULL, 1, 31, NULL, NULL, NULL, 16),
  -- Vanilluxe - Ice Beam - Level 36
  (584, 58400, 58, 16, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Vanilluxe - Hail - Level 42
  (584, 58400, 258, 16, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Vanilluxe - Mirror Coat - Level 50
  (584, 58400, 243, 16, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Vanilluxe - Blizzard - Level 59
  (584, 58400, 59, 16, NULL, 1, 59, NULL, NULL, NULL, 20),
  -- Vanilluxe - Sheer Cold - Level 67
  (584, 58400, 329, 16, NULL, 1, 67, NULL, NULL, NULL, 21),
  -- Vanilluxe - Toxic - TM06
  (584, 58400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Vanilluxe - Hail - TM07
  (584, 58400, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 23),
  -- Vanilluxe - Hidden Power - TM10
  (584, 58400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Vanilluxe - Taunt - TM12
  (584, 58400, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 25),
  -- Vanilluxe - Ice Beam - TM13
  (584, 58400, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 26),
  -- Vanilluxe - Blizzard - TM14
  (584, 58400, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 27),
  -- Vanilluxe - Hyper Beam - TM15
  (584, 58400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 28),
  -- Vanilluxe - Light Screen - TM16
  (584, 58400, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 29),
  -- Vanilluxe - Protect - TM17
  (584, 58400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 30),
  -- Vanilluxe - Rain Dance - TM18
  (584, 58400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 31),
  -- Vanilluxe - Frustration - TM21
  (584, 58400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Vanilluxe - Return - TM27
  (584, 58400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Vanilluxe - Double Team - TM32
  (584, 58400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Vanilluxe - Facade - TM42
  (584, 58400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Vanilluxe - Rest - TM44
  (584, 58400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Vanilluxe - Attract - TM45
  (584, 58400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Vanilluxe - Round - TM48
  (584, 58400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Vanilluxe - Explosion - TM64
  (584, 58400, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 39),
  -- Vanilluxe - Giga Impact - TM68
  (584, 58400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Vanilluxe - Frost Breath - TM79
  (584, 58400, 524, 16, NULL, 2, NULL, NULL, 16002079, NULL, 41),
  -- Vanilluxe - Swagger - TM87
  (584, 58400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 42),
  -- Vanilluxe - Sleep Talk - TM88
  (584, 58400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 43),
  -- Vanilluxe - Substitute - TM90
  (584, 58400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Vanilluxe - Flash Cannon - TM91
  (584, 58400, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 45),
  -- Vanilluxe - Confide - TM100
  (584, 58400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Vanilluxe - Snore - Tutor
  (584, 58400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Vanilluxe - Icy Wind - Tutor
  (584, 58400, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Vanilluxe - Uproar - Tutor
  (584, 58400, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Vanilluxe - Magic Coat - Tutor
  (584, 58400, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Vanilluxe - Signal Beam - Tutor
  (584, 58400, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Vanilluxe - Iron Defense - Tutor
  (584, 58400, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Vanilluxe - Water Pulse - Tutor
  (584, 58400, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Vanilluxe - Magnet Rise - Tutor
  (584, 58400, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Vanilluxe - Ally Switch - Tutor
  (584, 58400, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),

  -- Deerling - Tackle - Level 1
  (585, 58500, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deerling - Camouflage - Level 1
  (585, 58500, 293, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deerling - Growl - Level 4
  (585, 58500, 45, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Deerling - Sand Attack - Level 7
  (585, 58500, 28, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Deerling - Double Kick - Level 10
  (585, 58500, 24, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Deerling - Leech Seed - Level 13
  (585, 58500, 73, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Deerling - Feint Attack - Level 16
  (585, 58500, 185, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Deerling - Take Down - Level 20
  (585, 58500, 36, 16, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Deerling - Jump Kick - Level 24
  (585, 58500, 26, 16, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Deerling - Aromatherapy - Level 28
  (585, 58500, 312, 16, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Deerling - Energy Ball - Level 32
  (585, 58500, 412, 16, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Deerling - Charm - Level 36
  (585, 58500, 204, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Deerling - Nature Power - Level 41
  (585, 58500, 267, 16, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Deerling - Double-Edge - Level 46
  (585, 58500, 38, 16, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Deerling - Solar Beam - Level 51
  (585, 58500, 76, 16, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Deerling - Work Up - TM01
  (585, 58500, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 16),
  -- Deerling - Toxic - TM06
  (585, 58500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Deerling - Hidden Power - TM10
  (585, 58500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Deerling - Sunny Day - TM11
  (585, 58500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Deerling - Light Screen - TM16
  (585, 58500, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 20),
  -- Deerling - Protect - TM17
  (585, 58500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Deerling - Rain Dance - TM18
  (585, 58500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Deerling - Safeguard - TM20
  (585, 58500, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 23),
  -- Deerling - Frustration - TM21
  (585, 58500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Deerling - Solar Beam - TM22
  (585, 58500, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 25),
  -- Deerling - Return - TM27
  (585, 58500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Deerling - Shadow Ball - TM30
  (585, 58500, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Deerling - Double Team - TM32
  (585, 58500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Deerling - Facade - TM42
  (585, 58500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Deerling - Rest - TM44
  (585, 58500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Deerling - Attract - TM45
  (585, 58500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Deerling - Round - TM48
  (585, 58500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Deerling - Echoed Voice - TM49
  (585, 58500, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 33),
  -- Deerling - Energy Ball - TM53
  (585, 58500, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 34),
  -- Deerling - Thunder Wave - TM73
  (585, 58500, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 35),
  -- Deerling - Grass Knot - TM86
  (585, 58500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 36),
  -- Deerling - Swagger - TM87
  (585, 58500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Deerling - Sleep Talk - TM88
  (585, 58500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Deerling - Substitute - TM90
  (585, 58500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Deerling - Wild Charge - TM93
  (585, 58500, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 40),
  -- Deerling - Nature Power - TM96
  (585, 58500, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 41),
  -- Deerling - Confide - TM100
  (585, 58500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Deerling - Headbutt - Egg
  (585, 58500, 29, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Deerling - Agility - Egg
  (585, 58500, 97, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Deerling - Sleep Talk - Egg
  (585, 58500, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Deerling - Baton Pass - Egg
  (585, 58500, 226, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Deerling - Synthesis - Egg
  (585, 58500, 235, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Deerling - Fake Tears - Egg
  (585, 58500, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Deerling - Odor Sleuth - Egg
  (585, 58500, 316, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Deerling - Grass Whistle - Egg
  (585, 58500, 320, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Deerling - Natural Gift - Egg
  (585, 58500, 363, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Deerling - Worry Seed - Egg
  (585, 58500, 388, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Deerling - Snore - Tutor
  (585, 58500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Deerling - Giga Drain - Tutor
  (585, 58500, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Deerling - Synthesis - Tutor
  (585, 58500, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Deerling - Bounce - Tutor
  (585, 58500, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Deerling - Last Resort - Tutor
  (585, 58500, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Deerling - Worry Seed - Tutor
  (585, 58500, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Deerling - Seed Bomb - Tutor
  (585, 58500, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),

  -- Sawsbuck - Sand Attack - Level 1
  (586, 58600, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sawsbuck - Tackle - Level 1
  (586, 58600, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sawsbuck - Growl - Level 1
  (586, 58600, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sawsbuck - Megahorn - Level 1
  (586, 58600, 224, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sawsbuck - Camouflage - Level 1
  (586, 58600, 293, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sawsbuck - Horn Leech - Level 1
  (586, 58600, 532, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Sawsbuck - Growl - Level 4
  (586, 58600, 45, 16, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Sawsbuck - Sand Attack - Level 7
  (586, 58600, 28, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Sawsbuck - Double Kick - Level 10
  (586, 58600, 24, 16, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Sawsbuck - Leech Seed - Level 13
  (586, 58600, 73, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Sawsbuck - Feint Attack - Level 16
  (586, 58600, 185, 16, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Sawsbuck - Take Down - Level 20
  (586, 58600, 36, 16, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Sawsbuck - Jump Kick - Level 24
  (586, 58600, 26, 16, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Sawsbuck - Aromatherapy - Level 28
  (586, 58600, 312, 16, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Sawsbuck - Energy Ball - Level 32
  (586, 58600, 412, 16, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Sawsbuck - Charm - Level 36
  (586, 58600, 204, 16, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Sawsbuck - Nature Power - Level 44
  (586, 58600, 267, 16, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Sawsbuck - Double-Edge - Level 52
  (586, 58600, 38, 16, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Sawsbuck - Solar Beam - Level 60
  (586, 58600, 76, 16, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Sawsbuck - Work Up - TM01
  (586, 58600, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 20),
  -- Sawsbuck - Toxic - TM06
  (586, 58600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Sawsbuck - Hidden Power - TM10
  (586, 58600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Sawsbuck - Sunny Day - TM11
  (586, 58600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Sawsbuck - Hyper Beam - TM15
  (586, 58600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Sawsbuck - Light Screen - TM16
  (586, 58600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 25),
  -- Sawsbuck - Protect - TM17
  (586, 58600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Sawsbuck - Rain Dance - TM18
  (586, 58600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Sawsbuck - Safeguard - TM20
  (586, 58600, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 28),
  -- Sawsbuck - Frustration - TM21
  (586, 58600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Sawsbuck - Solar Beam - TM22
  (586, 58600, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 30),
  -- Sawsbuck - Return - TM27
  (586, 58600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Sawsbuck - Shadow Ball - TM30
  (586, 58600, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 32),
  -- Sawsbuck - Double Team - TM32
  (586, 58600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Sawsbuck - Facade - TM42
  (586, 58600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Sawsbuck - Rest - TM44
  (586, 58600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Sawsbuck - Attract - TM45
  (586, 58600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Sawsbuck - Round - TM48
  (586, 58600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Sawsbuck - Echoed Voice - TM49
  (586, 58600, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 38),
  -- Sawsbuck - Energy Ball - TM53
  (586, 58600, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 39),
  -- Sawsbuck - Giga Impact - TM68
  (586, 58600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Sawsbuck - Thunder Wave - TM73
  (586, 58600, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 41),
  -- Sawsbuck - Swords Dance - TM75
  (586, 58600, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 42),
  -- Sawsbuck - Grass Knot - TM86
  (586, 58600, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 43),
  -- Sawsbuck - Swagger - TM87
  (586, 58600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Sawsbuck - Sleep Talk - TM88
  (586, 58600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Sawsbuck - Substitute - TM90
  (586, 58600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Sawsbuck - Wild Charge - TM93
  (586, 58600, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 47),
  -- Sawsbuck - Nature Power - TM96
  (586, 58600, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 48),
  -- Sawsbuck - Confide - TM100
  (586, 58600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Sawsbuck - Snore - Tutor
  (586, 58600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Sawsbuck - Giga Drain - Tutor
  (586, 58600, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Sawsbuck - Synthesis - Tutor
  (586, 58600, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Sawsbuck - Bounce - Tutor
  (586, 58600, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Sawsbuck - Last Resort - Tutor
  (586, 58600, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Sawsbuck - Worry Seed - Tutor
  (586, 58600, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Sawsbuck - Seed Bomb - Tutor
  (586, 58600, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Sawsbuck - Stomping Tantrum - Tutor
  (586, 58600, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Sawsbuck - Horn Leech - Evolution
  (586, 58600, 532, 16, NULL, 7, NULL, NULL, NULL, NULL, 58),

  -- Emolga - Thunder Shock - Level 1
  (587, 58700, 84, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Emolga - Quick Attack - Level 4
  (587, 58700, 98, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Emolga - Tail Whip - Level 7
  (587, 58700, 39, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Emolga - Charge - Level 10
  (587, 58700, 268, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Emolga - Spark - Level 13
  (587, 58700, 209, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Emolga - Nuzzle - Level 15
  (587, 58700, 609, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Emolga - Pursuit - Level 16
  (587, 58700, 228, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Emolga - Double Team - Level 19
  (587, 58700, 104, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Emolga - Shock Wave - Level 22
  (587, 58700, 351, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Emolga - Electro Ball - Level 26
  (587, 58700, 486, 16, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Emolga - Acrobatics - Level 30
  (587, 58700, 512, 16, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Emolga - Light Screen - Level 34
  (587, 58700, 113, 16, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Emolga - Encore - Level 38
  (587, 58700, 227, 16, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Emolga - Volt Switch - Level 42
  (587, 58700, 521, 16, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Emolga - Agility - Level 46
  (587, 58700, 97, 16, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Emolga - Discharge - Level 50
  (587, 58700, 435, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Emolga - Toxic - TM06
  (587, 58700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Emolga - Hidden Power - TM10
  (587, 58700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Emolga - Taunt - TM12
  (587, 58700, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 19),
  -- Emolga - Light Screen - TM16
  (587, 58700, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 20),
  -- Emolga - Protect - TM17
  (587, 58700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Emolga - Rain Dance - TM18
  (587, 58700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Emolga - Roost - TM19
  (587, 58700, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 23),
  -- Emolga - Frustration - TM21
  (587, 58700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Emolga - Thunderbolt - TM24
  (587, 58700, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 25),
  -- Emolga - Thunder - TM25
  (587, 58700, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 26),
  -- Emolga - Return - TM27
  (587, 58700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Emolga - Double Team - TM32
  (587, 58700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Emolga - Aerial Ace - TM40
  (587, 58700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 29),
  -- Emolga - Facade - TM42
  (587, 58700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Emolga - Rest - TM44
  (587, 58700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Emolga - Attract - TM45
  (587, 58700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Emolga - Round - TM48
  (587, 58700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Emolga - Fling - TM56
  (587, 58700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 34),
  -- Emolga - Charge Beam - TM57
  (587, 58700, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 35),
  -- Emolga - Acrobatics - TM62
  (587, 58700, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 36),
  -- Emolga - Volt Switch - TM72
  (587, 58700, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 37),
  -- Emolga - Thunder Wave - TM73
  (587, 58700, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 38),
  -- Emolga - Swagger - TM87
  (587, 58700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Emolga - Sleep Talk - TM88
  (587, 58700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Emolga - U-turn - TM89
  (587, 58700, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 41),
  -- Emolga - Substitute - TM90
  (587, 58700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Emolga - Wild Charge - TM93
  (587, 58700, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 43),
  -- Emolga - Confide - TM100
  (587, 58700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Emolga - Charm - Egg
  (587, 58700, 204, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Emolga - Baton Pass - Egg
  (587, 58700, 226, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Emolga - Iron Tail - Egg
  (587, 58700, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Emolga - Astonish - Egg
  (587, 58700, 310, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Emolga - Tickle - Egg
  (587, 58700, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Emolga - Covet - Egg
  (587, 58700, 343, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Emolga - Shock Wave - Egg
  (587, 58700, 351, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Emolga - Roost - Egg
  (587, 58700, 355, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Emolga - Air Slash - Egg
  (587, 58700, 403, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Emolga - Ion Deluge - Egg
  (587, 58700, 569, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Emolga - Speed Swap - Egg
  (587, 58700, 683, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Emolga - Snore - Tutor
  (587, 58700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Emolga - Iron Tail - Tutor
  (587, 58700, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Emolga - Helping Hand - Tutor
  (587, 58700, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Emolga - Knock Off - Tutor
  (587, 58700, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Emolga - Signal Beam - Tutor
  (587, 58700, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Emolga - Covet - Tutor
  (587, 58700, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Emolga - Shock Wave - Tutor
  (587, 58700, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Emolga - Tailwind - Tutor
  (587, 58700, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Emolga - Last Resort - Tutor
  (587, 58700, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Emolga - Defog - Tutor
  (587, 58700, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Emolga - Electroweb - Tutor
  (587, 58700, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),

  -- Karrablast - Peck - Level 1
  (588, 58800, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Karrablast - Leer - Level 4
  (588, 58800, 43, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Karrablast - Endure - Level 8
  (588, 58800, 203, 16, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Karrablast - Fury Cutter - Level 13
  (588, 58800, 210, 16, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Karrablast - Fury Attack - Level 16
  (588, 58800, 31, 16, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Karrablast - Headbutt - Level 20
  (588, 58800, 29, 16, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Karrablast - False Swipe - Level 25
  (588, 58800, 206, 16, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Karrablast - Bug Buzz - Level 28
  (588, 58800, 405, 16, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Karrablast - Slash - Level 32
  (588, 58800, 163, 16, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Karrablast - Take Down - Level 37
  (588, 58800, 36, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Karrablast - Scary Face - Level 40
  (588, 58800, 184, 16, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Karrablast - X-Scissor - Level 44
  (588, 58800, 404, 16, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Karrablast - Flail - Level 49
  (588, 58800, 175, 16, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Karrablast - Swords Dance - Level 52
  (588, 58800, 14, 16, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Karrablast - Double-Edge - Level 56
  (588, 58800, 38, 16, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Karrablast - Toxic - TM06
  (588, 58800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Karrablast - Hidden Power - TM10
  (588, 58800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Karrablast - Protect - TM17
  (588, 58800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 18),
  -- Karrablast - Rain Dance - TM18
  (588, 58800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 19),
  -- Karrablast - Frustration - TM21
  (588, 58800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Karrablast - Return - TM27
  (588, 58800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 21),
  -- Karrablast - Double Team - TM32
  (588, 58800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 22),
  -- Karrablast - Aerial Ace - TM40
  (588, 58800, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 23),
  -- Karrablast - Facade - TM42
  (588, 58800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 24),
  -- Karrablast - Rest - TM44
  (588, 58800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 25),
  -- Karrablast - Attract - TM45
  (588, 58800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 26),
  -- Karrablast - Round - TM48
  (588, 58800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 27),
  -- Karrablast - Energy Ball - TM53
  (588, 58800, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 28),
  -- Karrablast - False Swipe - TM54
  (588, 58800, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 29),
  -- Karrablast - Swords Dance - TM75
  (588, 58800, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 30),
  -- Karrablast - X-Scissor - TM81
  (588, 58800, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 31),
  -- Karrablast - Infestation - TM83
  (588, 58800, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 32),
  -- Karrablast - Poison Jab - TM84
  (588, 58800, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 33),
  -- Karrablast - Swagger - TM87
  (588, 58800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 34),
  -- Karrablast - Sleep Talk - TM88
  (588, 58800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 35),
  -- Karrablast - Substitute - TM90
  (588, 58800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Karrablast - Confide - TM100
  (588, 58800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 37),
  -- Karrablast - Horn Attack - Egg
  (588, 58800, 30, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Karrablast - Counter - Egg
  (588, 58800, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Karrablast - Screech - Egg
  (588, 58800, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Karrablast - Feint Attack - Egg
  (588, 58800, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Karrablast - Megahorn - Egg
  (588, 58800, 224, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Karrablast - Pursuit - Egg
  (588, 58800, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Karrablast - Knock Off - Egg
  (588, 58800, 282, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Karrablast - Bug Bite - Egg
  (588, 58800, 450, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Karrablast - Drill Run - Egg
  (588, 58800, 529, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Karrablast - Snore - Tutor
  (588, 58800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Karrablast - Giga Drain - Tutor
  (588, 58800, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Karrablast - Knock Off - Tutor
  (588, 58800, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Karrablast - Signal Beam - Tutor
  (588, 58800, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Karrablast - Iron Defense - Tutor
  (588, 58800, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Karrablast - Bug Bite - Tutor
  (588, 58800, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Karrablast - Drill Run - Tutor
  (588, 58800, 529, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),

  -- Escavalier - Double-Edge - Level 1
  (589, 58900, 38, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Escavalier - Twineedle - Level 1
  (589, 58900, 41, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Escavalier - Leer - Level 1
  (589, 58900, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Escavalier - Peck - Level 1
  (589, 58900, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Escavalier - Quick Guard - Level 1
  (589, 58900, 501, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Escavalier - Fell Stinger - Level 1
  (589, 58900, 565, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Escavalier - Leer - Level 4
  (589, 58900, 43, 16, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Escavalier - Quick Guard - Level 8
  (589, 58900, 501, 16, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Escavalier - Twineedle - Level 13
  (589, 58900, 41, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Escavalier - Fury Attack - Level 16
  (589, 58900, 31, 16, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Escavalier - Headbutt - Level 20
  (589, 58900, 29, 16, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Escavalier - False Swipe - Level 25
  (589, 58900, 206, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Escavalier - Bug Buzz - Level 28
  (589, 58900, 405, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Escavalier - Slash - Level 32
  (589, 58900, 163, 16, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Escavalier - Iron Head - Level 37
  (589, 58900, 442, 16, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Escavalier - Iron Defense - Level 40
  (589, 58900, 334, 16, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Escavalier - X-Scissor - Level 44
  (589, 58900, 404, 16, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Escavalier - Reversal - Level 49
  (589, 58900, 179, 16, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Escavalier - Swords Dance - Level 52
  (589, 58900, 14, 16, NULL, 1, 52, NULL, NULL, NULL, 19),
  -- Escavalier - Giga Impact - Level 56
  (589, 58900, 416, 16, NULL, 1, 56, NULL, NULL, NULL, 20),
  -- Escavalier - Fell Stinger - Level 60
  (589, 58900, 565, 16, NULL, 1, 60, NULL, NULL, NULL, 21),
  -- Escavalier - Toxic - TM06
  (589, 58900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Escavalier - Hidden Power - TM10
  (589, 58900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Escavalier - Hyper Beam - TM15
  (589, 58900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Escavalier - Protect - TM17
  (589, 58900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Escavalier - Rain Dance - TM18
  (589, 58900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Escavalier - Frustration - TM21
  (589, 58900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Escavalier - Return - TM27
  (589, 58900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Escavalier - Double Team - TM32
  (589, 58900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Escavalier - Aerial Ace - TM40
  (589, 58900, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 30),
  -- Escavalier - Facade - TM42
  (589, 58900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Escavalier - Rest - TM44
  (589, 58900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Escavalier - Attract - TM45
  (589, 58900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Escavalier - Round - TM48
  (589, 58900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Escavalier - Focus Blast - TM52
  (589, 58900, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 35),
  -- Escavalier - Energy Ball - TM53
  (589, 58900, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 36),
  -- Escavalier - False Swipe - TM54
  (589, 58900, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 37),
  -- Escavalier - Brutal Swing - TM59
  (589, 58900, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 38),
  -- Escavalier - Smart Strike - TM67
  (589, 58900, 684, 16, NULL, 2, NULL, NULL, 16002067, NULL, 39),
  -- Escavalier - Giga Impact - TM68
  (589, 58900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Escavalier - Swords Dance - TM75
  (589, 58900, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 41),
  -- Escavalier - X-Scissor - TM81
  (589, 58900, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 42),
  -- Escavalier - Infestation - TM83
  (589, 58900, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 43),
  -- Escavalier - Poison Jab - TM84
  (589, 58900, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 44),
  -- Escavalier - Swagger - TM87
  (589, 58900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Escavalier - Sleep Talk - TM88
  (589, 58900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Escavalier - Substitute - TM90
  (589, 58900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Escavalier - Confide - TM100
  (589, 58900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Escavalier - Snore - Tutor
  (589, 58900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Escavalier - Giga Drain - Tutor
  (589, 58900, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Escavalier - Knock Off - Tutor
  (589, 58900, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Escavalier - Signal Beam - Tutor
  (589, 58900, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Escavalier - Iron Defense - Tutor
  (589, 58900, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Escavalier - Iron Head - Tutor
  (589, 58900, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Escavalier - Bug Bite - Tutor
  (589, 58900, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Escavalier - Drill Run - Tutor
  (589, 58900, 529, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Escavalier - Laser Focus - Tutor
  (589, 58900, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),

  -- Foongus - Absorb - Level 1
  (590, 59000, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Foongus - Growth - Level 6
  (590, 59000, 74, 16, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Foongus - Astonish - Level 8
  (590, 59000, 310, 16, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Foongus - Bide - Level 12
  (590, 59000, 117, 16, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Foongus - Mega Drain - Level 15
  (590, 59000, 72, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Foongus - Ingrain - Level 18
  (590, 59000, 275, 16, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Foongus - Feint Attack - Level 20
  (590, 59000, 185, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Foongus - Sweet Scent - Level 24
  (590, 59000, 230, 16, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Foongus - Giga Drain - Level 28
  (590, 59000, 202, 16, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Foongus - Toxic - Level 32
  (590, 59000, 92, 16, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Foongus - Synthesis - Level 35
  (590, 59000, 235, 16, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Foongus - Clear Smog - Level 39
  (590, 59000, 499, 16, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Foongus - Solar Beam - Level 43
  (590, 59000, 76, 16, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Foongus - Rage Powder - Level 45
  (590, 59000, 476, 16, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Foongus - Spore - Level 50
  (590, 59000, 147, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Foongus - Toxic - TM06
  (590, 59000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Foongus - Venoshock - TM09
  (590, 59000, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 17),
  -- Foongus - Hidden Power - TM10
  (590, 59000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Foongus - Sunny Day - TM11
  (590, 59000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Foongus - Protect - TM17
  (590, 59000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Foongus - Rain Dance - TM18
  (590, 59000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Foongus - Frustration - TM21
  (590, 59000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Foongus - Solar Beam - TM22
  (590, 59000, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 23),
  -- Foongus - Return - TM27
  (590, 59000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Foongus - Double Team - TM32
  (590, 59000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Foongus - Sludge Bomb - TM36
  (590, 59000, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 26),
  -- Foongus - Facade - TM42
  (590, 59000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Foongus - Rest - TM44
  (590, 59000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Foongus - Attract - TM45
  (590, 59000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Foongus - Round - TM48
  (590, 59000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 30),
  -- Foongus - Energy Ball - TM53
  (590, 59000, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 31),
  -- Foongus - Payback - TM66
  (590, 59000, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 32),
  -- Foongus - Grass Knot - TM86
  (590, 59000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 33),
  -- Foongus - Swagger - TM87
  (590, 59000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 34),
  -- Foongus - Sleep Talk - TM88
  (590, 59000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 35),
  -- Foongus - Substitute - TM90
  (590, 59000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Foongus - Nature Power - TM96
  (590, 59000, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 37),
  -- Foongus - Confide - TM100
  (590, 59000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 38),
  -- Foongus - Body Slam - Egg
  (590, 59000, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Foongus - Growth - Egg
  (590, 59000, 74, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Foongus - Poison Powder - Egg
  (590, 59000, 77, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Foongus - Stun Spore - Egg
  (590, 59000, 78, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Foongus - Defense Curl - Egg
  (590, 59000, 111, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Foongus - Endure - Egg
  (590, 59000, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Foongus - Rollout - Egg
  (590, 59000, 205, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Foongus - Gastro Acid - Egg
  (590, 59000, 380, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Foongus - Snore - Tutor
  (590, 59000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Foongus - Giga Drain - Tutor
  (590, 59000, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Foongus - Synthesis - Tutor
  (590, 59000, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Foongus - Gastro Acid - Tutor
  (590, 59000, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Foongus - Worry Seed - Tutor
  (590, 59000, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Foongus - Seed Bomb - Tutor
  (590, 59000, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Foongus - Foul Play - Tutor
  (590, 59000, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Foongus - After You - Tutor
  (590, 59000, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),

  -- Amoonguss - Absorb - Level 1
  (591, 59100, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Amoonguss - Growth - Level 1
  (591, 59100, 74, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Amoonguss - Bide - Level 1
  (591, 59100, 117, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Amoonguss - Astonish - Level 1
  (591, 59100, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Amoonguss - Growth - Level 6
  (591, 59100, 74, 16, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Amoonguss - Astonish - Level 8
  (591, 59100, 310, 16, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Amoonguss - Bide - Level 12
  (591, 59100, 117, 16, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Amoonguss - Mega Drain - Level 15
  (591, 59100, 72, 16, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Amoonguss - Ingrain - Level 18
  (591, 59100, 275, 16, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Amoonguss - Feint Attack - Level 20
  (591, 59100, 185, 16, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Amoonguss - Sweet Scent - Level 24
  (591, 59100, 230, 16, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Amoonguss - Giga Drain - Level 28
  (591, 59100, 202, 16, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Amoonguss - Toxic - Level 32
  (591, 59100, 92, 16, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Amoonguss - Synthesis - Level 35
  (591, 59100, 235, 16, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Amoonguss - Clear Smog - Level 43
  (591, 59100, 499, 16, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Amoonguss - Solar Beam - Level 49
  (591, 59100, 76, 16, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Amoonguss - Rage Powder - Level 54
  (591, 59100, 476, 16, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Amoonguss - Spore - Level 62
  (591, 59100, 147, 16, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Amoonguss - Toxic - TM06
  (591, 59100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Amoonguss - Venoshock - TM09
  (591, 59100, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 20),
  -- Amoonguss - Hidden Power - TM10
  (591, 59100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Amoonguss - Sunny Day - TM11
  (591, 59100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Amoonguss - Hyper Beam - TM15
  (591, 59100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Amoonguss - Protect - TM17
  (591, 59100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Amoonguss - Rain Dance - TM18
  (591, 59100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Amoonguss - Frustration - TM21
  (591, 59100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Amoonguss - Solar Beam - TM22
  (591, 59100, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 27),
  -- Amoonguss - Return - TM27
  (591, 59100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Amoonguss - Double Team - TM32
  (591, 59100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Amoonguss - Sludge Bomb - TM36
  (591, 59100, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 30),
  -- Amoonguss - Facade - TM42
  (591, 59100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Amoonguss - Rest - TM44
  (591, 59100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Amoonguss - Attract - TM45
  (591, 59100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Amoonguss - Round - TM48
  (591, 59100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Amoonguss - Energy Ball - TM53
  (591, 59100, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 35),
  -- Amoonguss - Payback - TM66
  (591, 59100, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 36),
  -- Amoonguss - Giga Impact - TM68
  (591, 59100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 37),
  -- Amoonguss - Grass Knot - TM86
  (591, 59100, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 38),
  -- Amoonguss - Swagger - TM87
  (591, 59100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Amoonguss - Sleep Talk - TM88
  (591, 59100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Amoonguss - Substitute - TM90
  (591, 59100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Amoonguss - Nature Power - TM96
  (591, 59100, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 42),
  -- Amoonguss - Confide - TM100
  (591, 59100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 43),
  -- Amoonguss - Snore - Tutor
  (591, 59100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Amoonguss - Giga Drain - Tutor
  (591, 59100, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Amoonguss - Synthesis - Tutor
  (591, 59100, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Amoonguss - Gastro Acid - Tutor
  (591, 59100, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Amoonguss - Worry Seed - Tutor
  (591, 59100, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Amoonguss - Seed Bomb - Tutor
  (591, 59100, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Amoonguss - Foul Play - Tutor
  (591, 59100, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Amoonguss - After You - Tutor
  (591, 59100, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Amoonguss - Stomping Tantrum - Tutor
  (591, 59100, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),

  -- Frillish - Bubble - Level 1
  (592, 59200, 145, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Frillish - Water Sport - Level 1
  (592, 59200, 346, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Frillish - Absorb - Level 5
  (592, 59200, 71, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Frillish - Night Shade - Level 9
  (592, 59200, 101, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Frillish - Bubble Beam - Level 13
  (592, 59200, 61, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Frillish - Recover - Level 17
  (592, 59200, 105, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Frillish - Water Pulse - Level 22
  (592, 59200, 352, 16, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Frillish - Ominous Wind - Level 27
  (592, 59200, 466, 16, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Frillish - Brine - Level 32
  (592, 59200, 362, 16, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Frillish - Rain Dance - Level 37
  (592, 59200, 240, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Frillish - Hex - Level 43
  (592, 59200, 506, 16, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Frillish - Hydro Pump - Level 49
  (592, 59200, 56, 16, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Frillish - Wring Out - Level 55
  (592, 59200, 378, 16, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Frillish - Water Spout - Level 61
  (592, 59200, 323, 16, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Frillish - Toxic - TM06
  (592, 59200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Frillish - Hail - TM07
  (592, 59200, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 16),
  -- Frillish - Hidden Power - TM10
  (592, 59200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Frillish - Taunt - TM12
  (592, 59200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 18),
  -- Frillish - Ice Beam - TM13
  (592, 59200, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 19),
  -- Frillish - Blizzard - TM14
  (592, 59200, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 20),
  -- Frillish - Protect - TM17
  (592, 59200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Frillish - Rain Dance - TM18
  (592, 59200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Frillish - Safeguard - TM20
  (592, 59200, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 23),
  -- Frillish - Frustration - TM21
  (592, 59200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Frillish - Return - TM27
  (592, 59200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Frillish - Psychic - TM29
  (592, 59200, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 26),
  -- Frillish - Shadow Ball - TM30
  (592, 59200, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Frillish - Double Team - TM32
  (592, 59200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Frillish - Sludge Wave - TM34
  (592, 59200, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 29),
  -- Frillish - Sludge Bomb - TM36
  (592, 59200, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 30),
  -- Frillish - Facade - TM42
  (592, 59200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Frillish - Rest - TM44
  (592, 59200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Frillish - Attract - TM45
  (592, 59200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Frillish - Round - TM48
  (592, 59200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Frillish - Energy Ball - TM53
  (592, 59200, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 35),
  -- Frillish - Scald - TM55
  (592, 59200, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 36),
  -- Frillish - Will-O-Wisp - TM61
  (592, 59200, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 37),
  -- Frillish - Psych Up - TM77
  (592, 59200, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 38),
  -- Frillish - Dream Eater - TM85
  (592, 59200, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 39),
  -- Frillish - Swagger - TM87
  (592, 59200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Frillish - Sleep Talk - TM88
  (592, 59200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Frillish - Substitute - TM90
  (592, 59200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Frillish - Trick Room - TM92
  (592, 59200, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 43),
  -- Frillish - Surf - TM94
  (592, 59200, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 44),
  -- Frillish - Dark Pulse - TM97
  (592, 59200, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 45),
  -- Frillish - Waterfall - TM98
  (592, 59200, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 46),
  -- Frillish - Dazzling Gleam - TM99
  (592, 59200, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 47),
  -- Frillish - Confide - TM100
  (592, 59200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Frillish - Mist - Egg
  (592, 59200, 54, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Frillish - Recover - Egg
  (592, 59200, 105, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Frillish - Confuse Ray - Egg
  (592, 59200, 109, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Frillish - Constrict - Egg
  (592, 59200, 132, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Frillish - Acid Armor - Egg
  (592, 59200, 151, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Frillish - Pain Split - Egg
  (592, 59200, 220, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Frillish - Bind - Tutor
  (592, 59200, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Frillish - Snore - Tutor
  (592, 59200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Frillish - Spite - Tutor
  (592, 59200, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Frillish - Icy Wind - Tutor
  (592, 59200, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Frillish - Giga Drain - Tutor
  (592, 59200, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Frillish - Pain Split - Tutor
  (592, 59200, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Frillish - Trick - Tutor
  (592, 59200, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Frillish - Magic Coat - Tutor
  (592, 59200, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Frillish - Shock Wave - Tutor
  (592, 59200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Frillish - Water Pulse - Tutor
  (592, 59200, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),

  -- Jellicent - Absorb - Level 1
  (593, 59300, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jellicent - Night Shade - Level 1
  (593, 59300, 101, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jellicent - Bubble - Level 1
  (593, 59300, 145, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jellicent - Water Spout - Level 1
  (593, 59300, 323, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jellicent - Water Sport - Level 1
  (593, 59300, 346, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Jellicent - Wring Out - Level 1
  (593, 59300, 378, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Jellicent - Absorb - Level 5
  (593, 59300, 71, 16, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Jellicent - Night Shade - Level 9
  (593, 59300, 101, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Jellicent - Bubble Beam - Level 13
  (593, 59300, 61, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Jellicent - Recover - Level 17
  (593, 59300, 105, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Jellicent - Water Pulse - Level 22
  (593, 59300, 352, 16, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Jellicent - Ominous Wind - Level 27
  (593, 59300, 466, 16, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Jellicent - Brine - Level 32
  (593, 59300, 362, 16, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Jellicent - Rain Dance - Level 37
  (593, 59300, 240, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Jellicent - Hex - Level 45
  (593, 59300, 506, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Jellicent - Hydro Pump - Level 53
  (593, 59300, 56, 16, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Jellicent - Wring Out - Level 61
  (593, 59300, 378, 16, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Jellicent - Water Spout - Level 69
  (593, 59300, 323, 16, NULL, 1, 69, NULL, NULL, NULL, 18),
  -- Jellicent - Toxic - TM06
  (593, 59300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Jellicent - Hail - TM07
  (593, 59300, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 20),
  -- Jellicent - Hidden Power - TM10
  (593, 59300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Jellicent - Taunt - TM12
  (593, 59300, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Jellicent - Ice Beam - TM13
  (593, 59300, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 23),
  -- Jellicent - Blizzard - TM14
  (593, 59300, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 24),
  -- Jellicent - Hyper Beam - TM15
  (593, 59300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Jellicent - Protect - TM17
  (593, 59300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Jellicent - Rain Dance - TM18
  (593, 59300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Jellicent - Safeguard - TM20
  (593, 59300, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 28),
  -- Jellicent - Frustration - TM21
  (593, 59300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Jellicent - Return - TM27
  (593, 59300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Jellicent - Psychic - TM29
  (593, 59300, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 31),
  -- Jellicent - Shadow Ball - TM30
  (593, 59300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 32),
  -- Jellicent - Double Team - TM32
  (593, 59300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Jellicent - Sludge Wave - TM34
  (593, 59300, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 34),
  -- Jellicent - Sludge Bomb - TM36
  (593, 59300, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 35),
  -- Jellicent - Facade - TM42
  (593, 59300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Jellicent - Rest - TM44
  (593, 59300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Jellicent - Attract - TM45
  (593, 59300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Jellicent - Round - TM48
  (593, 59300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Jellicent - Energy Ball - TM53
  (593, 59300, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 40),
  -- Jellicent - Scald - TM55
  (593, 59300, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 41),
  -- Jellicent - Will-O-Wisp - TM61
  (593, 59300, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 42),
  -- Jellicent - Giga Impact - TM68
  (593, 59300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 43),
  -- Jellicent - Psych Up - TM77
  (593, 59300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 44),
  -- Jellicent - Dream Eater - TM85
  (593, 59300, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 45),
  -- Jellicent - Swagger - TM87
  (593, 59300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Jellicent - Sleep Talk - TM88
  (593, 59300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Jellicent - Substitute - TM90
  (593, 59300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Jellicent - Trick Room - TM92
  (593, 59300, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 49),
  -- Jellicent - Surf - TM94
  (593, 59300, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 50),
  -- Jellicent - Dark Pulse - TM97
  (593, 59300, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 51),
  -- Jellicent - Waterfall - TM98
  (593, 59300, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 52),
  -- Jellicent - Dazzling Gleam - TM99
  (593, 59300, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 53),
  -- Jellicent - Confide - TM100
  (593, 59300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Jellicent - Bind - Tutor
  (593, 59300, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Jellicent - Snore - Tutor
  (593, 59300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Jellicent - Spite - Tutor
  (593, 59300, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Jellicent - Icy Wind - Tutor
  (593, 59300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Jellicent - Giga Drain - Tutor
  (593, 59300, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Jellicent - Pain Split - Tutor
  (593, 59300, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Jellicent - Trick - Tutor
  (593, 59300, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Jellicent - Magic Coat - Tutor
  (593, 59300, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Jellicent - Shock Wave - Tutor
  (593, 59300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Jellicent - Water Pulse - Tutor
  (593, 59300, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),

  -- Alomomola - Pound - Level 1
  (594, 59400, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alomomola - Hydro Pump - Level 1
  (594, 59400, 56, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alomomola - Helping Hand - Level 1
  (594, 59400, 270, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alomomola - Water Sport - Level 1
  (594, 59400, 346, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Alomomola - Healing Wish - Level 1
  (594, 59400, 361, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Alomomola - Wide Guard - Level 1
  (594, 59400, 469, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Alomomola - Play Nice - Level 1
  (594, 59400, 589, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Alomomola - Aqua Ring - Level 5
  (594, 59400, 392, 16, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Alomomola - Aqua Jet - Level 9
  (594, 59400, 453, 16, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Alomomola - Double Slap - Level 13
  (594, 59400, 3, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Alomomola - Heal Pulse - Level 17
  (594, 59400, 505, 16, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Alomomola - Protect - Level 21
  (594, 59400, 182, 16, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Alomomola - Water Pulse - Level 25
  (594, 59400, 352, 16, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Alomomola - Wake-Up Slap - Level 29
  (594, 59400, 358, 16, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Alomomola - Soak - Level 33
  (594, 59400, 487, 16, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Alomomola - Wish - Level 37
  (594, 59400, 273, 16, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Alomomola - Brine - Level 41
  (594, 59400, 362, 16, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Alomomola - Safeguard - Level 45
  (594, 59400, 219, 16, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Alomomola - Whirlpool - Level 49
  (594, 59400, 250, 16, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Alomomola - Helping Hand - Level 53
  (594, 59400, 270, 16, NULL, 1, 53, NULL, NULL, NULL, 20),
  -- Alomomola - Healing Wish - Level 57
  (594, 59400, 361, 16, NULL, 1, 57, NULL, NULL, NULL, 21),
  -- Alomomola - Wide Guard - Level 61
  (594, 59400, 469, 16, NULL, 1, 61, NULL, NULL, NULL, 22),
  -- Alomomola - Hydro Pump - Level 65
  (594, 59400, 56, 16, NULL, 1, 65, NULL, NULL, NULL, 23),
  -- Alomomola - Calm Mind - TM04
  (594, 59400, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 24),
  -- Alomomola - Toxic - TM06
  (594, 59400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 25),
  -- Alomomola - Hail - TM07
  (594, 59400, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 26),
  -- Alomomola - Hidden Power - TM10
  (594, 59400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 27),
  -- Alomomola - Ice Beam - TM13
  (594, 59400, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 28),
  -- Alomomola - Blizzard - TM14
  (594, 59400, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 29),
  -- Alomomola - Light Screen - TM16
  (594, 59400, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 30),
  -- Alomomola - Protect - TM17
  (594, 59400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 31),
  -- Alomomola - Rain Dance - TM18
  (594, 59400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 32),
  -- Alomomola - Safeguard - TM20
  (594, 59400, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 33),
  -- Alomomola - Frustration - TM21
  (594, 59400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 34),
  -- Alomomola - Return - TM27
  (594, 59400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 35),
  -- Alomomola - Psychic - TM29
  (594, 59400, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 36),
  -- Alomomola - Shadow Ball - TM30
  (594, 59400, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 37),
  -- Alomomola - Double Team - TM32
  (594, 59400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 38),
  -- Alomomola - Facade - TM42
  (594, 59400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 39),
  -- Alomomola - Rest - TM44
  (594, 59400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 40),
  -- Alomomola - Attract - TM45
  (594, 59400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 41),
  -- Alomomola - Round - TM48
  (594, 59400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Alomomola - Scald - TM55
  (594, 59400, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 43),
  -- Alomomola - Psych Up - TM77
  (594, 59400, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 44),
  -- Alomomola - Swagger - TM87
  (594, 59400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Alomomola - Sleep Talk - TM88
  (594, 59400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Alomomola - Substitute - TM90
  (594, 59400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Alomomola - Surf - TM94
  (594, 59400, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 48),
  -- Alomomola - Waterfall - TM98
  (594, 59400, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 49),
  -- Alomomola - Confide - TM100
  (594, 59400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Alomomola - Mist - Egg
  (594, 59400, 54, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Alomomola - Endure - Egg
  (594, 59400, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Alomomola - Pain Split - Egg
  (594, 59400, 220, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Alomomola - Mirror Coat - Egg
  (594, 59400, 243, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Alomomola - Refresh - Egg
  (594, 59400, 287, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Alomomola - Tickle - Egg
  (594, 59400, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Alomomola - Snore - Tutor
  (594, 59400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Alomomola - Icy Wind - Tutor
  (594, 59400, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Alomomola - Pain Split - Tutor
  (594, 59400, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Alomomola - Helping Hand - Tutor
  (594, 59400, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Alomomola - Magic Coat - Tutor
  (594, 59400, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Alomomola - Knock Off - Tutor
  (594, 59400, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Alomomola - Bounce - Tutor
  (594, 59400, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Alomomola - Water Pulse - Tutor
  (594, 59400, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Alomomola - Liquidation - Tutor
  (594, 59400, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),

  -- Joltik - Absorb - Level 1
  (595, 59500, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Joltik - String Shot - Level 1
  (595, 59500, 81, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Joltik - Spider Web - Level 1
  (595, 59500, 169, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Joltik - Thunder Wave - Level 4
  (595, 59500, 86, 16, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Joltik - Screech - Level 7
  (595, 59500, 103, 16, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Joltik - Fury Cutter - Level 12
  (595, 59500, 210, 16, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Joltik - Electroweb - Level 15
  (595, 59500, 527, 16, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Joltik - Bug Bite - Level 18
  (595, 59500, 450, 16, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Joltik - Gastro Acid - Level 23
  (595, 59500, 380, 16, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Joltik - Slash - Level 26
  (595, 59500, 163, 16, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Joltik - Electro Ball - Level 29
  (595, 59500, 486, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Joltik - Signal Beam - Level 34
  (595, 59500, 324, 16, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Joltik - Agility - Level 37
  (595, 59500, 97, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Joltik - Sucker Punch - Level 40
  (595, 59500, 389, 16, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Joltik - Discharge - Level 45
  (595, 59500, 435, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Joltik - Bug Buzz - Level 48
  (595, 59500, 405, 16, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Joltik - Toxic - TM06
  (595, 59500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Joltik - Hidden Power - TM10
  (595, 59500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Joltik - Light Screen - TM16
  (595, 59500, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 19),
  -- Joltik - Protect - TM17
  (595, 59500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Joltik - Rain Dance - TM18
  (595, 59500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Joltik - Frustration - TM21
  (595, 59500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Joltik - Thunderbolt - TM24
  (595, 59500, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 23),
  -- Joltik - Return - TM27
  (595, 59500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Joltik - Leech Life - TM28
  (595, 59500, 141, 16, NULL, 2, NULL, NULL, 16002028, NULL, 25),
  -- Joltik - Double Team - TM32
  (595, 59500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Joltik - Facade - TM42
  (595, 59500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Joltik - Rest - TM44
  (595, 59500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Joltik - Attract - TM45
  (595, 59500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Joltik - Thief - TM46
  (595, 59500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 30),
  -- Joltik - Round - TM48
  (595, 59500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Joltik - Energy Ball - TM53
  (595, 59500, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 32),
  -- Joltik - Charge Beam - TM57
  (595, 59500, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 33),
  -- Joltik - Volt Switch - TM72
  (595, 59500, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 34),
  -- Joltik - Thunder Wave - TM73
  (595, 59500, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 35),
  -- Joltik - X-Scissor - TM81
  (595, 59500, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 36),
  -- Joltik - Infestation - TM83
  (595, 59500, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 37),
  -- Joltik - Poison Jab - TM84
  (595, 59500, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 38),
  -- Joltik - Swagger - TM87
  (595, 59500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Joltik - Sleep Talk - TM88
  (595, 59500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Joltik - Substitute - TM90
  (595, 59500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Joltik - Wild Charge - TM93
  (595, 59500, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 42),
  -- Joltik - Confide - TM100
  (595, 59500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 43),
  -- Joltik - Poison Sting - Egg
  (595, 59500, 40, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Joltik - Pin Missile - Egg
  (595, 59500, 42, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Joltik - Disable - Egg
  (595, 59500, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Joltik - Feint Attack - Egg
  (595, 59500, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Joltik - Pursuit - Egg
  (595, 59500, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Joltik - Camouflage - Egg
  (595, 59500, 293, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Joltik - Rock Climb - Egg
  (595, 59500, 431, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Joltik - Cross Poison - Egg
  (595, 59500, 440, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Joltik - Lunge - Egg
  (595, 59500, 679, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Joltik - Snore - Tutor
  (595, 59500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Joltik - Giga Drain - Tutor
  (595, 59500, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Joltik - Signal Beam - Tutor
  (595, 59500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Joltik - Bounce - Tutor
  (595, 59500, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Joltik - Shock Wave - Tutor
  (595, 59500, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Joltik - Gastro Acid - Tutor
  (595, 59500, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Joltik - Magnet Rise - Tutor
  (595, 59500, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Joltik - Bug Bite - Tutor
  (595, 59500, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Joltik - Electroweb - Tutor
  (595, 59500, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),

  -- Galvantula - Absorb - Level 1
  (596, 59600, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Galvantula - String Shot - Level 1
  (596, 59600, 81, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Galvantula - Thunder Wave - Level 1
  (596, 59600, 86, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Galvantula - Spider Web - Level 1
  (596, 59600, 169, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Galvantula - Sticky Web - Level 1
  (596, 59600, 564, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Galvantula - Thunder Wave - Level 4
  (596, 59600, 86, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Galvantula - Screech - Level 7
  (596, 59600, 103, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Galvantula - Fury Cutter - Level 12
  (596, 59600, 210, 16, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Galvantula - Electroweb - Level 15
  (596, 59600, 527, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Galvantula - Bug Bite - Level 18
  (596, 59600, 450, 16, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Galvantula - Gastro Acid - Level 23
  (596, 59600, 380, 16, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Galvantula - Slash - Level 26
  (596, 59600, 163, 16, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Galvantula - Electro Ball - Level 29
  (596, 59600, 486, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Galvantula - Signal Beam - Level 34
  (596, 59600, 324, 16, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Galvantula - Agility - Level 40
  (596, 59600, 97, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Galvantula - Sucker Punch - Level 46
  (596, 59600, 389, 16, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Galvantula - Discharge - Level 54
  (596, 59600, 435, 16, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Galvantula - Bug Buzz - Level 60
  (596, 59600, 405, 16, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Galvantula - Toxic - TM06
  (596, 59600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Galvantula - Hidden Power - TM10
  (596, 59600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Galvantula - Hyper Beam - TM15
  (596, 59600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Galvantula - Light Screen - TM16
  (596, 59600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 22),
  -- Galvantula - Protect - TM17
  (596, 59600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Galvantula - Rain Dance - TM18
  (596, 59600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Galvantula - Frustration - TM21
  (596, 59600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Galvantula - Thunderbolt - TM24
  (596, 59600, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 26),
  -- Galvantula - Thunder - TM25
  (596, 59600, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 27),
  -- Galvantula - Return - TM27
  (596, 59600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Galvantula - Leech Life - TM28
  (596, 59600, 141, 16, NULL, 2, NULL, NULL, 16002028, NULL, 29),
  -- Galvantula - Double Team - TM32
  (596, 59600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Galvantula - Facade - TM42
  (596, 59600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Galvantula - Rest - TM44
  (596, 59600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Galvantula - Attract - TM45
  (596, 59600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Galvantula - Thief - TM46
  (596, 59600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 34),
  -- Galvantula - Round - TM48
  (596, 59600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Galvantula - Energy Ball - TM53
  (596, 59600, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 36),
  -- Galvantula - Charge Beam - TM57
  (596, 59600, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 37),
  -- Galvantula - Giga Impact - TM68
  (596, 59600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 38),
  -- Galvantula - Volt Switch - TM72
  (596, 59600, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 39),
  -- Galvantula - Thunder Wave - TM73
  (596, 59600, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 40),
  -- Galvantula - X-Scissor - TM81
  (596, 59600, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 41),
  -- Galvantula - Infestation - TM83
  (596, 59600, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 42),
  -- Galvantula - Poison Jab - TM84
  (596, 59600, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 43),
  -- Galvantula - Swagger - TM87
  (596, 59600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Galvantula - Sleep Talk - TM88
  (596, 59600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Galvantula - Substitute - TM90
  (596, 59600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Galvantula - Wild Charge - TM93
  (596, 59600, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 47),
  -- Galvantula - Confide - TM100
  (596, 59600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Galvantula - Snore - Tutor
  (596, 59600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Galvantula - Giga Drain - Tutor
  (596, 59600, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Galvantula - Signal Beam - Tutor
  (596, 59600, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Galvantula - Bounce - Tutor
  (596, 59600, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Galvantula - Shock Wave - Tutor
  (596, 59600, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Galvantula - Gastro Acid - Tutor
  (596, 59600, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Galvantula - Magnet Rise - Tutor
  (596, 59600, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Galvantula - Bug Bite - Tutor
  (596, 59600, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Galvantula - Electroweb - Tutor
  (596, 59600, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Galvantula - Throat Chop - Tutor
  (596, 59600, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Galvantula - Sticky Web - Evolution
  (596, 59600, 564, 16, NULL, 7, NULL, NULL, NULL, NULL, 59),

  -- Ferroseed - Tackle - Level 1
  (597, 59700, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ferroseed - Harden - Level 1
  (597, 59700, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ferroseed - Rollout - Level 6
  (597, 59700, 205, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Ferroseed - Curse - Level 9
  (597, 59700, 174, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Ferroseed - Metal Claw - Level 14
  (597, 59700, 232, 16, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Ferroseed - Pin Missile - Level 18
  (597, 59700, 42, 16, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Ferroseed - Gyro Ball - Level 21
  (597, 59700, 360, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Ferroseed - Iron Defense - Level 26
  (597, 59700, 334, 16, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Ferroseed - Mirror Shot - Level 30
  (597, 59700, 429, 16, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Ferroseed - Ingrain - Level 35
  (597, 59700, 275, 16, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Ferroseed - Self-Destruct - Level 38
  (597, 59700, 120, 16, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Ferroseed - Iron Head - Level 43
  (597, 59700, 442, 16, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Ferroseed - Payback - Level 47
  (597, 59700, 371, 16, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Ferroseed - Flash Cannon - Level 52
  (597, 59700, 430, 16, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Ferroseed - Explosion - Level 55
  (597, 59700, 153, 16, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Ferroseed - Toxic - TM06
  (597, 59700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Ferroseed - Hidden Power - TM10
  (597, 59700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Ferroseed - Sunny Day - TM11
  (597, 59700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Ferroseed - Protect - TM17
  (597, 59700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Ferroseed - Frustration - TM21
  (597, 59700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Ferroseed - Solar Beam - TM22
  (597, 59700, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 21),
  -- Ferroseed - Thunderbolt - TM24
  (597, 59700, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 22),
  -- Ferroseed - Return - TM27
  (597, 59700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 23),
  -- Ferroseed - Double Team - TM32
  (597, 59700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Ferroseed - Facade - TM42
  (597, 59700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 25),
  -- Ferroseed - Rest - TM44
  (597, 59700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 26),
  -- Ferroseed - Round - TM48
  (597, 59700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 27),
  -- Ferroseed - Energy Ball - TM53
  (597, 59700, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 28),
  -- Ferroseed - Explosion - TM64
  (597, 59700, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 29),
  -- Ferroseed - Payback - TM66
  (597, 59700, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 30),
  -- Ferroseed - Rock Polish - TM69
  (597, 59700, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 31),
  -- Ferroseed - Thunder Wave - TM73
  (597, 59700, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 32),
  -- Ferroseed - Gyro Ball - TM74
  (597, 59700, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 33),
  -- Ferroseed - Poison Jab - TM84
  (597, 59700, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 34),
  -- Ferroseed - Swagger - TM87
  (597, 59700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Ferroseed - Sleep Talk - TM88
  (597, 59700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Ferroseed - Substitute - TM90
  (597, 59700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 37),
  -- Ferroseed - Flash Cannon - TM91
  (597, 59700, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 38),
  -- Ferroseed - Nature Power - TM96
  (597, 59700, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 39),
  -- Ferroseed - Confide - TM100
  (597, 59700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Ferroseed - Leech Seed - Egg
  (597, 59700, 73, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Ferroseed - Spikes - Egg
  (597, 59700, 191, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Ferroseed - Bullet Seed - Egg
  (597, 59700, 331, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Ferroseed - Gravity - Egg
  (597, 59700, 356, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Ferroseed - Worry Seed - Egg
  (597, 59700, 388, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Ferroseed - Seed Bomb - Egg
  (597, 59700, 402, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Ferroseed - Rock Climb - Egg
  (597, 59700, 431, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ferroseed - Stealth Rock - Egg
  (597, 59700, 446, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Ferroseed - Acid Spray - Egg
  (597, 59700, 491, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Ferroseed - Snore - Tutor
  (597, 59700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Ferroseed - Giga Drain - Tutor
  (597, 59700, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Ferroseed - Knock Off - Tutor
  (597, 59700, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Ferroseed - Endeavor - Tutor
  (597, 59700, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Ferroseed - Iron Defense - Tutor
  (597, 59700, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Ferroseed - Gravity - Tutor
  (597, 59700, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Ferroseed - Worry Seed - Tutor
  (597, 59700, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Ferroseed - Magnet Rise - Tutor
  (597, 59700, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Ferroseed - Seed Bomb - Tutor
  (597, 59700, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Ferroseed - Iron Head - Tutor
  (597, 59700, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Ferroseed - Stealth Rock - Tutor
  (597, 59700, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),

  -- Ferrothorn - Tackle - Level 1
  (598, 59800, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ferrothorn - Harden - Level 1
  (598, 59800, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ferrothorn - Curse - Level 1
  (598, 59800, 174, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ferrothorn - Rollout - Level 1
  (598, 59800, 205, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ferrothorn - Rock Climb - Level 1
  (598, 59800, 431, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ferrothorn - Power Whip - Level 1
  (598, 59800, 438, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Ferrothorn - Rollout - Level 6
  (598, 59800, 205, 16, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Ferrothorn - Curse - Level 9
  (598, 59800, 174, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Ferrothorn - Metal Claw - Level 14
  (598, 59800, 232, 16, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Ferrothorn - Pin Missile - Level 18
  (598, 59800, 42, 16, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Ferrothorn - Gyro Ball - Level 21
  (598, 59800, 360, 16, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Ferrothorn - Iron Defense - Level 26
  (598, 59800, 334, 16, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Ferrothorn - Mirror Shot - Level 30
  (598, 59800, 429, 16, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Ferrothorn - Ingrain - Level 35
  (598, 59800, 275, 16, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Ferrothorn - Self-Destruct - Level 38
  (598, 59800, 120, 16, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Ferrothorn - Iron Head - Level 46
  (598, 59800, 442, 16, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Ferrothorn - Payback - Level 53
  (598, 59800, 371, 16, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Ferrothorn - Flash Cannon - Level 61
  (598, 59800, 430, 16, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Ferrothorn - Explosion - Level 67
  (598, 59800, 153, 16, NULL, 1, 67, NULL, NULL, NULL, 19),
  -- Ferrothorn - Toxic - TM06
  (598, 59800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Ferrothorn - Hidden Power - TM10
  (598, 59800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Ferrothorn - Sunny Day - TM11
  (598, 59800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Ferrothorn - Hyper Beam - TM15
  (598, 59800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Ferrothorn - Protect - TM17
  (598, 59800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Ferrothorn - Frustration - TM21
  (598, 59800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Ferrothorn - Solar Beam - TM22
  (598, 59800, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 26),
  -- Ferrothorn - Thunderbolt - TM24
  (598, 59800, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 27),
  -- Ferrothorn - Thunder - TM25
  (598, 59800, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 28),
  -- Ferrothorn - Return - TM27
  (598, 59800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Ferrothorn - Double Team - TM32
  (598, 59800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Ferrothorn - Sandstorm - TM37
  (598, 59800, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 31),
  -- Ferrothorn - Aerial Ace - TM40
  (598, 59800, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Ferrothorn - Facade - TM42
  (598, 59800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Ferrothorn - Rest - TM44
  (598, 59800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Ferrothorn - Round - TM48
  (598, 59800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Ferrothorn - Energy Ball - TM53
  (598, 59800, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 36),
  -- Ferrothorn - Explosion - TM64
  (598, 59800, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 37),
  -- Ferrothorn - Shadow Claw - TM65
  (598, 59800, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 38),
  -- Ferrothorn - Payback - TM66
  (598, 59800, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 39),
  -- Ferrothorn - Giga Impact - TM68
  (598, 59800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Ferrothorn - Rock Polish - TM69
  (598, 59800, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 41),
  -- Ferrothorn - Thunder Wave - TM73
  (598, 59800, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 42),
  -- Ferrothorn - Gyro Ball - TM74
  (598, 59800, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 43),
  -- Ferrothorn - Swords Dance - TM75
  (598, 59800, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 44),
  -- Ferrothorn - Bulldoze - TM78
  (598, 59800, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 45),
  -- Ferrothorn - Poison Jab - TM84
  (598, 59800, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 46),
  -- Ferrothorn - Grass Knot - TM86
  (598, 59800, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 47),
  -- Ferrothorn - Swagger - TM87
  (598, 59800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Ferrothorn - Sleep Talk - TM88
  (598, 59800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Ferrothorn - Substitute - TM90
  (598, 59800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Ferrothorn - Flash Cannon - TM91
  (598, 59800, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 51),
  -- Ferrothorn - Nature Power - TM96
  (598, 59800, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 52),
  -- Ferrothorn - Confide - TM100
  (598, 59800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 53),
  -- Ferrothorn - Snore - Tutor
  (598, 59800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Ferrothorn - Giga Drain - Tutor
  (598, 59800, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Ferrothorn - Knock Off - Tutor
  (598, 59800, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Ferrothorn - Endeavor - Tutor
  (598, 59800, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Ferrothorn - Iron Defense - Tutor
  (598, 59800, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Ferrothorn - Block - Tutor
  (598, 59800, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Ferrothorn - Gravity - Tutor
  (598, 59800, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Ferrothorn - Worry Seed - Tutor
  (598, 59800, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Ferrothorn - Magnet Rise - Tutor
  (598, 59800, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Ferrothorn - Seed Bomb - Tutor
  (598, 59800, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Ferrothorn - Iron Head - Tutor
  (598, 59800, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Ferrothorn - Stealth Rock - Tutor
  (598, 59800, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Ferrothorn - Power Whip - Evolution
  (598, 59800, 438, 16, NULL, 7, NULL, NULL, NULL, NULL, 66),

  -- Klink - Vise Grip - Level 1
  (599, 59900, 11, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Klink - Charge - Level 6
  (599, 59900, 268, 16, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Klink - Thunder Shock - Level 11
  (599, 59900, 84, 16, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Klink - Gear Grind - Level 16
  (599, 59900, 544, 16, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Klink - Bind - Level 21
  (599, 59900, 20, 16, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Klink - Charge Beam - Level 26
  (599, 59900, 451, 16, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Klink - Autotomize - Level 31
  (599, 59900, 475, 16, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Klink - Mirror Shot - Level 36
  (599, 59900, 429, 16, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Klink - Screech - Level 39
  (599, 59900, 103, 16, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Klink - Discharge - Level 42
  (599, 59900, 435, 16, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Klink - Metal Sound - Level 45
  (599, 59900, 319, 16, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Klink - Shift Gear - Level 48
  (599, 59900, 508, 16, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Klink - Lock-On - Level 50
  (599, 59900, 199, 16, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Klink - Zap Cannon - Level 54
  (599, 59900, 192, 16, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Klink - Hyper Beam - Level 57
  (599, 59900, 63, 16, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Klink - Toxic - TM06
  (599, 59900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Klink - Hidden Power - TM10
  (599, 59900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Klink - Hyper Beam - TM15
  (599, 59900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 18),
  -- Klink - Protect - TM17
  (599, 59900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Klink - Frustration - TM21
  (599, 59900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Klink - Thunderbolt - TM24
  (599, 59900, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 21),
  -- Klink - Return - TM27
  (599, 59900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 22),
  -- Klink - Double Team - TM32
  (599, 59900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 23),
  -- Klink - Sandstorm - TM37
  (599, 59900, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 24),
  -- Klink - Facade - TM42
  (599, 59900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 25),
  -- Klink - Rest - TM44
  (599, 59900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 26),
  -- Klink - Round - TM48
  (599, 59900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 27),
  -- Klink - Charge Beam - TM57
  (599, 59900, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 28),
  -- Klink - Rock Polish - TM69
  (599, 59900, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 29),
  -- Klink - Volt Switch - TM72
  (599, 59900, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 30),
  -- Klink - Thunder Wave - TM73
  (599, 59900, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 31),
  -- Klink - Swagger - TM87
  (599, 59900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 32),
  -- Klink - Sleep Talk - TM88
  (599, 59900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 33),
  -- Klink - Substitute - TM90
  (599, 59900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 34),
  -- Klink - Flash Cannon - TM91
  (599, 59900, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 35),
  -- Klink - Wild Charge - TM93
  (599, 59900, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 36),
  -- Klink - Confide - TM100
  (599, 59900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 37),
  -- Klink - Bind - Tutor
  (599, 59900, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 38),
  -- Klink - Snore - Tutor
  (599, 59900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 39),
  -- Klink - Uproar - Tutor
  (599, 59900, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Klink - Magic Coat - Tutor
  (599, 59900, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Klink - Recycle - Tutor
  (599, 59900, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Klink - Signal Beam - Tutor
  (599, 59900, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Klink - Iron Defense - Tutor
  (599, 59900, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Klink - Shock Wave - Tutor
  (599, 59900, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Klink - Gravity - Tutor
  (599, 59900, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Klink - Magnet Rise - Tutor
  (599, 59900, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Klink - Telekinesis - Tutor
  (599, 59900, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),

  -- Klang - Vise Grip - Level 1
  (600, 60000, 11, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Klang - Thunder Shock - Level 1
  (600, 60000, 84, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Klang - Charge - Level 1
  (600, 60000, 268, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Klang - Gear Grind - Level 1
  (600, 60000, 544, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Klang - Charge - Level 6
  (600, 60000, 268, 16, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Klang - Thunder Shock - Level 11
  (600, 60000, 84, 16, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Klang - Gear Grind - Level 16
  (600, 60000, 544, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Klang - Bind - Level 21
  (600, 60000, 20, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Klang - Charge Beam - Level 26
  (600, 60000, 451, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Klang - Autotomize - Level 31
  (600, 60000, 475, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Klang - Mirror Shot - Level 36
  (600, 60000, 429, 16, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Klang - Screech - Level 40
  (600, 60000, 103, 16, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Klang - Discharge - Level 44
  (600, 60000, 435, 16, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Klang - Metal Sound - Level 48
  (600, 60000, 319, 16, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Klang - Shift Gear - Level 52
  (600, 60000, 508, 16, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Klang - Lock-On - Level 56
  (600, 60000, 199, 16, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Klang - Zap Cannon - Level 60
  (600, 60000, 192, 16, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Klang - Hyper Beam - Level 64
  (600, 60000, 63, 16, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Klang - Toxic - TM06
  (600, 60000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Klang - Hidden Power - TM10
  (600, 60000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Klang - Hyper Beam - TM15
  (600, 60000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Klang - Protect - TM17
  (600, 60000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Klang - Frustration - TM21
  (600, 60000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Klang - Thunderbolt - TM24
  (600, 60000, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 24),
  -- Klang - Return - TM27
  (600, 60000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Klang - Double Team - TM32
  (600, 60000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Klang - Sandstorm - TM37
  (600, 60000, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 27),
  -- Klang - Facade - TM42
  (600, 60000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Klang - Rest - TM44
  (600, 60000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Klang - Round - TM48
  (600, 60000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 30),
  -- Klang - Charge Beam - TM57
  (600, 60000, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 31),
  -- Klang - Rock Polish - TM69
  (600, 60000, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 32),
  -- Klang - Volt Switch - TM72
  (600, 60000, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 33),
  -- Klang - Thunder Wave - TM73
  (600, 60000, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 34),
  -- Klang - Swagger - TM87
  (600, 60000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Klang - Sleep Talk - TM88
  (600, 60000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Klang - Substitute - TM90
  (600, 60000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 37),
  -- Klang - Flash Cannon - TM91
  (600, 60000, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 38),
  -- Klang - Wild Charge - TM93
  (600, 60000, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 39),
  -- Klang - Confide - TM100
  (600, 60000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Klang - Bind - Tutor
  (600, 60000, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Klang - Snore - Tutor
  (600, 60000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Klang - Uproar - Tutor
  (600, 60000, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Klang - Magic Coat - Tutor
  (600, 60000, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Klang - Recycle - Tutor
  (600, 60000, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Klang - Signal Beam - Tutor
  (600, 60000, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Klang - Iron Defense - Tutor
  (600, 60000, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Klang - Shock Wave - Tutor
  (600, 60000, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Klang - Gravity - Tutor
  (600, 60000, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Klang - Magnet Rise - Tutor
  (600, 60000, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Klang - Telekinesis - Tutor
  (600, 60000, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Klang - Ally Switch - Tutor
  (600, 60000, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52);
