-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VI raw learnset pages.
-- Cross-check: PokemonDB Omega Ruby / Alpha Sapphire learnset pages and legacy Voydex Generation VI learnset seeds.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Omega Ruby / Alpha Sapphire learnsets for default forms, species 551-600.
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
  (551, 55100, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandile - Rage - Level 1
  (551, 55100, 99, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandile - Bite - Level 4
  (551, 55100, 44, 14, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Sandile - Sand Attack - Level 7
  (551, 55100, 28, 14, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Sandile - Torment - Level 10
  (551, 55100, 259, 14, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Sandile - Sand Tomb - Level 13
  (551, 55100, 328, 14, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Sandile - Assurance - Level 16
  (551, 55100, 372, 14, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Sandile - Mud-Slap - Level 19
  (551, 55100, 189, 14, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Sandile - Embargo - Level 22
  (551, 55100, 373, 14, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Sandile - Swagger - Level 25
  (551, 55100, 207, 14, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Sandile - Crunch - Level 28
  (551, 55100, 242, 14, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Sandile - Dig - Level 31
  (551, 55100, 91, 14, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Sandile - Scary Face - Level 34
  (551, 55100, 184, 14, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Sandile - Foul Play - Level 37
  (551, 55100, 492, 14, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Sandile - Sandstorm - Level 40
  (551, 55100, 201, 14, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Sandile - Earthquake - Level 43
  (551, 55100, 89, 14, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Sandile - Thrash - Level 46
  (551, 55100, 37, 14, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Sandile - Hone Claws - TM01
  (551, 55100, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 18),
  -- Sandile - Roar - TM05
  (551, 55100, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 19),
  -- Sandile - Toxic - TM06
  (551, 55100, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 20),
  -- Sandile - Hidden Power - TM10
  (551, 55100, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 21),
  -- Sandile - Taunt - TM12
  (551, 55100, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 22),
  -- Sandile - Protect - TM17
  (551, 55100, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 23),
  -- Sandile - Frustration - TM21
  (551, 55100, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 24),
  -- Sandile - Earthquake - TM26
  (551, 55100, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 25),
  -- Sandile - Return - TM27
  (551, 55100, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 26),
  -- Sandile - Dig - TM28
  (551, 55100, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 27),
  -- Sandile - Double Team - TM32
  (551, 55100, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 28),
  -- Sandile - Sludge Bomb - TM36
  (551, 55100, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 29),
  -- Sandile - Sandstorm - TM37
  (551, 55100, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 30),
  -- Sandile - Rock Tomb - TM39
  (551, 55100, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 31),
  -- Sandile - Torment - TM41
  (551, 55100, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 32),
  -- Sandile - Facade - TM42
  (551, 55100, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 33),
  -- Sandile - Rest - TM44
  (551, 55100, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 34),
  -- Sandile - Attract - TM45
  (551, 55100, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 35),
  -- Sandile - Thief - TM46
  (551, 55100, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 36),
  -- Sandile - Round - TM48
  (551, 55100, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 37),
  -- Sandile - Incinerate - TM59
  (551, 55100, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 38),
  -- Sandile - Embargo - TM63
  (551, 55100, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 39),
  -- Sandile - Payback - TM66
  (551, 55100, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 40),
  -- Sandile - Retaliate - TM67
  (551, 55100, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 41),
  -- Sandile - Stone Edge - TM71
  (551, 55100, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 42),
  -- Sandile - Bulldoze - TM78
  (551, 55100, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 43),
  -- Sandile - Rock Slide - TM80
  (551, 55100, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 44),
  -- Sandile - Swagger - TM87
  (551, 55100, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 45),
  -- Sandile - Sleep Talk - TM88
  (551, 55100, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 46),
  -- Sandile - Substitute - TM90
  (551, 55100, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 47),
  -- Sandile - Secret Power - TM94
  (551, 55100, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 48),
  -- Sandile - Snarl - TM95
  (551, 55100, 555, 14, NULL, 2, NULL, NULL, 14002095, NULL, 49),
  -- Sandile - Dark Pulse - TM97
  (551, 55100, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 50),
  -- Sandile - Confide - TM100
  (551, 55100, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 51),
  -- Sandile - Cut - HM01
  (551, 55100, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 52),
  -- Sandile - Double-Edge - Egg
  (551, 55100, 38, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Sandile - Counter - Egg
  (551, 55100, 68, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sandile - Focus Energy - Egg
  (551, 55100, 116, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sandile - Mean Look - Egg
  (551, 55100, 212, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sandile - Pursuit - Egg
  (551, 55100, 228, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sandile - Beat Up - Egg
  (551, 55100, 251, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sandile - Uproar - Egg
  (551, 55100, 253, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sandile - Me First - Egg
  (551, 55100, 382, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sandile - Thunder Fang - Egg
  (551, 55100, 422, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sandile - Fire Fang - Egg
  (551, 55100, 424, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sandile - Rock Climb - Egg
  (551, 55100, 431, 14, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sandile - Snore - Tutor
  (551, 55100, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Sandile - Spite - Tutor
  (551, 55100, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Sandile - Iron Tail - Tutor
  (551, 55100, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Sandile - Uproar - Tutor
  (551, 55100, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Sandile - Snatch - Tutor
  (551, 55100, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Sandile - Aqua Tail - Tutor
  (551, 55100, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Sandile - Earth Power - Tutor
  (551, 55100, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Sandile - Stealth Rock - Tutor
  (551, 55100, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Sandile - Foul Play - Tutor
  (551, 55100, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Krokorok - Sand Attack - Level 1
  (552, 55200, 28, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krokorok - Leer - Level 1
  (552, 55200, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Krokorok - Bite - Level 1
  (552, 55200, 44, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Krokorok - Rage - Level 1
  (552, 55200, 99, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Krokorok - Bite - Level 4
  (552, 55200, 44, 14, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Krokorok - Sand Attack - Level 7
  (552, 55200, 28, 14, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Krokorok - Torment - Level 10
  (552, 55200, 259, 14, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Krokorok - Sand Tomb - Level 13
  (552, 55200, 328, 14, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Krokorok - Assurance - Level 16
  (552, 55200, 372, 14, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Krokorok - Mud-Slap - Level 19
  (552, 55200, 189, 14, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Krokorok - Embargo - Level 22
  (552, 55200, 373, 14, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Krokorok - Swagger - Level 25
  (552, 55200, 207, 14, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Krokorok - Crunch - Level 28
  (552, 55200, 242, 14, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Krokorok - Dig - Level 32
  (552, 55200, 91, 14, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Krokorok - Scary Face - Level 36
  (552, 55200, 184, 14, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Krokorok - Foul Play - Level 40
  (552, 55200, 492, 14, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Krokorok - Sandstorm - Level 44
  (552, 55200, 201, 14, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Krokorok - Earthquake - Level 48
  (552, 55200, 89, 14, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Krokorok - Thrash - Level 52
  (552, 55200, 37, 14, NULL, 1, 52, NULL, NULL, NULL, 19),
  -- Krokorok - Hone Claws - TM01
  (552, 55200, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 20),
  -- Krokorok - Roar - TM05
  (552, 55200, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 21),
  -- Krokorok - Toxic - TM06
  (552, 55200, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 22),
  -- Krokorok - Hidden Power - TM10
  (552, 55200, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 23),
  -- Krokorok - Taunt - TM12
  (552, 55200, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 24),
  -- Krokorok - Protect - TM17
  (552, 55200, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 25),
  -- Krokorok - Frustration - TM21
  (552, 55200, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 26),
  -- Krokorok - Earthquake - TM26
  (552, 55200, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 27),
  -- Krokorok - Return - TM27
  (552, 55200, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 28),
  -- Krokorok - Dig - TM28
  (552, 55200, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 29),
  -- Krokorok - Brick Break - TM31
  (552, 55200, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 30),
  -- Krokorok - Double Team - TM32
  (552, 55200, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 31),
  -- Krokorok - Sludge Bomb - TM36
  (552, 55200, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 32),
  -- Krokorok - Sandstorm - TM37
  (552, 55200, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 33),
  -- Krokorok - Rock Tomb - TM39
  (552, 55200, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 34),
  -- Krokorok - Torment - TM41
  (552, 55200, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 35),
  -- Krokorok - Facade - TM42
  (552, 55200, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 36),
  -- Krokorok - Rest - TM44
  (552, 55200, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 37),
  -- Krokorok - Attract - TM45
  (552, 55200, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 38),
  -- Krokorok - Thief - TM46
  (552, 55200, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 39),
  -- Krokorok - Low Sweep - TM47
  (552, 55200, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 40),
  -- Krokorok - Round - TM48
  (552, 55200, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 41),
  -- Krokorok - Fling - TM56
  (552, 55200, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 42),
  -- Krokorok - Incinerate - TM59
  (552, 55200, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 43),
  -- Krokorok - Embargo - TM63
  (552, 55200, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 44),
  -- Krokorok - Shadow Claw - TM65
  (552, 55200, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 45),
  -- Krokorok - Payback - TM66
  (552, 55200, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 46),
  -- Krokorok - Retaliate - TM67
  (552, 55200, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 47),
  -- Krokorok - Stone Edge - TM71
  (552, 55200, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 48),
  -- Krokorok - Bulldoze - TM78
  (552, 55200, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 49),
  -- Krokorok - Rock Slide - TM80
  (552, 55200, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 50),
  -- Krokorok - Grass Knot - TM86
  (552, 55200, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 51),
  -- Krokorok - Swagger - TM87
  (552, 55200, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 52),
  -- Krokorok - Sleep Talk - TM88
  (552, 55200, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 53),
  -- Krokorok - Substitute - TM90
  (552, 55200, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 54),
  -- Krokorok - Secret Power - TM94
  (552, 55200, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 55),
  -- Krokorok - Snarl - TM95
  (552, 55200, 555, 14, NULL, 2, NULL, NULL, 14002095, NULL, 56),
  -- Krokorok - Dark Pulse - TM97
  (552, 55200, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 57),
  -- Krokorok - Power-Up Punch - TM98
  (552, 55200, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 58),
  -- Krokorok - Confide - TM100
  (552, 55200, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 59),
  -- Krokorok - Cut - HM01
  (552, 55200, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 60),
  -- Krokorok - Strength - HM04
  (552, 55200, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 61),
  -- Krokorok - Rock Smash - HM06
  (552, 55200, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 62),
  -- Krokorok - Low Kick - Tutor
  (552, 55200, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Krokorok - Snore - Tutor
  (552, 55200, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Krokorok - Spite - Tutor
  (552, 55200, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Krokorok - Iron Tail - Tutor
  (552, 55200, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Krokorok - Uproar - Tutor
  (552, 55200, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Krokorok - Focus Punch - Tutor
  (552, 55200, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Krokorok - Knock Off - Tutor
  (552, 55200, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Krokorok - Snatch - Tutor
  (552, 55200, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Krokorok - Aqua Tail - Tutor
  (552, 55200, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Krokorok - Earth Power - Tutor
  (552, 55200, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Krokorok - Stealth Rock - Tutor
  (552, 55200, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Krokorok - Foul Play - Tutor
  (552, 55200, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Krookodile - Sand Attack - Level 1
  (553, 55300, 28, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krookodile - Leer - Level 1
  (553, 55300, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Krookodile - Bite - Level 1
  (553, 55300, 44, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Krookodile - Rage - Level 1
  (553, 55300, 99, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Krookodile - Outrage - Level 1
  (553, 55300, 200, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Krookodile - Bite - Level 4
  (553, 55300, 44, 14, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Krookodile - Sand Attack - Level 7
  (553, 55300, 28, 14, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Krookodile - Torment - Level 10
  (553, 55300, 259, 14, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Krookodile - Sand Tomb - Level 13
  (553, 55300, 328, 14, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Krookodile - Assurance - Level 16
  (553, 55300, 372, 14, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Krookodile - Mud-Slap - Level 19
  (553, 55300, 189, 14, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Krookodile - Embargo - Level 22
  (553, 55300, 373, 14, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Krookodile - Swagger - Level 25
  (553, 55300, 207, 14, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Krookodile - Crunch - Level 28
  (553, 55300, 242, 14, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Krookodile - Dig - Level 32
  (553, 55300, 91, 14, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Krookodile - Scary Face - Level 36
  (553, 55300, 184, 14, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Krookodile - Foul Play - Level 42
  (553, 55300, 492, 14, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Krookodile - Sandstorm - Level 48
  (553, 55300, 201, 14, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Krookodile - Earthquake - Level 54
  (553, 55300, 89, 14, NULL, 1, 54, NULL, NULL, NULL, 19),
  -- Krookodile - Outrage - Level 60
  (553, 55300, 200, 14, NULL, 1, 60, NULL, NULL, NULL, 20),
  -- Krookodile - Hone Claws - TM01
  (553, 55300, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 21),
  -- Krookodile - Dragon Claw - TM02
  (553, 55300, 337, 14, NULL, 2, NULL, NULL, 14002002, NULL, 22),
  -- Krookodile - Roar - TM05
  (553, 55300, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 23),
  -- Krookodile - Toxic - TM06
  (553, 55300, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 24),
  -- Krookodile - Bulk Up - TM08
  (553, 55300, 339, 14, NULL, 2, NULL, NULL, 14002008, NULL, 25),
  -- Krookodile - Hidden Power - TM10
  (553, 55300, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 26),
  -- Krookodile - Taunt - TM12
  (553, 55300, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 27),
  -- Krookodile - Hyper Beam - TM15
  (553, 55300, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 28),
  -- Krookodile - Protect - TM17
  (553, 55300, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 29),
  -- Krookodile - Frustration - TM21
  (553, 55300, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 30),
  -- Krookodile - Smack Down - TM23
  (553, 55300, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 31),
  -- Krookodile - Earthquake - TM26
  (553, 55300, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 32),
  -- Krookodile - Return - TM27
  (553, 55300, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 33),
  -- Krookodile - Dig - TM28
  (553, 55300, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 34),
  -- Krookodile - Brick Break - TM31
  (553, 55300, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 35),
  -- Krookodile - Double Team - TM32
  (553, 55300, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 36),
  -- Krookodile - Sludge Bomb - TM36
  (553, 55300, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 37),
  -- Krookodile - Sandstorm - TM37
  (553, 55300, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 38),
  -- Krookodile - Rock Tomb - TM39
  (553, 55300, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 39),
  -- Krookodile - Aerial Ace - TM40
  (553, 55300, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 40),
  -- Krookodile - Torment - TM41
  (553, 55300, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 41),
  -- Krookodile - Facade - TM42
  (553, 55300, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 42),
  -- Krookodile - Rest - TM44
  (553, 55300, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 43),
  -- Krookodile - Attract - TM45
  (553, 55300, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 44),
  -- Krookodile - Thief - TM46
  (553, 55300, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 45),
  -- Krookodile - Low Sweep - TM47
  (553, 55300, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 46),
  -- Krookodile - Round - TM48
  (553, 55300, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 47),
  -- Krookodile - Focus Blast - TM52
  (553, 55300, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 48),
  -- Krookodile - Fling - TM56
  (553, 55300, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 49),
  -- Krookodile - Incinerate - TM59
  (553, 55300, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 50),
  -- Krookodile - Embargo - TM63
  (553, 55300, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 51),
  -- Krookodile - Shadow Claw - TM65
  (553, 55300, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 52),
  -- Krookodile - Payback - TM66
  (553, 55300, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 53),
  -- Krookodile - Retaliate - TM67
  (553, 55300, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 54),
  -- Krookodile - Giga Impact - TM68
  (553, 55300, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 55),
  -- Krookodile - Stone Edge - TM71
  (553, 55300, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 56),
  -- Krookodile - Bulldoze - TM78
  (553, 55300, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 57),
  -- Krookodile - Rock Slide - TM80
  (553, 55300, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 58),
  -- Krookodile - Dragon Tail - TM82
  (553, 55300, 525, 14, NULL, 2, NULL, NULL, 14002082, NULL, 59),
  -- Krookodile - Grass Knot - TM86
  (553, 55300, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 60),
  -- Krookodile - Swagger - TM87
  (553, 55300, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 61),
  -- Krookodile - Sleep Talk - TM88
  (553, 55300, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 62),
  -- Krookodile - Substitute - TM90
  (553, 55300, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 63),
  -- Krookodile - Secret Power - TM94
  (553, 55300, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 64),
  -- Krookodile - Snarl - TM95
  (553, 55300, 555, 14, NULL, 2, NULL, NULL, 14002095, NULL, 65),
  -- Krookodile - Dark Pulse - TM97
  (553, 55300, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 66),
  -- Krookodile - Power-Up Punch - TM98
  (553, 55300, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 67),
  -- Krookodile - Confide - TM100
  (553, 55300, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 68),
  -- Krookodile - Cut - HM01
  (553, 55300, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 69),
  -- Krookodile - Strength - HM04
  (553, 55300, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 70),
  -- Krookodile - Rock Smash - HM06
  (553, 55300, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 71),
  -- Krookodile - Low Kick - Tutor
  (553, 55300, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Krookodile - Snore - Tutor
  (553, 55300, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Krookodile - Spite - Tutor
  (553, 55300, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Krookodile - Outrage - Tutor
  (553, 55300, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Krookodile - Iron Tail - Tutor
  (553, 55300, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Krookodile - Uproar - Tutor
  (553, 55300, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Krookodile - Focus Punch - Tutor
  (553, 55300, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Krookodile - Superpower - Tutor
  (553, 55300, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Krookodile - Knock Off - Tutor
  (553, 55300, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Krookodile - Snatch - Tutor
  (553, 55300, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Krookodile - Block - Tutor
  (553, 55300, 335, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Krookodile - Aqua Tail - Tutor
  (553, 55300, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 83),
  -- Krookodile - Dragon Pulse - Tutor
  (553, 55300, 406, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 84),
  -- Krookodile - Earth Power - Tutor
  (553, 55300, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 85),
  -- Krookodile - Stealth Rock - Tutor
  (553, 55300, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 86),
  -- Krookodile - Foul Play - Tutor
  (553, 55300, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 87),
  -- Darumaka - Tackle - Level 1
  (554, 55400, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Darumaka - Rollout - Level 3
  (554, 55400, 205, 14, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Darumaka - Incinerate - Level 6
  (554, 55400, 510, 14, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Darumaka - Rage - Level 9
  (554, 55400, 99, 14, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Darumaka - Fire Fang - Level 11
  (554, 55400, 424, 14, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Darumaka - Headbutt - Level 14
  (554, 55400, 29, 14, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Darumaka - Uproar - Level 17
  (554, 55400, 253, 14, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Darumaka - Facade - Level 19
  (554, 55400, 263, 14, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Darumaka - Fire Punch - Level 22
  (554, 55400, 7, 14, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Darumaka - Work Up - Level 25
  (554, 55400, 526, 14, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Darumaka - Thrash - Level 27
  (554, 55400, 37, 14, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Darumaka - Belly Drum - Level 30
  (554, 55400, 187, 14, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Darumaka - Flare Blitz - Level 33
  (554, 55400, 394, 14, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Darumaka - Taunt - Level 35
  (554, 55400, 269, 14, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Darumaka - Superpower - Level 39
  (554, 55400, 276, 14, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Darumaka - Overheat - Level 42
  (554, 55400, 315, 14, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Darumaka - Roar - TM05
  (554, 55400, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 17),
  -- Darumaka - Toxic - TM06
  (554, 55400, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 18),
  -- Darumaka - Hidden Power - TM10
  (554, 55400, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 19),
  -- Darumaka - Sunny Day - TM11
  (554, 55400, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 20),
  -- Darumaka - Taunt - TM12
  (554, 55400, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 21),
  -- Darumaka - Protect - TM17
  (554, 55400, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 22),
  -- Darumaka - Frustration - TM21
  (554, 55400, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 23),
  -- Darumaka - Solar Beam - TM22
  (554, 55400, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 24),
  -- Darumaka - Return - TM27
  (554, 55400, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 25),
  -- Darumaka - Dig - TM28
  (554, 55400, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 26),
  -- Darumaka - Brick Break - TM31
  (554, 55400, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 27),
  -- Darumaka - Double Team - TM32
  (554, 55400, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 28),
  -- Darumaka - Flamethrower - TM35
  (554, 55400, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 29),
  -- Darumaka - Fire Blast - TM38
  (554, 55400, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 30),
  -- Darumaka - Rock Tomb - TM39
  (554, 55400, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 31),
  -- Darumaka - Facade - TM42
  (554, 55400, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 32),
  -- Darumaka - Flame Charge - TM43
  (554, 55400, 488, 14, NULL, 2, NULL, NULL, 14002043, NULL, 33),
  -- Darumaka - Rest - TM44
  (554, 55400, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 34),
  -- Darumaka - Attract - TM45
  (554, 55400, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 35),
  -- Darumaka - Thief - TM46
  (554, 55400, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 36),
  -- Darumaka - Round - TM48
  (554, 55400, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 37),
  -- Darumaka - Overheat - TM50
  (554, 55400, 315, 14, NULL, 2, NULL, NULL, 14002050, NULL, 38),
  -- Darumaka - Fling - TM56
  (554, 55400, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 39),
  -- Darumaka - Incinerate - TM59
  (554, 55400, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 40),
  -- Darumaka - Will-O-Wisp - TM61
  (554, 55400, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 41),
  -- Darumaka - Gyro Ball - TM74
  (554, 55400, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 42),
  -- Darumaka - Rock Slide - TM80
  (554, 55400, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 43),
  -- Darumaka - Grass Knot - TM86
  (554, 55400, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 44),
  -- Darumaka - Swagger - TM87
  (554, 55400, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 45),
  -- Darumaka - Sleep Talk - TM88
  (554, 55400, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 46),
  -- Darumaka - U-turn - TM89
  (554, 55400, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 47),
  -- Darumaka - Substitute - TM90
  (554, 55400, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 48),
  -- Darumaka - Secret Power - TM94
  (554, 55400, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 49),
  -- Darumaka - Power-Up Punch - TM98
  (554, 55400, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 50),
  -- Darumaka - Confide - TM100
  (554, 55400, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 51),
  -- Darumaka - Strength - HM04
  (554, 55400, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 52),
  -- Darumaka - Rock Smash - HM06
  (554, 55400, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 53),
  -- Darumaka - Take Down - Egg
  (554, 55400, 36, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Darumaka - Focus Energy - Egg
  (554, 55400, 116, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Darumaka - Flame Wheel - Egg
  (554, 55400, 172, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Darumaka - Endure - Egg
  (554, 55400, 203, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Darumaka - Sleep Talk - Egg
  (554, 55400, 214, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Darumaka - Encore - Egg
  (554, 55400, 227, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Darumaka - Focus Punch - Egg
  (554, 55400, 264, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Darumaka - Yawn - Egg
  (554, 55400, 281, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Darumaka - Snatch - Egg
  (554, 55400, 289, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Darumaka - Hammer Arm - Egg
  (554, 55400, 359, 14, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Darumaka - Fire Punch - Tutor
  (554, 55400, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Darumaka - Snore - Tutor
  (554, 55400, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Darumaka - Uproar - Tutor
  (554, 55400, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Darumaka - Heat Wave - Tutor
  (554, 55400, 257, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Darumaka - Focus Punch - Tutor
  (554, 55400, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Darumaka - Superpower - Tutor
  (554, 55400, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Darumaka - Endeavor - Tutor
  (554, 55400, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Darumaka - Snatch - Tutor
  (554, 55400, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Darumaka - Zen Headbutt - Tutor
  (554, 55400, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Darmanitan - Tackle - Level 1
  (555, 55500, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Darmanitan - Rage - Level 1
  (555, 55500, 99, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Darmanitan - Rollout - Level 1
  (555, 55500, 205, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Darmanitan - Incinerate - Level 1
  (555, 55500, 510, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Darmanitan - Rollout - Level 3
  (555, 55500, 205, 14, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Darmanitan - Incinerate - Level 6
  (555, 55500, 510, 14, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Darmanitan - Rage - Level 9
  (555, 55500, 99, 14, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Darmanitan - Fire Fang - Level 11
  (555, 55500, 424, 14, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Darmanitan - Headbutt - Level 14
  (555, 55500, 29, 14, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Darmanitan - Swagger - Level 17
  (555, 55500, 207, 14, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Darmanitan - Facade - Level 19
  (555, 55500, 263, 14, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Darmanitan - Fire Punch - Level 22
  (555, 55500, 7, 14, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Darmanitan - Work Up - Level 25
  (555, 55500, 526, 14, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Darmanitan - Thrash - Level 27
  (555, 55500, 37, 14, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Darmanitan - Belly Drum - Level 30
  (555, 55500, 187, 14, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Darmanitan - Flare Blitz - Level 33
  (555, 55500, 394, 14, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Darmanitan - Hammer Arm - Level 35
  (555, 55500, 359, 14, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Darmanitan - Taunt - Level 39
  (555, 55500, 269, 14, NULL, 1, 39, NULL, NULL, NULL, 18),
  -- Darmanitan - Superpower - Level 47
  (555, 55500, 276, 14, NULL, 1, 47, NULL, NULL, NULL, 19),
  -- Darmanitan - Overheat - Level 54
  (555, 55500, 315, 14, NULL, 1, 54, NULL, NULL, NULL, 20),
  -- Darmanitan - Roar - TM05
  (555, 55500, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 21),
  -- Darmanitan - Toxic - TM06
  (555, 55500, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 22),
  -- Darmanitan - Bulk Up - TM08
  (555, 55500, 339, 14, NULL, 2, NULL, NULL, 14002008, NULL, 23),
  -- Darmanitan - Hidden Power - TM10
  (555, 55500, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 24),
  -- Darmanitan - Sunny Day - TM11
  (555, 55500, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 25),
  -- Darmanitan - Taunt - TM12
  (555, 55500, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 26),
  -- Darmanitan - Hyper Beam - TM15
  (555, 55500, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 27),
  -- Darmanitan - Protect - TM17
  (555, 55500, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 28),
  -- Darmanitan - Frustration - TM21
  (555, 55500, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 29),
  -- Darmanitan - Solar Beam - TM22
  (555, 55500, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 30),
  -- Darmanitan - Smack Down - TM23
  (555, 55500, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 31),
  -- Darmanitan - Earthquake - TM26
  (555, 55500, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 32),
  -- Darmanitan - Return - TM27
  (555, 55500, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 33),
  -- Darmanitan - Dig - TM28
  (555, 55500, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 34),
  -- Darmanitan - Psychic - TM29
  (555, 55500, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 35),
  -- Darmanitan - Brick Break - TM31
  (555, 55500, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 36),
  -- Darmanitan - Double Team - TM32
  (555, 55500, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 37),
  -- Darmanitan - Flamethrower - TM35
  (555, 55500, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 38),
  -- Darmanitan - Fire Blast - TM38
  (555, 55500, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 39),
  -- Darmanitan - Rock Tomb - TM39
  (555, 55500, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 40),
  -- Darmanitan - Torment - TM41
  (555, 55500, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 41),
  -- Darmanitan - Facade - TM42
  (555, 55500, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 42),
  -- Darmanitan - Flame Charge - TM43
  (555, 55500, 488, 14, NULL, 2, NULL, NULL, 14002043, NULL, 43),
  -- Darmanitan - Rest - TM44
  (555, 55500, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 44),
  -- Darmanitan - Attract - TM45
  (555, 55500, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 45),
  -- Darmanitan - Thief - TM46
  (555, 55500, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 46),
  -- Darmanitan - Round - TM48
  (555, 55500, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 47),
  -- Darmanitan - Overheat - TM50
  (555, 55500, 315, 14, NULL, 2, NULL, NULL, 14002050, NULL, 48),
  -- Darmanitan - Focus Blast - TM52
  (555, 55500, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 49),
  -- Darmanitan - Fling - TM56
  (555, 55500, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 50),
  -- Darmanitan - Incinerate - TM59
  (555, 55500, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 51),
  -- Darmanitan - Will-O-Wisp - TM61
  (555, 55500, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 52),
  -- Darmanitan - Payback - TM66
  (555, 55500, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 53),
  -- Darmanitan - Giga Impact - TM68
  (555, 55500, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 54),
  -- Darmanitan - Stone Edge - TM71
  (555, 55500, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 55),
  -- Darmanitan - Gyro Ball - TM74
  (555, 55500, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 56),
  -- Darmanitan - Bulldoze - TM78
  (555, 55500, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 57),
  -- Darmanitan - Rock Slide - TM80
  (555, 55500, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 58),
  -- Darmanitan - Grass Knot - TM86
  (555, 55500, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 59),
  -- Darmanitan - Swagger - TM87
  (555, 55500, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 60),
  -- Darmanitan - Sleep Talk - TM88
  (555, 55500, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 61),
  -- Darmanitan - U-turn - TM89
  (555, 55500, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 62),
  -- Darmanitan - Substitute - TM90
  (555, 55500, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 63),
  -- Darmanitan - Secret Power - TM94
  (555, 55500, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 64),
  -- Darmanitan - Power-Up Punch - TM98
  (555, 55500, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 65),
  -- Darmanitan - Confide - TM100
  (555, 55500, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 66),
  -- Darmanitan - Strength - HM04
  (555, 55500, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 67),
  -- Darmanitan - Rock Smash - HM06
  (555, 55500, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 68),
  -- Darmanitan - Fire Punch - Tutor
  (555, 55500, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Darmanitan - Snore - Tutor
  (555, 55500, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Darmanitan - Uproar - Tutor
  (555, 55500, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Darmanitan - Heat Wave - Tutor
  (555, 55500, 257, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Darmanitan - Focus Punch - Tutor
  (555, 55500, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Darmanitan - Superpower - Tutor
  (555, 55500, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Darmanitan - Endeavor - Tutor
  (555, 55500, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Darmanitan - Snatch - Tutor
  (555, 55500, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Darmanitan - Zen Headbutt - Tutor
  (555, 55500, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Maractus - Peck - Level 1
  (556, 55600, 64, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Maractus - Absorb - Level 1
  (556, 55600, 71, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Maractus - After You - Level 1
  (556, 55600, 495, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Maractus - Cotton Guard - Level 1
  (556, 55600, 538, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Maractus - Spiky Shield - Level 1
  (556, 55600, 596, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Maractus - Sweet Scent - Level 3
  (556, 55600, 230, 14, NULL, 1, 3, NULL, NULL, NULL, 6),
  -- Maractus - Growth - Level 6
  (556, 55600, 74, 14, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Maractus - Pin Missile - Level 10
  (556, 55600, 42, 14, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Maractus - Mega Drain - Level 13
  (556, 55600, 72, 14, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Maractus - Synthesis - Level 15
  (556, 55600, 235, 14, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Maractus - Cotton Spore - Level 18
  (556, 55600, 178, 14, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Maractus - Needle Arm - Level 22
  (556, 55600, 302, 14, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Maractus - Giga Drain - Level 26
  (556, 55600, 202, 14, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Maractus - Acupressure - Level 29
  (556, 55600, 367, 14, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Maractus - Ingrain - Level 33
  (556, 55600, 275, 14, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Maractus - Petal Dance - Level 38
  (556, 55600, 80, 14, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Maractus - Sucker Punch - Level 42
  (556, 55600, 389, 14, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Maractus - Sunny Day - Level 45
  (556, 55600, 241, 14, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Maractus - Petal Blizzard - Level 48
  (556, 55600, 572, 14, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Maractus - Solar Beam - Level 50
  (556, 55600, 76, 14, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Maractus - Cotton Guard - Level 55
  (556, 55600, 538, 14, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Maractus - After You - Level 57
  (556, 55600, 495, 14, NULL, 1, 57, NULL, NULL, NULL, 22),
  -- Maractus - Toxic - TM06
  (556, 55600, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 23),
  -- Maractus - Hidden Power - TM10
  (556, 55600, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 24),
  -- Maractus - Sunny Day - TM11
  (556, 55600, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 25),
  -- Maractus - Protect - TM17
  (556, 55600, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 26),
  -- Maractus - Safeguard - TM20
  (556, 55600, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 27),
  -- Maractus - Frustration - TM21
  (556, 55600, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 28),
  -- Maractus - Solar Beam - TM22
  (556, 55600, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 29),
  -- Maractus - Return - TM27
  (556, 55600, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 30),
  -- Maractus - Double Team - TM32
  (556, 55600, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 31),
  -- Maractus - Aerial Ace - TM40
  (556, 55600, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 32),
  -- Maractus - Facade - TM42
  (556, 55600, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 33),
  -- Maractus - Rest - TM44
  (556, 55600, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 34),
  -- Maractus - Attract - TM45
  (556, 55600, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 35),
  -- Maractus - Round - TM48
  (556, 55600, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 36),
  -- Maractus - Energy Ball - TM53
  (556, 55600, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 37),
  -- Maractus - Poison Jab - TM84
  (556, 55600, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 38),
  -- Maractus - Grass Knot - TM86
  (556, 55600, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 39),
  -- Maractus - Swagger - TM87
  (556, 55600, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 40),
  -- Maractus - Sleep Talk - TM88
  (556, 55600, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 41),
  -- Maractus - Substitute - TM90
  (556, 55600, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 42),
  -- Maractus - Secret Power - TM94
  (556, 55600, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 43),
  -- Maractus - Nature Power - TM96
  (556, 55600, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 44),
  -- Maractus - Confide - TM100
  (556, 55600, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 45),
  -- Maractus - Leech Seed - Egg
  (556, 55600, 73, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Maractus - Spikes - Egg
  (556, 55600, 191, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Maractus - Grass Whistle - Egg
  (556, 55600, 320, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Maractus - Bullet Seed - Egg
  (556, 55600, 331, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Maractus - Bounce - Egg
  (556, 55600, 340, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Maractus - Worry Seed - Egg
  (556, 55600, 388, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Maractus - Seed Bomb - Egg
  (556, 55600, 402, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Maractus - Wood Hammer - Egg
  (556, 55600, 452, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Maractus - Grassy Terrain - Egg
  (556, 55600, 580, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Maractus - Snore - Tutor
  (556, 55600, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Maractus - Giga Drain - Tutor
  (556, 55600, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Maractus - Synthesis - Tutor
  (556, 55600, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Maractus - Uproar - Tutor
  (556, 55600, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Maractus - Helping Hand - Tutor
  (556, 55600, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Maractus - Knock Off - Tutor
  (556, 55600, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Maractus - Endeavor - Tutor
  (556, 55600, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Maractus - Hyper Voice - Tutor
  (556, 55600, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Maractus - Bounce - Tutor
  (556, 55600, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Maractus - Worry Seed - Tutor
  (556, 55600, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Maractus - Seed Bomb - Tutor
  (556, 55600, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Maractus - Drain Punch - Tutor
  (556, 55600, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Maractus - After You - Tutor
  (556, 55600, 495, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Dwebble - Fury Cutter - Level 1
  (557, 55700, 210, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dwebble - Rock Blast - Level 5
  (557, 55700, 350, 14, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Dwebble - Withdraw - Level 7
  (557, 55700, 110, 14, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Dwebble - Sand Attack - Level 11
  (557, 55700, 28, 14, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Dwebble - Feint Attack - Level 13
  (557, 55700, 185, 14, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Dwebble - Smack Down - Level 17
  (557, 55700, 479, 14, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Dwebble - Rock Polish - Level 19
  (557, 55700, 397, 14, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Dwebble - Bug Bite - Level 23
  (557, 55700, 450, 14, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Dwebble - Stealth Rock - Level 24
  (557, 55700, 446, 14, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Dwebble - Rock Slide - Level 29
  (557, 55700, 157, 14, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Dwebble - Slash - Level 31
  (557, 55700, 163, 14, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Dwebble - X-Scissor - Level 35
  (557, 55700, 404, 14, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Dwebble - Shell Smash - Level 37
  (557, 55700, 504, 14, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Dwebble - Flail - Level 41
  (557, 55700, 175, 14, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Dwebble - Rock Wrecker - Level 43
  (557, 55700, 439, 14, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Dwebble - Hone Claws - TM01
  (557, 55700, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 16),
  -- Dwebble - Toxic - TM06
  (557, 55700, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Dwebble - Hidden Power - TM10
  (557, 55700, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Dwebble - Protect - TM17
  (557, 55700, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 19),
  -- Dwebble - Frustration - TM21
  (557, 55700, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 20),
  -- Dwebble - Solar Beam - TM22
  (557, 55700, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 21),
  -- Dwebble - Smack Down - TM23
  (557, 55700, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 22),
  -- Dwebble - Earthquake - TM26
  (557, 55700, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 23),
  -- Dwebble - Return - TM27
  (557, 55700, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 24),
  -- Dwebble - Dig - TM28
  (557, 55700, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 25),
  -- Dwebble - Double Team - TM32
  (557, 55700, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 26),
  -- Dwebble - Sandstorm - TM37
  (557, 55700, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 27),
  -- Dwebble - Rock Tomb - TM39
  (557, 55700, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 28),
  -- Dwebble - Aerial Ace - TM40
  (557, 55700, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 29),
  -- Dwebble - Facade - TM42
  (557, 55700, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 30),
  -- Dwebble - Rest - TM44
  (557, 55700, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 31),
  -- Dwebble - Attract - TM45
  (557, 55700, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 32),
  -- Dwebble - Round - TM48
  (557, 55700, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 33),
  -- Dwebble - Shadow Claw - TM65
  (557, 55700, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 34),
  -- Dwebble - Rock Polish - TM69
  (557, 55700, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 35),
  -- Dwebble - Stone Edge - TM71
  (557, 55700, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 36),
  -- Dwebble - Swords Dance - TM75
  (557, 55700, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 37),
  -- Dwebble - Struggle Bug - TM76
  (557, 55700, 522, 14, NULL, 2, NULL, NULL, 14002076, NULL, 38),
  -- Dwebble - Bulldoze - TM78
  (557, 55700, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 39),
  -- Dwebble - Rock Slide - TM80
  (557, 55700, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 40),
  -- Dwebble - X-Scissor - TM81
  (557, 55700, 404, 14, NULL, 2, NULL, NULL, 14002081, NULL, 41),
  -- Dwebble - Poison Jab - TM84
  (557, 55700, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 42),
  -- Dwebble - Swagger - TM87
  (557, 55700, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 43),
  -- Dwebble - Sleep Talk - TM88
  (557, 55700, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 44),
  -- Dwebble - Substitute - TM90
  (557, 55700, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 45),
  -- Dwebble - Secret Power - TM94
  (557, 55700, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 46),
  -- Dwebble - Nature Power - TM96
  (557, 55700, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 47),
  -- Dwebble - Confide - TM100
  (557, 55700, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 48),
  -- Dwebble - Cut - HM01
  (557, 55700, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 49),
  -- Dwebble - Strength - HM04
  (557, 55700, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 50),
  -- Dwebble - Rock Smash - HM06
  (557, 55700, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 51),
  -- Dwebble - Counter - Egg
  (557, 55700, 68, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Dwebble - Curse - Egg
  (557, 55700, 174, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Dwebble - Spikes - Egg
  (557, 55700, 191, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Dwebble - Endure - Egg
  (557, 55700, 203, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Dwebble - Sand Tomb - Egg
  (557, 55700, 328, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Dwebble - Iron Defense - Egg
  (557, 55700, 334, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Dwebble - Block - Egg
  (557, 55700, 335, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Dwebble - Night Slash - Egg
  (557, 55700, 400, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Dwebble - Wide Guard - Egg
  (557, 55700, 469, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Dwebble - Rototiller - Egg
  (557, 55700, 563, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Dwebble - Snore - Tutor
  (557, 55700, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Dwebble - Knock Off - Tutor
  (557, 55700, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Dwebble - Iron Defense - Tutor
  (557, 55700, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Dwebble - Block - Tutor
  (557, 55700, 335, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Dwebble - Stealth Rock - Tutor
  (557, 55700, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Dwebble - Bug Bite - Tutor
  (557, 55700, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Crustle - Sand Attack - Level 1
  (558, 55800, 28, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crustle - Withdraw - Level 1
  (558, 55800, 110, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crustle - Rock Blast - Level 1
  (558, 55800, 350, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crustle - Shell Smash - Level 1
  (558, 55800, 504, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Crustle - Rock Blast - Level 5
  (558, 55800, 350, 14, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Crustle - Withdraw - Level 7
  (558, 55800, 110, 14, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Crustle - Sand Attack - Level 11
  (558, 55800, 28, 14, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Crustle - Feint Attack - Level 13
  (558, 55800, 185, 14, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Crustle - Smack Down - Level 17
  (558, 55800, 479, 14, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Crustle - Rock Polish - Level 19
  (558, 55800, 397, 14, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Crustle - Bug Bite - Level 23
  (558, 55800, 450, 14, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Crustle - Stealth Rock - Level 24
  (558, 55800, 446, 14, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Crustle - Rock Slide - Level 29
  (558, 55800, 157, 14, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Crustle - Slash - Level 31
  (558, 55800, 163, 14, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Crustle - X-Scissor - Level 38
  (558, 55800, 404, 14, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Crustle - Shell Smash - Level 43
  (558, 55800, 504, 14, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Crustle - Flail - Level 50
  (558, 55800, 175, 14, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Crustle - Rock Wrecker - Level 55
  (558, 55800, 439, 14, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Crustle - Hone Claws - TM01
  (558, 55800, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 19),
  -- Crustle - Toxic - TM06
  (558, 55800, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 20),
  -- Crustle - Hidden Power - TM10
  (558, 55800, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 21),
  -- Crustle - Hyper Beam - TM15
  (558, 55800, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 22),
  -- Crustle - Protect - TM17
  (558, 55800, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 23),
  -- Crustle - Frustration - TM21
  (558, 55800, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 24),
  -- Crustle - Solar Beam - TM22
  (558, 55800, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 25),
  -- Crustle - Smack Down - TM23
  (558, 55800, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 26),
  -- Crustle - Earthquake - TM26
  (558, 55800, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 27),
  -- Crustle - Return - TM27
  (558, 55800, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 28),
  -- Crustle - Dig - TM28
  (558, 55800, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 29),
  -- Crustle - Double Team - TM32
  (558, 55800, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 30),
  -- Crustle - Sandstorm - TM37
  (558, 55800, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 31),
  -- Crustle - Rock Tomb - TM39
  (558, 55800, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 32),
  -- Crustle - Aerial Ace - TM40
  (558, 55800, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 33),
  -- Crustle - Facade - TM42
  (558, 55800, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 34),
  -- Crustle - Rest - TM44
  (558, 55800, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 35),
  -- Crustle - Attract - TM45
  (558, 55800, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 36),
  -- Crustle - Round - TM48
  (558, 55800, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 37),
  -- Crustle - Shadow Claw - TM65
  (558, 55800, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 38),
  -- Crustle - Giga Impact - TM68
  (558, 55800, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 39),
  -- Crustle - Rock Polish - TM69
  (558, 55800, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 40),
  -- Crustle - Stone Edge - TM71
  (558, 55800, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 41),
  -- Crustle - Swords Dance - TM75
  (558, 55800, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 42),
  -- Crustle - Struggle Bug - TM76
  (558, 55800, 522, 14, NULL, 2, NULL, NULL, 14002076, NULL, 43),
  -- Crustle - Bulldoze - TM78
  (558, 55800, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 44),
  -- Crustle - Rock Slide - TM80
  (558, 55800, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 45),
  -- Crustle - X-Scissor - TM81
  (558, 55800, 404, 14, NULL, 2, NULL, NULL, 14002081, NULL, 46),
  -- Crustle - Poison Jab - TM84
  (558, 55800, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 47),
  -- Crustle - Swagger - TM87
  (558, 55800, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 48),
  -- Crustle - Sleep Talk - TM88
  (558, 55800, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 49),
  -- Crustle - Substitute - TM90
  (558, 55800, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 50),
  -- Crustle - Secret Power - TM94
  (558, 55800, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 51),
  -- Crustle - Nature Power - TM96
  (558, 55800, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 52),
  -- Crustle - Confide - TM100
  (558, 55800, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 53),
  -- Crustle - Cut - HM01
  (558, 55800, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 54),
  -- Crustle - Strength - HM04
  (558, 55800, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 55),
  -- Crustle - Rock Smash - HM06
  (558, 55800, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 56),
  -- Crustle - Snore - Tutor
  (558, 55800, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Crustle - Knock Off - Tutor
  (558, 55800, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Crustle - Iron Defense - Tutor
  (558, 55800, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Crustle - Block - Tutor
  (558, 55800, 335, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Crustle - Stealth Rock - Tutor
  (558, 55800, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Crustle - Bug Bite - Tutor
  (558, 55800, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Scraggy - Leer - Level 1
  (559, 55900, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scraggy - Low Kick - Level 1
  (559, 55900, 67, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scraggy - Sand Attack - Level 5
  (559, 55900, 28, 14, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Scraggy - Feint Attack - Level 9
  (559, 55900, 185, 14, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Scraggy - Headbutt - Level 12
  (559, 55900, 29, 14, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Scraggy - Swagger - Level 16
  (559, 55900, 207, 14, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Scraggy - Brick Break - Level 20
  (559, 55900, 280, 14, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Scraggy - Payback - Level 23
  (559, 55900, 371, 14, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Scraggy - Chip Away - Level 27
  (559, 55900, 498, 14, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Scraggy - High Jump Kick - Level 31
  (559, 55900, 136, 14, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Scraggy - Scary Face - Level 34
  (559, 55900, 184, 14, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Scraggy - Crunch - Level 38
  (559, 55900, 242, 14, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Scraggy - Facade - Level 42
  (559, 55900, 263, 14, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Scraggy - Rock Climb - Level 45
  (559, 55900, 431, 14, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Scraggy - Focus Punch - Level 48
  (559, 55900, 264, 14, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Scraggy - Head Smash - Level 50
  (559, 55900, 457, 14, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Scraggy - Dragon Claw - TM02
  (559, 55900, 337, 14, NULL, 2, NULL, NULL, 14002002, NULL, 17),
  -- Scraggy - Roar - TM05
  (559, 55900, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 18),
  -- Scraggy - Toxic - TM06
  (559, 55900, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 19),
  -- Scraggy - Bulk Up - TM08
  (559, 55900, 339, 14, NULL, 2, NULL, NULL, 14002008, NULL, 20),
  -- Scraggy - Hidden Power - TM10
  (559, 55900, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 21),
  -- Scraggy - Sunny Day - TM11
  (559, 55900, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 22),
  -- Scraggy - Taunt - TM12
  (559, 55900, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 23),
  -- Scraggy - Protect - TM17
  (559, 55900, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 24),
  -- Scraggy - Rain Dance - TM18
  (559, 55900, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 25),
  -- Scraggy - Frustration - TM21
  (559, 55900, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 26),
  -- Scraggy - Smack Down - TM23
  (559, 55900, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 27),
  -- Scraggy - Return - TM27
  (559, 55900, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 28),
  -- Scraggy - Dig - TM28
  (559, 55900, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 29),
  -- Scraggy - Brick Break - TM31
  (559, 55900, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 30),
  -- Scraggy - Double Team - TM32
  (559, 55900, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 31),
  -- Scraggy - Sludge Bomb - TM36
  (559, 55900, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 32),
  -- Scraggy - Rock Tomb - TM39
  (559, 55900, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 33),
  -- Scraggy - Torment - TM41
  (559, 55900, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 34),
  -- Scraggy - Facade - TM42
  (559, 55900, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 35),
  -- Scraggy - Rest - TM44
  (559, 55900, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 36),
  -- Scraggy - Attract - TM45
  (559, 55900, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 37),
  -- Scraggy - Low Sweep - TM47
  (559, 55900, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 38),
  -- Scraggy - Round - TM48
  (559, 55900, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 39),
  -- Scraggy - Focus Blast - TM52
  (559, 55900, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 40),
  -- Scraggy - Fling - TM56
  (559, 55900, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 41),
  -- Scraggy - Incinerate - TM59
  (559, 55900, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 42),
  -- Scraggy - Payback - TM66
  (559, 55900, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 43),
  -- Scraggy - Retaliate - TM67
  (559, 55900, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 44),
  -- Scraggy - Stone Edge - TM71
  (559, 55900, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 45),
  -- Scraggy - Rock Slide - TM80
  (559, 55900, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 46),
  -- Scraggy - Dragon Tail - TM82
  (559, 55900, 525, 14, NULL, 2, NULL, NULL, 14002082, NULL, 47),
  -- Scraggy - Poison Jab - TM84
  (559, 55900, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 48),
  -- Scraggy - Grass Knot - TM86
  (559, 55900, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 49),
  -- Scraggy - Swagger - TM87
  (559, 55900, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 50),
  -- Scraggy - Sleep Talk - TM88
  (559, 55900, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 51),
  -- Scraggy - Substitute - TM90
  (559, 55900, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 52),
  -- Scraggy - Secret Power - TM94
  (559, 55900, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 53),
  -- Scraggy - Snarl - TM95
  (559, 55900, 555, 14, NULL, 2, NULL, NULL, 14002095, NULL, 54),
  -- Scraggy - Dark Pulse - TM97
  (559, 55900, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 55),
  -- Scraggy - Power-Up Punch - TM98
  (559, 55900, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 56),
  -- Scraggy - Confide - TM100
  (559, 55900, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 57),
  -- Scraggy - Strength - HM04
  (559, 55900, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 58),
  -- Scraggy - Rock Smash - HM06
  (559, 55900, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 59),
  -- Scraggy - Fire Punch - Egg
  (559, 55900, 7, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Scraggy - Ice Punch - Egg
  (559, 55900, 8, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Scraggy - Thunder Punch - Egg
  (559, 55900, 9, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Scraggy - Counter - Egg
  (559, 55900, 68, 14, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Scraggy - Amnesia - Egg
  (559, 55900, 133, 14, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Scraggy - Feint Attack - Egg
  (559, 55900, 185, 14, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Scraggy - Detect - Egg
  (559, 55900, 197, 14, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Scraggy - Fake Out - Egg
  (559, 55900, 252, 14, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Scraggy - Dragon Dance - Egg
  (559, 55900, 349, 14, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Scraggy - Drain Punch - Egg
  (559, 55900, 409, 14, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Scraggy - Zen Headbutt - Egg
  (559, 55900, 428, 14, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Scraggy - Quick Guard - Egg
  (559, 55900, 501, 14, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Scraggy - Fire Punch - Tutor
  (559, 55900, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Scraggy - Ice Punch - Tutor
  (559, 55900, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Scraggy - Thunder Punch - Tutor
  (559, 55900, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Scraggy - Low Kick - Tutor
  (559, 55900, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Scraggy - Super Fang - Tutor
  (559, 55900, 162, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Scraggy - Snore - Tutor
  (559, 55900, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Scraggy - Spite - Tutor
  (559, 55900, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Scraggy - Iron Tail - Tutor
  (559, 55900, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Scraggy - Focus Punch - Tutor
  (559, 55900, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Scraggy - Knock Off - Tutor
  (559, 55900, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Scraggy - Snatch - Tutor
  (559, 55900, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Scraggy - Iron Defense - Tutor
  (559, 55900, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 83),
  -- Scraggy - Dragon Pulse - Tutor
  (559, 55900, 406, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 84),
  -- Scraggy - Drain Punch - Tutor
  (559, 55900, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 85),
  -- Scraggy - Zen Headbutt - Tutor
  (559, 55900, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 86),
  -- Scraggy - Iron Head - Tutor
  (559, 55900, 442, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 87),
  -- Scraggy - Foul Play - Tutor
  (559, 55900, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 88),
  -- Scraggy - Dual Chop - Tutor
  (559, 55900, 530, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 89),
  -- Scrafty - Sand Attack - Level 1
  (560, 56000, 28, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scrafty - Leer - Level 1
  (560, 56000, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scrafty - Low Kick - Level 1
  (560, 56000, 67, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Scrafty - Feint Attack - Level 1
  (560, 56000, 185, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Scrafty - Sand Attack - Level 5
  (560, 56000, 28, 14, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Scrafty - Feint Attack - Level 9
  (560, 56000, 185, 14, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Scrafty - Headbutt - Level 12
  (560, 56000, 29, 14, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Scrafty - Swagger - Level 16
  (560, 56000, 207, 14, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Scrafty - Brick Break - Level 20
  (560, 56000, 280, 14, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Scrafty - Payback - Level 23
  (560, 56000, 371, 14, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Scrafty - Chip Away - Level 27
  (560, 56000, 498, 14, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Scrafty - High Jump Kick - Level 31
  (560, 56000, 136, 14, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Scrafty - Scary Face - Level 34
  (560, 56000, 184, 14, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Scrafty - Crunch - Level 38
  (560, 56000, 242, 14, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Scrafty - Facade - Level 45
  (560, 56000, 263, 14, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Scrafty - Rock Climb - Level 51
  (560, 56000, 431, 14, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Scrafty - Focus Punch - Level 58
  (560, 56000, 264, 14, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Scrafty - Head Smash - Level 65
  (560, 56000, 457, 14, NULL, 1, 65, NULL, NULL, NULL, 18),
  -- Scrafty - Dragon Claw - TM02
  (560, 56000, 337, 14, NULL, 2, NULL, NULL, 14002002, NULL, 19),
  -- Scrafty - Roar - TM05
  (560, 56000, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 20),
  -- Scrafty - Toxic - TM06
  (560, 56000, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 21),
  -- Scrafty - Bulk Up - TM08
  (560, 56000, 339, 14, NULL, 2, NULL, NULL, 14002008, NULL, 22),
  -- Scrafty - Hidden Power - TM10
  (560, 56000, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 23),
  -- Scrafty - Sunny Day - TM11
  (560, 56000, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 24),
  -- Scrafty - Taunt - TM12
  (560, 56000, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 25),
  -- Scrafty - Hyper Beam - TM15
  (560, 56000, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 26),
  -- Scrafty - Protect - TM17
  (560, 56000, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 27),
  -- Scrafty - Rain Dance - TM18
  (560, 56000, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 28),
  -- Scrafty - Frustration - TM21
  (560, 56000, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 29),
  -- Scrafty - Smack Down - TM23
  (560, 56000, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 30),
  -- Scrafty - Return - TM27
  (560, 56000, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 31),
  -- Scrafty - Dig - TM28
  (560, 56000, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 32),
  -- Scrafty - Brick Break - TM31
  (560, 56000, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 33),
  -- Scrafty - Double Team - TM32
  (560, 56000, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 34),
  -- Scrafty - Sludge Bomb - TM36
  (560, 56000, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 35),
  -- Scrafty - Rock Tomb - TM39
  (560, 56000, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 36),
  -- Scrafty - Torment - TM41
  (560, 56000, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 37),
  -- Scrafty - Facade - TM42
  (560, 56000, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 38),
  -- Scrafty - Rest - TM44
  (560, 56000, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 39),
  -- Scrafty - Attract - TM45
  (560, 56000, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 40),
  -- Scrafty - Thief - TM46
  (560, 56000, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 41),
  -- Scrafty - Low Sweep - TM47
  (560, 56000, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 42),
  -- Scrafty - Round - TM48
  (560, 56000, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 43),
  -- Scrafty - Focus Blast - TM52
  (560, 56000, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 44),
  -- Scrafty - Fling - TM56
  (560, 56000, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 45),
  -- Scrafty - Incinerate - TM59
  (560, 56000, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 46),
  -- Scrafty - Payback - TM66
  (560, 56000, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 47),
  -- Scrafty - Retaliate - TM67
  (560, 56000, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 48),
  -- Scrafty - Giga Impact - TM68
  (560, 56000, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 49),
  -- Scrafty - Stone Edge - TM71
  (560, 56000, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 50),
  -- Scrafty - Rock Slide - TM80
  (560, 56000, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 51),
  -- Scrafty - Dragon Tail - TM82
  (560, 56000, 525, 14, NULL, 2, NULL, NULL, 14002082, NULL, 52),
  -- Scrafty - Poison Jab - TM84
  (560, 56000, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 53),
  -- Scrafty - Grass Knot - TM86
  (560, 56000, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 54),
  -- Scrafty - Swagger - TM87
  (560, 56000, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 55),
  -- Scrafty - Sleep Talk - TM88
  (560, 56000, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 56),
  -- Scrafty - Substitute - TM90
  (560, 56000, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 57),
  -- Scrafty - Secret Power - TM94
  (560, 56000, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 58),
  -- Scrafty - Snarl - TM95
  (560, 56000, 555, 14, NULL, 2, NULL, NULL, 14002095, NULL, 59),
  -- Scrafty - Dark Pulse - TM97
  (560, 56000, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 60),
  -- Scrafty - Power-Up Punch - TM98
  (560, 56000, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 61),
  -- Scrafty - Confide - TM100
  (560, 56000, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 62),
  -- Scrafty - Strength - HM04
  (560, 56000, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 63),
  -- Scrafty - Rock Smash - HM06
  (560, 56000, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 64),
  -- Scrafty - Fire Punch - Tutor
  (560, 56000, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Scrafty - Ice Punch - Tutor
  (560, 56000, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Scrafty - Thunder Punch - Tutor
  (560, 56000, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Scrafty - Low Kick - Tutor
  (560, 56000, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Scrafty - Super Fang - Tutor
  (560, 56000, 162, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Scrafty - Snore - Tutor
  (560, 56000, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Scrafty - Spite - Tutor
  (560, 56000, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Scrafty - Outrage - Tutor
  (560, 56000, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Scrafty - Iron Tail - Tutor
  (560, 56000, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Scrafty - Focus Punch - Tutor
  (560, 56000, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Scrafty - Knock Off - Tutor
  (560, 56000, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Scrafty - Snatch - Tutor
  (560, 56000, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Scrafty - Iron Defense - Tutor
  (560, 56000, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Scrafty - Dragon Pulse - Tutor
  (560, 56000, 406, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Scrafty - Drain Punch - Tutor
  (560, 56000, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Scrafty - Zen Headbutt - Tutor
  (560, 56000, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Scrafty - Iron Head - Tutor
  (560, 56000, 442, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Scrafty - Foul Play - Tutor
  (560, 56000, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Scrafty - Dual Chop - Tutor
  (560, 56000, 530, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 83),
  -- Sigilyph - Gust - Level 1
  (561, 56100, 16, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sigilyph - Miracle Eye - Level 1
  (561, 56100, 357, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sigilyph - Hypnosis - Level 4
  (561, 56100, 95, 14, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Sigilyph - Psywave - Level 8
  (561, 56100, 149, 14, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Sigilyph - Tailwind - Level 11
  (561, 56100, 366, 14, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Sigilyph - Whirlwind - Level 14
  (561, 56100, 18, 14, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Sigilyph - Psybeam - Level 18
  (561, 56100, 60, 14, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Sigilyph - Air Cutter - Level 21
  (561, 56100, 314, 14, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Sigilyph - Light Screen - Level 24
  (561, 56100, 113, 14, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Sigilyph - Reflect - Level 28
  (561, 56100, 115, 14, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Sigilyph - Synchronoise - Level 31
  (561, 56100, 485, 14, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Sigilyph - Mirror Move - Level 34
  (561, 56100, 119, 14, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Sigilyph - Gravity - Level 38
  (561, 56100, 356, 14, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Sigilyph - Air Slash - Level 41
  (561, 56100, 403, 14, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Sigilyph - Psychic - Level 44
  (561, 56100, 94, 14, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Sigilyph - Cosmic Power - Level 48
  (561, 56100, 322, 14, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Sigilyph - Sky Attack - Level 50
  (561, 56100, 143, 14, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Sigilyph - Psyshock - TM03
  (561, 56100, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 18),
  -- Sigilyph - Calm Mind - TM04
  (561, 56100, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 19),
  -- Sigilyph - Toxic - TM06
  (561, 56100, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 20),
  -- Sigilyph - Hidden Power - TM10
  (561, 56100, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 21),
  -- Sigilyph - Ice Beam - TM13
  (561, 56100, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 22),
  -- Sigilyph - Hyper Beam - TM15
  (561, 56100, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 23),
  -- Sigilyph - Light Screen - TM16
  (561, 56100, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 24),
  -- Sigilyph - Protect - TM17
  (561, 56100, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 25),
  -- Sigilyph - Rain Dance - TM18
  (561, 56100, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 26),
  -- Sigilyph - Roost - TM19
  (561, 56100, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 27),
  -- Sigilyph - Safeguard - TM20
  (561, 56100, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 28),
  -- Sigilyph - Frustration - TM21
  (561, 56100, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 29),
  -- Sigilyph - Solar Beam - TM22
  (561, 56100, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 30),
  -- Sigilyph - Smack Down - TM23
  (561, 56100, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 31),
  -- Sigilyph - Return - TM27
  (561, 56100, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 32),
  -- Sigilyph - Psychic - TM29
  (561, 56100, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 33),
  -- Sigilyph - Shadow Ball - TM30
  (561, 56100, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 34),
  -- Sigilyph - Double Team - TM32
  (561, 56100, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 35),
  -- Sigilyph - Reflect - TM33
  (561, 56100, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 36),
  -- Sigilyph - Aerial Ace - TM40
  (561, 56100, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 37),
  -- Sigilyph - Facade - TM42
  (561, 56100, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 38),
  -- Sigilyph - Rest - TM44
  (561, 56100, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 39),
  -- Sigilyph - Attract - TM45
  (561, 56100, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 40),
  -- Sigilyph - Thief - TM46
  (561, 56100, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 41),
  -- Sigilyph - Round - TM48
  (561, 56100, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 42),
  -- Sigilyph - Steel Wing - TM51
  (561, 56100, 211, 14, NULL, 2, NULL, NULL, 14002051, NULL, 43),
  -- Sigilyph - Energy Ball - TM53
  (561, 56100, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 44),
  -- Sigilyph - Charge Beam - TM57
  (561, 56100, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 45),
  -- Sigilyph - Flash - TM70
  (561, 56100, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 46),
  -- Sigilyph - Thunder Wave - TM73
  (561, 56100, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 47),
  -- Sigilyph - Psych Up - TM77
  (561, 56100, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 48),
  -- Sigilyph - Dream Eater - TM85
  (561, 56100, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 49),
  -- Sigilyph - Swagger - TM87
  (561, 56100, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 50),
  -- Sigilyph - Sleep Talk - TM88
  (561, 56100, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 51),
  -- Sigilyph - Substitute - TM90
  (561, 56100, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 52),
  -- Sigilyph - Flash Cannon - TM91
  (561, 56100, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 53),
  -- Sigilyph - Trick Room - TM92
  (561, 56100, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 54),
  -- Sigilyph - Secret Power - TM94
  (561, 56100, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 55),
  -- Sigilyph - Dark Pulse - TM97
  (561, 56100, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 56),
  -- Sigilyph - Dazzling Gleam - TM99
  (561, 56100, 605, 14, NULL, 2, NULL, NULL, 14002099, NULL, 57),
  -- Sigilyph - Confide - TM100
  (561, 56100, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 58),
  -- Sigilyph - Fly - HM02
  (561, 56100, 19, 14, NULL, 3, NULL, NULL, 14003002, NULL, 59),
  -- Sigilyph - Steel Wing - Egg
  (561, 56100, 211, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sigilyph - Ancient Power - Egg
  (561, 56100, 246, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sigilyph - Future Sight - Egg
  (561, 56100, 248, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sigilyph - Skill Swap - Egg
  (561, 56100, 285, 14, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sigilyph - Roost - Egg
  (561, 56100, 355, 14, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Sigilyph - Psycho Shift - Egg
  (561, 56100, 375, 14, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sigilyph - Stored Power - Egg
  (561, 56100, 500, 14, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Sigilyph - Sky Attack - Tutor
  (561, 56100, 143, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Sigilyph - Snore - Tutor
  (561, 56100, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Sigilyph - Icy Wind - Tutor
  (561, 56100, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Sigilyph - Heat Wave - Tutor
  (561, 56100, 257, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Sigilyph - Trick - Tutor
  (561, 56100, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Sigilyph - Magic Coat - Tutor
  (561, 56100, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Sigilyph - Skill Swap - Tutor
  (561, 56100, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Sigilyph - Signal Beam - Tutor
  (561, 56100, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Sigilyph - Shock Wave - Tutor
  (561, 56100, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Sigilyph - Gravity - Tutor
  (561, 56100, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Sigilyph - Tailwind - Tutor
  (561, 56100, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Sigilyph - Zen Headbutt - Tutor
  (561, 56100, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Sigilyph - Magic Room - Tutor
  (561, 56100, 478, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Yamask - Protect - Level 1
  (562, 56200, 182, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yamask - Astonish - Level 1
  (562, 56200, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yamask - Disable - Level 5
  (562, 56200, 50, 14, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Yamask - Haze - Level 9
  (562, 56200, 114, 14, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Yamask - Night Shade - Level 13
  (562, 56200, 101, 14, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Yamask - Hex - Level 17
  (562, 56200, 506, 14, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Yamask - Will-O-Wisp - Level 21
  (562, 56200, 261, 14, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Yamask - Ominous Wind - Level 25
  (562, 56200, 466, 14, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Yamask - Curse - Level 29
  (562, 56200, 174, 14, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Yamask - Guard Split - Level 33
  (562, 56200, 470, 14, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Yamask - Power Split - Level 33
  (562, 56200, 471, 14, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Yamask - Shadow Ball - Level 37
  (562, 56200, 247, 14, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Yamask - Grudge - Level 41
  (562, 56200, 288, 14, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Yamask - Mean Look - Level 45
  (562, 56200, 212, 14, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Yamask - Destiny Bond - Level 49
  (562, 56200, 194, 14, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Yamask - Calm Mind - TM04
  (562, 56200, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 16),
  -- Yamask - Toxic - TM06
  (562, 56200, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Yamask - Hidden Power - TM10
  (562, 56200, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Yamask - Protect - TM17
  (562, 56200, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 19),
  -- Yamask - Rain Dance - TM18
  (562, 56200, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 20),
  -- Yamask - Safeguard - TM20
  (562, 56200, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 21),
  -- Yamask - Frustration - TM21
  (562, 56200, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 22),
  -- Yamask - Return - TM27
  (562, 56200, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 23),
  -- Yamask - Psychic - TM29
  (562, 56200, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 24),
  -- Yamask - Shadow Ball - TM30
  (562, 56200, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 25),
  -- Yamask - Double Team - TM32
  (562, 56200, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 26),
  -- Yamask - Facade - TM42
  (562, 56200, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 27),
  -- Yamask - Rest - TM44
  (562, 56200, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 28),
  -- Yamask - Attract - TM45
  (562, 56200, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 29),
  -- Yamask - Thief - TM46
  (562, 56200, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 30),
  -- Yamask - Round - TM48
  (562, 56200, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 31),
  -- Yamask - Energy Ball - TM53
  (562, 56200, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 32),
  -- Yamask - Will-O-Wisp - TM61
  (562, 56200, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 33),
  -- Yamask - Embargo - TM63
  (562, 56200, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 34),
  -- Yamask - Payback - TM66
  (562, 56200, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 35),
  -- Yamask - Flash - TM70
  (562, 56200, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 36),
  -- Yamask - Psych Up - TM77
  (562, 56200, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 37),
  -- Yamask - Infestation - TM83
  (562, 56200, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 38),
  -- Yamask - Dream Eater - TM85
  (562, 56200, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 39),
  -- Yamask - Swagger - TM87
  (562, 56200, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 40),
  -- Yamask - Sleep Talk - TM88
  (562, 56200, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 41),
  -- Yamask - Substitute - TM90
  (562, 56200, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 42),
  -- Yamask - Trick Room - TM92
  (562, 56200, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 43),
  -- Yamask - Secret Power - TM94
  (562, 56200, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 44),
  -- Yamask - Dark Pulse - TM97
  (562, 56200, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 45),
  -- Yamask - Confide - TM100
  (562, 56200, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 46),
  -- Yamask - Disable - Egg
  (562, 56200, 50, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Yamask - Nightmare - Egg
  (562, 56200, 171, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Yamask - Endure - Egg
  (562, 56200, 203, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Yamask - Memento - Egg
  (562, 56200, 262, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Yamask - Imprison - Egg
  (562, 56200, 286, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Yamask - Fake Tears - Egg
  (562, 56200, 313, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Yamask - Heal Block - Egg
  (562, 56200, 377, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Yamask - Toxic Spikes - Egg
  (562, 56200, 390, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Yamask - Nasty Plot - Egg
  (562, 56200, 417, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Yamask - Ally Switch - Egg
  (562, 56200, 502, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Yamask - Snore - Tutor
  (562, 56200, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Yamask - Spite - Tutor
  (562, 56200, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Yamask - Pain Split - Tutor
  (562, 56200, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Yamask - Trick - Tutor
  (562, 56200, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Yamask - Role Play - Tutor
  (562, 56200, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Yamask - Magic Coat - Tutor
  (562, 56200, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Yamask - Knock Off - Tutor
  (562, 56200, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Yamask - Skill Swap - Tutor
  (562, 56200, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Yamask - Snatch - Tutor
  (562, 56200, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Yamask - Iron Defense - Tutor
  (562, 56200, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Yamask - Block - Tutor
  (562, 56200, 335, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Yamask - Shock Wave - Tutor
  (562, 56200, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Yamask - Zen Headbutt - Tutor
  (562, 56200, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Yamask - Wonder Room - Tutor
  (562, 56200, 472, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Yamask - After You - Tutor
  (562, 56200, 495, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Cofagrigus - Disable - Level 1
  (563, 56300, 50, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cofagrigus - Haze - Level 1
  (563, 56300, 114, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cofagrigus - Protect - Level 1
  (563, 56300, 182, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cofagrigus - Astonish - Level 1
  (563, 56300, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cofagrigus - Disable - Level 5
  (563, 56300, 50, 14, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Cofagrigus - Haze - Level 9
  (563, 56300, 114, 14, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Cofagrigus - Night Shade - Level 13
  (563, 56300, 101, 14, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Cofagrigus - Hex - Level 17
  (563, 56300, 506, 14, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Cofagrigus - Will-O-Wisp - Level 21
  (563, 56300, 261, 14, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Cofagrigus - Ominous Wind - Level 25
  (563, 56300, 466, 14, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Cofagrigus - Curse - Level 29
  (563, 56300, 174, 14, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Cofagrigus - Guard Split - Level 33
  (563, 56300, 470, 14, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Cofagrigus - Power Split - Level 33
  (563, 56300, 471, 14, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Cofagrigus - Scary Face - Level 34
  (563, 56300, 184, 14, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Cofagrigus - Shadow Ball - Level 39
  (563, 56300, 247, 14, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Cofagrigus - Grudge - Level 45
  (563, 56300, 288, 14, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Cofagrigus - Mean Look - Level 51
  (563, 56300, 212, 14, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Cofagrigus - Destiny Bond - Level 57
  (563, 56300, 194, 14, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Cofagrigus - Calm Mind - TM04
  (563, 56300, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 19),
  -- Cofagrigus - Toxic - TM06
  (563, 56300, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 20),
  -- Cofagrigus - Hidden Power - TM10
  (563, 56300, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 21),
  -- Cofagrigus - Hyper Beam - TM15
  (563, 56300, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 22),
  -- Cofagrigus - Protect - TM17
  (563, 56300, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 23),
  -- Cofagrigus - Rain Dance - TM18
  (563, 56300, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 24),
  -- Cofagrigus - Safeguard - TM20
  (563, 56300, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 25),
  -- Cofagrigus - Frustration - TM21
  (563, 56300, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 26),
  -- Cofagrigus - Return - TM27
  (563, 56300, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 27),
  -- Cofagrigus - Psychic - TM29
  (563, 56300, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 28),
  -- Cofagrigus - Shadow Ball - TM30
  (563, 56300, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 29),
  -- Cofagrigus - Double Team - TM32
  (563, 56300, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 30),
  -- Cofagrigus - Facade - TM42
  (563, 56300, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 31),
  -- Cofagrigus - Rest - TM44
  (563, 56300, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 32),
  -- Cofagrigus - Attract - TM45
  (563, 56300, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 33),
  -- Cofagrigus - Thief - TM46
  (563, 56300, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 34),
  -- Cofagrigus - Round - TM48
  (563, 56300, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 35),
  -- Cofagrigus - Energy Ball - TM53
  (563, 56300, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 36),
  -- Cofagrigus - Will-O-Wisp - TM61
  (563, 56300, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 37),
  -- Cofagrigus - Embargo - TM63
  (563, 56300, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 38),
  -- Cofagrigus - Payback - TM66
  (563, 56300, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 39),
  -- Cofagrigus - Giga Impact - TM68
  (563, 56300, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 40),
  -- Cofagrigus - Flash - TM70
  (563, 56300, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 41),
  -- Cofagrigus - Psych Up - TM77
  (563, 56300, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 42),
  -- Cofagrigus - Infestation - TM83
  (563, 56300, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 43),
  -- Cofagrigus - Dream Eater - TM85
  (563, 56300, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 44),
  -- Cofagrigus - Grass Knot - TM86
  (563, 56300, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 45),
  -- Cofagrigus - Swagger - TM87
  (563, 56300, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 46),
  -- Cofagrigus - Sleep Talk - TM88
  (563, 56300, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 47),
  -- Cofagrigus - Substitute - TM90
  (563, 56300, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 48),
  -- Cofagrigus - Trick Room - TM92
  (563, 56300, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 49),
  -- Cofagrigus - Secret Power - TM94
  (563, 56300, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 50),
  -- Cofagrigus - Dark Pulse - TM97
  (563, 56300, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 51),
  -- Cofagrigus - Confide - TM100
  (563, 56300, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 52),
  -- Cofagrigus - Snore - Tutor
  (563, 56300, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Cofagrigus - Spite - Tutor
  (563, 56300, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Cofagrigus - Pain Split - Tutor
  (563, 56300, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Cofagrigus - Trick - Tutor
  (563, 56300, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Cofagrigus - Role Play - Tutor
  (563, 56300, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Cofagrigus - Magic Coat - Tutor
  (563, 56300, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Cofagrigus - Knock Off - Tutor
  (563, 56300, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Cofagrigus - Skill Swap - Tutor
  (563, 56300, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Cofagrigus - Snatch - Tutor
  (563, 56300, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Cofagrigus - Iron Defense - Tutor
  (563, 56300, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Cofagrigus - Block - Tutor
  (563, 56300, 335, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Cofagrigus - Shock Wave - Tutor
  (563, 56300, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Cofagrigus - Zen Headbutt - Tutor
  (563, 56300, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Cofagrigus - Wonder Room - Tutor
  (563, 56300, 472, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Cofagrigus - After You - Tutor
  (563, 56300, 495, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Tirtouga - Water Gun - Level 1
  (564, 56400, 55, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tirtouga - Withdraw - Level 1
  (564, 56400, 110, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tirtouga - Bide - Level 1
  (564, 56400, 117, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tirtouga - Rollout - Level 5
  (564, 56400, 205, 14, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Tirtouga - Bite - Level 8
  (564, 56400, 44, 14, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Tirtouga - Protect - Level 11
  (564, 56400, 182, 14, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Tirtouga - Aqua Jet - Level 15
  (564, 56400, 453, 14, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Tirtouga - Ancient Power - Level 18
  (564, 56400, 246, 14, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Tirtouga - Crunch - Level 21
  (564, 56400, 242, 14, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Tirtouga - Wide Guard - Level 25
  (564, 56400, 469, 14, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Tirtouga - Brine - Level 28
  (564, 56400, 362, 14, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Tirtouga - Smack Down - Level 31
  (564, 56400, 479, 14, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Tirtouga - Curse - Level 35
  (564, 56400, 174, 14, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Tirtouga - Shell Smash - Level 38
  (564, 56400, 504, 14, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Tirtouga - Aqua Tail - Level 41
  (564, 56400, 401, 14, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Tirtouga - Rock Slide - Level 45
  (564, 56400, 157, 14, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Tirtouga - Rain Dance - Level 48
  (564, 56400, 240, 14, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Tirtouga - Hydro Pump - Level 50
  (564, 56400, 56, 14, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Tirtouga - Toxic - TM06
  (564, 56400, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 19),
  -- Tirtouga - Hidden Power - TM10
  (564, 56400, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 20),
  -- Tirtouga - Ice Beam - TM13
  (564, 56400, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 21),
  -- Tirtouga - Blizzard - TM14
  (564, 56400, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 22),
  -- Tirtouga - Protect - TM17
  (564, 56400, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 23),
  -- Tirtouga - Rain Dance - TM18
  (564, 56400, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 24),
  -- Tirtouga - Frustration - TM21
  (564, 56400, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 25),
  -- Tirtouga - Smack Down - TM23
  (564, 56400, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 26),
  -- Tirtouga - Earthquake - TM26
  (564, 56400, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 27),
  -- Tirtouga - Return - TM27
  (564, 56400, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 28),
  -- Tirtouga - Dig - TM28
  (564, 56400, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 29),
  -- Tirtouga - Double Team - TM32
  (564, 56400, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 30),
  -- Tirtouga - Sandstorm - TM37
  (564, 56400, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 31),
  -- Tirtouga - Rock Tomb - TM39
  (564, 56400, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 32),
  -- Tirtouga - Facade - TM42
  (564, 56400, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 33),
  -- Tirtouga - Rest - TM44
  (564, 56400, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 34),
  -- Tirtouga - Attract - TM45
  (564, 56400, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 35),
  -- Tirtouga - Round - TM48
  (564, 56400, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 36),
  -- Tirtouga - Scald - TM55
  (564, 56400, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 37),
  -- Tirtouga - Rock Polish - TM69
  (564, 56400, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 38),
  -- Tirtouga - Stone Edge - TM71
  (564, 56400, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 39),
  -- Tirtouga - Bulldoze - TM78
  (564, 56400, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 40),
  -- Tirtouga - Rock Slide - TM80
  (564, 56400, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 41),
  -- Tirtouga - Swagger - TM87
  (564, 56400, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 42),
  -- Tirtouga - Sleep Talk - TM88
  (564, 56400, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 43),
  -- Tirtouga - Substitute - TM90
  (564, 56400, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 44),
  -- Tirtouga - Secret Power - TM94
  (564, 56400, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 45),
  -- Tirtouga - Confide - TM100
  (564, 56400, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 46),
  -- Tirtouga - Surf - HM03
  (564, 56400, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 47),
  -- Tirtouga - Strength - HM04
  (564, 56400, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 48),
  -- Tirtouga - Waterfall - HM05
  (564, 56400, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 49),
  -- Tirtouga - Rock Smash - HM06
  (564, 56400, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 50),
  -- Tirtouga - Dive - HM07
  (564, 56400, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 51),
  -- Tirtouga - Slam - Egg
  (564, 56400, 21, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tirtouga - Body Slam - Egg
  (564, 56400, 34, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tirtouga - Rock Throw - Egg
  (564, 56400, 88, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tirtouga - Bide - Egg
  (564, 56400, 117, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Tirtouga - Flail - Egg
  (564, 56400, 175, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tirtouga - Whirlpool - Egg
  (564, 56400, 250, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tirtouga - Knock Off - Egg
  (564, 56400, 282, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Tirtouga - Iron Defense - Egg
  (564, 56400, 334, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Tirtouga - Water Pulse - Egg
  (564, 56400, 352, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Tirtouga - Guard Swap - Egg
  (564, 56400, 385, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Tirtouga - Snore - Tutor
  (564, 56400, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Tirtouga - Icy Wind - Tutor
  (564, 56400, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Tirtouga - Iron Tail - Tutor
  (564, 56400, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Tirtouga - Knock Off - Tutor
  (564, 56400, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Tirtouga - Iron Defense - Tutor
  (564, 56400, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Tirtouga - Block - Tutor
  (564, 56400, 335, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Tirtouga - Water Pulse - Tutor
  (564, 56400, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Tirtouga - Aqua Tail - Tutor
  (564, 56400, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Tirtouga - Earth Power - Tutor
  (564, 56400, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Tirtouga - Zen Headbutt - Tutor
  (564, 56400, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Tirtouga - Stealth Rock - Tutor
  (564, 56400, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Carracosta - Water Gun - Level 1
  (565, 56500, 55, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carracosta - Withdraw - Level 1
  (565, 56500, 110, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carracosta - Bide - Level 1
  (565, 56500, 117, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Carracosta - Rollout - Level 1
  (565, 56500, 205, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Carracosta - Rollout - Level 5
  (565, 56500, 205, 14, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Carracosta - Bite - Level 8
  (565, 56500, 44, 14, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Carracosta - Protect - Level 11
  (565, 56500, 182, 14, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Carracosta - Aqua Jet - Level 15
  (565, 56500, 453, 14, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Carracosta - Ancient Power - Level 18
  (565, 56500, 246, 14, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Carracosta - Crunch - Level 21
  (565, 56500, 242, 14, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Carracosta - Wide Guard - Level 25
  (565, 56500, 469, 14, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Carracosta - Brine - Level 28
  (565, 56500, 362, 14, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Carracosta - Smack Down - Level 31
  (565, 56500, 479, 14, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Carracosta - Curse - Level 35
  (565, 56500, 174, 14, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Carracosta - Shell Smash - Level 40
  (565, 56500, 504, 14, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Carracosta - Aqua Tail - Level 45
  (565, 56500, 401, 14, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Carracosta - Rock Slide - Level 51
  (565, 56500, 157, 14, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Carracosta - Rain Dance - Level 56
  (565, 56500, 240, 14, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Carracosta - Hydro Pump - Level 61
  (565, 56500, 56, 14, NULL, 1, 61, NULL, NULL, NULL, 19),
  -- Carracosta - Toxic - TM06
  (565, 56500, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 20),
  -- Carracosta - Hidden Power - TM10
  (565, 56500, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 21),
  -- Carracosta - Ice Beam - TM13
  (565, 56500, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 22),
  -- Carracosta - Blizzard - TM14
  (565, 56500, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 23),
  -- Carracosta - Hyper Beam - TM15
  (565, 56500, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 24),
  -- Carracosta - Protect - TM17
  (565, 56500, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 25),
  -- Carracosta - Rain Dance - TM18
  (565, 56500, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 26),
  -- Carracosta - Frustration - TM21
  (565, 56500, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 27),
  -- Carracosta - Smack Down - TM23
  (565, 56500, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 28),
  -- Carracosta - Earthquake - TM26
  (565, 56500, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 29),
  -- Carracosta - Return - TM27
  (565, 56500, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 30),
  -- Carracosta - Dig - TM28
  (565, 56500, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 31),
  -- Carracosta - Double Team - TM32
  (565, 56500, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 32),
  -- Carracosta - Sandstorm - TM37
  (565, 56500, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 33),
  -- Carracosta - Rock Tomb - TM39
  (565, 56500, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 34),
  -- Carracosta - Facade - TM42
  (565, 56500, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 35),
  -- Carracosta - Rest - TM44
  (565, 56500, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 36),
  -- Carracosta - Attract - TM45
  (565, 56500, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 37),
  -- Carracosta - Round - TM48
  (565, 56500, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 38),
  -- Carracosta - Focus Blast - TM52
  (565, 56500, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 39),
  -- Carracosta - Scald - TM55
  (565, 56500, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 40),
  -- Carracosta - Giga Impact - TM68
  (565, 56500, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 41),
  -- Carracosta - Rock Polish - TM69
  (565, 56500, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 42),
  -- Carracosta - Stone Edge - TM71
  (565, 56500, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 43),
  -- Carracosta - Bulldoze - TM78
  (565, 56500, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 44),
  -- Carracosta - Rock Slide - TM80
  (565, 56500, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 45),
  -- Carracosta - Swagger - TM87
  (565, 56500, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 46),
  -- Carracosta - Sleep Talk - TM88
  (565, 56500, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 47),
  -- Carracosta - Substitute - TM90
  (565, 56500, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 48),
  -- Carracosta - Secret Power - TM94
  (565, 56500, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 49),
  -- Carracosta - Confide - TM100
  (565, 56500, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 50),
  -- Carracosta - Surf - HM03
  (565, 56500, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 51),
  -- Carracosta - Strength - HM04
  (565, 56500, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 52),
  -- Carracosta - Waterfall - HM05
  (565, 56500, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 53),
  -- Carracosta - Rock Smash - HM06
  (565, 56500, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 54),
  -- Carracosta - Dive - HM07
  (565, 56500, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 55),
  -- Carracosta - Low Kick - Tutor
  (565, 56500, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Carracosta - Snore - Tutor
  (565, 56500, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Carracosta - Icy Wind - Tutor
  (565, 56500, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Carracosta - Iron Tail - Tutor
  (565, 56500, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Carracosta - Superpower - Tutor
  (565, 56500, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Carracosta - Knock Off - Tutor
  (565, 56500, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Carracosta - Iron Defense - Tutor
  (565, 56500, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Carracosta - Block - Tutor
  (565, 56500, 335, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Carracosta - Water Pulse - Tutor
  (565, 56500, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Carracosta - Aqua Tail - Tutor
  (565, 56500, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Carracosta - Earth Power - Tutor
  (565, 56500, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Carracosta - Zen Headbutt - Tutor
  (565, 56500, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Carracosta - Iron Head - Tutor
  (565, 56500, 442, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Carracosta - Stealth Rock - Tutor
  (565, 56500, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Archen - Wing Attack - Level 1
  (566, 56600, 17, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Archen - Leer - Level 1
  (566, 56600, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Archen - Quick Attack - Level 1
  (566, 56600, 98, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Archen - Rock Throw - Level 5
  (566, 56600, 88, 14, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Archen - Double Team - Level 8
  (566, 56600, 104, 14, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Archen - Scary Face - Level 11
  (566, 56600, 184, 14, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Archen - Pluck - Level 15
  (566, 56600, 365, 14, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Archen - Ancient Power - Level 18
  (566, 56600, 246, 14, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Archen - Agility - Level 21
  (566, 56600, 97, 14, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Archen - Quick Guard - Level 25
  (566, 56600, 501, 14, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Archen - Acrobatics - Level 28
  (566, 56600, 512, 14, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Archen - Dragon Breath - Level 31
  (566, 56600, 225, 14, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Archen - Crunch - Level 35
  (566, 56600, 242, 14, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Archen - Endeavor - Level 38
  (566, 56600, 283, 14, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Archen - U-turn - Level 41
  (566, 56600, 369, 14, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Archen - Rock Slide - Level 45
  (566, 56600, 157, 14, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Archen - Dragon Claw - Level 48
  (566, 56600, 337, 14, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Archen - Thrash - Level 50
  (566, 56600, 37, 14, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Archen - Hone Claws - TM01
  (566, 56600, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 19),
  -- Archen - Dragon Claw - TM02
  (566, 56600, 337, 14, NULL, 2, NULL, NULL, 14002002, NULL, 20),
  -- Archen - Roar - TM05
  (566, 56600, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 21),
  -- Archen - Toxic - TM06
  (566, 56600, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 22),
  -- Archen - Hidden Power - TM10
  (566, 56600, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 23),
  -- Archen - Taunt - TM12
  (566, 56600, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 24),
  -- Archen - Protect - TM17
  (566, 56600, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 25),
  -- Archen - Roost - TM19
  (566, 56600, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 26),
  -- Archen - Frustration - TM21
  (566, 56600, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 27),
  -- Archen - Smack Down - TM23
  (566, 56600, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 28),
  -- Archen - Earthquake - TM26
  (566, 56600, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 29),
  -- Archen - Return - TM27
  (566, 56600, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 30),
  -- Archen - Dig - TM28
  (566, 56600, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 31),
  -- Archen - Double Team - TM32
  (566, 56600, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 32),
  -- Archen - Sandstorm - TM37
  (566, 56600, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 33),
  -- Archen - Rock Tomb - TM39
  (566, 56600, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 34),
  -- Archen - Aerial Ace - TM40
  (566, 56600, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 35),
  -- Archen - Torment - TM41
  (566, 56600, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 36),
  -- Archen - Facade - TM42
  (566, 56600, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 37),
  -- Archen - Rest - TM44
  (566, 56600, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 38),
  -- Archen - Attract - TM45
  (566, 56600, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 39),
  -- Archen - Round - TM48
  (566, 56600, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 40),
  -- Archen - Steel Wing - TM51
  (566, 56600, 211, 14, NULL, 2, NULL, NULL, 14002051, NULL, 41),
  -- Archen - Acrobatics - TM62
  (566, 56600, 512, 14, NULL, 2, NULL, NULL, 14002062, NULL, 42),
  -- Archen - Shadow Claw - TM65
  (566, 56600, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 43),
  -- Archen - Rock Polish - TM69
  (566, 56600, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 44),
  -- Archen - Stone Edge - TM71
  (566, 56600, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 45),
  -- Archen - Bulldoze - TM78
  (566, 56600, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 46),
  -- Archen - Rock Slide - TM80
  (566, 56600, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 47),
  -- Archen - Swagger - TM87
  (566, 56600, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 48),
  -- Archen - Sleep Talk - TM88
  (566, 56600, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 49),
  -- Archen - U-turn - TM89
  (566, 56600, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 50),
  -- Archen - Substitute - TM90
  (566, 56600, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 51),
  -- Archen - Secret Power - TM94
  (566, 56600, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 52),
  -- Archen - Confide - TM100
  (566, 56600, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 53),
  -- Archen - Cut - HM01
  (566, 56600, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 54),
  -- Archen - Rock Smash - HM06
  (566, 56600, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 55),
  -- Archen - Bite - Egg
  (566, 56600, 44, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Archen - Steel Wing - Egg
  (566, 56600, 211, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Archen - Knock Off - Egg
  (566, 56600, 282, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Archen - Dragon Pulse - Egg
  (566, 56600, 406, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Archen - Earth Power - Egg
  (566, 56600, 414, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Archen - Switcheroo - Egg
  (566, 56600, 415, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Archen - Defog - Egg
  (566, 56600, 432, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Archen - Head Smash - Egg
  (566, 56600, 457, 14, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Archen - Ally Switch - Egg
  (566, 56600, 502, 14, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Archen - Snore - Tutor
  (566, 56600, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Archen - Iron Tail - Tutor
  (566, 56600, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Archen - Uproar - Tutor
  (566, 56600, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Archen - Heat Wave - Tutor
  (566, 56600, 257, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Archen - Knock Off - Tutor
  (566, 56600, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Archen - Endeavor - Tutor
  (566, 56600, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Archen - Iron Defense - Tutor
  (566, 56600, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Archen - Bounce - Tutor
  (566, 56600, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Archen - Tailwind - Tutor
  (566, 56600, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Archen - Aqua Tail - Tutor
  (566, 56600, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Archen - Dragon Pulse - Tutor
  (566, 56600, 406, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Archen - Earth Power - Tutor
  (566, 56600, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Archen - Zen Headbutt - Tutor
  (566, 56600, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Archen - Stealth Rock - Tutor
  (566, 56600, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Archeops - Wing Attack - Level 1
  (567, 56700, 17, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Archeops - Leer - Level 1
  (567, 56700, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Archeops - Rock Throw - Level 1
  (567, 56700, 88, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Archeops - Quick Attack - Level 1
  (567, 56700, 98, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Archeops - Rock Throw - Level 5
  (567, 56700, 88, 14, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Archeops - Double Team - Level 8
  (567, 56700, 104, 14, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Archeops - Scary Face - Level 11
  (567, 56700, 184, 14, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Archeops - Pluck - Level 15
  (567, 56700, 365, 14, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Archeops - Ancient Power - Level 18
  (567, 56700, 246, 14, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Archeops - Agility - Level 21
  (567, 56700, 97, 14, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Archeops - Quick Guard - Level 25
  (567, 56700, 501, 14, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Archeops - Acrobatics - Level 28
  (567, 56700, 512, 14, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Archeops - Dragon Breath - Level 31
  (567, 56700, 225, 14, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Archeops - Crunch - Level 35
  (567, 56700, 242, 14, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Archeops - Endeavor - Level 40
  (567, 56700, 283, 14, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Archeops - U-turn - Level 45
  (567, 56700, 369, 14, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Archeops - Rock Slide - Level 51
  (567, 56700, 157, 14, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Archeops - Dragon Claw - Level 56
  (567, 56700, 337, 14, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Archeops - Thrash - Level 61
  (567, 56700, 37, 14, NULL, 1, 61, NULL, NULL, NULL, 19),
  -- Archeops - Hone Claws - TM01
  (567, 56700, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 20),
  -- Archeops - Dragon Claw - TM02
  (567, 56700, 337, 14, NULL, 2, NULL, NULL, 14002002, NULL, 21),
  -- Archeops - Roar - TM05
  (567, 56700, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 22),
  -- Archeops - Toxic - TM06
  (567, 56700, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 23),
  -- Archeops - Hidden Power - TM10
  (567, 56700, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 24),
  -- Archeops - Taunt - TM12
  (567, 56700, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 25),
  -- Archeops - Hyper Beam - TM15
  (567, 56700, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 26),
  -- Archeops - Protect - TM17
  (567, 56700, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 27),
  -- Archeops - Roost - TM19
  (567, 56700, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 28),
  -- Archeops - Frustration - TM21
  (567, 56700, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 29),
  -- Archeops - Smack Down - TM23
  (567, 56700, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 30),
  -- Archeops - Earthquake - TM26
  (567, 56700, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 31),
  -- Archeops - Return - TM27
  (567, 56700, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 32),
  -- Archeops - Dig - TM28
  (567, 56700, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 33),
  -- Archeops - Double Team - TM32
  (567, 56700, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 34),
  -- Archeops - Sandstorm - TM37
  (567, 56700, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 35),
  -- Archeops - Rock Tomb - TM39
  (567, 56700, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 36),
  -- Archeops - Aerial Ace - TM40
  (567, 56700, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 37),
  -- Archeops - Torment - TM41
  (567, 56700, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 38),
  -- Archeops - Facade - TM42
  (567, 56700, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 39),
  -- Archeops - Rest - TM44
  (567, 56700, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 40),
  -- Archeops - Attract - TM45
  (567, 56700, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 41),
  -- Archeops - Round - TM48
  (567, 56700, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 42),
  -- Archeops - Steel Wing - TM51
  (567, 56700, 211, 14, NULL, 2, NULL, NULL, 14002051, NULL, 43),
  -- Archeops - Focus Blast - TM52
  (567, 56700, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 44),
  -- Archeops - Acrobatics - TM62
  (567, 56700, 512, 14, NULL, 2, NULL, NULL, 14002062, NULL, 45),
  -- Archeops - Shadow Claw - TM65
  (567, 56700, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 46),
  -- Archeops - Giga Impact - TM68
  (567, 56700, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 47),
  -- Archeops - Rock Polish - TM69
  (567, 56700, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 48),
  -- Archeops - Stone Edge - TM71
  (567, 56700, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 49),
  -- Archeops - Bulldoze - TM78
  (567, 56700, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 50),
  -- Archeops - Rock Slide - TM80
  (567, 56700, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 51),
  -- Archeops - Dragon Tail - TM82
  (567, 56700, 525, 14, NULL, 2, NULL, NULL, 14002082, NULL, 52),
  -- Archeops - Swagger - TM87
  (567, 56700, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 53),
  -- Archeops - Sleep Talk - TM88
  (567, 56700, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 54),
  -- Archeops - U-turn - TM89
  (567, 56700, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 55),
  -- Archeops - Substitute - TM90
  (567, 56700, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 56),
  -- Archeops - Secret Power - TM94
  (567, 56700, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 57),
  -- Archeops - Confide - TM100
  (567, 56700, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 58),
  -- Archeops - Cut - HM01
  (567, 56700, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 59),
  -- Archeops - Fly - HM02
  (567, 56700, 19, 14, NULL, 3, NULL, NULL, 14003002, NULL, 60),
  -- Archeops - Rock Smash - HM06
  (567, 56700, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 61),
  -- Archeops - Sky Attack - Tutor
  (567, 56700, 143, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Archeops - Snore - Tutor
  (567, 56700, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Archeops - Outrage - Tutor
  (567, 56700, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Archeops - Iron Tail - Tutor
  (567, 56700, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Archeops - Uproar - Tutor
  (567, 56700, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Archeops - Heat Wave - Tutor
  (567, 56700, 257, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Archeops - Knock Off - Tutor
  (567, 56700, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Archeops - Endeavor - Tutor
  (567, 56700, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Archeops - Iron Defense - Tutor
  (567, 56700, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Archeops - Bounce - Tutor
  (567, 56700, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Archeops - Tailwind - Tutor
  (567, 56700, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Archeops - Aqua Tail - Tutor
  (567, 56700, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Archeops - Dragon Pulse - Tutor
  (567, 56700, 406, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Archeops - Earth Power - Tutor
  (567, 56700, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Archeops - Zen Headbutt - Tutor
  (567, 56700, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Archeops - Stealth Rock - Tutor
  (567, 56700, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Trubbish - Pound - Level 1
  (568, 56800, 1, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Trubbish - Poison Gas - Level 1
  (568, 56800, 139, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Trubbish - Recycle - Level 3
  (568, 56800, 278, 14, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Trubbish - Toxic Spikes - Level 7
  (568, 56800, 390, 14, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Trubbish - Acid Spray - Level 12
  (568, 56800, 491, 14, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Trubbish - Double Slap - Level 14
  (568, 56800, 3, 14, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Trubbish - Sludge - Level 18
  (568, 56800, 124, 14, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Trubbish - Stockpile - Level 23
  (568, 56800, 254, 14, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Trubbish - Swallow - Level 23
  (568, 56800, 256, 14, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Trubbish - Take Down - Level 25
  (568, 56800, 36, 14, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Trubbish - Sludge Bomb - Level 29
  (568, 56800, 188, 14, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Trubbish - Clear Smog - Level 34
  (568, 56800, 499, 14, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Trubbish - Toxic - Level 36
  (568, 56800, 92, 14, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Trubbish - Amnesia - Level 40
  (568, 56800, 133, 14, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Trubbish - Belch - Level 42
  (568, 56800, 562, 14, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Trubbish - Gunk Shot - Level 45
  (568, 56800, 441, 14, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Trubbish - Explosion - Level 47
  (568, 56800, 153, 14, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Trubbish - Toxic - TM06
  (568, 56800, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 18),
  -- Trubbish - Venoshock - TM09
  (568, 56800, 474, 14, NULL, 2, NULL, NULL, 14002009, NULL, 19),
  -- Trubbish - Hidden Power - TM10
  (568, 56800, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 20),
  -- Trubbish - Sunny Day - TM11
  (568, 56800, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 21),
  -- Trubbish - Protect - TM17
  (568, 56800, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 22),
  -- Trubbish - Rain Dance - TM18
  (568, 56800, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 23),
  -- Trubbish - Frustration - TM21
  (568, 56800, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 24),
  -- Trubbish - Return - TM27
  (568, 56800, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 25),
  -- Trubbish - Double Team - TM32
  (568, 56800, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 26),
  -- Trubbish - Sludge Wave - TM34
  (568, 56800, 482, 14, NULL, 2, NULL, NULL, 14002034, NULL, 27),
  -- Trubbish - Sludge Bomb - TM36
  (568, 56800, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 28),
  -- Trubbish - Facade - TM42
  (568, 56800, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 29),
  -- Trubbish - Rest - TM44
  (568, 56800, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 30),
  -- Trubbish - Attract - TM45
  (568, 56800, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 31),
  -- Trubbish - Thief - TM46
  (568, 56800, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 32),
  -- Trubbish - Round - TM48
  (568, 56800, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 33),
  -- Trubbish - Explosion - TM64
  (568, 56800, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 34),
  -- Trubbish - Payback - TM66
  (568, 56800, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 35),
  -- Trubbish - Infestation - TM83
  (568, 56800, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 36),
  -- Trubbish - Swagger - TM87
  (568, 56800, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 37),
  -- Trubbish - Sleep Talk - TM88
  (568, 56800, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 38),
  -- Trubbish - Substitute - TM90
  (568, 56800, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 39),
  -- Trubbish - Secret Power - TM94
  (568, 56800, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 40),
  -- Trubbish - Dark Pulse - TM97
  (568, 56800, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 41),
  -- Trubbish - Confide - TM100
  (568, 56800, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 42),
  -- Trubbish - Sand Attack - Egg
  (568, 56800, 28, 14, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Trubbish - Haze - Egg
  (568, 56800, 114, 14, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Trubbish - Self-Destruct - Egg
  (568, 56800, 120, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Trubbish - Curse - Egg
  (568, 56800, 174, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Trubbish - Spikes - Egg
  (568, 56800, 191, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Trubbish - Rollout - Egg
  (568, 56800, 205, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Trubbish - Mud Sport - Egg
  (568, 56800, 300, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Trubbish - Rock Blast - Egg
  (568, 56800, 350, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Trubbish - Snore - Tutor
  (568, 56800, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Trubbish - Spite - Tutor
  (568, 56800, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Trubbish - Giga Drain - Tutor
  (568, 56800, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Trubbish - Pain Split - Tutor
  (568, 56800, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Trubbish - Recycle - Tutor
  (568, 56800, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Trubbish - Seed Bomb - Tutor
  (568, 56800, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Trubbish - Drain Punch - Tutor
  (568, 56800, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Trubbish - Gunk Shot - Tutor
  (568, 56800, 441, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Garbodor - Pound - Level 1
  (569, 56900, 1, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Garbodor - Poison Gas - Level 1
  (569, 56900, 139, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Garbodor - Recycle - Level 1
  (569, 56900, 278, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Garbodor - Toxic Spikes - Level 1
  (569, 56900, 390, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Garbodor - Recycle - Level 3
  (569, 56900, 278, 14, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Garbodor - Toxic Spikes - Level 7
  (569, 56900, 390, 14, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Garbodor - Acid Spray - Level 12
  (569, 56900, 491, 14, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Garbodor - Double Slap - Level 14
  (569, 56900, 3, 14, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Garbodor - Sludge - Level 18
  (569, 56900, 124, 14, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Garbodor - Stockpile - Level 23
  (569, 56900, 254, 14, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Garbodor - Swallow - Level 23
  (569, 56900, 256, 14, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Garbodor - Body Slam - Level 25
  (569, 56900, 34, 14, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Garbodor - Sludge Bomb - Level 29
  (569, 56900, 188, 14, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Garbodor - Clear Smog - Level 34
  (569, 56900, 499, 14, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Garbodor - Toxic - Level 39
  (569, 56900, 92, 14, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Garbodor - Amnesia - Level 46
  (569, 56900, 133, 14, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Garbodor - Belch - Level 49
  (569, 56900, 562, 14, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Garbodor - Gunk Shot - Level 54
  (569, 56900, 441, 14, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Garbodor - Explosion - Level 59
  (569, 56900, 153, 14, NULL, 1, 59, NULL, NULL, NULL, 19),
  -- Garbodor - Toxic - TM06
  (569, 56900, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 20),
  -- Garbodor - Venoshock - TM09
  (569, 56900, 474, 14, NULL, 2, NULL, NULL, 14002009, NULL, 21),
  -- Garbodor - Hidden Power - TM10
  (569, 56900, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 22),
  -- Garbodor - Sunny Day - TM11
  (569, 56900, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 23),
  -- Garbodor - Hyper Beam - TM15
  (569, 56900, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 24),
  -- Garbodor - Protect - TM17
  (569, 56900, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 25),
  -- Garbodor - Rain Dance - TM18
  (569, 56900, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 26),
  -- Garbodor - Frustration - TM21
  (569, 56900, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 27),
  -- Garbodor - Solar Beam - TM22
  (569, 56900, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 28),
  -- Garbodor - Smack Down - TM23
  (569, 56900, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 29),
  -- Garbodor - Thunderbolt - TM24
  (569, 56900, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 30),
  -- Garbodor - Return - TM27
  (569, 56900, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 31),
  -- Garbodor - Psychic - TM29
  (569, 56900, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 32),
  -- Garbodor - Double Team - TM32
  (569, 56900, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 33),
  -- Garbodor - Sludge Wave - TM34
  (569, 56900, 482, 14, NULL, 2, NULL, NULL, 14002034, NULL, 34),
  -- Garbodor - Sludge Bomb - TM36
  (569, 56900, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 35),
  -- Garbodor - Facade - TM42
  (569, 56900, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 36),
  -- Garbodor - Rest - TM44
  (569, 56900, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 37),
  -- Garbodor - Attract - TM45
  (569, 56900, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 38),
  -- Garbodor - Thief - TM46
  (569, 56900, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 39),
  -- Garbodor - Round - TM48
  (569, 56900, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 40),
  -- Garbodor - Focus Blast - TM52
  (569, 56900, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 41),
  -- Garbodor - Fling - TM56
  (569, 56900, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 42),
  -- Garbodor - Explosion - TM64
  (569, 56900, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 43),
  -- Garbodor - Payback - TM66
  (569, 56900, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 44),
  -- Garbodor - Giga Impact - TM68
  (569, 56900, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 45),
  -- Garbodor - Rock Polish - TM69
  (569, 56900, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 46),
  -- Garbodor - Infestation - TM83
  (569, 56900, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 47),
  -- Garbodor - Swagger - TM87
  (569, 56900, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 48),
  -- Garbodor - Sleep Talk - TM88
  (569, 56900, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 49),
  -- Garbodor - Substitute - TM90
  (569, 56900, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 50),
  -- Garbodor - Secret Power - TM94
  (569, 56900, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 51),
  -- Garbodor - Dark Pulse - TM97
  (569, 56900, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 52),
  -- Garbodor - Confide - TM100
  (569, 56900, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 53),
  -- Garbodor - Snore - Tutor
  (569, 56900, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Garbodor - Spite - Tutor
  (569, 56900, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Garbodor - Giga Drain - Tutor
  (569, 56900, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Garbodor - Pain Split - Tutor
  (569, 56900, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Garbodor - Recycle - Tutor
  (569, 56900, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Garbodor - Seed Bomb - Tutor
  (569, 56900, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Garbodor - Drain Punch - Tutor
  (569, 56900, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Garbodor - Gunk Shot - Tutor
  (569, 56900, 441, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Zorua - Scratch - Level 1
  (570, 57000, 10, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zorua - Leer - Level 1
  (570, 57000, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zorua - Pursuit - Level 5
  (570, 57000, 228, 14, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zorua - Fake Tears - Level 9
  (570, 57000, 313, 14, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Zorua - Fury Swipes - Level 13
  (570, 57000, 154, 14, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Zorua - Feint Attack - Level 17
  (570, 57000, 185, 14, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Zorua - Scary Face - Level 21
  (570, 57000, 184, 14, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Zorua - Taunt - Level 25
  (570, 57000, 269, 14, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Zorua - Foul Play - Level 29
  (570, 57000, 492, 14, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Zorua - Torment - Level 33
  (570, 57000, 259, 14, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Zorua - Agility - Level 37
  (570, 57000, 97, 14, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Zorua - Embargo - Level 41
  (570, 57000, 373, 14, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Zorua - Punishment - Level 45
  (570, 57000, 386, 14, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Zorua - Nasty Plot - Level 49
  (570, 57000, 417, 14, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Zorua - Imprison - Level 53
  (570, 57000, 286, 14, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Zorua - Night Daze - Level 57
  (570, 57000, 539, 14, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Zorua - Hone Claws - TM01
  (570, 57000, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 17),
  -- Zorua - Calm Mind - TM04
  (570, 57000, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 18),
  -- Zorua - Roar - TM05
  (570, 57000, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 19),
  -- Zorua - Toxic - TM06
  (570, 57000, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 20),
  -- Zorua - Hidden Power - TM10
  (570, 57000, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 21),
  -- Zorua - Sunny Day - TM11
  (570, 57000, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 22),
  -- Zorua - Taunt - TM12
  (570, 57000, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 23),
  -- Zorua - Protect - TM17
  (570, 57000, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 24),
  -- Zorua - Rain Dance - TM18
  (570, 57000, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 25),
  -- Zorua - Frustration - TM21
  (570, 57000, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 26),
  -- Zorua - Return - TM27
  (570, 57000, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 27),
  -- Zorua - Dig - TM28
  (570, 57000, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 28),
  -- Zorua - Shadow Ball - TM30
  (570, 57000, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 29),
  -- Zorua - Double Team - TM32
  (570, 57000, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 30),
  -- Zorua - Aerial Ace - TM40
  (570, 57000, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 31),
  -- Zorua - Torment - TM41
  (570, 57000, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 32),
  -- Zorua - Facade - TM42
  (570, 57000, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 33),
  -- Zorua - Rest - TM44
  (570, 57000, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 34),
  -- Zorua - Attract - TM45
  (570, 57000, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 35),
  -- Zorua - Thief - TM46
  (570, 57000, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 36),
  -- Zorua - Round - TM48
  (570, 57000, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 37),
  -- Zorua - Fling - TM56
  (570, 57000, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 38),
  -- Zorua - Incinerate - TM59
  (570, 57000, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 39),
  -- Zorua - Embargo - TM63
  (570, 57000, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 40),
  -- Zorua - Payback - TM66
  (570, 57000, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 41),
  -- Zorua - Retaliate - TM67
  (570, 57000, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 42),
  -- Zorua - Swords Dance - TM75
  (570, 57000, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 43),
  -- Zorua - Psych Up - TM77
  (570, 57000, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 44),
  -- Zorua - Grass Knot - TM86
  (570, 57000, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 45),
  -- Zorua - Swagger - TM87
  (570, 57000, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 46),
  -- Zorua - Sleep Talk - TM88
  (570, 57000, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 47),
  -- Zorua - U-turn - TM89
  (570, 57000, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 48),
  -- Zorua - Substitute - TM90
  (570, 57000, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 49),
  -- Zorua - Secret Power - TM94
  (570, 57000, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 50),
  -- Zorua - Snarl - TM95
  (570, 57000, 555, 14, NULL, 2, NULL, NULL, 14002095, NULL, 51),
  -- Zorua - Dark Pulse - TM97
  (570, 57000, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 52),
  -- Zorua - Confide - TM100
  (570, 57000, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 53),
  -- Zorua - Cut - HM01
  (570, 57000, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 54),
  -- Zorua - Counter - Egg
  (570, 57000, 68, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Zorua - Detect - Egg
  (570, 57000, 197, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Zorua - Memento - Egg
  (570, 57000, 262, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Zorua - Snatch - Egg
  (570, 57000, 289, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Zorua - Extrasensory - Egg
  (570, 57000, 326, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Zorua - Copycat - Egg
  (570, 57000, 383, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Zorua - Sucker Punch - Egg
  (570, 57000, 389, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Zorua - Dark Pulse - Egg
  (570, 57000, 399, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Zorua - Captivate - Egg
  (570, 57000, 445, 14, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Zorua - Snore - Tutor
  (570, 57000, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Zorua - Spite - Tutor
  (570, 57000, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Zorua - Uproar - Tutor
  (570, 57000, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Zorua - Trick - Tutor
  (570, 57000, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Zorua - Knock Off - Tutor
  (570, 57000, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Zorua - Snatch - Tutor
  (570, 57000, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Zorua - Hyper Voice - Tutor
  (570, 57000, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Zorua - Bounce - Tutor
  (570, 57000, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Zorua - Covet - Tutor
  (570, 57000, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Zorua - Foul Play - Tutor
  (570, 57000, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Zoroark - Scratch - Level 1
  (571, 57100, 10, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zoroark - Leer - Level 1
  (571, 57100, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zoroark - Pursuit - Level 1
  (571, 57100, 228, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zoroark - Imprison - Level 1
  (571, 57100, 286, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zoroark - U-turn - Level 1
  (571, 57100, 369, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Zoroark - Hone Claws - Level 1
  (571, 57100, 468, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Zoroark - Night Daze - Level 1
  (571, 57100, 539, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Zoroark - Pursuit - Level 5
  (571, 57100, 228, 14, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Zoroark - Hone Claws - Level 9
  (571, 57100, 468, 14, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Zoroark - Fury Swipes - Level 13
  (571, 57100, 154, 14, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Zoroark - Feint Attack - Level 17
  (571, 57100, 185, 14, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Zoroark - Scary Face - Level 21
  (571, 57100, 184, 14, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Zoroark - Taunt - Level 25
  (571, 57100, 269, 14, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Zoroark - Foul Play - Level 29
  (571, 57100, 492, 14, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Zoroark - Night Slash - Level 30
  (571, 57100, 400, 14, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Zoroark - Torment - Level 34
  (571, 57100, 259, 14, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Zoroark - Agility - Level 39
  (571, 57100, 97, 14, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Zoroark - Embargo - Level 44
  (571, 57100, 373, 14, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Zoroark - Punishment - Level 49
  (571, 57100, 386, 14, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Zoroark - Nasty Plot - Level 54
  (571, 57100, 417, 14, NULL, 1, 54, NULL, NULL, NULL, 20),
  -- Zoroark - Imprison - Level 59
  (571, 57100, 286, 14, NULL, 1, 59, NULL, NULL, NULL, 21),
  -- Zoroark - Night Daze - Level 64
  (571, 57100, 539, 14, NULL, 1, 64, NULL, NULL, NULL, 22),
  -- Zoroark - Hone Claws - TM01
  (571, 57100, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 23),
  -- Zoroark - Calm Mind - TM04
  (571, 57100, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 24),
  -- Zoroark - Roar - TM05
  (571, 57100, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 25),
  -- Zoroark - Toxic - TM06
  (571, 57100, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 26),
  -- Zoroark - Hidden Power - TM10
  (571, 57100, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 27),
  -- Zoroark - Sunny Day - TM11
  (571, 57100, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 28),
  -- Zoroark - Taunt - TM12
  (571, 57100, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 29),
  -- Zoroark - Hyper Beam - TM15
  (571, 57100, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 30),
  -- Zoroark - Protect - TM17
  (571, 57100, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 31),
  -- Zoroark - Rain Dance - TM18
  (571, 57100, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 32),
  -- Zoroark - Frustration - TM21
  (571, 57100, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 33),
  -- Zoroark - Return - TM27
  (571, 57100, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 34),
  -- Zoroark - Dig - TM28
  (571, 57100, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 35),
  -- Zoroark - Shadow Ball - TM30
  (571, 57100, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 36),
  -- Zoroark - Double Team - TM32
  (571, 57100, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 37),
  -- Zoroark - Flamethrower - TM35
  (571, 57100, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 38),
  -- Zoroark - Aerial Ace - TM40
  (571, 57100, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 39),
  -- Zoroark - Torment - TM41
  (571, 57100, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 40),
  -- Zoroark - Facade - TM42
  (571, 57100, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 41),
  -- Zoroark - Rest - TM44
  (571, 57100, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 42),
  -- Zoroark - Attract - TM45
  (571, 57100, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 43),
  -- Zoroark - Thief - TM46
  (571, 57100, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 44),
  -- Zoroark - Low Sweep - TM47
  (571, 57100, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 45),
  -- Zoroark - Round - TM48
  (571, 57100, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 46),
  -- Zoroark - Focus Blast - TM52
  (571, 57100, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 47),
  -- Zoroark - Fling - TM56
  (571, 57100, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 48),
  -- Zoroark - Incinerate - TM59
  (571, 57100, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 49),
  -- Zoroark - Embargo - TM63
  (571, 57100, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 50),
  -- Zoroark - Shadow Claw - TM65
  (571, 57100, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 51),
  -- Zoroark - Payback - TM66
  (571, 57100, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 52),
  -- Zoroark - Retaliate - TM67
  (571, 57100, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 53),
  -- Zoroark - Giga Impact - TM68
  (571, 57100, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 54),
  -- Zoroark - Swords Dance - TM75
  (571, 57100, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 55),
  -- Zoroark - Psych Up - TM77
  (571, 57100, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 56),
  -- Zoroark - Grass Knot - TM86
  (571, 57100, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 57),
  -- Zoroark - Swagger - TM87
  (571, 57100, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 58),
  -- Zoroark - Sleep Talk - TM88
  (571, 57100, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 59),
  -- Zoroark - U-turn - TM89
  (571, 57100, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 60),
  -- Zoroark - Substitute - TM90
  (571, 57100, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 61),
  -- Zoroark - Secret Power - TM94
  (571, 57100, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 62),
  -- Zoroark - Snarl - TM95
  (571, 57100, 555, 14, NULL, 2, NULL, NULL, 14002095, NULL, 63),
  -- Zoroark - Dark Pulse - TM97
  (571, 57100, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 64),
  -- Zoroark - Confide - TM100
  (571, 57100, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 65),
  -- Zoroark - Cut - HM01
  (571, 57100, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 66),
  -- Zoroark - Rock Smash - HM06
  (571, 57100, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 67),
  -- Zoroark - Low Kick - Tutor
  (571, 57100, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Zoroark - Snore - Tutor
  (571, 57100, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Zoroark - Spite - Tutor
  (571, 57100, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Zoroark - Uproar - Tutor
  (571, 57100, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Zoroark - Trick - Tutor
  (571, 57100, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Zoroark - Knock Off - Tutor
  (571, 57100, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Zoroark - Snatch - Tutor
  (571, 57100, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Zoroark - Hyper Voice - Tutor
  (571, 57100, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Zoroark - Bounce - Tutor
  (571, 57100, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Zoroark - Covet - Tutor
  (571, 57100, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Zoroark - Foul Play - Tutor
  (571, 57100, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Minccino - Pound - Level 1
  (572, 57200, 1, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Minccino - Baby-Doll Eyes - Level 3
  (572, 57200, 608, 14, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Minccino - Helping Hand - Level 7
  (572, 57200, 270, 14, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Minccino - Tickle - Level 9
  (572, 57200, 321, 14, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Minccino - Double Slap - Level 13
  (572, 57200, 3, 14, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Minccino - Encore - Level 15
  (572, 57200, 227, 14, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Minccino - Swift - Level 19
  (572, 57200, 129, 14, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Minccino - Sing - Level 21
  (572, 57200, 47, 14, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Minccino - Tail Slap - Level 25
  (572, 57200, 541, 14, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Minccino - Charm - Level 27
  (572, 57200, 204, 14, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Minccino - Wake-Up Slap - Level 31
  (572, 57200, 358, 14, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Minccino - Echoed Voice - Level 33
  (572, 57200, 497, 14, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Minccino - Slam - Level 37
  (572, 57200, 21, 14, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Minccino - Captivate - Level 39
  (572, 57200, 445, 14, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Minccino - Hyper Voice - Level 43
  (572, 57200, 304, 14, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Minccino - Last Resort - Level 45
  (572, 57200, 387, 14, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Minccino - After You - Level 49
  (572, 57200, 495, 14, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Minccino - Calm Mind - TM04
  (572, 57200, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 18),
  -- Minccino - Toxic - TM06
  (572, 57200, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 19),
  -- Minccino - Hidden Power - TM10
  (572, 57200, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 20),
  -- Minccino - Sunny Day - TM11
  (572, 57200, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 21),
  -- Minccino - Protect - TM17
  (572, 57200, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 22),
  -- Minccino - Rain Dance - TM18
  (572, 57200, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 23),
  -- Minccino - Safeguard - TM20
  (572, 57200, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 24),
  -- Minccino - Frustration - TM21
  (572, 57200, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 25),
  -- Minccino - Thunderbolt - TM24
  (572, 57200, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 26),
  -- Minccino - Return - TM27
  (572, 57200, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 27),
  -- Minccino - Dig - TM28
  (572, 57200, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 28),
  -- Minccino - Double Team - TM32
  (572, 57200, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 29),
  -- Minccino - Facade - TM42
  (572, 57200, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 30),
  -- Minccino - Rest - TM44
  (572, 57200, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 31),
  -- Minccino - Attract - TM45
  (572, 57200, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 32),
  -- Minccino - Thief - TM46
  (572, 57200, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 33),
  -- Minccino - Round - TM48
  (572, 57200, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 34),
  -- Minccino - Echoed Voice - TM49
  (572, 57200, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 35),
  -- Minccino - Fling - TM56
  (572, 57200, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 36),
  -- Minccino - Retaliate - TM67
  (572, 57200, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 37),
  -- Minccino - Thunder Wave - TM73
  (572, 57200, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 38),
  -- Minccino - Grass Knot - TM86
  (572, 57200, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 39),
  -- Minccino - Swagger - TM87
  (572, 57200, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 40),
  -- Minccino - Sleep Talk - TM88
  (572, 57200, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 41),
  -- Minccino - U-turn - TM89
  (572, 57200, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 42),
  -- Minccino - Substitute - TM90
  (572, 57200, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 43),
  -- Minccino - Secret Power - TM94
  (572, 57200, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 44),
  -- Minccino - Dazzling Gleam - TM99
  (572, 57200, 605, 14, NULL, 2, NULL, NULL, 14002099, NULL, 45),
  -- Minccino - Confide - TM100
  (572, 57200, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 46),
  -- Minccino - Tail Whip - Egg
  (572, 57200, 39, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Minccino - Flail - Egg
  (572, 57200, 175, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Minccino - Mud-Slap - Egg
  (572, 57200, 189, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Minccino - Endure - Egg
  (572, 57200, 203, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Minccino - Sleep Talk - Egg
  (572, 57200, 214, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Minccino - Iron Tail - Egg
  (572, 57200, 231, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Minccino - Knock Off - Egg
  (572, 57200, 282, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Minccino - Fake Tears - Egg
  (572, 57200, 313, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Minccino - Aqua Tail - Egg
  (572, 57200, 401, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Minccino - Snore - Tutor
  (572, 57200, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Minccino - Iron Tail - Tutor
  (572, 57200, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Minccino - Uproar - Tutor
  (572, 57200, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Minccino - Helping Hand - Tutor
  (572, 57200, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Minccino - Knock Off - Tutor
  (572, 57200, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Minccino - Hyper Voice - Tutor
  (572, 57200, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Minccino - Covet - Tutor
  (572, 57200, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Minccino - Shock Wave - Tutor
  (572, 57200, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Minccino - Last Resort - Tutor
  (572, 57200, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Minccino - Aqua Tail - Tutor
  (572, 57200, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Minccino - Seed Bomb - Tutor
  (572, 57200, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Minccino - Gunk Shot - Tutor
  (572, 57200, 441, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Minccino - After You - Tutor
  (572, 57200, 495, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Cinccino - Sing - Level 1
  (573, 57300, 47, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cinccino - Helping Hand - Level 1
  (573, 57300, 270, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cinccino - Tickle - Level 1
  (573, 57300, 321, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cinccino - Bullet Seed - Level 1
  (573, 57300, 331, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cinccino - Rock Blast - Level 1
  (573, 57300, 350, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cinccino - Tail Slap - Level 1
  (573, 57300, 541, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Cinccino - Calm Mind - TM04
  (573, 57300, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 7),
  -- Cinccino - Toxic - TM06
  (573, 57300, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 8),
  -- Cinccino - Hidden Power - TM10
  (573, 57300, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 9),
  -- Cinccino - Sunny Day - TM11
  (573, 57300, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 10),
  -- Cinccino - Hyper Beam - TM15
  (573, 57300, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 11),
  -- Cinccino - Light Screen - TM16
  (573, 57300, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 12),
  -- Cinccino - Protect - TM17
  (573, 57300, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 13),
  -- Cinccino - Rain Dance - TM18
  (573, 57300, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 14),
  -- Cinccino - Safeguard - TM20
  (573, 57300, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 15),
  -- Cinccino - Frustration - TM21
  (573, 57300, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 16),
  -- Cinccino - Thunderbolt - TM24
  (573, 57300, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 17),
  -- Cinccino - Thunder - TM25
  (573, 57300, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 18),
  -- Cinccino - Return - TM27
  (573, 57300, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 19),
  -- Cinccino - Dig - TM28
  (573, 57300, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 20),
  -- Cinccino - Double Team - TM32
  (573, 57300, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 21),
  -- Cinccino - Facade - TM42
  (573, 57300, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 22),
  -- Cinccino - Rest - TM44
  (573, 57300, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 23),
  -- Cinccino - Attract - TM45
  (573, 57300, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 24),
  -- Cinccino - Thief - TM46
  (573, 57300, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 25),
  -- Cinccino - Round - TM48
  (573, 57300, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 26),
  -- Cinccino - Echoed Voice - TM49
  (573, 57300, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 27),
  -- Cinccino - Focus Blast - TM52
  (573, 57300, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 28),
  -- Cinccino - Fling - TM56
  (573, 57300, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 29),
  -- Cinccino - Retaliate - TM67
  (573, 57300, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 30),
  -- Cinccino - Giga Impact - TM68
  (573, 57300, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 31),
  -- Cinccino - Thunder Wave - TM73
  (573, 57300, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 32),
  -- Cinccino - Grass Knot - TM86
  (573, 57300, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 33),
  -- Cinccino - Swagger - TM87
  (573, 57300, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 34),
  -- Cinccino - Sleep Talk - TM88
  (573, 57300, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 35),
  -- Cinccino - U-turn - TM89
  (573, 57300, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 36),
  -- Cinccino - Substitute - TM90
  (573, 57300, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 37),
  -- Cinccino - Secret Power - TM94
  (573, 57300, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 38),
  -- Cinccino - Dazzling Gleam - TM99
  (573, 57300, 605, 14, NULL, 2, NULL, NULL, 14002099, NULL, 39),
  -- Cinccino - Confide - TM100
  (573, 57300, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 40),
  -- Cinccino - Snore - Tutor
  (573, 57300, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 41),
  -- Cinccino - Iron Tail - Tutor
  (573, 57300, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 42),
  -- Cinccino - Uproar - Tutor
  (573, 57300, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 43),
  -- Cinccino - Helping Hand - Tutor
  (573, 57300, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 44),
  -- Cinccino - Knock Off - Tutor
  (573, 57300, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 45),
  -- Cinccino - Hyper Voice - Tutor
  (573, 57300, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 46),
  -- Cinccino - Covet - Tutor
  (573, 57300, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Cinccino - Shock Wave - Tutor
  (573, 57300, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Cinccino - Last Resort - Tutor
  (573, 57300, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Cinccino - Aqua Tail - Tutor
  (573, 57300, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Cinccino - Seed Bomb - Tutor
  (573, 57300, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Cinccino - Gunk Shot - Tutor
  (573, 57300, 441, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Cinccino - After You - Tutor
  (573, 57300, 495, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Gothita - Pound - Level 1
  (574, 57400, 1, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gothita - Confusion - Level 3
  (574, 57400, 93, 14, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Gothita - Tickle - Level 7
  (574, 57400, 321, 14, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Gothita - Play Nice - Level 8
  (574, 57400, 589, 14, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Gothita - Fake Tears - Level 10
  (574, 57400, 313, 14, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Gothita - Double Slap - Level 14
  (574, 57400, 3, 14, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Gothita - Psybeam - Level 16
  (574, 57400, 60, 14, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Gothita - Embargo - Level 19
  (574, 57400, 373, 14, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Gothita - Feint Attack - Level 24
  (574, 57400, 185, 14, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Gothita - Psyshock - Level 25
  (574, 57400, 473, 14, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Gothita - Flatter - Level 28
  (574, 57400, 260, 14, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Gothita - Future Sight - Level 31
  (574, 57400, 248, 14, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Gothita - Heal Block - Level 33
  (574, 57400, 377, 14, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Gothita - Psychic - Level 37
  (574, 57400, 94, 14, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Gothita - Telekinesis - Level 40
  (574, 57400, 477, 14, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Gothita - Charm - Level 46
  (574, 57400, 204, 14, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Gothita - Magic Room - Level 48
  (574, 57400, 478, 14, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Gothita - Psyshock - TM03
  (574, 57400, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 18),
  -- Gothita - Calm Mind - TM04
  (574, 57400, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 19),
  -- Gothita - Toxic - TM06
  (574, 57400, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 20),
  -- Gothita - Hidden Power - TM10
  (574, 57400, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 21),
  -- Gothita - Taunt - TM12
  (574, 57400, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 22),
  -- Gothita - Light Screen - TM16
  (574, 57400, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 23),
  -- Gothita - Protect - TM17
  (574, 57400, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 24),
  -- Gothita - Rain Dance - TM18
  (574, 57400, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 25),
  -- Gothita - Safeguard - TM20
  (574, 57400, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 26),
  -- Gothita - Frustration - TM21
  (574, 57400, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 27),
  -- Gothita - Thunderbolt - TM24
  (574, 57400, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 28),
  -- Gothita - Return - TM27
  (574, 57400, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 29),
  -- Gothita - Psychic - TM29
  (574, 57400, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 30),
  -- Gothita - Shadow Ball - TM30
  (574, 57400, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 31),
  -- Gothita - Double Team - TM32
  (574, 57400, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 32),
  -- Gothita - Reflect - TM33
  (574, 57400, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 33),
  -- Gothita - Rock Tomb - TM39
  (574, 57400, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 34),
  -- Gothita - Torment - TM41
  (574, 57400, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 35),
  -- Gothita - Facade - TM42
  (574, 57400, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 36),
  -- Gothita - Rest - TM44
  (574, 57400, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 37),
  -- Gothita - Attract - TM45
  (574, 57400, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 38),
  -- Gothita - Thief - TM46
  (574, 57400, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 39),
  -- Gothita - Round - TM48
  (574, 57400, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 40),
  -- Gothita - Energy Ball - TM53
  (574, 57400, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 41),
  -- Gothita - Fling - TM56
  (574, 57400, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 42),
  -- Gothita - Charge Beam - TM57
  (574, 57400, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 43),
  -- Gothita - Embargo - TM63
  (574, 57400, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 44),
  -- Gothita - Payback - TM66
  (574, 57400, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 45),
  -- Gothita - Flash - TM70
  (574, 57400, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 46),
  -- Gothita - Thunder Wave - TM73
  (574, 57400, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 47),
  -- Gothita - Psych Up - TM77
  (574, 57400, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 48),
  -- Gothita - Rock Slide - TM80
  (574, 57400, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 49),
  -- Gothita - Dream Eater - TM85
  (574, 57400, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 50),
  -- Gothita - Grass Knot - TM86
  (574, 57400, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 51),
  -- Gothita - Swagger - TM87
  (574, 57400, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 52),
  -- Gothita - Sleep Talk - TM88
  (574, 57400, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 53),
  -- Gothita - Substitute - TM90
  (574, 57400, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 54),
  -- Gothita - Trick Room - TM92
  (574, 57400, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 55),
  -- Gothita - Secret Power - TM94
  (574, 57400, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 56),
  -- Gothita - Dark Pulse - TM97
  (574, 57400, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 57),
  -- Gothita - Confide - TM100
  (574, 57400, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 58),
  -- Gothita - Mean Look - Egg
  (574, 57400, 212, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Gothita - Mirror Coat - Egg
  (574, 57400, 243, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gothita - Uproar - Egg
  (574, 57400, 253, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gothita - Miracle Eye - Egg
  (574, 57400, 357, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Gothita - Dark Pulse - Egg
  (574, 57400, 399, 14, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Gothita - Captivate - Egg
  (574, 57400, 445, 14, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Gothita - Heal Pulse - Egg
  (574, 57400, 505, 14, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Gothita - Snore - Tutor
  (574, 57400, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Gothita - Heal Bell - Tutor
  (574, 57400, 215, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Gothita - Uproar - Tutor
  (574, 57400, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Gothita - Helping Hand - Tutor
  (574, 57400, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Gothita - Trick - Tutor
  (574, 57400, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Gothita - Role Play - Tutor
  (574, 57400, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Gothita - Magic Coat - Tutor
  (574, 57400, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Gothita - Recycle - Tutor
  (574, 57400, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Gothita - Skill Swap - Tutor
  (574, 57400, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Gothita - Snatch - Tutor
  (574, 57400, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Gothita - Signal Beam - Tutor
  (574, 57400, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Gothita - Covet - Tutor
  (574, 57400, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Gothita - Shock Wave - Tutor
  (574, 57400, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Gothita - Gravity - Tutor
  (574, 57400, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Gothita - Zen Headbutt - Tutor
  (574, 57400, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Gothita - Magic Room - Tutor
  (574, 57400, 478, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Gothita - Foul Play - Tutor
  (574, 57400, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Gothorita - Pound - Level 1
  (575, 57500, 1, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gothorita - Confusion - Level 1
  (575, 57500, 93, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gothorita - Tickle - Level 1
  (575, 57500, 321, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gothorita - Play Nice - Level 1
  (575, 57500, 589, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gothorita - Confusion - Level 3
  (575, 57500, 93, 14, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Gothorita - Tickle - Level 7
  (575, 57500, 321, 14, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Gothorita - Fake Tears - Level 10
  (575, 57500, 313, 14, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Gothorita - Double Slap - Level 14
  (575, 57500, 3, 14, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Gothorita - Psybeam - Level 16
  (575, 57500, 60, 14, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gothorita - Embargo - Level 19
  (575, 57500, 373, 14, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Gothorita - Feint Attack - Level 24
  (575, 57500, 185, 14, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Gothorita - Psyshock - Level 25
  (575, 57500, 473, 14, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Gothorita - Flatter - Level 28
  (575, 57500, 260, 14, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Gothorita - Future Sight - Level 31
  (575, 57500, 248, 14, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Gothorita - Heal Block - Level 34
  (575, 57500, 377, 14, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Gothorita - Psychic - Level 39
  (575, 57500, 94, 14, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Gothorita - Telekinesis - Level 43
  (575, 57500, 477, 14, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Gothorita - Charm - Level 50
  (575, 57500, 204, 14, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Gothorita - Magic Room - Level 53
  (575, 57500, 478, 14, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Gothorita - Psyshock - TM03
  (575, 57500, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 20),
  -- Gothorita - Calm Mind - TM04
  (575, 57500, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 21),
  -- Gothorita - Toxic - TM06
  (575, 57500, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 22),
  -- Gothorita - Hidden Power - TM10
  (575, 57500, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 23),
  -- Gothorita - Taunt - TM12
  (575, 57500, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 24),
  -- Gothorita - Light Screen - TM16
  (575, 57500, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 25),
  -- Gothorita - Protect - TM17
  (575, 57500, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 26),
  -- Gothorita - Rain Dance - TM18
  (575, 57500, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 27),
  -- Gothorita - Safeguard - TM20
  (575, 57500, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 28),
  -- Gothorita - Frustration - TM21
  (575, 57500, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 29),
  -- Gothorita - Thunderbolt - TM24
  (575, 57500, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 30),
  -- Gothorita - Return - TM27
  (575, 57500, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 31),
  -- Gothorita - Psychic - TM29
  (575, 57500, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 32),
  -- Gothorita - Shadow Ball - TM30
  (575, 57500, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 33),
  -- Gothorita - Double Team - TM32
  (575, 57500, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 34),
  -- Gothorita - Reflect - TM33
  (575, 57500, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 35),
  -- Gothorita - Rock Tomb - TM39
  (575, 57500, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 36),
  -- Gothorita - Torment - TM41
  (575, 57500, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 37),
  -- Gothorita - Facade - TM42
  (575, 57500, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 38),
  -- Gothorita - Rest - TM44
  (575, 57500, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 39),
  -- Gothorita - Attract - TM45
  (575, 57500, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 40),
  -- Gothorita - Thief - TM46
  (575, 57500, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 41),
  -- Gothorita - Round - TM48
  (575, 57500, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 42),
  -- Gothorita - Energy Ball - TM53
  (575, 57500, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 43),
  -- Gothorita - Fling - TM56
  (575, 57500, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 44),
  -- Gothorita - Charge Beam - TM57
  (575, 57500, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 45),
  -- Gothorita - Embargo - TM63
  (575, 57500, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 46),
  -- Gothorita - Payback - TM66
  (575, 57500, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 47),
  -- Gothorita - Flash - TM70
  (575, 57500, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 48),
  -- Gothorita - Thunder Wave - TM73
  (575, 57500, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 49),
  -- Gothorita - Psych Up - TM77
  (575, 57500, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 50),
  -- Gothorita - Rock Slide - TM80
  (575, 57500, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 51),
  -- Gothorita - Dream Eater - TM85
  (575, 57500, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 52),
  -- Gothorita - Grass Knot - TM86
  (575, 57500, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 53),
  -- Gothorita - Swagger - TM87
  (575, 57500, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 54),
  -- Gothorita - Sleep Talk - TM88
  (575, 57500, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 55),
  -- Gothorita - Substitute - TM90
  (575, 57500, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 56),
  -- Gothorita - Trick Room - TM92
  (575, 57500, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 57),
  -- Gothorita - Secret Power - TM94
  (575, 57500, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 58),
  -- Gothorita - Dark Pulse - TM97
  (575, 57500, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 59),
  -- Gothorita - Confide - TM100
  (575, 57500, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 60),
  -- Gothorita - Snore - Tutor
  (575, 57500, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Gothorita - Heal Bell - Tutor
  (575, 57500, 215, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Gothorita - Uproar - Tutor
  (575, 57500, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Gothorita - Helping Hand - Tutor
  (575, 57500, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Gothorita - Trick - Tutor
  (575, 57500, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Gothorita - Role Play - Tutor
  (575, 57500, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Gothorita - Magic Coat - Tutor
  (575, 57500, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Gothorita - Recycle - Tutor
  (575, 57500, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Gothorita - Skill Swap - Tutor
  (575, 57500, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Gothorita - Snatch - Tutor
  (575, 57500, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Gothorita - Signal Beam - Tutor
  (575, 57500, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Gothorita - Covet - Tutor
  (575, 57500, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Gothorita - Shock Wave - Tutor
  (575, 57500, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Gothorita - Gravity - Tutor
  (575, 57500, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Gothorita - Zen Headbutt - Tutor
  (575, 57500, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Gothorita - Magic Room - Tutor
  (575, 57500, 478, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Gothorita - Foul Play - Tutor
  (575, 57500, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Gothitelle - Pound - Level 1
  (576, 57600, 1, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gothitelle - Confusion - Level 1
  (576, 57600, 93, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gothitelle - Tickle - Level 1
  (576, 57600, 321, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gothitelle - Play Nice - Level 1
  (576, 57600, 589, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gothitelle - Confusion - Level 3
  (576, 57600, 93, 14, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Gothitelle - Tickle - Level 7
  (576, 57600, 321, 14, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Gothitelle - Fake Tears - Level 10
  (576, 57600, 313, 14, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Gothitelle - Double Slap - Level 14
  (576, 57600, 3, 14, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Gothitelle - Psybeam - Level 16
  (576, 57600, 60, 14, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gothitelle - Embargo - Level 19
  (576, 57600, 373, 14, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Gothitelle - Feint Attack - Level 24
  (576, 57600, 185, 14, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Gothitelle - Psyshock - Level 25
  (576, 57600, 473, 14, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Gothitelle - Flatter - Level 28
  (576, 57600, 260, 14, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Gothitelle - Future Sight - Level 31
  (576, 57600, 248, 14, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Gothitelle - Heal Block - Level 34
  (576, 57600, 377, 14, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Gothitelle - Psychic - Level 39
  (576, 57600, 94, 14, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Gothitelle - Telekinesis - Level 45
  (576, 57600, 477, 14, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Gothitelle - Charm - Level 54
  (576, 57600, 204, 14, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Gothitelle - Magic Room - Level 59
  (576, 57600, 478, 14, NULL, 1, 59, NULL, NULL, NULL, 19),
  -- Gothitelle - Psyshock - TM03
  (576, 57600, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 20),
  -- Gothitelle - Calm Mind - TM04
  (576, 57600, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 21),
  -- Gothitelle - Toxic - TM06
  (576, 57600, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 22),
  -- Gothitelle - Hidden Power - TM10
  (576, 57600, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 23),
  -- Gothitelle - Taunt - TM12
  (576, 57600, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 24),
  -- Gothitelle - Hyper Beam - TM15
  (576, 57600, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 25),
  -- Gothitelle - Light Screen - TM16
  (576, 57600, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 26),
  -- Gothitelle - Protect - TM17
  (576, 57600, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 27),
  -- Gothitelle - Rain Dance - TM18
  (576, 57600, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 28),
  -- Gothitelle - Safeguard - TM20
  (576, 57600, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 29),
  -- Gothitelle - Frustration - TM21
  (576, 57600, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 30),
  -- Gothitelle - Thunderbolt - TM24
  (576, 57600, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 31),
  -- Gothitelle - Return - TM27
  (576, 57600, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 32),
  -- Gothitelle - Psychic - TM29
  (576, 57600, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 33),
  -- Gothitelle - Shadow Ball - TM30
  (576, 57600, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 34),
  -- Gothitelle - Brick Break - TM31
  (576, 57600, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 35),
  -- Gothitelle - Double Team - TM32
  (576, 57600, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 36),
  -- Gothitelle - Reflect - TM33
  (576, 57600, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 37),
  -- Gothitelle - Rock Tomb - TM39
  (576, 57600, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 38),
  -- Gothitelle - Torment - TM41
  (576, 57600, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 39),
  -- Gothitelle - Facade - TM42
  (576, 57600, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 40),
  -- Gothitelle - Rest - TM44
  (576, 57600, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 41),
  -- Gothitelle - Attract - TM45
  (576, 57600, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 42),
  -- Gothitelle - Thief - TM46
  (576, 57600, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 43),
  -- Gothitelle - Low Sweep - TM47
  (576, 57600, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 44),
  -- Gothitelle - Round - TM48
  (576, 57600, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 45),
  -- Gothitelle - Energy Ball - TM53
  (576, 57600, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 46),
  -- Gothitelle - Fling - TM56
  (576, 57600, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 47),
  -- Gothitelle - Charge Beam - TM57
  (576, 57600, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 48),
  -- Gothitelle - Embargo - TM63
  (576, 57600, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 49),
  -- Gothitelle - Payback - TM66
  (576, 57600, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 50),
  -- Gothitelle - Giga Impact - TM68
  (576, 57600, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 51),
  -- Gothitelle - Flash - TM70
  (576, 57600, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 52),
  -- Gothitelle - Thunder Wave - TM73
  (576, 57600, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 53),
  -- Gothitelle - Psych Up - TM77
  (576, 57600, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 54),
  -- Gothitelle - Rock Slide - TM80
  (576, 57600, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 55),
  -- Gothitelle - Dream Eater - TM85
  (576, 57600, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 56),
  -- Gothitelle - Grass Knot - TM86
  (576, 57600, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 57),
  -- Gothitelle - Swagger - TM87
  (576, 57600, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 58),
  -- Gothitelle - Sleep Talk - TM88
  (576, 57600, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 59),
  -- Gothitelle - Substitute - TM90
  (576, 57600, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 60),
  -- Gothitelle - Trick Room - TM92
  (576, 57600, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 61),
  -- Gothitelle - Secret Power - TM94
  (576, 57600, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 62),
  -- Gothitelle - Dark Pulse - TM97
  (576, 57600, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 63),
  -- Gothitelle - Power-Up Punch - TM98
  (576, 57600, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 64),
  -- Gothitelle - Confide - TM100
  (576, 57600, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 65),
  -- Gothitelle - Snore - Tutor
  (576, 57600, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Gothitelle - Heal Bell - Tutor
  (576, 57600, 215, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Gothitelle - Uproar - Tutor
  (576, 57600, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Gothitelle - Helping Hand - Tutor
  (576, 57600, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Gothitelle - Trick - Tutor
  (576, 57600, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Gothitelle - Role Play - Tutor
  (576, 57600, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Gothitelle - Magic Coat - Tutor
  (576, 57600, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Gothitelle - Recycle - Tutor
  (576, 57600, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Gothitelle - Skill Swap - Tutor
  (576, 57600, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Gothitelle - Snatch - Tutor
  (576, 57600, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Gothitelle - Signal Beam - Tutor
  (576, 57600, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Gothitelle - Covet - Tutor
  (576, 57600, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Gothitelle - Shock Wave - Tutor
  (576, 57600, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Gothitelle - Gravity - Tutor
  (576, 57600, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Gothitelle - Zen Headbutt - Tutor
  (576, 57600, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Gothitelle - Magic Room - Tutor
  (576, 57600, 478, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Gothitelle - Foul Play - Tutor
  (576, 57600, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Solosis - Psywave - Level 1
  (577, 57700, 149, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Solosis - Reflect - Level 3
  (577, 57700, 115, 14, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Solosis - Rollout - Level 7
  (577, 57700, 205, 14, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Solosis - Snatch - Level 10
  (577, 57700, 289, 14, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Solosis - Hidden Power - Level 14
  (577, 57700, 237, 14, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Solosis - Light Screen - Level 16
  (577, 57700, 113, 14, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Solosis - Charm - Level 19
  (577, 57700, 204, 14, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Solosis - Recover - Level 24
  (577, 57700, 105, 14, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Solosis - Psyshock - Level 25
  (577, 57700, 473, 14, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Solosis - Endeavor - Level 28
  (577, 57700, 283, 14, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Solosis - Future Sight - Level 31
  (577, 57700, 248, 14, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Solosis - Pain Split - Level 33
  (577, 57700, 220, 14, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Solosis - Psychic - Level 37
  (577, 57700, 94, 14, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Solosis - Skill Swap - Level 40
  (577, 57700, 285, 14, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Solosis - Heal Block - Level 46
  (577, 57700, 377, 14, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Solosis - Wonder Room - Level 48
  (577, 57700, 472, 14, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Solosis - Psyshock - TM03
  (577, 57700, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 17),
  -- Solosis - Calm Mind - TM04
  (577, 57700, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 18),
  -- Solosis - Toxic - TM06
  (577, 57700, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 19),
  -- Solosis - Hidden Power - TM10
  (577, 57700, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 20),
  -- Solosis - Light Screen - TM16
  (577, 57700, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 21),
  -- Solosis - Protect - TM17
  (577, 57700, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 22),
  -- Solosis - Rain Dance - TM18
  (577, 57700, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 23),
  -- Solosis - Safeguard - TM20
  (577, 57700, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 24),
  -- Solosis - Frustration - TM21
  (577, 57700, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 25),
  -- Solosis - Thunder - TM25
  (577, 57700, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 26),
  -- Solosis - Return - TM27
  (577, 57700, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 27),
  -- Solosis - Psychic - TM29
  (577, 57700, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 28),
  -- Solosis - Shadow Ball - TM30
  (577, 57700, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 29),
  -- Solosis - Double Team - TM32
  (577, 57700, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 30),
  -- Solosis - Reflect - TM33
  (577, 57700, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 31),
  -- Solosis - Rock Tomb - TM39
  (577, 57700, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 32),
  -- Solosis - Facade - TM42
  (577, 57700, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 33),
  -- Solosis - Rest - TM44
  (577, 57700, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 34),
  -- Solosis - Attract - TM45
  (577, 57700, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 35),
  -- Solosis - Round - TM48
  (577, 57700, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 36),
  -- Solosis - Energy Ball - TM53
  (577, 57700, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 37),
  -- Solosis - Embargo - TM63
  (577, 57700, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 38),
  -- Solosis - Explosion - TM64
  (577, 57700, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 39),
  -- Solosis - Flash - TM70
  (577, 57700, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 40),
  -- Solosis - Thunder Wave - TM73
  (577, 57700, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 41),
  -- Solosis - Gyro Ball - TM74
  (577, 57700, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 42),
  -- Solosis - Psych Up - TM77
  (577, 57700, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 43),
  -- Solosis - Rock Slide - TM80
  (577, 57700, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 44),
  -- Solosis - Infestation - TM83
  (577, 57700, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 45),
  -- Solosis - Dream Eater - TM85
  (577, 57700, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 46),
  -- Solosis - Swagger - TM87
  (577, 57700, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 47),
  -- Solosis - Sleep Talk - TM88
  (577, 57700, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 48),
  -- Solosis - Substitute - TM90
  (577, 57700, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 49),
  -- Solosis - Flash Cannon - TM91
  (577, 57700, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 50),
  -- Solosis - Trick Room - TM92
  (577, 57700, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 51),
  -- Solosis - Secret Power - TM94
  (577, 57700, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 52),
  -- Solosis - Confide - TM100
  (577, 57700, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 53),
  -- Solosis - Night Shade - Egg
  (577, 57700, 101, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Solosis - Confuse Ray - Egg
  (577, 57700, 109, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Solosis - Acid Armor - Egg
  (577, 57700, 151, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Solosis - Helping Hand - Egg
  (577, 57700, 270, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Solosis - Trick - Egg
  (577, 57700, 271, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Solosis - Imprison - Egg
  (577, 57700, 286, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Solosis - Secret Power - Egg
  (577, 57700, 290, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Solosis - Astonish - Egg
  (577, 57700, 310, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Solosis - Snore - Tutor
  (577, 57700, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Solosis - Pain Split - Tutor
  (577, 57700, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Solosis - Helping Hand - Tutor
  (577, 57700, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Solosis - Trick - Tutor
  (577, 57700, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Solosis - Role Play - Tutor
  (577, 57700, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Solosis - Magic Coat - Tutor
  (577, 57700, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Solosis - Endeavor - Tutor
  (577, 57700, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Solosis - Skill Swap - Tutor
  (577, 57700, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Solosis - Snatch - Tutor
  (577, 57700, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Solosis - Signal Beam - Tutor
  (577, 57700, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Solosis - Iron Defense - Tutor
  (577, 57700, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Solosis - Shock Wave - Tutor
  (577, 57700, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Solosis - Gravity - Tutor
  (577, 57700, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Solosis - Zen Headbutt - Tutor
  (577, 57700, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Solosis - Wonder Room - Tutor
  (577, 57700, 472, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Solosis - After You - Tutor
  (577, 57700, 495, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Duosion - Reflect - Level 1
  (578, 57800, 115, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Duosion - Psywave - Level 1
  (578, 57800, 149, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Duosion - Rollout - Level 1
  (578, 57800, 205, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Duosion - Snatch - Level 1
  (578, 57800, 289, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Duosion - Reflect - Level 3
  (578, 57800, 115, 14, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Duosion - Rollout - Level 7
  (578, 57800, 205, 14, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Duosion - Snatch - Level 10
  (578, 57800, 289, 14, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Duosion - Hidden Power - Level 14
  (578, 57800, 237, 14, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Duosion - Light Screen - Level 16
  (578, 57800, 113, 14, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Duosion - Charm - Level 19
  (578, 57800, 204, 14, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Duosion - Recover - Level 24
  (578, 57800, 105, 14, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Duosion - Psyshock - Level 25
  (578, 57800, 473, 14, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Duosion - Endeavor - Level 28
  (578, 57800, 283, 14, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Duosion - Future Sight - Level 31
  (578, 57800, 248, 14, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Duosion - Pain Split - Level 34
  (578, 57800, 220, 14, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Duosion - Psychic - Level 39
  (578, 57800, 94, 14, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Duosion - Skill Swap - Level 43
  (578, 57800, 285, 14, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Duosion - Heal Block - Level 50
  (578, 57800, 377, 14, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Duosion - Wonder Room - Level 53
  (578, 57800, 472, 14, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Duosion - Psyshock - TM03
  (578, 57800, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 20),
  -- Duosion - Calm Mind - TM04
  (578, 57800, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 21),
  -- Duosion - Toxic - TM06
  (578, 57800, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 22),
  -- Duosion - Hidden Power - TM10
  (578, 57800, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 23),
  -- Duosion - Light Screen - TM16
  (578, 57800, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 24),
  -- Duosion - Protect - TM17
  (578, 57800, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 25),
  -- Duosion - Rain Dance - TM18
  (578, 57800, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 26),
  -- Duosion - Safeguard - TM20
  (578, 57800, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 27),
  -- Duosion - Frustration - TM21
  (578, 57800, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 28),
  -- Duosion - Thunder - TM25
  (578, 57800, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 29),
  -- Duosion - Return - TM27
  (578, 57800, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 30),
  -- Duosion - Psychic - TM29
  (578, 57800, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 31),
  -- Duosion - Shadow Ball - TM30
  (578, 57800, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 32),
  -- Duosion - Double Team - TM32
  (578, 57800, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 33),
  -- Duosion - Reflect - TM33
  (578, 57800, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 34),
  -- Duosion - Rock Tomb - TM39
  (578, 57800, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 35),
  -- Duosion - Facade - TM42
  (578, 57800, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 36),
  -- Duosion - Rest - TM44
  (578, 57800, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 37),
  -- Duosion - Attract - TM45
  (578, 57800, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 38),
  -- Duosion - Round - TM48
  (578, 57800, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 39),
  -- Duosion - Energy Ball - TM53
  (578, 57800, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 40),
  -- Duosion - Embargo - TM63
  (578, 57800, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 41),
  -- Duosion - Explosion - TM64
  (578, 57800, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 42),
  -- Duosion - Flash - TM70
  (578, 57800, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 43),
  -- Duosion - Thunder Wave - TM73
  (578, 57800, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 44),
  -- Duosion - Gyro Ball - TM74
  (578, 57800, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 45),
  -- Duosion - Psych Up - TM77
  (578, 57800, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 46),
  -- Duosion - Rock Slide - TM80
  (578, 57800, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 47),
  -- Duosion - Infestation - TM83
  (578, 57800, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 48),
  -- Duosion - Dream Eater - TM85
  (578, 57800, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 49),
  -- Duosion - Swagger - TM87
  (578, 57800, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 50),
  -- Duosion - Sleep Talk - TM88
  (578, 57800, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 51),
  -- Duosion - Substitute - TM90
  (578, 57800, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 52),
  -- Duosion - Flash Cannon - TM91
  (578, 57800, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 53),
  -- Duosion - Trick Room - TM92
  (578, 57800, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 54),
  -- Duosion - Secret Power - TM94
  (578, 57800, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 55),
  -- Duosion - Confide - TM100
  (578, 57800, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 56),
  -- Duosion - Snore - Tutor
  (578, 57800, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Duosion - Pain Split - Tutor
  (578, 57800, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Duosion - Helping Hand - Tutor
  (578, 57800, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Duosion - Trick - Tutor
  (578, 57800, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Duosion - Role Play - Tutor
  (578, 57800, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Duosion - Magic Coat - Tutor
  (578, 57800, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Duosion - Endeavor - Tutor
  (578, 57800, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Duosion - Skill Swap - Tutor
  (578, 57800, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Duosion - Snatch - Tutor
  (578, 57800, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Duosion - Signal Beam - Tutor
  (578, 57800, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Duosion - Iron Defense - Tutor
  (578, 57800, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Duosion - Shock Wave - Tutor
  (578, 57800, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Duosion - Gravity - Tutor
  (578, 57800, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Duosion - Zen Headbutt - Tutor
  (578, 57800, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Duosion - Wonder Room - Tutor
  (578, 57800, 472, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Duosion - After You - Tutor
  (578, 57800, 495, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Reuniclus - Reflect - Level 1
  (579, 57900, 115, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Reuniclus - Psywave - Level 1
  (579, 57900, 149, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Reuniclus - Rollout - Level 1
  (579, 57900, 205, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Reuniclus - Snatch - Level 1
  (579, 57900, 289, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Reuniclus - Reflect - Level 3
  (579, 57900, 115, 14, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Reuniclus - Rollout - Level 7
  (579, 57900, 205, 14, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Reuniclus - Snatch - Level 10
  (579, 57900, 289, 14, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Reuniclus - Hidden Power - Level 14
  (579, 57900, 237, 14, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Reuniclus - Light Screen - Level 16
  (579, 57900, 113, 14, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Reuniclus - Charm - Level 19
  (579, 57900, 204, 14, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Reuniclus - Recover - Level 24
  (579, 57900, 105, 14, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Reuniclus - Psyshock - Level 25
  (579, 57900, 473, 14, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Reuniclus - Endeavor - Level 28
  (579, 57900, 283, 14, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Reuniclus - Future Sight - Level 31
  (579, 57900, 248, 14, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Reuniclus - Pain Split - Level 34
  (579, 57900, 220, 14, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Reuniclus - Psychic - Level 39
  (579, 57900, 94, 14, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Reuniclus - Dizzy Punch - Level 41
  (579, 57900, 146, 14, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Reuniclus - Skill Swap - Level 45
  (579, 57900, 285, 14, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Reuniclus - Heal Block - Level 54
  (579, 57900, 377, 14, NULL, 1, 54, NULL, NULL, NULL, 19),
  -- Reuniclus - Wonder Room - Level 59
  (579, 57900, 472, 14, NULL, 1, 59, NULL, NULL, NULL, 20),
  -- Reuniclus - Psyshock - TM03
  (579, 57900, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 21),
  -- Reuniclus - Calm Mind - TM04
  (579, 57900, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 22),
  -- Reuniclus - Toxic - TM06
  (579, 57900, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 23),
  -- Reuniclus - Hidden Power - TM10
  (579, 57900, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 24),
  -- Reuniclus - Hyper Beam - TM15
  (579, 57900, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 25),
  -- Reuniclus - Light Screen - TM16
  (579, 57900, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 26),
  -- Reuniclus - Protect - TM17
  (579, 57900, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 27),
  -- Reuniclus - Rain Dance - TM18
  (579, 57900, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 28),
  -- Reuniclus - Safeguard - TM20
  (579, 57900, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 29),
  -- Reuniclus - Frustration - TM21
  (579, 57900, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 30),
  -- Reuniclus - Thunder - TM25
  (579, 57900, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 31),
  -- Reuniclus - Return - TM27
  (579, 57900, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 32),
  -- Reuniclus - Psychic - TM29
  (579, 57900, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 33),
  -- Reuniclus - Shadow Ball - TM30
  (579, 57900, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 34),
  -- Reuniclus - Double Team - TM32
  (579, 57900, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 35),
  -- Reuniclus - Reflect - TM33
  (579, 57900, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 36),
  -- Reuniclus - Rock Tomb - TM39
  (579, 57900, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 37),
  -- Reuniclus - Facade - TM42
  (579, 57900, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 38),
  -- Reuniclus - Rest - TM44
  (579, 57900, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 39),
  -- Reuniclus - Attract - TM45
  (579, 57900, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 40),
  -- Reuniclus - Round - TM48
  (579, 57900, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 41),
  -- Reuniclus - Focus Blast - TM52
  (579, 57900, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 42),
  -- Reuniclus - Energy Ball - TM53
  (579, 57900, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 43),
  -- Reuniclus - Fling - TM56
  (579, 57900, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 44),
  -- Reuniclus - Embargo - TM63
  (579, 57900, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 45),
  -- Reuniclus - Explosion - TM64
  (579, 57900, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 46),
  -- Reuniclus - Giga Impact - TM68
  (579, 57900, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 47),
  -- Reuniclus - Flash - TM70
  (579, 57900, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 48),
  -- Reuniclus - Thunder Wave - TM73
  (579, 57900, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 49),
  -- Reuniclus - Gyro Ball - TM74
  (579, 57900, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 50),
  -- Reuniclus - Psych Up - TM77
  (579, 57900, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 51),
  -- Reuniclus - Rock Slide - TM80
  (579, 57900, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 52),
  -- Reuniclus - Infestation - TM83
  (579, 57900, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 53),
  -- Reuniclus - Dream Eater - TM85
  (579, 57900, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 54),
  -- Reuniclus - Grass Knot - TM86
  (579, 57900, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 55),
  -- Reuniclus - Swagger - TM87
  (579, 57900, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 56),
  -- Reuniclus - Sleep Talk - TM88
  (579, 57900, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 57),
  -- Reuniclus - Substitute - TM90
  (579, 57900, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 58),
  -- Reuniclus - Flash Cannon - TM91
  (579, 57900, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 59),
  -- Reuniclus - Trick Room - TM92
  (579, 57900, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 60),
  -- Reuniclus - Secret Power - TM94
  (579, 57900, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 61),
  -- Reuniclus - Power-Up Punch - TM98
  (579, 57900, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 62),
  -- Reuniclus - Confide - TM100
  (579, 57900, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 63),
  -- Reuniclus - Strength - HM04
  (579, 57900, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 64),
  -- Reuniclus - Rock Smash - HM06
  (579, 57900, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 65),
  -- Reuniclus - Fire Punch - Tutor
  (579, 57900, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Reuniclus - Ice Punch - Tutor
  (579, 57900, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Reuniclus - Thunder Punch - Tutor
  (579, 57900, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Reuniclus - Snore - Tutor
  (579, 57900, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Reuniclus - Pain Split - Tutor
  (579, 57900, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Reuniclus - Focus Punch - Tutor
  (579, 57900, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Reuniclus - Helping Hand - Tutor
  (579, 57900, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Reuniclus - Trick - Tutor
  (579, 57900, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Reuniclus - Role Play - Tutor
  (579, 57900, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Reuniclus - Superpower - Tutor
  (579, 57900, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Reuniclus - Magic Coat - Tutor
  (579, 57900, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Reuniclus - Knock Off - Tutor
  (579, 57900, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Reuniclus - Endeavor - Tutor
  (579, 57900, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Reuniclus - Skill Swap - Tutor
  (579, 57900, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Reuniclus - Snatch - Tutor
  (579, 57900, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Reuniclus - Signal Beam - Tutor
  (579, 57900, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Reuniclus - Iron Defense - Tutor
  (579, 57900, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Reuniclus - Shock Wave - Tutor
  (579, 57900, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 83),
  -- Reuniclus - Gravity - Tutor
  (579, 57900, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 84),
  -- Reuniclus - Drain Punch - Tutor
  (579, 57900, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 85),
  -- Reuniclus - Zen Headbutt - Tutor
  (579, 57900, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 86),
  -- Reuniclus - Wonder Room - Tutor
  (579, 57900, 472, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 87),
  -- Reuniclus - After You - Tutor
  (579, 57900, 495, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 88),
  -- Ducklett - Water Gun - Level 1
  (580, 58000, 55, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ducklett - Water Sport - Level 3
  (580, 58000, 346, 14, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Ducklett - Defog - Level 6
  (580, 58000, 432, 14, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Ducklett - Wing Attack - Level 9
  (580, 58000, 17, 14, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Ducklett - Water Pulse - Level 13
  (580, 58000, 352, 14, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Ducklett - Aerial Ace - Level 15
  (580, 58000, 332, 14, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Ducklett - Bubble Beam - Level 19
  (580, 58000, 61, 14, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Ducklett - Feather Dance - Level 21
  (580, 58000, 297, 14, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Ducklett - Aqua Ring - Level 24
  (580, 58000, 392, 14, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Ducklett - Air Slash - Level 27
  (580, 58000, 403, 14, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Ducklett - Roost - Level 30
  (580, 58000, 355, 14, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Ducklett - Rain Dance - Level 34
  (580, 58000, 240, 14, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Ducklett - Tailwind - Level 37
  (580, 58000, 366, 14, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Ducklett - Brave Bird - Level 41
  (580, 58000, 413, 14, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Ducklett - Hurricane - Level 46
  (580, 58000, 542, 14, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Ducklett - Toxic - TM06
  (580, 58000, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 16),
  -- Ducklett - Hail - TM07
  (580, 58000, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 17),
  -- Ducklett - Hidden Power - TM10
  (580, 58000, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Ducklett - Ice Beam - TM13
  (580, 58000, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 19),
  -- Ducklett - Protect - TM17
  (580, 58000, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 20),
  -- Ducklett - Rain Dance - TM18
  (580, 58000, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 21),
  -- Ducklett - Roost - TM19
  (580, 58000, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 22),
  -- Ducklett - Frustration - TM21
  (580, 58000, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 23),
  -- Ducklett - Return - TM27
  (580, 58000, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 24),
  -- Ducklett - Double Team - TM32
  (580, 58000, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 25),
  -- Ducklett - Aerial Ace - TM40
  (580, 58000, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 26),
  -- Ducklett - Facade - TM42
  (580, 58000, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 27),
  -- Ducklett - Rest - TM44
  (580, 58000, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 28),
  -- Ducklett - Attract - TM45
  (580, 58000, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 29),
  -- Ducklett - Round - TM48
  (580, 58000, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 30),
  -- Ducklett - Steel Wing - TM51
  (580, 58000, 211, 14, NULL, 2, NULL, NULL, 14002051, NULL, 31),
  -- Ducklett - Scald - TM55
  (580, 58000, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 32),
  -- Ducklett - Swagger - TM87
  (580, 58000, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 33),
  -- Ducklett - Sleep Talk - TM88
  (580, 58000, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 34),
  -- Ducklett - Substitute - TM90
  (580, 58000, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 35),
  -- Ducklett - Secret Power - TM94
  (580, 58000, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 36),
  -- Ducklett - Confide - TM100
  (580, 58000, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 37),
  -- Ducklett - Fly - HM02
  (580, 58000, 19, 14, NULL, 3, NULL, NULL, 14003002, NULL, 38),
  -- Ducklett - Surf - HM03
  (580, 58000, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 39),
  -- Ducklett - Dive - HM07
  (580, 58000, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 40),
  -- Ducklett - Gust - Egg
  (580, 58000, 16, 14, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Ducklett - Mirror Move - Egg
  (580, 58000, 119, 14, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Ducklett - Steel Wing - Egg
  (580, 58000, 211, 14, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Ducklett - Mud Sport - Egg
  (580, 58000, 300, 14, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Ducklett - Air Cutter - Egg
  (580, 58000, 314, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Ducklett - Brine - Egg
  (580, 58000, 362, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Ducklett - Lucky Chant - Egg
  (580, 58000, 381, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ducklett - Me First - Egg
  (580, 58000, 382, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Ducklett - Snore - Tutor
  (580, 58000, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Ducklett - Icy Wind - Tutor
  (580, 58000, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Ducklett - Uproar - Tutor
  (580, 58000, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Ducklett - Endeavor - Tutor
  (580, 58000, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Ducklett - Water Pulse - Tutor
  (580, 58000, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Ducklett - Tailwind - Tutor
  (580, 58000, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Swanna - Wing Attack - Level 1
  (581, 58100, 17, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swanna - Water Gun - Level 1
  (581, 58100, 55, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swanna - Water Sport - Level 1
  (581, 58100, 346, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swanna - Defog - Level 1
  (581, 58100, 432, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swanna - Water Sport - Level 3
  (581, 58100, 346, 14, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Swanna - Defog - Level 6
  (581, 58100, 432, 14, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Swanna - Wing Attack - Level 9
  (581, 58100, 17, 14, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Swanna - Water Pulse - Level 13
  (581, 58100, 352, 14, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Swanna - Aerial Ace - Level 15
  (581, 58100, 332, 14, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Swanna - Bubble Beam - Level 19
  (581, 58100, 61, 14, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Swanna - Feather Dance - Level 21
  (581, 58100, 297, 14, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Swanna - Aqua Ring - Level 24
  (581, 58100, 392, 14, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Swanna - Air Slash - Level 27
  (581, 58100, 403, 14, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Swanna - Roost - Level 30
  (581, 58100, 355, 14, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Swanna - Rain Dance - Level 34
  (581, 58100, 240, 14, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Swanna - Tailwind - Level 40
  (581, 58100, 366, 14, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Swanna - Brave Bird - Level 47
  (581, 58100, 413, 14, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Swanna - Hurricane - Level 55
  (581, 58100, 542, 14, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Swanna - Toxic - TM06
  (581, 58100, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 19),
  -- Swanna - Hail - TM07
  (581, 58100, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 20),
  -- Swanna - Hidden Power - TM10
  (581, 58100, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 21),
  -- Swanna - Ice Beam - TM13
  (581, 58100, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 22),
  -- Swanna - Hyper Beam - TM15
  (581, 58100, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 23),
  -- Swanna - Protect - TM17
  (581, 58100, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 24),
  -- Swanna - Rain Dance - TM18
  (581, 58100, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 25),
  -- Swanna - Roost - TM19
  (581, 58100, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 26),
  -- Swanna - Frustration - TM21
  (581, 58100, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 27),
  -- Swanna - Return - TM27
  (581, 58100, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 28),
  -- Swanna - Double Team - TM32
  (581, 58100, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 29),
  -- Swanna - Aerial Ace - TM40
  (581, 58100, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 30),
  -- Swanna - Facade - TM42
  (581, 58100, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 31),
  -- Swanna - Rest - TM44
  (581, 58100, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 32),
  -- Swanna - Attract - TM45
  (581, 58100, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 33),
  -- Swanna - Round - TM48
  (581, 58100, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 34),
  -- Swanna - Steel Wing - TM51
  (581, 58100, 211, 14, NULL, 2, NULL, NULL, 14002051, NULL, 35),
  -- Swanna - Scald - TM55
  (581, 58100, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 36),
  -- Swanna - Giga Impact - TM68
  (581, 58100, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 37),
  -- Swanna - Swagger - TM87
  (581, 58100, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 38),
  -- Swanna - Sleep Talk - TM88
  (581, 58100, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 39),
  -- Swanna - Substitute - TM90
  (581, 58100, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 40),
  -- Swanna - Secret Power - TM94
  (581, 58100, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 41),
  -- Swanna - Confide - TM100
  (581, 58100, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 42),
  -- Swanna - Fly - HM02
  (581, 58100, 19, 14, NULL, 3, NULL, NULL, 14003002, NULL, 43),
  -- Swanna - Surf - HM03
  (581, 58100, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 44),
  -- Swanna - Dive - HM07
  (581, 58100, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 45),
  -- Swanna - Sky Attack - Tutor
  (581, 58100, 143, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 46),
  -- Swanna - Snore - Tutor
  (581, 58100, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Swanna - Icy Wind - Tutor
  (581, 58100, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Swanna - Uproar - Tutor
  (581, 58100, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Swanna - Endeavor - Tutor
  (581, 58100, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Swanna - Water Pulse - Tutor
  (581, 58100, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Swanna - Tailwind - Tutor
  (581, 58100, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Vanillite - Icicle Spear - Level 1
  (582, 58200, 333, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vanillite - Harden - Level 4
  (582, 58200, 106, 14, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Vanillite - Astonish - Level 7
  (582, 58200, 310, 14, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Vanillite - Uproar - Level 10
  (582, 58200, 253, 14, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Vanillite - Icy Wind - Level 13
  (582, 58200, 196, 14, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Vanillite - Mist - Level 16
  (582, 58200, 54, 14, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Vanillite - Avalanche - Level 19
  (582, 58200, 419, 14, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Vanillite - Taunt - Level 22
  (582, 58200, 269, 14, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Vanillite - Mirror Shot - Level 26
  (582, 58200, 429, 14, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Vanillite - Acid Armor - Level 31
  (582, 58200, 151, 14, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Vanillite - Ice Beam - Level 35
  (582, 58200, 58, 14, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Vanillite - Hail - Level 40
  (582, 58200, 258, 14, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Vanillite - Mirror Coat - Level 44
  (582, 58200, 243, 14, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Vanillite - Blizzard - Level 49
  (582, 58200, 59, 14, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Vanillite - Sheer Cold - Level 53
  (582, 58200, 329, 14, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Vanillite - Toxic - TM06
  (582, 58200, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 16),
  -- Vanillite - Hail - TM07
  (582, 58200, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 17),
  -- Vanillite - Hidden Power - TM10
  (582, 58200, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Vanillite - Taunt - TM12
  (582, 58200, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 19),
  -- Vanillite - Ice Beam - TM13
  (582, 58200, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 20),
  -- Vanillite - Blizzard - TM14
  (582, 58200, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 21),
  -- Vanillite - Light Screen - TM16
  (582, 58200, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 22),
  -- Vanillite - Protect - TM17
  (582, 58200, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 23),
  -- Vanillite - Rain Dance - TM18
  (582, 58200, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 24),
  -- Vanillite - Frustration - TM21
  (582, 58200, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 25),
  -- Vanillite - Return - TM27
  (582, 58200, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 26),
  -- Vanillite - Double Team - TM32
  (582, 58200, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 27),
  -- Vanillite - Facade - TM42
  (582, 58200, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 28),
  -- Vanillite - Rest - TM44
  (582, 58200, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 29),
  -- Vanillite - Attract - TM45
  (582, 58200, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 30),
  -- Vanillite - Round - TM48
  (582, 58200, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 31),
  -- Vanillite - Explosion - TM64
  (582, 58200, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 32),
  -- Vanillite - Frost Breath - TM79
  (582, 58200, 524, 14, NULL, 2, NULL, NULL, 14002079, NULL, 33),
  -- Vanillite - Swagger - TM87
  (582, 58200, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 34),
  -- Vanillite - Sleep Talk - TM88
  (582, 58200, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 35),
  -- Vanillite - Substitute - TM90
  (582, 58200, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 36),
  -- Vanillite - Flash Cannon - TM91
  (582, 58200, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 37),
  -- Vanillite - Secret Power - TM94
  (582, 58200, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 38),
  -- Vanillite - Confide - TM100
  (582, 58200, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 39),
  -- Vanillite - Powder Snow - Egg
  (582, 58200, 181, 14, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Vanillite - Imprison - Egg
  (582, 58200, 286, 14, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Vanillite - Iron Defense - Egg
  (582, 58200, 334, 14, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Vanillite - Water Pulse - Egg
  (582, 58200, 352, 14, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Vanillite - Natural Gift - Egg
  (582, 58200, 363, 14, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Vanillite - Magnet Rise - Egg
  (582, 58200, 393, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Vanillite - Ice Shard - Egg
  (582, 58200, 420, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Vanillite - Autotomize - Egg
  (582, 58200, 475, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Vanillite - Snore - Tutor
  (582, 58200, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Vanillite - Icy Wind - Tutor
  (582, 58200, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Vanillite - Uproar - Tutor
  (582, 58200, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Vanillite - Magic Coat - Tutor
  (582, 58200, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Vanillite - Signal Beam - Tutor
  (582, 58200, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Vanillite - Iron Defense - Tutor
  (582, 58200, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Vanillite - Water Pulse - Tutor
  (582, 58200, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Vanillite - Magnet Rise - Tutor
  (582, 58200, 393, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Vanillish - Harden - Level 1
  (583, 58300, 106, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vanillish - Uproar - Level 1
  (583, 58300, 253, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vanillish - Astonish - Level 1
  (583, 58300, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vanillish - Icicle Spear - Level 1
  (583, 58300, 333, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vanillish - Harden - Level 4
  (583, 58300, 106, 14, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Vanillish - Astonish - Level 7
  (583, 58300, 310, 14, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Vanillish - Uproar - Level 10
  (583, 58300, 253, 14, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Vanillish - Icy Wind - Level 13
  (583, 58300, 196, 14, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Vanillish - Mist - Level 16
  (583, 58300, 54, 14, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Vanillish - Avalanche - Level 19
  (583, 58300, 419, 14, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Vanillish - Taunt - Level 22
  (583, 58300, 269, 14, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Vanillish - Mirror Shot - Level 26
  (583, 58300, 429, 14, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Vanillish - Acid Armor - Level 31
  (583, 58300, 151, 14, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Vanillish - Ice Beam - Level 36
  (583, 58300, 58, 14, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Vanillish - Hail - Level 42
  (583, 58300, 258, 14, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Vanillish - Mirror Coat - Level 47
  (583, 58300, 243, 14, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Vanillish - Blizzard - Level 53
  (583, 58300, 59, 14, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Vanillish - Sheer Cold - Level 58
  (583, 58300, 329, 14, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Vanillish - Toxic - TM06
  (583, 58300, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 19),
  -- Vanillish - Hail - TM07
  (583, 58300, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 20),
  -- Vanillish - Hidden Power - TM10
  (583, 58300, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 21),
  -- Vanillish - Taunt - TM12
  (583, 58300, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 22),
  -- Vanillish - Ice Beam - TM13
  (583, 58300, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 23),
  -- Vanillish - Blizzard - TM14
  (583, 58300, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 24),
  -- Vanillish - Light Screen - TM16
  (583, 58300, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 25),
  -- Vanillish - Protect - TM17
  (583, 58300, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 26),
  -- Vanillish - Rain Dance - TM18
  (583, 58300, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 27),
  -- Vanillish - Frustration - TM21
  (583, 58300, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 28),
  -- Vanillish - Return - TM27
  (583, 58300, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 29),
  -- Vanillish - Double Team - TM32
  (583, 58300, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 30),
  -- Vanillish - Facade - TM42
  (583, 58300, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 31),
  -- Vanillish - Rest - TM44
  (583, 58300, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 32),
  -- Vanillish - Attract - TM45
  (583, 58300, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 33),
  -- Vanillish - Round - TM48
  (583, 58300, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 34),
  -- Vanillish - Explosion - TM64
  (583, 58300, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 35),
  -- Vanillish - Frost Breath - TM79
  (583, 58300, 524, 14, NULL, 2, NULL, NULL, 14002079, NULL, 36),
  -- Vanillish - Swagger - TM87
  (583, 58300, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 37),
  -- Vanillish - Sleep Talk - TM88
  (583, 58300, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 38),
  -- Vanillish - Substitute - TM90
  (583, 58300, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 39),
  -- Vanillish - Flash Cannon - TM91
  (583, 58300, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 40),
  -- Vanillish - Secret Power - TM94
  (583, 58300, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 41),
  -- Vanillish - Confide - TM100
  (583, 58300, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 42),
  -- Vanillish - Snore - Tutor
  (583, 58300, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 43),
  -- Vanillish - Icy Wind - Tutor
  (583, 58300, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 44),
  -- Vanillish - Uproar - Tutor
  (583, 58300, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 45),
  -- Vanillish - Magic Coat - Tutor
  (583, 58300, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 46),
  -- Vanillish - Signal Beam - Tutor
  (583, 58300, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Vanillish - Iron Defense - Tutor
  (583, 58300, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Vanillish - Water Pulse - Tutor
  (583, 58300, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Vanillish - Magnet Rise - Tutor
  (583, 58300, 393, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Vanilluxe - Harden - Level 1
  (584, 58400, 106, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vanilluxe - Uproar - Level 1
  (584, 58400, 253, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vanilluxe - Astonish - Level 1
  (584, 58400, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vanilluxe - Weather Ball - Level 1
  (584, 58400, 311, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vanilluxe - Sheer Cold - Level 1
  (584, 58400, 329, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vanilluxe - Icicle Spear - Level 1
  (584, 58400, 333, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Vanilluxe - Freeze-Dry - Level 1
  (584, 58400, 573, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Vanilluxe - Harden - Level 4
  (584, 58400, 106, 14, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Vanilluxe - Astonish - Level 7
  (584, 58400, 310, 14, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Vanilluxe - Uproar - Level 10
  (584, 58400, 253, 14, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Vanilluxe - Icy Wind - Level 13
  (584, 58400, 196, 14, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Vanilluxe - Mist - Level 16
  (584, 58400, 54, 14, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Vanilluxe - Avalanche - Level 19
  (584, 58400, 419, 14, NULL, 1, 19, NULL, NULL, NULL, 13),
  -- Vanilluxe - Taunt - Level 22
  (584, 58400, 269, 14, NULL, 1, 22, NULL, NULL, NULL, 14),
  -- Vanilluxe - Mirror Shot - Level 26
  (584, 58400, 429, 14, NULL, 1, 26, NULL, NULL, NULL, 15),
  -- Vanilluxe - Acid Armor - Level 31
  (584, 58400, 151, 14, NULL, 1, 31, NULL, NULL, NULL, 16),
  -- Vanilluxe - Ice Beam - Level 36
  (584, 58400, 58, 14, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Vanilluxe - Hail - Level 42
  (584, 58400, 258, 14, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Vanilluxe - Mirror Coat - Level 50
  (584, 58400, 243, 14, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Vanilluxe - Blizzard - Level 59
  (584, 58400, 59, 14, NULL, 1, 59, NULL, NULL, NULL, 20),
  -- Vanilluxe - Sheer Cold - Level 67
  (584, 58400, 329, 14, NULL, 1, 67, NULL, NULL, NULL, 21),
  -- Vanilluxe - Toxic - TM06
  (584, 58400, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 22),
  -- Vanilluxe - Hail - TM07
  (584, 58400, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 23),
  -- Vanilluxe - Hidden Power - TM10
  (584, 58400, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 24),
  -- Vanilluxe - Taunt - TM12
  (584, 58400, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 25),
  -- Vanilluxe - Ice Beam - TM13
  (584, 58400, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 26),
  -- Vanilluxe - Blizzard - TM14
  (584, 58400, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 27),
  -- Vanilluxe - Hyper Beam - TM15
  (584, 58400, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 28),
  -- Vanilluxe - Light Screen - TM16
  (584, 58400, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 29),
  -- Vanilluxe - Protect - TM17
  (584, 58400, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 30),
  -- Vanilluxe - Rain Dance - TM18
  (584, 58400, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 31),
  -- Vanilluxe - Frustration - TM21
  (584, 58400, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 32),
  -- Vanilluxe - Return - TM27
  (584, 58400, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 33),
  -- Vanilluxe - Double Team - TM32
  (584, 58400, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 34),
  -- Vanilluxe - Facade - TM42
  (584, 58400, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 35),
  -- Vanilluxe - Rest - TM44
  (584, 58400, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 36),
  -- Vanilluxe - Attract - TM45
  (584, 58400, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 37),
  -- Vanilluxe - Round - TM48
  (584, 58400, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 38),
  -- Vanilluxe - Explosion - TM64
  (584, 58400, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 39),
  -- Vanilluxe - Giga Impact - TM68
  (584, 58400, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 40),
  -- Vanilluxe - Frost Breath - TM79
  (584, 58400, 524, 14, NULL, 2, NULL, NULL, 14002079, NULL, 41),
  -- Vanilluxe - Swagger - TM87
  (584, 58400, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 42),
  -- Vanilluxe - Sleep Talk - TM88
  (584, 58400, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 43),
  -- Vanilluxe - Substitute - TM90
  (584, 58400, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 44),
  -- Vanilluxe - Flash Cannon - TM91
  (584, 58400, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 45),
  -- Vanilluxe - Secret Power - TM94
  (584, 58400, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 46),
  -- Vanilluxe - Confide - TM100
  (584, 58400, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 47),
  -- Vanilluxe - Snore - Tutor
  (584, 58400, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Vanilluxe - Icy Wind - Tutor
  (584, 58400, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Vanilluxe - Uproar - Tutor
  (584, 58400, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Vanilluxe - Magic Coat - Tutor
  (584, 58400, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Vanilluxe - Signal Beam - Tutor
  (584, 58400, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Vanilluxe - Iron Defense - Tutor
  (584, 58400, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Vanilluxe - Water Pulse - Tutor
  (584, 58400, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Vanilluxe - Magnet Rise - Tutor
  (584, 58400, 393, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Deerling - Tackle - Level 1
  (585, 58500, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deerling - Camouflage - Level 1
  (585, 58500, 293, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deerling - Growl - Level 4
  (585, 58500, 45, 14, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Deerling - Sand Attack - Level 7
  (585, 58500, 28, 14, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Deerling - Double Kick - Level 10
  (585, 58500, 24, 14, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Deerling - Leech Seed - Level 13
  (585, 58500, 73, 14, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Deerling - Feint Attack - Level 16
  (585, 58500, 185, 14, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Deerling - Take Down - Level 20
  (585, 58500, 36, 14, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Deerling - Jump Kick - Level 24
  (585, 58500, 26, 14, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Deerling - Aromatherapy - Level 28
  (585, 58500, 312, 14, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Deerling - Energy Ball - Level 32
  (585, 58500, 412, 14, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Deerling - Charm - Level 36
  (585, 58500, 204, 14, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Deerling - Nature Power - Level 41
  (585, 58500, 267, 14, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Deerling - Double-Edge - Level 46
  (585, 58500, 38, 14, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Deerling - Solar Beam - Level 51
  (585, 58500, 76, 14, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Deerling - Toxic - TM06
  (585, 58500, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 16),
  -- Deerling - Hidden Power - TM10
  (585, 58500, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Deerling - Sunny Day - TM11
  (585, 58500, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 18),
  -- Deerling - Light Screen - TM16
  (585, 58500, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 19),
  -- Deerling - Protect - TM17
  (585, 58500, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 20),
  -- Deerling - Rain Dance - TM18
  (585, 58500, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 21),
  -- Deerling - Safeguard - TM20
  (585, 58500, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 22),
  -- Deerling - Frustration - TM21
  (585, 58500, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 23),
  -- Deerling - Solar Beam - TM22
  (585, 58500, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 24),
  -- Deerling - Return - TM27
  (585, 58500, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 25),
  -- Deerling - Shadow Ball - TM30
  (585, 58500, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 26),
  -- Deerling - Double Team - TM32
  (585, 58500, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 27),
  -- Deerling - Facade - TM42
  (585, 58500, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 28),
  -- Deerling - Rest - TM44
  (585, 58500, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 29),
  -- Deerling - Attract - TM45
  (585, 58500, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 30),
  -- Deerling - Round - TM48
  (585, 58500, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 31),
  -- Deerling - Echoed Voice - TM49
  (585, 58500, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 32),
  -- Deerling - Energy Ball - TM53
  (585, 58500, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 33),
  -- Deerling - Retaliate - TM67
  (585, 58500, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 34),
  -- Deerling - Flash - TM70
  (585, 58500, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 35),
  -- Deerling - Thunder Wave - TM73
  (585, 58500, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 36),
  -- Deerling - Grass Knot - TM86
  (585, 58500, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 37),
  -- Deerling - Swagger - TM87
  (585, 58500, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 38),
  -- Deerling - Sleep Talk - TM88
  (585, 58500, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 39),
  -- Deerling - Substitute - TM90
  (585, 58500, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 40),
  -- Deerling - Wild Charge - TM93
  (585, 58500, 528, 14, NULL, 2, NULL, NULL, 14002093, NULL, 41),
  -- Deerling - Secret Power - TM94
  (585, 58500, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 42),
  -- Deerling - Nature Power - TM96
  (585, 58500, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 43),
  -- Deerling - Confide - TM100
  (585, 58500, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 44),
  -- Deerling - Agility - Egg
  (585, 58500, 97, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Deerling - Sleep Talk - Egg
  (585, 58500, 214, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Deerling - Baton Pass - Egg
  (585, 58500, 226, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Deerling - Synthesis - Egg
  (585, 58500, 235, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Deerling - Fake Tears - Egg
  (585, 58500, 313, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Deerling - Odor Sleuth - Egg
  (585, 58500, 316, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Deerling - Grass Whistle - Egg
  (585, 58500, 320, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Deerling - Natural Gift - Egg
  (585, 58500, 363, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Deerling - Worry Seed - Egg
  (585, 58500, 388, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Deerling - Snore - Tutor
  (585, 58500, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Deerling - Giga Drain - Tutor
  (585, 58500, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Deerling - Synthesis - Tutor
  (585, 58500, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Deerling - Bounce - Tutor
  (585, 58500, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Deerling - Last Resort - Tutor
  (585, 58500, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Deerling - Worry Seed - Tutor
  (585, 58500, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Deerling - Seed Bomb - Tutor
  (585, 58500, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Sawsbuck - Sand Attack - Level 1
  (586, 58600, 28, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sawsbuck - Tackle - Level 1
  (586, 58600, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sawsbuck - Growl - Level 1
  (586, 58600, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sawsbuck - Megahorn - Level 1
  (586, 58600, 224, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sawsbuck - Camouflage - Level 1
  (586, 58600, 293, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sawsbuck - Growl - Level 4
  (586, 58600, 45, 14, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Sawsbuck - Sand Attack - Level 7
  (586, 58600, 28, 14, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Sawsbuck - Double Kick - Level 10
  (586, 58600, 24, 14, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Sawsbuck - Leech Seed - Level 13
  (586, 58600, 73, 14, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Sawsbuck - Feint Attack - Level 16
  (586, 58600, 185, 14, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Sawsbuck - Take Down - Level 20
  (586, 58600, 36, 14, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Sawsbuck - Jump Kick - Level 24
  (586, 58600, 26, 14, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Sawsbuck - Aromatherapy - Level 28
  (586, 58600, 312, 14, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Sawsbuck - Energy Ball - Level 32
  (586, 58600, 412, 14, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Sawsbuck - Charm - Level 36
  (586, 58600, 204, 14, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Sawsbuck - Horn Leech - Level 37
  (586, 58600, 532, 14, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Sawsbuck - Nature Power - Level 44
  (586, 58600, 267, 14, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Sawsbuck - Double-Edge - Level 52
  (586, 58600, 38, 14, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Sawsbuck - Solar Beam - Level 60
  (586, 58600, 76, 14, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Sawsbuck - Toxic - TM06
  (586, 58600, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 20),
  -- Sawsbuck - Hidden Power - TM10
  (586, 58600, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 21),
  -- Sawsbuck - Sunny Day - TM11
  (586, 58600, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 22),
  -- Sawsbuck - Hyper Beam - TM15
  (586, 58600, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 23),
  -- Sawsbuck - Light Screen - TM16
  (586, 58600, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 24),
  -- Sawsbuck - Protect - TM17
  (586, 58600, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 25),
  -- Sawsbuck - Rain Dance - TM18
  (586, 58600, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 26),
  -- Sawsbuck - Safeguard - TM20
  (586, 58600, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 27),
  -- Sawsbuck - Frustration - TM21
  (586, 58600, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 28),
  -- Sawsbuck - Solar Beam - TM22
  (586, 58600, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 29),
  -- Sawsbuck - Return - TM27
  (586, 58600, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 30),
  -- Sawsbuck - Shadow Ball - TM30
  (586, 58600, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 31),
  -- Sawsbuck - Double Team - TM32
  (586, 58600, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 32),
  -- Sawsbuck - Facade - TM42
  (586, 58600, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 33),
  -- Sawsbuck - Rest - TM44
  (586, 58600, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 34),
  -- Sawsbuck - Attract - TM45
  (586, 58600, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 35),
  -- Sawsbuck - Round - TM48
  (586, 58600, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 36),
  -- Sawsbuck - Echoed Voice - TM49
  (586, 58600, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 37),
  -- Sawsbuck - Energy Ball - TM53
  (586, 58600, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 38),
  -- Sawsbuck - Retaliate - TM67
  (586, 58600, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 39),
  -- Sawsbuck - Giga Impact - TM68
  (586, 58600, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 40),
  -- Sawsbuck - Flash - TM70
  (586, 58600, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 41),
  -- Sawsbuck - Thunder Wave - TM73
  (586, 58600, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 42),
  -- Sawsbuck - Swords Dance - TM75
  (586, 58600, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 43),
  -- Sawsbuck - Grass Knot - TM86
  (586, 58600, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 44),
  -- Sawsbuck - Swagger - TM87
  (586, 58600, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 45),
  -- Sawsbuck - Sleep Talk - TM88
  (586, 58600, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 46),
  -- Sawsbuck - Substitute - TM90
  (586, 58600, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 47),
  -- Sawsbuck - Wild Charge - TM93
  (586, 58600, 528, 14, NULL, 2, NULL, NULL, 14002093, NULL, 48),
  -- Sawsbuck - Secret Power - TM94
  (586, 58600, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 49),
  -- Sawsbuck - Nature Power - TM96
  (586, 58600, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 50),
  -- Sawsbuck - Confide - TM100
  (586, 58600, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 51),
  -- Sawsbuck - Cut - HM01
  (586, 58600, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 52),
  -- Sawsbuck - Rock Smash - HM06
  (586, 58600, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 53),
  -- Sawsbuck - Snore - Tutor
  (586, 58600, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Sawsbuck - Giga Drain - Tutor
  (586, 58600, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Sawsbuck - Synthesis - Tutor
  (586, 58600, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Sawsbuck - Bounce - Tutor
  (586, 58600, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Sawsbuck - Last Resort - Tutor
  (586, 58600, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Sawsbuck - Worry Seed - Tutor
  (586, 58600, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Sawsbuck - Seed Bomb - Tutor
  (586, 58600, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Emolga - Thunder Shock - Level 1
  (587, 58700, 84, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Emolga - Quick Attack - Level 4
  (587, 58700, 98, 14, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Emolga - Tail Whip - Level 7
  (587, 58700, 39, 14, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Emolga - Charge - Level 10
  (587, 58700, 268, 14, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Emolga - Spark - Level 13
  (587, 58700, 209, 14, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Emolga - Nuzzle - Level 15
  (587, 58700, 609, 14, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Emolga - Pursuit - Level 16
  (587, 58700, 228, 14, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Emolga - Double Team - Level 19
  (587, 58700, 104, 14, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Emolga - Shock Wave - Level 22
  (587, 58700, 351, 14, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Emolga - Electro Ball - Level 26
  (587, 58700, 486, 14, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Emolga - Acrobatics - Level 30
  (587, 58700, 512, 14, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Emolga - Light Screen - Level 34
  (587, 58700, 113, 14, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Emolga - Encore - Level 38
  (587, 58700, 227, 14, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Emolga - Volt Switch - Level 42
  (587, 58700, 521, 14, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Emolga - Agility - Level 46
  (587, 58700, 97, 14, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Emolga - Discharge - Level 50
  (587, 58700, 435, 14, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Emolga - Toxic - TM06
  (587, 58700, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Emolga - Hidden Power - TM10
  (587, 58700, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Emolga - Taunt - TM12
  (587, 58700, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 19),
  -- Emolga - Light Screen - TM16
  (587, 58700, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 20),
  -- Emolga - Protect - TM17
  (587, 58700, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 21),
  -- Emolga - Rain Dance - TM18
  (587, 58700, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 22),
  -- Emolga - Roost - TM19
  (587, 58700, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 23),
  -- Emolga - Frustration - TM21
  (587, 58700, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 24),
  -- Emolga - Thunderbolt - TM24
  (587, 58700, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 25),
  -- Emolga - Thunder - TM25
  (587, 58700, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 26),
  -- Emolga - Return - TM27
  (587, 58700, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 27),
  -- Emolga - Double Team - TM32
  (587, 58700, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 28),
  -- Emolga - Aerial Ace - TM40
  (587, 58700, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 29),
  -- Emolga - Facade - TM42
  (587, 58700, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 30),
  -- Emolga - Rest - TM44
  (587, 58700, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 31),
  -- Emolga - Attract - TM45
  (587, 58700, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 32),
  -- Emolga - Round - TM48
  (587, 58700, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 33),
  -- Emolga - Fling - TM56
  (587, 58700, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 34),
  -- Emolga - Charge Beam - TM57
  (587, 58700, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 35),
  -- Emolga - Acrobatics - TM62
  (587, 58700, 512, 14, NULL, 2, NULL, NULL, 14002062, NULL, 36),
  -- Emolga - Flash - TM70
  (587, 58700, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 37),
  -- Emolga - Volt Switch - TM72
  (587, 58700, 521, 14, NULL, 2, NULL, NULL, 14002072, NULL, 38),
  -- Emolga - Thunder Wave - TM73
  (587, 58700, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 39),
  -- Emolga - Swagger - TM87
  (587, 58700, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 40),
  -- Emolga - Sleep Talk - TM88
  (587, 58700, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 41),
  -- Emolga - U-turn - TM89
  (587, 58700, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 42),
  -- Emolga - Substitute - TM90
  (587, 58700, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 43),
  -- Emolga - Wild Charge - TM93
  (587, 58700, 528, 14, NULL, 2, NULL, NULL, 14002093, NULL, 44),
  -- Emolga - Secret Power - TM94
  (587, 58700, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 45),
  -- Emolga - Confide - TM100
  (587, 58700, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 46),
  -- Emolga - Cut - HM01
  (587, 58700, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 47),
  -- Emolga - Charm - Egg
  (587, 58700, 204, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Emolga - Baton Pass - Egg
  (587, 58700, 226, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Emolga - Iron Tail - Egg
  (587, 58700, 231, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Emolga - Astonish - Egg
  (587, 58700, 310, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Emolga - Tickle - Egg
  (587, 58700, 321, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Emolga - Covet - Egg
  (587, 58700, 343, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Emolga - Shock Wave - Egg
  (587, 58700, 351, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Emolga - Roost - Egg
  (587, 58700, 355, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Emolga - Air Slash - Egg
  (587, 58700, 403, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Emolga - Ion Deluge - Egg
  (587, 58700, 569, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Emolga - Snore - Tutor
  (587, 58700, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Emolga - Iron Tail - Tutor
  (587, 58700, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Emolga - Helping Hand - Tutor
  (587, 58700, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Emolga - Knock Off - Tutor
  (587, 58700, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Emolga - Signal Beam - Tutor
  (587, 58700, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Emolga - Covet - Tutor
  (587, 58700, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Emolga - Shock Wave - Tutor
  (587, 58700, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Emolga - Tailwind - Tutor
  (587, 58700, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Emolga - Last Resort - Tutor
  (587, 58700, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Emolga - Electroweb - Tutor
  (587, 58700, 527, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Karrablast - Peck - Level 1
  (588, 58800, 64, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Karrablast - Leer - Level 4
  (588, 58800, 43, 14, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Karrablast - Endure - Level 8
  (588, 58800, 203, 14, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Karrablast - Fury Cutter - Level 13
  (588, 58800, 210, 14, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Karrablast - Fury Attack - Level 16
  (588, 58800, 31, 14, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Karrablast - Headbutt - Level 20
  (588, 58800, 29, 14, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Karrablast - False Swipe - Level 25
  (588, 58800, 206, 14, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Karrablast - Bug Buzz - Level 28
  (588, 58800, 405, 14, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Karrablast - Slash - Level 32
  (588, 58800, 163, 14, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Karrablast - Take Down - Level 37
  (588, 58800, 36, 14, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Karrablast - Scary Face - Level 40
  (588, 58800, 184, 14, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Karrablast - X-Scissor - Level 44
  (588, 58800, 404, 14, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Karrablast - Flail - Level 49
  (588, 58800, 175, 14, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Karrablast - Swords Dance - Level 52
  (588, 58800, 14, 14, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Karrablast - Double-Edge - Level 56
  (588, 58800, 38, 14, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Karrablast - Toxic - TM06
  (588, 58800, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 16),
  -- Karrablast - Hidden Power - TM10
  (588, 58800, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Karrablast - Protect - TM17
  (588, 58800, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 18),
  -- Karrablast - Rain Dance - TM18
  (588, 58800, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 19),
  -- Karrablast - Frustration - TM21
  (588, 58800, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 20),
  -- Karrablast - Return - TM27
  (588, 58800, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 21),
  -- Karrablast - Double Team - TM32
  (588, 58800, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 22),
  -- Karrablast - Aerial Ace - TM40
  (588, 58800, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 23),
  -- Karrablast - Facade - TM42
  (588, 58800, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 24),
  -- Karrablast - Rest - TM44
  (588, 58800, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 25),
  -- Karrablast - Attract - TM45
  (588, 58800, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 26),
  -- Karrablast - Round - TM48
  (588, 58800, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 27),
  -- Karrablast - Energy Ball - TM53
  (588, 58800, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 28),
  -- Karrablast - False Swipe - TM54
  (588, 58800, 206, 14, NULL, 2, NULL, NULL, 14002054, NULL, 29),
  -- Karrablast - Swords Dance - TM75
  (588, 58800, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 30),
  -- Karrablast - Struggle Bug - TM76
  (588, 58800, 522, 14, NULL, 2, NULL, NULL, 14002076, NULL, 31),
  -- Karrablast - X-Scissor - TM81
  (588, 58800, 404, 14, NULL, 2, NULL, NULL, 14002081, NULL, 32),
  -- Karrablast - Infestation - TM83
  (588, 58800, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 33),
  -- Karrablast - Poison Jab - TM84
  (588, 58800, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 34),
  -- Karrablast - Swagger - TM87
  (588, 58800, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 35),
  -- Karrablast - Sleep Talk - TM88
  (588, 58800, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 36),
  -- Karrablast - Substitute - TM90
  (588, 58800, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 37),
  -- Karrablast - Secret Power - TM94
  (588, 58800, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 38),
  -- Karrablast - Confide - TM100
  (588, 58800, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 39),
  -- Karrablast - Cut - HM01
  (588, 58800, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 40),
  -- Karrablast - Horn Attack - Egg
  (588, 58800, 30, 14, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Karrablast - Counter - Egg
  (588, 58800, 68, 14, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Karrablast - Screech - Egg
  (588, 58800, 103, 14, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Karrablast - Feint Attack - Egg
  (588, 58800, 185, 14, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Karrablast - Megahorn - Egg
  (588, 58800, 224, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Karrablast - Pursuit - Egg
  (588, 58800, 228, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Karrablast - Knock Off - Egg
  (588, 58800, 282, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Karrablast - Bug Bite - Egg
  (588, 58800, 450, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Karrablast - Drill Run - Egg
  (588, 58800, 529, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Karrablast - Snore - Tutor
  (588, 58800, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Karrablast - Giga Drain - Tutor
  (588, 58800, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Karrablast - Knock Off - Tutor
  (588, 58800, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Karrablast - Signal Beam - Tutor
  (588, 58800, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Karrablast - Iron Defense - Tutor
  (588, 58800, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Karrablast - Bug Bite - Tutor
  (588, 58800, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Karrablast - Drill Run - Tutor
  (588, 58800, 529, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Escavalier - Double-Edge - Level 1
  (589, 58900, 38, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Escavalier - Twineedle - Level 1
  (589, 58900, 41, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Escavalier - Leer - Level 1
  (589, 58900, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Escavalier - Peck - Level 1
  (589, 58900, 64, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Escavalier - Quick Guard - Level 1
  (589, 58900, 501, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Escavalier - Fell Stinger - Level 1
  (589, 58900, 565, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Escavalier - Leer - Level 4
  (589, 58900, 43, 14, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Escavalier - Quick Guard - Level 8
  (589, 58900, 501, 14, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Escavalier - Twineedle - Level 13
  (589, 58900, 41, 14, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Escavalier - Fury Attack - Level 16
  (589, 58900, 31, 14, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Escavalier - Headbutt - Level 20
  (589, 58900, 29, 14, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Escavalier - False Swipe - Level 25
  (589, 58900, 206, 14, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Escavalier - Bug Buzz - Level 28
  (589, 58900, 405, 14, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Escavalier - Slash - Level 32
  (589, 58900, 163, 14, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Escavalier - Iron Head - Level 37
  (589, 58900, 442, 14, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Escavalier - Iron Defense - Level 40
  (589, 58900, 334, 14, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Escavalier - X-Scissor - Level 44
  (589, 58900, 404, 14, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Escavalier - Reversal - Level 49
  (589, 58900, 179, 14, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Escavalier - Swords Dance - Level 52
  (589, 58900, 14, 14, NULL, 1, 52, NULL, NULL, NULL, 19),
  -- Escavalier - Giga Impact - Level 56
  (589, 58900, 416, 14, NULL, 1, 56, NULL, NULL, NULL, 20),
  -- Escavalier - Fell Stinger - Level 60
  (589, 58900, 565, 14, NULL, 1, 60, NULL, NULL, NULL, 21),
  -- Escavalier - Toxic - TM06
  (589, 58900, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 22),
  -- Escavalier - Hidden Power - TM10
  (589, 58900, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 23),
  -- Escavalier - Hyper Beam - TM15
  (589, 58900, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 24),
  -- Escavalier - Protect - TM17
  (589, 58900, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 25),
  -- Escavalier - Rain Dance - TM18
  (589, 58900, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 26),
  -- Escavalier - Frustration - TM21
  (589, 58900, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 27),
  -- Escavalier - Return - TM27
  (589, 58900, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 28),
  -- Escavalier - Double Team - TM32
  (589, 58900, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 29),
  -- Escavalier - Aerial Ace - TM40
  (589, 58900, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 30),
  -- Escavalier - Facade - TM42
  (589, 58900, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 31),
  -- Escavalier - Rest - TM44
  (589, 58900, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 32),
  -- Escavalier - Attract - TM45
  (589, 58900, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 33),
  -- Escavalier - Round - TM48
  (589, 58900, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 34),
  -- Escavalier - Focus Blast - TM52
  (589, 58900, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 35),
  -- Escavalier - Energy Ball - TM53
  (589, 58900, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 36),
  -- Escavalier - False Swipe - TM54
  (589, 58900, 206, 14, NULL, 2, NULL, NULL, 14002054, NULL, 37),
  -- Escavalier - Giga Impact - TM68
  (589, 58900, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 38),
  -- Escavalier - Swords Dance - TM75
  (589, 58900, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 39),
  -- Escavalier - Struggle Bug - TM76
  (589, 58900, 522, 14, NULL, 2, NULL, NULL, 14002076, NULL, 40),
  -- Escavalier - X-Scissor - TM81
  (589, 58900, 404, 14, NULL, 2, NULL, NULL, 14002081, NULL, 41),
  -- Escavalier - Infestation - TM83
  (589, 58900, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 42),
  -- Escavalier - Poison Jab - TM84
  (589, 58900, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 43),
  -- Escavalier - Swagger - TM87
  (589, 58900, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 44),
  -- Escavalier - Sleep Talk - TM88
  (589, 58900, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 45),
  -- Escavalier - Substitute - TM90
  (589, 58900, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 46),
  -- Escavalier - Secret Power - TM94
  (589, 58900, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 47),
  -- Escavalier - Confide - TM100
  (589, 58900, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 48),
  -- Escavalier - Cut - HM01
  (589, 58900, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 49),
  -- Escavalier - Rock Smash - HM06
  (589, 58900, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 50),
  -- Escavalier - Snore - Tutor
  (589, 58900, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Escavalier - Giga Drain - Tutor
  (589, 58900, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Escavalier - Knock Off - Tutor
  (589, 58900, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Escavalier - Signal Beam - Tutor
  (589, 58900, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Escavalier - Iron Defense - Tutor
  (589, 58900, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Escavalier - Iron Head - Tutor
  (589, 58900, 442, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Escavalier - Bug Bite - Tutor
  (589, 58900, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Escavalier - Drill Run - Tutor
  (589, 58900, 529, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Foongus - Absorb - Level 1
  (590, 59000, 71, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Foongus - Growth - Level 6
  (590, 59000, 74, 14, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Foongus - Astonish - Level 8
  (590, 59000, 310, 14, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Foongus - Bide - Level 12
  (590, 59000, 117, 14, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Foongus - Mega Drain - Level 15
  (590, 59000, 72, 14, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Foongus - Ingrain - Level 18
  (590, 59000, 275, 14, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Foongus - Feint Attack - Level 20
  (590, 59000, 185, 14, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Foongus - Sweet Scent - Level 24
  (590, 59000, 230, 14, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Foongus - Giga Drain - Level 28
  (590, 59000, 202, 14, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Foongus - Toxic - Level 32
  (590, 59000, 92, 14, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Foongus - Synthesis - Level 35
  (590, 59000, 235, 14, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Foongus - Clear Smog - Level 39
  (590, 59000, 499, 14, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Foongus - Solar Beam - Level 43
  (590, 59000, 76, 14, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Foongus - Rage Powder - Level 45
  (590, 59000, 476, 14, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Foongus - Spore - Level 50
  (590, 59000, 147, 14, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Foongus - Toxic - TM06
  (590, 59000, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 16),
  -- Foongus - Venoshock - TM09
  (590, 59000, 474, 14, NULL, 2, NULL, NULL, 14002009, NULL, 17),
  -- Foongus - Hidden Power - TM10
  (590, 59000, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Foongus - Sunny Day - TM11
  (590, 59000, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 19),
  -- Foongus - Protect - TM17
  (590, 59000, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 20),
  -- Foongus - Rain Dance - TM18
  (590, 59000, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 21),
  -- Foongus - Frustration - TM21
  (590, 59000, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 22),
  -- Foongus - Solar Beam - TM22
  (590, 59000, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 23),
  -- Foongus - Return - TM27
  (590, 59000, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 24),
  -- Foongus - Double Team - TM32
  (590, 59000, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 25),
  -- Foongus - Sludge Bomb - TM36
  (590, 59000, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 26),
  -- Foongus - Facade - TM42
  (590, 59000, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 27),
  -- Foongus - Rest - TM44
  (590, 59000, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 28),
  -- Foongus - Attract - TM45
  (590, 59000, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 29),
  -- Foongus - Round - TM48
  (590, 59000, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 30),
  -- Foongus - Energy Ball - TM53
  (590, 59000, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 31),
  -- Foongus - Payback - TM66
  (590, 59000, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 32),
  -- Foongus - Flash - TM70
  (590, 59000, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 33),
  -- Foongus - Grass Knot - TM86
  (590, 59000, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 34),
  -- Foongus - Swagger - TM87
  (590, 59000, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 35),
  -- Foongus - Sleep Talk - TM88
  (590, 59000, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 36),
  -- Foongus - Substitute - TM90
  (590, 59000, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 37),
  -- Foongus - Secret Power - TM94
  (590, 59000, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 38),
  -- Foongus - Nature Power - TM96
  (590, 59000, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 39),
  -- Foongus - Confide - TM100
  (590, 59000, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 40),
  -- Foongus - Body Slam - Egg
  (590, 59000, 34, 14, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Foongus - Growth - Egg
  (590, 59000, 74, 14, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Foongus - Poison Powder - Egg
  (590, 59000, 77, 14, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Foongus - Stun Spore - Egg
  (590, 59000, 78, 14, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Foongus - Defense Curl - Egg
  (590, 59000, 111, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Foongus - Endure - Egg
  (590, 59000, 203, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Foongus - Rollout - Egg
  (590, 59000, 205, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Foongus - Gastro Acid - Egg
  (590, 59000, 380, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Foongus - Snore - Tutor
  (590, 59000, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Foongus - Giga Drain - Tutor
  (590, 59000, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Foongus - Synthesis - Tutor
  (590, 59000, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Foongus - Gastro Acid - Tutor
  (590, 59000, 380, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Foongus - Worry Seed - Tutor
  (590, 59000, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Foongus - Seed Bomb - Tutor
  (590, 59000, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Foongus - Foul Play - Tutor
  (590, 59000, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Foongus - After You - Tutor
  (590, 59000, 495, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Amoonguss - Absorb - Level 1
  (591, 59100, 71, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Amoonguss - Growth - Level 1
  (591, 59100, 74, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Amoonguss - Bide - Level 1
  (591, 59100, 117, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Amoonguss - Astonish - Level 1
  (591, 59100, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Amoonguss - Growth - Level 6
  (591, 59100, 74, 14, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Amoonguss - Astonish - Level 8
  (591, 59100, 310, 14, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Amoonguss - Bide - Level 12
  (591, 59100, 117, 14, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Amoonguss - Mega Drain - Level 15
  (591, 59100, 72, 14, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Amoonguss - Ingrain - Level 18
  (591, 59100, 275, 14, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Amoonguss - Feint Attack - Level 20
  (591, 59100, 185, 14, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Amoonguss - Sweet Scent - Level 24
  (591, 59100, 230, 14, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Amoonguss - Giga Drain - Level 28
  (591, 59100, 202, 14, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Amoonguss - Toxic - Level 32
  (591, 59100, 92, 14, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Amoonguss - Synthesis - Level 35
  (591, 59100, 235, 14, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Amoonguss - Clear Smog - Level 43
  (591, 59100, 499, 14, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Amoonguss - Solar Beam - Level 49
  (591, 59100, 76, 14, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Amoonguss - Rage Powder - Level 54
  (591, 59100, 476, 14, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Amoonguss - Spore - Level 62
  (591, 59100, 147, 14, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Amoonguss - Toxic - TM06
  (591, 59100, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 19),
  -- Amoonguss - Venoshock - TM09
  (591, 59100, 474, 14, NULL, 2, NULL, NULL, 14002009, NULL, 20),
  -- Amoonguss - Hidden Power - TM10
  (591, 59100, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 21),
  -- Amoonguss - Sunny Day - TM11
  (591, 59100, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 22),
  -- Amoonguss - Hyper Beam - TM15
  (591, 59100, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 23),
  -- Amoonguss - Protect - TM17
  (591, 59100, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 24),
  -- Amoonguss - Rain Dance - TM18
  (591, 59100, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 25),
  -- Amoonguss - Frustration - TM21
  (591, 59100, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 26),
  -- Amoonguss - Solar Beam - TM22
  (591, 59100, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 27),
  -- Amoonguss - Return - TM27
  (591, 59100, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 28),
  -- Amoonguss - Double Team - TM32
  (591, 59100, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 29),
  -- Amoonguss - Sludge Bomb - TM36
  (591, 59100, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 30),
  -- Amoonguss - Facade - TM42
  (591, 59100, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 31),
  -- Amoonguss - Rest - TM44
  (591, 59100, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 32),
  -- Amoonguss - Attract - TM45
  (591, 59100, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 33),
  -- Amoonguss - Round - TM48
  (591, 59100, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 34),
  -- Amoonguss - Energy Ball - TM53
  (591, 59100, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 35),
  -- Amoonguss - Payback - TM66
  (591, 59100, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 36),
  -- Amoonguss - Giga Impact - TM68
  (591, 59100, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 37),
  -- Amoonguss - Flash - TM70
  (591, 59100, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 38),
  -- Amoonguss - Grass Knot - TM86
  (591, 59100, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 39),
  -- Amoonguss - Swagger - TM87
  (591, 59100, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 40),
  -- Amoonguss - Sleep Talk - TM88
  (591, 59100, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 41),
  -- Amoonguss - Substitute - TM90
  (591, 59100, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 42),
  -- Amoonguss - Secret Power - TM94
  (591, 59100, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 43),
  -- Amoonguss - Nature Power - TM96
  (591, 59100, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 44),
  -- Amoonguss - Confide - TM100
  (591, 59100, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 45),
  -- Amoonguss - Snore - Tutor
  (591, 59100, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 46),
  -- Amoonguss - Giga Drain - Tutor
  (591, 59100, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Amoonguss - Synthesis - Tutor
  (591, 59100, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Amoonguss - Gastro Acid - Tutor
  (591, 59100, 380, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Amoonguss - Worry Seed - Tutor
  (591, 59100, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Amoonguss - Seed Bomb - Tutor
  (591, 59100, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Amoonguss - Foul Play - Tutor
  (591, 59100, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Amoonguss - After You - Tutor
  (591, 59100, 495, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Frillish - Bubble - Level 1
  (592, 59200, 145, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Frillish - Water Sport - Level 1
  (592, 59200, 346, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Frillish - Absorb - Level 5
  (592, 59200, 71, 14, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Frillish - Night Shade - Level 9
  (592, 59200, 101, 14, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Frillish - Bubble Beam - Level 13
  (592, 59200, 61, 14, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Frillish - Recover - Level 17
  (592, 59200, 105, 14, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Frillish - Water Pulse - Level 22
  (592, 59200, 352, 14, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Frillish - Ominous Wind - Level 27
  (592, 59200, 466, 14, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Frillish - Brine - Level 32
  (592, 59200, 362, 14, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Frillish - Rain Dance - Level 37
  (592, 59200, 240, 14, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Frillish - Hex - Level 43
  (592, 59200, 506, 14, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Frillish - Hydro Pump - Level 49
  (592, 59200, 56, 14, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Frillish - Wring Out - Level 55
  (592, 59200, 378, 14, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Frillish - Water Spout - Level 61
  (592, 59200, 323, 14, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Frillish - Toxic - TM06
  (592, 59200, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 15),
  -- Frillish - Hail - TM07
  (592, 59200, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 16),
  -- Frillish - Hidden Power - TM10
  (592, 59200, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Frillish - Taunt - TM12
  (592, 59200, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 18),
  -- Frillish - Ice Beam - TM13
  (592, 59200, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 19),
  -- Frillish - Blizzard - TM14
  (592, 59200, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 20),
  -- Frillish - Protect - TM17
  (592, 59200, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 21),
  -- Frillish - Rain Dance - TM18
  (592, 59200, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 22),
  -- Frillish - Safeguard - TM20
  (592, 59200, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 23),
  -- Frillish - Frustration - TM21
  (592, 59200, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 24),
  -- Frillish - Return - TM27
  (592, 59200, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 25),
  -- Frillish - Psychic - TM29
  (592, 59200, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 26),
  -- Frillish - Shadow Ball - TM30
  (592, 59200, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 27),
  -- Frillish - Double Team - TM32
  (592, 59200, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 28),
  -- Frillish - Sludge Wave - TM34
  (592, 59200, 482, 14, NULL, 2, NULL, NULL, 14002034, NULL, 29),
  -- Frillish - Sludge Bomb - TM36
  (592, 59200, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 30),
  -- Frillish - Facade - TM42
  (592, 59200, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 31),
  -- Frillish - Rest - TM44
  (592, 59200, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 32),
  -- Frillish - Attract - TM45
  (592, 59200, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 33),
  -- Frillish - Round - TM48
  (592, 59200, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 34),
  -- Frillish - Energy Ball - TM53
  (592, 59200, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 35),
  -- Frillish - Scald - TM55
  (592, 59200, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 36),
  -- Frillish - Will-O-Wisp - TM61
  (592, 59200, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 37),
  -- Frillish - Flash - TM70
  (592, 59200, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 38),
  -- Frillish - Psych Up - TM77
  (592, 59200, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 39),
  -- Frillish - Dream Eater - TM85
  (592, 59200, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 40),
  -- Frillish - Swagger - TM87
  (592, 59200, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 41),
  -- Frillish - Sleep Talk - TM88
  (592, 59200, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 42),
  -- Frillish - Substitute - TM90
  (592, 59200, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 43),
  -- Frillish - Trick Room - TM92
  (592, 59200, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 44),
  -- Frillish - Secret Power - TM94
  (592, 59200, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 45),
  -- Frillish - Dark Pulse - TM97
  (592, 59200, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 46),
  -- Frillish - Dazzling Gleam - TM99
  (592, 59200, 605, 14, NULL, 2, NULL, NULL, 14002099, NULL, 47),
  -- Frillish - Confide - TM100
  (592, 59200, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 48),
  -- Frillish - Surf - HM03
  (592, 59200, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 49),
  -- Frillish - Waterfall - HM05
  (592, 59200, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 50),
  -- Frillish - Dive - HM07
  (592, 59200, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 51),
  -- Frillish - Mist - Egg
  (592, 59200, 54, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Frillish - Recover - Egg
  (592, 59200, 105, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Frillish - Confuse Ray - Egg
  (592, 59200, 109, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Frillish - Constrict - Egg
  (592, 59200, 132, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Frillish - Acid Armor - Egg
  (592, 59200, 151, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Frillish - Pain Split - Egg
  (592, 59200, 220, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Frillish - Bind - Tutor
  (592, 59200, 20, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Frillish - Snore - Tutor
  (592, 59200, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Frillish - Spite - Tutor
  (592, 59200, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Frillish - Icy Wind - Tutor
  (592, 59200, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Frillish - Giga Drain - Tutor
  (592, 59200, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Frillish - Pain Split - Tutor
  (592, 59200, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Frillish - Trick - Tutor
  (592, 59200, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Frillish - Magic Coat - Tutor
  (592, 59200, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Frillish - Shock Wave - Tutor
  (592, 59200, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Frillish - Water Pulse - Tutor
  (592, 59200, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Jellicent - Absorb - Level 1
  (593, 59300, 71, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jellicent - Night Shade - Level 1
  (593, 59300, 101, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jellicent - Bubble - Level 1
  (593, 59300, 145, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jellicent - Water Spout - Level 1
  (593, 59300, 323, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jellicent - Water Sport - Level 1
  (593, 59300, 346, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Jellicent - Wring Out - Level 1
  (593, 59300, 378, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Jellicent - Absorb - Level 5
  (593, 59300, 71, 14, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Jellicent - Night Shade - Level 9
  (593, 59300, 101, 14, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Jellicent - Bubble Beam - Level 13
  (593, 59300, 61, 14, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Jellicent - Recover - Level 17
  (593, 59300, 105, 14, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Jellicent - Water Pulse - Level 22
  (593, 59300, 352, 14, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Jellicent - Ominous Wind - Level 27
  (593, 59300, 466, 14, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Jellicent - Brine - Level 32
  (593, 59300, 362, 14, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Jellicent - Rain Dance - Level 37
  (593, 59300, 240, 14, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Jellicent - Hex - Level 45
  (593, 59300, 506, 14, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Jellicent - Hydro Pump - Level 53
  (593, 59300, 56, 14, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Jellicent - Wring Out - Level 61
  (593, 59300, 378, 14, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Jellicent - Water Spout - Level 69
  (593, 59300, 323, 14, NULL, 1, 69, NULL, NULL, NULL, 18),
  -- Jellicent - Toxic - TM06
  (593, 59300, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 19),
  -- Jellicent - Hail - TM07
  (593, 59300, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 20),
  -- Jellicent - Hidden Power - TM10
  (593, 59300, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 21),
  -- Jellicent - Taunt - TM12
  (593, 59300, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 22),
  -- Jellicent - Ice Beam - TM13
  (593, 59300, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 23),
  -- Jellicent - Blizzard - TM14
  (593, 59300, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 24),
  -- Jellicent - Hyper Beam - TM15
  (593, 59300, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 25),
  -- Jellicent - Protect - TM17
  (593, 59300, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 26),
  -- Jellicent - Rain Dance - TM18
  (593, 59300, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 27),
  -- Jellicent - Safeguard - TM20
  (593, 59300, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 28),
  -- Jellicent - Frustration - TM21
  (593, 59300, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 29),
  -- Jellicent - Return - TM27
  (593, 59300, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 30),
  -- Jellicent - Psychic - TM29
  (593, 59300, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 31),
  -- Jellicent - Shadow Ball - TM30
  (593, 59300, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 32),
  -- Jellicent - Double Team - TM32
  (593, 59300, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 33),
  -- Jellicent - Sludge Wave - TM34
  (593, 59300, 482, 14, NULL, 2, NULL, NULL, 14002034, NULL, 34),
  -- Jellicent - Sludge Bomb - TM36
  (593, 59300, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 35),
  -- Jellicent - Facade - TM42
  (593, 59300, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 36),
  -- Jellicent - Rest - TM44
  (593, 59300, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 37),
  -- Jellicent - Attract - TM45
  (593, 59300, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 38),
  -- Jellicent - Round - TM48
  (593, 59300, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 39),
  -- Jellicent - Energy Ball - TM53
  (593, 59300, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 40),
  -- Jellicent - Scald - TM55
  (593, 59300, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 41),
  -- Jellicent - Will-O-Wisp - TM61
  (593, 59300, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 42),
  -- Jellicent - Giga Impact - TM68
  (593, 59300, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 43),
  -- Jellicent - Flash - TM70
  (593, 59300, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 44),
  -- Jellicent - Psych Up - TM77
  (593, 59300, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 45),
  -- Jellicent - Dream Eater - TM85
  (593, 59300, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 46),
  -- Jellicent - Swagger - TM87
  (593, 59300, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 47),
  -- Jellicent - Sleep Talk - TM88
  (593, 59300, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 48),
  -- Jellicent - Substitute - TM90
  (593, 59300, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 49),
  -- Jellicent - Trick Room - TM92
  (593, 59300, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 50),
  -- Jellicent - Secret Power - TM94
  (593, 59300, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 51),
  -- Jellicent - Dark Pulse - TM97
  (593, 59300, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 52),
  -- Jellicent - Dazzling Gleam - TM99
  (593, 59300, 605, 14, NULL, 2, NULL, NULL, 14002099, NULL, 53),
  -- Jellicent - Confide - TM100
  (593, 59300, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 54),
  -- Jellicent - Surf - HM03
  (593, 59300, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 55),
  -- Jellicent - Waterfall - HM05
  (593, 59300, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 56),
  -- Jellicent - Dive - HM07
  (593, 59300, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 57),
  -- Jellicent - Bind - Tutor
  (593, 59300, 20, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Jellicent - Snore - Tutor
  (593, 59300, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Jellicent - Spite - Tutor
  (593, 59300, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Jellicent - Icy Wind - Tutor
  (593, 59300, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Jellicent - Giga Drain - Tutor
  (593, 59300, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Jellicent - Pain Split - Tutor
  (593, 59300, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Jellicent - Trick - Tutor
  (593, 59300, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Jellicent - Magic Coat - Tutor
  (593, 59300, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Jellicent - Shock Wave - Tutor
  (593, 59300, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Jellicent - Water Pulse - Tutor
  (593, 59300, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Alomomola - Pound - Level 1
  (594, 59400, 1, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alomomola - Hydro Pump - Level 1
  (594, 59400, 56, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alomomola - Water Sport - Level 1
  (594, 59400, 346, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alomomola - Healing Wish - Level 1
  (594, 59400, 361, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Alomomola - Wide Guard - Level 1
  (594, 59400, 469, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Alomomola - Aqua Ring - Level 5
  (594, 59400, 392, 14, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Alomomola - Aqua Jet - Level 9
  (594, 59400, 453, 14, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Alomomola - Double Slap - Level 13
  (594, 59400, 3, 14, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Alomomola - Heal Pulse - Level 17
  (594, 59400, 505, 14, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Alomomola - Protect - Level 21
  (594, 59400, 182, 14, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Alomomola - Water Pulse - Level 25
  (594, 59400, 352, 14, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Alomomola - Wake-Up Slap - Level 29
  (594, 59400, 358, 14, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Alomomola - Soak - Level 33
  (594, 59400, 487, 14, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Alomomola - Wish - Level 37
  (594, 59400, 273, 14, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Alomomola - Brine - Level 41
  (594, 59400, 362, 14, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Alomomola - Safeguard - Level 45
  (594, 59400, 219, 14, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Alomomola - Helping Hand - Level 49
  (594, 59400, 270, 14, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Alomomola - Wide Guard - Level 53
  (594, 59400, 469, 14, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Alomomola - Healing Wish - Level 57
  (594, 59400, 361, 14, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Alomomola - Hydro Pump - Level 61
  (594, 59400, 56, 14, NULL, 1, 61, NULL, NULL, NULL, 20),
  -- Alomomola - Calm Mind - TM04
  (594, 59400, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 21),
  -- Alomomola - Toxic - TM06
  (594, 59400, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 22),
  -- Alomomola - Hail - TM07
  (594, 59400, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 23),
  -- Alomomola - Hidden Power - TM10
  (594, 59400, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 24),
  -- Alomomola - Ice Beam - TM13
  (594, 59400, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 25),
  -- Alomomola - Blizzard - TM14
  (594, 59400, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 26),
  -- Alomomola - Light Screen - TM16
  (594, 59400, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 27),
  -- Alomomola - Protect - TM17
  (594, 59400, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 28),
  -- Alomomola - Rain Dance - TM18
  (594, 59400, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 29),
  -- Alomomola - Safeguard - TM20
  (594, 59400, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 30),
  -- Alomomola - Frustration - TM21
  (594, 59400, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 31),
  -- Alomomola - Return - TM27
  (594, 59400, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 32),
  -- Alomomola - Psychic - TM29
  (594, 59400, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 33),
  -- Alomomola - Shadow Ball - TM30
  (594, 59400, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 34),
  -- Alomomola - Double Team - TM32
  (594, 59400, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 35),
  -- Alomomola - Facade - TM42
  (594, 59400, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 36),
  -- Alomomola - Rest - TM44
  (594, 59400, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 37),
  -- Alomomola - Attract - TM45
  (594, 59400, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 38),
  -- Alomomola - Round - TM48
  (594, 59400, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 39),
  -- Alomomola - Scald - TM55
  (594, 59400, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 40),
  -- Alomomola - Psych Up - TM77
  (594, 59400, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 41),
  -- Alomomola - Swagger - TM87
  (594, 59400, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 42),
  -- Alomomola - Sleep Talk - TM88
  (594, 59400, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 43),
  -- Alomomola - Substitute - TM90
  (594, 59400, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 44),
  -- Alomomola - Secret Power - TM94
  (594, 59400, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 45),
  -- Alomomola - Confide - TM100
  (594, 59400, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 46),
  -- Alomomola - Surf - HM03
  (594, 59400, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 47),
  -- Alomomola - Waterfall - HM05
  (594, 59400, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 48),
  -- Alomomola - Dive - HM07
  (594, 59400, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 49),
  -- Alomomola - Mist - Egg
  (594, 59400, 54, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Alomomola - Endure - Egg
  (594, 59400, 203, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Alomomola - Pain Split - Egg
  (594, 59400, 220, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Alomomola - Mirror Coat - Egg
  (594, 59400, 243, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Alomomola - Refresh - Egg
  (594, 59400, 287, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Alomomola - Tickle - Egg
  (594, 59400, 321, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Alomomola - Snore - Tutor
  (594, 59400, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Alomomola - Icy Wind - Tutor
  (594, 59400, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Alomomola - Pain Split - Tutor
  (594, 59400, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Alomomola - Helping Hand - Tutor
  (594, 59400, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Alomomola - Magic Coat - Tutor
  (594, 59400, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Alomomola - Knock Off - Tutor
  (594, 59400, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Alomomola - Bounce - Tutor
  (594, 59400, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Alomomola - Water Pulse - Tutor
  (594, 59400, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Joltik - String Shot - Level 1
  (595, 59500, 81, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Joltik - Leech Life - Level 1
  (595, 59500, 141, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Joltik - Spider Web - Level 1
  (595, 59500, 169, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Joltik - Thunder Wave - Level 4
  (595, 59500, 86, 14, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Joltik - Screech - Level 7
  (595, 59500, 103, 14, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Joltik - Fury Cutter - Level 12
  (595, 59500, 210, 14, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Joltik - Electroweb - Level 15
  (595, 59500, 527, 14, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Joltik - Bug Bite - Level 18
  (595, 59500, 450, 14, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Joltik - Gastro Acid - Level 23
  (595, 59500, 380, 14, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Joltik - Slash - Level 26
  (595, 59500, 163, 14, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Joltik - Electro Ball - Level 29
  (595, 59500, 486, 14, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Joltik - Signal Beam - Level 34
  (595, 59500, 324, 14, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Joltik - Agility - Level 37
  (595, 59500, 97, 14, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Joltik - Sucker Punch - Level 40
  (595, 59500, 389, 14, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Joltik - Discharge - Level 45
  (595, 59500, 435, 14, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Joltik - Bug Buzz - Level 48
  (595, 59500, 405, 14, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Joltik - Toxic - TM06
  (595, 59500, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Joltik - Hidden Power - TM10
  (595, 59500, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Joltik - Light Screen - TM16
  (595, 59500, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 19),
  -- Joltik - Protect - TM17
  (595, 59500, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 20),
  -- Joltik - Rain Dance - TM18
  (595, 59500, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 21),
  -- Joltik - Frustration - TM21
  (595, 59500, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 22),
  -- Joltik - Thunderbolt - TM24
  (595, 59500, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 23),
  -- Joltik - Return - TM27
  (595, 59500, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 24),
  -- Joltik - Double Team - TM32
  (595, 59500, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 25),
  -- Joltik - Facade - TM42
  (595, 59500, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 26),
  -- Joltik - Rest - TM44
  (595, 59500, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 27),
  -- Joltik - Attract - TM45
  (595, 59500, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 28),
  -- Joltik - Thief - TM46
  (595, 59500, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 29),
  -- Joltik - Round - TM48
  (595, 59500, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 30),
  -- Joltik - Energy Ball - TM53
  (595, 59500, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 31),
  -- Joltik - Charge Beam - TM57
  (595, 59500, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 32),
  -- Joltik - Flash - TM70
  (595, 59500, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 33),
  -- Joltik - Volt Switch - TM72
  (595, 59500, 521, 14, NULL, 2, NULL, NULL, 14002072, NULL, 34),
  -- Joltik - Thunder Wave - TM73
  (595, 59500, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 35),
  -- Joltik - Struggle Bug - TM76
  (595, 59500, 522, 14, NULL, 2, NULL, NULL, 14002076, NULL, 36),
  -- Joltik - X-Scissor - TM81
  (595, 59500, 404, 14, NULL, 2, NULL, NULL, 14002081, NULL, 37),
  -- Joltik - Infestation - TM83
  (595, 59500, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 38),
  -- Joltik - Poison Jab - TM84
  (595, 59500, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 39),
  -- Joltik - Swagger - TM87
  (595, 59500, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 40),
  -- Joltik - Sleep Talk - TM88
  (595, 59500, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 41),
  -- Joltik - Substitute - TM90
  (595, 59500, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 42),
  -- Joltik - Wild Charge - TM93
  (595, 59500, 528, 14, NULL, 2, NULL, NULL, 14002093, NULL, 43),
  -- Joltik - Secret Power - TM94
  (595, 59500, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 44),
  -- Joltik - Confide - TM100
  (595, 59500, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 45),
  -- Joltik - Cut - HM01
  (595, 59500, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 46),
  -- Joltik - Poison Sting - Egg
  (595, 59500, 40, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Joltik - Pin Missile - Egg
  (595, 59500, 42, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Joltik - Disable - Egg
  (595, 59500, 50, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Joltik - Feint Attack - Egg
  (595, 59500, 185, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Joltik - Pursuit - Egg
  (595, 59500, 228, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Joltik - Camouflage - Egg
  (595, 59500, 293, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Joltik - Rock Climb - Egg
  (595, 59500, 431, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Joltik - Cross Poison - Egg
  (595, 59500, 440, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Joltik - Snore - Tutor
  (595, 59500, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Joltik - Giga Drain - Tutor
  (595, 59500, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Joltik - Signal Beam - Tutor
  (595, 59500, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Joltik - Bounce - Tutor
  (595, 59500, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Joltik - Shock Wave - Tutor
  (595, 59500, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Joltik - Gastro Acid - Tutor
  (595, 59500, 380, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Joltik - Magnet Rise - Tutor
  (595, 59500, 393, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Joltik - Bug Bite - Tutor
  (595, 59500, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Joltik - Electroweb - Tutor
  (595, 59500, 527, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Galvantula - String Shot - Level 1
  (596, 59600, 81, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Galvantula - Thunder Wave - Level 1
  (596, 59600, 86, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Galvantula - Leech Life - Level 1
  (596, 59600, 141, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Galvantula - Spider Web - Level 1
  (596, 59600, 169, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Galvantula - Sticky Web - Level 1
  (596, 59600, 564, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Galvantula - Thunder Wave - Level 4
  (596, 59600, 86, 14, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Galvantula - Screech - Level 7
  (596, 59600, 103, 14, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Galvantula - Fury Cutter - Level 12
  (596, 59600, 210, 14, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Galvantula - Electroweb - Level 15
  (596, 59600, 527, 14, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Galvantula - Bug Bite - Level 18
  (596, 59600, 450, 14, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Galvantula - Gastro Acid - Level 23
  (596, 59600, 380, 14, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Galvantula - Slash - Level 26
  (596, 59600, 163, 14, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Galvantula - Electro Ball - Level 29
  (596, 59600, 486, 14, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Galvantula - Signal Beam - Level 34
  (596, 59600, 324, 14, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Galvantula - Agility - Level 40
  (596, 59600, 97, 14, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Galvantula - Sucker Punch - Level 46
  (596, 59600, 389, 14, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Galvantula - Discharge - Level 54
  (596, 59600, 435, 14, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Galvantula - Bug Buzz - Level 60
  (596, 59600, 405, 14, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Galvantula - Sticky Web - Level 65
  (596, 59600, 564, 14, NULL, 1, 65, NULL, NULL, NULL, 19),
  -- Galvantula - Toxic - TM06
  (596, 59600, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 20),
  -- Galvantula - Hidden Power - TM10
  (596, 59600, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 21),
  -- Galvantula - Hyper Beam - TM15
  (596, 59600, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 22),
  -- Galvantula - Light Screen - TM16
  (596, 59600, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 23),
  -- Galvantula - Protect - TM17
  (596, 59600, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 24),
  -- Galvantula - Rain Dance - TM18
  (596, 59600, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 25),
  -- Galvantula - Frustration - TM21
  (596, 59600, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 26),
  -- Galvantula - Thunderbolt - TM24
  (596, 59600, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 27),
  -- Galvantula - Thunder - TM25
  (596, 59600, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 28),
  -- Galvantula - Return - TM27
  (596, 59600, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 29),
  -- Galvantula - Double Team - TM32
  (596, 59600, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 30),
  -- Galvantula - Facade - TM42
  (596, 59600, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 31),
  -- Galvantula - Rest - TM44
  (596, 59600, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 32),
  -- Galvantula - Attract - TM45
  (596, 59600, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 33),
  -- Galvantula - Thief - TM46
  (596, 59600, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 34),
  -- Galvantula - Round - TM48
  (596, 59600, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 35),
  -- Galvantula - Energy Ball - TM53
  (596, 59600, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 36),
  -- Galvantula - Charge Beam - TM57
  (596, 59600, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 37),
  -- Galvantula - Giga Impact - TM68
  (596, 59600, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 38),
  -- Galvantula - Flash - TM70
  (596, 59600, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 39),
  -- Galvantula - Volt Switch - TM72
  (596, 59600, 521, 14, NULL, 2, NULL, NULL, 14002072, NULL, 40),
  -- Galvantula - Thunder Wave - TM73
  (596, 59600, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 41),
  -- Galvantula - Struggle Bug - TM76
  (596, 59600, 522, 14, NULL, 2, NULL, NULL, 14002076, NULL, 42),
  -- Galvantula - X-Scissor - TM81
  (596, 59600, 404, 14, NULL, 2, NULL, NULL, 14002081, NULL, 43),
  -- Galvantula - Infestation - TM83
  (596, 59600, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 44),
  -- Galvantula - Poison Jab - TM84
  (596, 59600, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 45),
  -- Galvantula - Swagger - TM87
  (596, 59600, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 46),
  -- Galvantula - Sleep Talk - TM88
  (596, 59600, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 47),
  -- Galvantula - Substitute - TM90
  (596, 59600, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 48),
  -- Galvantula - Wild Charge - TM93
  (596, 59600, 528, 14, NULL, 2, NULL, NULL, 14002093, NULL, 49),
  -- Galvantula - Secret Power - TM94
  (596, 59600, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 50),
  -- Galvantula - Confide - TM100
  (596, 59600, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 51),
  -- Galvantula - Cut - HM01
  (596, 59600, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 52),
  -- Galvantula - Snore - Tutor
  (596, 59600, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Galvantula - Giga Drain - Tutor
  (596, 59600, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Galvantula - Signal Beam - Tutor
  (596, 59600, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Galvantula - Bounce - Tutor
  (596, 59600, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Galvantula - Shock Wave - Tutor
  (596, 59600, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Galvantula - Gastro Acid - Tutor
  (596, 59600, 380, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Galvantula - Magnet Rise - Tutor
  (596, 59600, 393, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Galvantula - Bug Bite - Tutor
  (596, 59600, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Galvantula - Electroweb - Tutor
  (596, 59600, 527, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Ferroseed - Tackle - Level 1
  (597, 59700, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ferroseed - Harden - Level 1
  (597, 59700, 106, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ferroseed - Rollout - Level 6
  (597, 59700, 205, 14, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Ferroseed - Curse - Level 9
  (597, 59700, 174, 14, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Ferroseed - Metal Claw - Level 14
  (597, 59700, 232, 14, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Ferroseed - Pin Missile - Level 18
  (597, 59700, 42, 14, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Ferroseed - Gyro Ball - Level 21
  (597, 59700, 360, 14, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Ferroseed - Iron Defense - Level 26
  (597, 59700, 334, 14, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Ferroseed - Mirror Shot - Level 30
  (597, 59700, 429, 14, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Ferroseed - Ingrain - Level 35
  (597, 59700, 275, 14, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Ferroseed - Self-Destruct - Level 38
  (597, 59700, 120, 14, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Ferroseed - Iron Head - Level 43
  (597, 59700, 442, 14, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Ferroseed - Payback - Level 47
  (597, 59700, 371, 14, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Ferroseed - Flash Cannon - Level 52
  (597, 59700, 430, 14, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Ferroseed - Explosion - Level 55
  (597, 59700, 153, 14, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Ferroseed - Hone Claws - TM01
  (597, 59700, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 16),
  -- Ferroseed - Toxic - TM06
  (597, 59700, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Ferroseed - Hidden Power - TM10
  (597, 59700, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Ferroseed - Sunny Day - TM11
  (597, 59700, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 19),
  -- Ferroseed - Protect - TM17
  (597, 59700, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 20),
  -- Ferroseed - Frustration - TM21
  (597, 59700, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 21),
  -- Ferroseed - Solar Beam - TM22
  (597, 59700, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 22),
  -- Ferroseed - Thunderbolt - TM24
  (597, 59700, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 23),
  -- Ferroseed - Return - TM27
  (597, 59700, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 24),
  -- Ferroseed - Double Team - TM32
  (597, 59700, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 25),
  -- Ferroseed - Facade - TM42
  (597, 59700, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 26),
  -- Ferroseed - Rest - TM44
  (597, 59700, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 27),
  -- Ferroseed - Round - TM48
  (597, 59700, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 28),
  -- Ferroseed - Energy Ball - TM53
  (597, 59700, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 29),
  -- Ferroseed - Explosion - TM64
  (597, 59700, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 30),
  -- Ferroseed - Payback - TM66
  (597, 59700, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 31),
  -- Ferroseed - Rock Polish - TM69
  (597, 59700, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 32),
  -- Ferroseed - Flash - TM70
  (597, 59700, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 33),
  -- Ferroseed - Thunder Wave - TM73
  (597, 59700, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 34),
  -- Ferroseed - Gyro Ball - TM74
  (597, 59700, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 35),
  -- Ferroseed - Poison Jab - TM84
  (597, 59700, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 36),
  -- Ferroseed - Swagger - TM87
  (597, 59700, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 37),
  -- Ferroseed - Sleep Talk - TM88
  (597, 59700, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 38),
  -- Ferroseed - Substitute - TM90
  (597, 59700, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 39),
  -- Ferroseed - Flash Cannon - TM91
  (597, 59700, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 40),
  -- Ferroseed - Secret Power - TM94
  (597, 59700, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 41),
  -- Ferroseed - Nature Power - TM96
  (597, 59700, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 42),
  -- Ferroseed - Confide - TM100
  (597, 59700, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 43),
  -- Ferroseed - Rock Smash - HM06
  (597, 59700, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 44),
  -- Ferroseed - Leech Seed - Egg
  (597, 59700, 73, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Ferroseed - Spikes - Egg
  (597, 59700, 191, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Ferroseed - Bullet Seed - Egg
  (597, 59700, 331, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ferroseed - Gravity - Egg
  (597, 59700, 356, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Ferroseed - Worry Seed - Egg
  (597, 59700, 388, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Ferroseed - Seed Bomb - Egg
  (597, 59700, 402, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Ferroseed - Rock Climb - Egg
  (597, 59700, 431, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Ferroseed - Stealth Rock - Egg
  (597, 59700, 446, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Ferroseed - Acid Spray - Egg
  (597, 59700, 491, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Ferroseed - Snore - Tutor
  (597, 59700, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Ferroseed - Giga Drain - Tutor
  (597, 59700, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Ferroseed - Knock Off - Tutor
  (597, 59700, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Ferroseed - Endeavor - Tutor
  (597, 59700, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Ferroseed - Iron Defense - Tutor
  (597, 59700, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Ferroseed - Gravity - Tutor
  (597, 59700, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Ferroseed - Worry Seed - Tutor
  (597, 59700, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Ferroseed - Magnet Rise - Tutor
  (597, 59700, 393, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Ferroseed - Seed Bomb - Tutor
  (597, 59700, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Ferroseed - Iron Head - Tutor
  (597, 59700, 442, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Ferroseed - Stealth Rock - Tutor
  (597, 59700, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Ferrothorn - Tackle - Level 1
  (598, 59800, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ferrothorn - Harden - Level 1
  (598, 59800, 106, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ferrothorn - Curse - Level 1
  (598, 59800, 174, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ferrothorn - Rollout - Level 1
  (598, 59800, 205, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ferrothorn - Rock Climb - Level 1
  (598, 59800, 431, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ferrothorn - Rollout - Level 6
  (598, 59800, 205, 14, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Ferrothorn - Curse - Level 9
  (598, 59800, 174, 14, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Ferrothorn - Metal Claw - Level 14
  (598, 59800, 232, 14, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Ferrothorn - Pin Missile - Level 18
  (598, 59800, 42, 14, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Ferrothorn - Gyro Ball - Level 21
  (598, 59800, 360, 14, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Ferrothorn - Iron Defense - Level 26
  (598, 59800, 334, 14, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Ferrothorn - Mirror Shot - Level 30
  (598, 59800, 429, 14, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Ferrothorn - Ingrain - Level 35
  (598, 59800, 275, 14, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Ferrothorn - Self-Destruct - Level 38
  (598, 59800, 120, 14, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Ferrothorn - Power Whip - Level 40
  (598, 59800, 438, 14, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Ferrothorn - Iron Head - Level 46
  (598, 59800, 442, 14, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Ferrothorn - Payback - Level 53
  (598, 59800, 371, 14, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Ferrothorn - Flash Cannon - Level 61
  (598, 59800, 430, 14, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Ferrothorn - Explosion - Level 67
  (598, 59800, 153, 14, NULL, 1, 67, NULL, NULL, NULL, 19),
  -- Ferrothorn - Hone Claws - TM01
  (598, 59800, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 20),
  -- Ferrothorn - Toxic - TM06
  (598, 59800, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 21),
  -- Ferrothorn - Hidden Power - TM10
  (598, 59800, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 22),
  -- Ferrothorn - Sunny Day - TM11
  (598, 59800, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 23),
  -- Ferrothorn - Hyper Beam - TM15
  (598, 59800, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 24),
  -- Ferrothorn - Protect - TM17
  (598, 59800, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 25),
  -- Ferrothorn - Frustration - TM21
  (598, 59800, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 26),
  -- Ferrothorn - Solar Beam - TM22
  (598, 59800, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 27),
  -- Ferrothorn - Thunderbolt - TM24
  (598, 59800, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 28),
  -- Ferrothorn - Thunder - TM25
  (598, 59800, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 29),
  -- Ferrothorn - Return - TM27
  (598, 59800, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 30),
  -- Ferrothorn - Double Team - TM32
  (598, 59800, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 31),
  -- Ferrothorn - Sandstorm - TM37
  (598, 59800, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 32),
  -- Ferrothorn - Aerial Ace - TM40
  (598, 59800, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 33),
  -- Ferrothorn - Facade - TM42
  (598, 59800, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 34),
  -- Ferrothorn - Rest - TM44
  (598, 59800, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 35),
  -- Ferrothorn - Round - TM48
  (598, 59800, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 36),
  -- Ferrothorn - Energy Ball - TM53
  (598, 59800, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 37),
  -- Ferrothorn - Explosion - TM64
  (598, 59800, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 38),
  -- Ferrothorn - Shadow Claw - TM65
  (598, 59800, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 39),
  -- Ferrothorn - Payback - TM66
  (598, 59800, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 40),
  -- Ferrothorn - Giga Impact - TM68
  (598, 59800, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 41),
  -- Ferrothorn - Rock Polish - TM69
  (598, 59800, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 42),
  -- Ferrothorn - Flash - TM70
  (598, 59800, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 43),
  -- Ferrothorn - Thunder Wave - TM73
  (598, 59800, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 44),
  -- Ferrothorn - Gyro Ball - TM74
  (598, 59800, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 45),
  -- Ferrothorn - Swords Dance - TM75
  (598, 59800, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 46),
  -- Ferrothorn - Bulldoze - TM78
  (598, 59800, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 47),
  -- Ferrothorn - Poison Jab - TM84
  (598, 59800, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 48),
  -- Ferrothorn - Grass Knot - TM86
  (598, 59800, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 49),
  -- Ferrothorn - Swagger - TM87
  (598, 59800, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 50),
  -- Ferrothorn - Sleep Talk - TM88
  (598, 59800, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 51),
  -- Ferrothorn - Substitute - TM90
  (598, 59800, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 52),
  -- Ferrothorn - Flash Cannon - TM91
  (598, 59800, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 53),
  -- Ferrothorn - Secret Power - TM94
  (598, 59800, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 54),
  -- Ferrothorn - Nature Power - TM96
  (598, 59800, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 55),
  -- Ferrothorn - Confide - TM100
  (598, 59800, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 56),
  -- Ferrothorn - Cut - HM01
  (598, 59800, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 57),
  -- Ferrothorn - Strength - HM04
  (598, 59800, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 58),
  -- Ferrothorn - Rock Smash - HM06
  (598, 59800, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 59),
  -- Ferrothorn - Snore - Tutor
  (598, 59800, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Ferrothorn - Giga Drain - Tutor
  (598, 59800, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Ferrothorn - Knock Off - Tutor
  (598, 59800, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Ferrothorn - Endeavor - Tutor
  (598, 59800, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Ferrothorn - Iron Defense - Tutor
  (598, 59800, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Ferrothorn - Block - Tutor
  (598, 59800, 335, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Ferrothorn - Gravity - Tutor
  (598, 59800, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Ferrothorn - Worry Seed - Tutor
  (598, 59800, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Ferrothorn - Magnet Rise - Tutor
  (598, 59800, 393, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Ferrothorn - Seed Bomb - Tutor
  (598, 59800, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Ferrothorn - Iron Head - Tutor
  (598, 59800, 442, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Ferrothorn - Stealth Rock - Tutor
  (598, 59800, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Klink - Vise Grip - Level 1
  (599, 59900, 11, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Klink - Charge - Level 6
  (599, 59900, 268, 14, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Klink - Thunder Shock - Level 11
  (599, 59900, 84, 14, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Klink - Gear Grind - Level 16
  (599, 59900, 544, 14, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Klink - Bind - Level 21
  (599, 59900, 20, 14, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Klink - Charge Beam - Level 26
  (599, 59900, 451, 14, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Klink - Autotomize - Level 31
  (599, 59900, 475, 14, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Klink - Mirror Shot - Level 36
  (599, 59900, 429, 14, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Klink - Screech - Level 39
  (599, 59900, 103, 14, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Klink - Discharge - Level 42
  (599, 59900, 435, 14, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Klink - Metal Sound - Level 45
  (599, 59900, 319, 14, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Klink - Shift Gear - Level 48
  (599, 59900, 508, 14, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Klink - Lock-On - Level 50
  (599, 59900, 199, 14, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Klink - Zap Cannon - Level 54
  (599, 59900, 192, 14, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Klink - Hyper Beam - Level 57
  (599, 59900, 63, 14, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Klink - Toxic - TM06
  (599, 59900, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 16),
  -- Klink - Hidden Power - TM10
  (599, 59900, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Klink - Hyper Beam - TM15
  (599, 59900, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 18),
  -- Klink - Protect - TM17
  (599, 59900, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 19),
  -- Klink - Frustration - TM21
  (599, 59900, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 20),
  -- Klink - Thunderbolt - TM24
  (599, 59900, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 21),
  -- Klink - Return - TM27
  (599, 59900, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 22),
  -- Klink - Double Team - TM32
  (599, 59900, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 23),
  -- Klink - Sandstorm - TM37
  (599, 59900, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 24),
  -- Klink - Facade - TM42
  (599, 59900, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 25),
  -- Klink - Rest - TM44
  (599, 59900, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 26),
  -- Klink - Round - TM48
  (599, 59900, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 27),
  -- Klink - Charge Beam - TM57
  (599, 59900, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 28),
  -- Klink - Rock Polish - TM69
  (599, 59900, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 29),
  -- Klink - Volt Switch - TM72
  (599, 59900, 521, 14, NULL, 2, NULL, NULL, 14002072, NULL, 30),
  -- Klink - Thunder Wave - TM73
  (599, 59900, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 31),
  -- Klink - Swagger - TM87
  (599, 59900, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 32),
  -- Klink - Sleep Talk - TM88
  (599, 59900, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 33),
  -- Klink - Substitute - TM90
  (599, 59900, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 34),
  -- Klink - Flash Cannon - TM91
  (599, 59900, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 35),
  -- Klink - Wild Charge - TM93
  (599, 59900, 528, 14, NULL, 2, NULL, NULL, 14002093, NULL, 36),
  -- Klink - Secret Power - TM94
  (599, 59900, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 37),
  -- Klink - Confide - TM100
  (599, 59900, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 38),
  -- Klink - Rock Smash - HM06
  (599, 59900, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 39),
  -- Klink - Bind - Tutor
  (599, 59900, 20, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 40),
  -- Klink - Snore - Tutor
  (599, 59900, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 41),
  -- Klink - Uproar - Tutor
  (599, 59900, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 42),
  -- Klink - Magic Coat - Tutor
  (599, 59900, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 43),
  -- Klink - Recycle - Tutor
  (599, 59900, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 44),
  -- Klink - Signal Beam - Tutor
  (599, 59900, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 45),
  -- Klink - Iron Defense - Tutor
  (599, 59900, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 46),
  -- Klink - Shock Wave - Tutor
  (599, 59900, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Klink - Gravity - Tutor
  (599, 59900, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Klink - Magnet Rise - Tutor
  (599, 59900, 393, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Klang - Vise Grip - Level 1
  (600, 60000, 11, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Klang - Thunder Shock - Level 1
  (600, 60000, 84, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Klang - Charge - Level 1
  (600, 60000, 268, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Klang - Gear Grind - Level 1
  (600, 60000, 544, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Klang - Charge - Level 6
  (600, 60000, 268, 14, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Klang - Thunder Shock - Level 11
  (600, 60000, 84, 14, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Klang - Gear Grind - Level 16
  (600, 60000, 544, 14, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Klang - Bind - Level 21
  (600, 60000, 20, 14, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Klang - Charge Beam - Level 26
  (600, 60000, 451, 14, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Klang - Autotomize - Level 31
  (600, 60000, 475, 14, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Klang - Mirror Shot - Level 36
  (600, 60000, 429, 14, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Klang - Screech - Level 40
  (600, 60000, 103, 14, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Klang - Discharge - Level 44
  (600, 60000, 435, 14, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Klang - Metal Sound - Level 48
  (600, 60000, 319, 14, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Klang - Shift Gear - Level 52
  (600, 60000, 508, 14, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Klang - Lock-On - Level 56
  (600, 60000, 199, 14, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Klang - Zap Cannon - Level 60
  (600, 60000, 192, 14, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Klang - Hyper Beam - Level 64
  (600, 60000, 63, 14, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Klang - Toxic - TM06
  (600, 60000, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 19),
  -- Klang - Hidden Power - TM10
  (600, 60000, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 20),
  -- Klang - Hyper Beam - TM15
  (600, 60000, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 21),
  -- Klang - Protect - TM17
  (600, 60000, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 22),
  -- Klang - Frustration - TM21
  (600, 60000, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 23),
  -- Klang - Thunderbolt - TM24
  (600, 60000, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 24),
  -- Klang - Return - TM27
  (600, 60000, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 25),
  -- Klang - Double Team - TM32
  (600, 60000, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 26),
  -- Klang - Sandstorm - TM37
  (600, 60000, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 27),
  -- Klang - Facade - TM42
  (600, 60000, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 28),
  -- Klang - Rest - TM44
  (600, 60000, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 29),
  -- Klang - Round - TM48
  (600, 60000, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 30),
  -- Klang - Charge Beam - TM57
  (600, 60000, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 31),
  -- Klang - Rock Polish - TM69
  (600, 60000, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 32),
  -- Klang - Volt Switch - TM72
  (600, 60000, 521, 14, NULL, 2, NULL, NULL, 14002072, NULL, 33),
  -- Klang - Thunder Wave - TM73
  (600, 60000, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 34),
  -- Klang - Swagger - TM87
  (600, 60000, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 35),
  -- Klang - Sleep Talk - TM88
  (600, 60000, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 36),
  -- Klang - Substitute - TM90
  (600, 60000, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 37),
  -- Klang - Flash Cannon - TM91
  (600, 60000, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 38),
  -- Klang - Wild Charge - TM93
  (600, 60000, 528, 14, NULL, 2, NULL, NULL, 14002093, NULL, 39),
  -- Klang - Secret Power - TM94
  (600, 60000, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 40),
  -- Klang - Confide - TM100
  (600, 60000, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 41),
  -- Klang - Rock Smash - HM06
  (600, 60000, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 42),
  -- Klang - Bind - Tutor
  (600, 60000, 20, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 43),
  -- Klang - Snore - Tutor
  (600, 60000, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 44),
  -- Klang - Uproar - Tutor
  (600, 60000, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 45),
  -- Klang - Magic Coat - Tutor
  (600, 60000, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 46),
  -- Klang - Recycle - Tutor
  (600, 60000, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Klang - Signal Beam - Tutor
  (600, 60000, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Klang - Iron Defense - Tutor
  (600, 60000, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Klang - Shock Wave - Tutor
  (600, 60000, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Klang - Gravity - Tutor
  (600, 60000, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Klang - Magnet Rise - Tutor
  (600, 60000, 393, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52);
