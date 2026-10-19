-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VI raw learnset pages.
-- Cross-check: PokemonDB X / Y learnset pages and legacy Voydex Generation VI learnset seeds.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- X / Y learnsets for default forms, species 650-700.
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
  -- Chespin - Tackle - Level 1
  (650, 65000, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chespin - Growl - Level 1
  (650, 65000, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chespin - Vine Whip - Level 5
  (650, 65000, 22, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Chespin - Rollout - Level 8
  (650, 65000, 205, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Chespin - Bite - Level 11
  (650, 65000, 44, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Chespin - Leech Seed - Level 15
  (650, 65000, 73, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Chespin - Pin Missile - Level 18
  (650, 65000, 42, 13, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Chespin - Take Down - Level 27
  (650, 65000, 36, 13, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Chespin - Seed Bomb - Level 32
  (650, 65000, 402, 13, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Chespin - Mud Shot - Level 35
  (650, 65000, 341, 13, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Chespin - Bulk Up - Level 39
  (650, 65000, 339, 13, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Chespin - Body Slam - Level 42
  (650, 65000, 34, 13, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Chespin - Pain Split - Level 45
  (650, 65000, 220, 13, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Chespin - Wood Hammer - Level 48
  (650, 65000, 452, 13, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Chespin - Roar - TM05
  (650, 65000, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 15),
  -- Chespin - Toxic - TM06
  (650, 65000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Chespin - Bulk Up - TM08
  (650, 65000, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 17),
  -- Chespin - Hidden Power - TM10
  (650, 65000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Chespin - Sunny Day - TM11
  (650, 65000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Chespin - Taunt - TM12
  (650, 65000, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 20),
  -- Chespin - Protect - TM17
  (650, 65000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Chespin - Frustration - TM21
  (650, 65000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Chespin - Solar Beam - TM22
  (650, 65000, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 23),
  -- Chespin - Smack Down - TM23
  (650, 65000, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 24),
  -- Chespin - Return - TM27
  (650, 65000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Chespin - Dig - TM28
  (650, 65000, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 26),
  -- Chespin - Brick Break - TM31
  (650, 65000, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 27),
  -- Chespin - Double Team - TM32
  (650, 65000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Chespin - Reflect - TM33
  (650, 65000, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 29),
  -- Chespin - Sludge Bomb - TM36
  (650, 65000, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 30),
  -- Chespin - Rock Tomb - TM39
  (650, 65000, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 31),
  -- Chespin - Aerial Ace - TM40
  (650, 65000, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 32),
  -- Chespin - Facade - TM42
  (650, 65000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 33),
  -- Chespin - Rest - TM44
  (650, 65000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Chespin - Attract - TM45
  (650, 65000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 35),
  -- Chespin - Low Sweep - TM47
  (650, 65000, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 36),
  -- Chespin - Round - TM48
  (650, 65000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Chespin - Energy Ball - TM53
  (650, 65000, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 38),
  -- Chespin - Fling - TM56
  (650, 65000, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 39),
  -- Chespin - Shadow Claw - TM65
  (650, 65000, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 40),
  -- Chespin - Payback - TM66
  (650, 65000, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 41),
  -- Chespin - Retaliate - TM67
  (650, 65000, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 42),
  -- Chespin - Flash - TM70
  (650, 65000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 43),
  -- Chespin - Stone Edge - TM71
  (650, 65000, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 44),
  -- Chespin - Gyro Ball - TM74
  (650, 65000, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 45),
  -- Chespin - Swords Dance - TM75
  (650, 65000, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 46),
  -- Chespin - Bulldoze - TM78
  (650, 65000, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 47),
  -- Chespin - Rock Slide - TM80
  (650, 65000, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 48),
  -- Chespin - Poison Jab - TM84
  (650, 65000, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 49),
  -- Chespin - Grass Knot - TM86
  (650, 65000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 50),
  -- Chespin - Swagger - TM87
  (650, 65000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 51),
  -- Chespin - Sleep Talk - TM88
  (650, 65000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 52),
  -- Chespin - Substitute - TM90
  (650, 65000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 53),
  -- Chespin - Rock Smash - TM94
  (650, 65000, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 54),
  -- Chespin - Nature Power - TM96
  (650, 65000, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 55),
  -- Chespin - Power-Up Punch - TM98
  (650, 65000, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 56),
  -- Chespin - Confide - TM100
  (650, 65000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 57),
  -- Chespin - Cut - HM01
  (650, 65000, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 58),
  -- Chespin - Strength - HM04
  (650, 65000, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 59),
  -- Chespin - Defense Curl - Egg
  (650, 65000, 111, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Chespin - Curse - Egg
  (650, 65000, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Chespin - Belly Drum - Egg
  (650, 65000, 187, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Chespin - Spikes - Egg
  (650, 65000, 191, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Chespin - Rollout - Egg
  (650, 65000, 205, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Chespin - Synthesis - Egg
  (650, 65000, 235, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Chespin - Quick Guard - Egg
  (650, 65000, 501, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Chespin - Grass Pledge - Tutor
  (650, 65000, 520, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 67),
  -- Quilladin - Tackle - Level 1
  (651, 65100, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Quilladin - Growl - Level 1
  (651, 65100, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Quilladin - Vine Whip - Level 5
  (651, 65100, 22, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Quilladin - Rollout - Level 8
  (651, 65100, 205, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Quilladin - Bite - Level 11
  (651, 65100, 44, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Quilladin - Leech Seed - Level 15
  (651, 65100, 73, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Quilladin - Pin Missile - Level 20
  (651, 65100, 42, 13, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Quilladin - Needle Arm - Level 26
  (651, 65100, 302, 13, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Quilladin - Take Down - Level 30
  (651, 65100, 36, 13, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Quilladin - Seed Bomb - Level 35
  (651, 65100, 402, 13, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Quilladin - Mud Shot - Level 39
  (651, 65100, 341, 13, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Quilladin - Bulk Up - Level 44
  (651, 65100, 339, 13, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Quilladin - Body Slam - Level 48
  (651, 65100, 34, 13, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Quilladin - Pain Split - Level 52
  (651, 65100, 220, 13, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Quilladin - Wood Hammer - Level 55
  (651, 65100, 452, 13, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Quilladin - Hone Claws - TM01
  (651, 65100, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 16),
  -- Quilladin - Roar - TM05
  (651, 65100, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 17),
  -- Quilladin - Toxic - TM06
  (651, 65100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Quilladin - Bulk Up - TM08
  (651, 65100, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 19),
  -- Quilladin - Hidden Power - TM10
  (651, 65100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Quilladin - Sunny Day - TM11
  (651, 65100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Quilladin - Taunt - TM12
  (651, 65100, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 22),
  -- Quilladin - Protect - TM17
  (651, 65100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Quilladin - Frustration - TM21
  (651, 65100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Quilladin - Solar Beam - TM22
  (651, 65100, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 25),
  -- Quilladin - Smack Down - TM23
  (651, 65100, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 26),
  -- Quilladin - Return - TM27
  (651, 65100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Quilladin - Dig - TM28
  (651, 65100, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 28),
  -- Quilladin - Brick Break - TM31
  (651, 65100, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 29),
  -- Quilladin - Double Team - TM32
  (651, 65100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Quilladin - Reflect - TM33
  (651, 65100, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 31),
  -- Quilladin - Sludge Bomb - TM36
  (651, 65100, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 32),
  -- Quilladin - Rock Tomb - TM39
  (651, 65100, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 33),
  -- Quilladin - Aerial Ace - TM40
  (651, 65100, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 34),
  -- Quilladin - Facade - TM42
  (651, 65100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Quilladin - Rest - TM44
  (651, 65100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Quilladin - Attract - TM45
  (651, 65100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Quilladin - Low Sweep - TM47
  (651, 65100, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 38),
  -- Quilladin - Round - TM48
  (651, 65100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Quilladin - Energy Ball - TM53
  (651, 65100, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 40),
  -- Quilladin - Fling - TM56
  (651, 65100, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 41),
  -- Quilladin - Shadow Claw - TM65
  (651, 65100, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 42),
  -- Quilladin - Payback - TM66
  (651, 65100, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 43),
  -- Quilladin - Retaliate - TM67
  (651, 65100, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 44),
  -- Quilladin - Flash - TM70
  (651, 65100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 45),
  -- Quilladin - Stone Edge - TM71
  (651, 65100, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 46),
  -- Quilladin - Gyro Ball - TM74
  (651, 65100, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 47),
  -- Quilladin - Swords Dance - TM75
  (651, 65100, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 48),
  -- Quilladin - Bulldoze - TM78
  (651, 65100, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 49),
  -- Quilladin - Rock Slide - TM80
  (651, 65100, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 50),
  -- Quilladin - Poison Jab - TM84
  (651, 65100, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 51),
  -- Quilladin - Grass Knot - TM86
  (651, 65100, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 52),
  -- Quilladin - Swagger - TM87
  (651, 65100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 53),
  -- Quilladin - Sleep Talk - TM88
  (651, 65100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 54),
  -- Quilladin - Substitute - TM90
  (651, 65100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 55),
  -- Quilladin - Rock Smash - TM94
  (651, 65100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 56),
  -- Quilladin - Nature Power - TM96
  (651, 65100, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 57),
  -- Quilladin - Power-Up Punch - TM98
  (651, 65100, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 58),
  -- Quilladin - Confide - TM100
  (651, 65100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 59),
  -- Quilladin - Cut - HM01
  (651, 65100, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 60),
  -- Quilladin - Strength - HM04
  (651, 65100, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 61),
  -- Quilladin - Grass Pledge - Tutor
  (651, 65100, 520, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 62),
  -- Chesnaught - Tackle - Level 1
  (652, 65200, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chesnaught - Growl - Level 1
  (652, 65200, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chesnaught - Belly Drum - Level 1
  (652, 65200, 187, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Chesnaught - Hammer Arm - Level 1
  (652, 65200, 359, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Chesnaught - Feint - Level 1
  (652, 65200, 364, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Chesnaught - Vine Whip - Level 5
  (652, 65200, 22, 13, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Chesnaught - Rollout - Level 8
  (652, 65200, 205, 13, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Chesnaught - Bite - Level 11
  (652, 65200, 44, 13, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Chesnaught - Leech Seed - Level 15
  (652, 65200, 73, 13, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Chesnaught - Pin Missile - Level 20
  (652, 65200, 42, 13, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Chesnaught - Needle Arm - Level 26
  (652, 65200, 302, 13, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Chesnaught - Take Down - Level 30
  (652, 65200, 36, 13, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Chesnaught - Seed Bomb - Level 35
  (652, 65200, 402, 13, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Chesnaught - Spiky Shield - Level 36
  (652, 65200, 596, 13, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Chesnaught - Mud Shot - Level 41
  (652, 65200, 341, 13, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Chesnaught - Bulk Up - Level 44
  (652, 65200, 339, 13, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Chesnaught - Body Slam - Level 48
  (652, 65200, 34, 13, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Chesnaught - Pain Split - Level 52
  (652, 65200, 220, 13, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Chesnaught - Wood Hammer - Level 55
  (652, 65200, 452, 13, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Chesnaught - Hammer Arm - Level 60
  (652, 65200, 359, 13, NULL, 1, 60, NULL, NULL, NULL, 20),
  -- Chesnaught - Giga Impact - Level 70
  (652, 65200, 416, 13, NULL, 1, 70, NULL, NULL, NULL, 21),
  -- Chesnaught - Spiky Shield - Level 75
  (652, 65200, 596, 13, NULL, 1, 75, NULL, NULL, NULL, 22),
  -- Chesnaught - Hone Claws - TM01
  (652, 65200, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 23),
  -- Chesnaught - Dragon Claw - TM02
  (652, 65200, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 24),
  -- Chesnaught - Roar - TM05
  (652, 65200, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 25),
  -- Chesnaught - Toxic - TM06
  (652, 65200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 26),
  -- Chesnaught - Bulk Up - TM08
  (652, 65200, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 27),
  -- Chesnaught - Hidden Power - TM10
  (652, 65200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 28),
  -- Chesnaught - Sunny Day - TM11
  (652, 65200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 29),
  -- Chesnaught - Taunt - TM12
  (652, 65200, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 30),
  -- Chesnaught - Hyper Beam - TM15
  (652, 65200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 31),
  -- Chesnaught - Protect - TM17
  (652, 65200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 32),
  -- Chesnaught - Frustration - TM21
  (652, 65200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 33),
  -- Chesnaught - Solar Beam - TM22
  (652, 65200, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 34),
  -- Chesnaught - Smack Down - TM23
  (652, 65200, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 35),
  -- Chesnaught - Earthquake - TM26
  (652, 65200, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 36),
  -- Chesnaught - Return - TM27
  (652, 65200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 37),
  -- Chesnaught - Dig - TM28
  (652, 65200, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 38),
  -- Chesnaught - Brick Break - TM31
  (652, 65200, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 39),
  -- Chesnaught - Double Team - TM32
  (652, 65200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 40),
  -- Chesnaught - Reflect - TM33
  (652, 65200, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 41),
  -- Chesnaught - Sludge Bomb - TM36
  (652, 65200, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 42),
  -- Chesnaught - Rock Tomb - TM39
  (652, 65200, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 43),
  -- Chesnaught - Aerial Ace - TM40
  (652, 65200, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 44),
  -- Chesnaught - Facade - TM42
  (652, 65200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 45),
  -- Chesnaught - Rest - TM44
  (652, 65200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 46),
  -- Chesnaught - Attract - TM45
  (652, 65200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 47),
  -- Chesnaught - Low Sweep - TM47
  (652, 65200, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 48),
  -- Chesnaught - Round - TM48
  (652, 65200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 49),
  -- Chesnaught - Focus Blast - TM52
  (652, 65200, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 50),
  -- Chesnaught - Energy Ball - TM53
  (652, 65200, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 51),
  -- Chesnaught - Fling - TM56
  (652, 65200, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 52),
  -- Chesnaught - Shadow Claw - TM65
  (652, 65200, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 53),
  -- Chesnaught - Payback - TM66
  (652, 65200, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 54),
  -- Chesnaught - Retaliate - TM67
  (652, 65200, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 55),
  -- Chesnaught - Giga Impact - TM68
  (652, 65200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 56),
  -- Chesnaught - Flash - TM70
  (652, 65200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 57),
  -- Chesnaught - Stone Edge - TM71
  (652, 65200, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 58),
  -- Chesnaught - Gyro Ball - TM74
  (652, 65200, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 59),
  -- Chesnaught - Swords Dance - TM75
  (652, 65200, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 60),
  -- Chesnaught - Bulldoze - TM78
  (652, 65200, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 61),
  -- Chesnaught - Rock Slide - TM80
  (652, 65200, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 62),
  -- Chesnaught - Poison Jab - TM84
  (652, 65200, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 63),
  -- Chesnaught - Grass Knot - TM86
  (652, 65200, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 64),
  -- Chesnaught - Swagger - TM87
  (652, 65200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 65),
  -- Chesnaught - Sleep Talk - TM88
  (652, 65200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 66),
  -- Chesnaught - Substitute - TM90
  (652, 65200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 67),
  -- Chesnaught - Rock Smash - TM94
  (652, 65200, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 68),
  -- Chesnaught - Nature Power - TM96
  (652, 65200, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 69),
  -- Chesnaught - Power-Up Punch - TM98
  (652, 65200, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 70),
  -- Chesnaught - Confide - TM100
  (652, 65200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 71),
  -- Chesnaught - Cut - HM01
  (652, 65200, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 72),
  -- Chesnaught - Strength - HM04
  (652, 65200, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 73),
  -- Chesnaught - Frenzy Plant - Tutor
  (652, 65200, 338, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 74),
  -- Chesnaught - Grass Pledge - Tutor
  (652, 65200, 520, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 75),
  -- Fennekin - Scratch - Level 1
  (653, 65300, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fennekin - Tail Whip - Level 1
  (653, 65300, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fennekin - Ember - Level 5
  (653, 65300, 52, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Fennekin - Howl - Level 11
  (653, 65300, 336, 13, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Fennekin - Flame Charge - Level 14
  (653, 65300, 488, 13, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Fennekin - Psybeam - Level 17
  (653, 65300, 60, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Fennekin - Fire Spin - Level 20
  (653, 65300, 83, 13, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Fennekin - Lucky Chant - Level 25
  (653, 65300, 381, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Fennekin - Light Screen - Level 27
  (653, 65300, 113, 13, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Fennekin - Psyshock - Level 31
  (653, 65300, 473, 13, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Fennekin - Flamethrower - Level 35
  (653, 65300, 53, 13, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Fennekin - Will-O-Wisp - Level 38
  (653, 65300, 261, 13, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Fennekin - Psychic - Level 41
  (653, 65300, 94, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Fennekin - Sunny Day - Level 43
  (653, 65300, 241, 13, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Fennekin - Magic Room - Level 46
  (653, 65300, 478, 13, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Fennekin - Fire Blast - Level 48
  (653, 65300, 126, 13, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Fennekin - Psyshock - TM03
  (653, 65300, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 17),
  -- Fennekin - Toxic - TM06
  (653, 65300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Fennekin - Hidden Power - TM10
  (653, 65300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Fennekin - Sunny Day - TM11
  (653, 65300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Fennekin - Light Screen - TM16
  (653, 65300, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 21),
  -- Fennekin - Protect - TM17
  (653, 65300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Fennekin - Rain Dance - TM18
  (653, 65300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Fennekin - Safeguard - TM20
  (653, 65300, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 24),
  -- Fennekin - Frustration - TM21
  (653, 65300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Fennekin - Solar Beam - TM22
  (653, 65300, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 26),
  -- Fennekin - Return - TM27
  (653, 65300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Fennekin - Psychic - TM29
  (653, 65300, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 28),
  -- Fennekin - Double Team - TM32
  (653, 65300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Fennekin - Flamethrower - TM35
  (653, 65300, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 30),
  -- Fennekin - Fire Blast - TM38
  (653, 65300, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 31),
  -- Fennekin - Facade - TM42
  (653, 65300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Fennekin - Flame Charge - TM43
  (653, 65300, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 33),
  -- Fennekin - Rest - TM44
  (653, 65300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Fennekin - Attract - TM45
  (653, 65300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 35),
  -- Fennekin - Thief - TM46
  (653, 65300, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 36),
  -- Fennekin - Round - TM48
  (653, 65300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Fennekin - Echoed Voice - TM49
  (653, 65300, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 38),
  -- Fennekin - Overheat - TM50
  (653, 65300, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 39),
  -- Fennekin - Incinerate - TM59
  (653, 65300, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 40),
  -- Fennekin - Will-O-Wisp - TM61
  (653, 65300, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 41),
  -- Fennekin - Embargo - TM63
  (653, 65300, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 42),
  -- Fennekin - Psych Up - TM77
  (653, 65300, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 43),
  -- Fennekin - Dream Eater - TM85
  (653, 65300, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 44),
  -- Fennekin - Grass Knot - TM86
  (653, 65300, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 45),
  -- Fennekin - Swagger - TM87
  (653, 65300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 46),
  -- Fennekin - Sleep Talk - TM88
  (653, 65300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 47),
  -- Fennekin - Substitute - TM90
  (653, 65300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 48),
  -- Fennekin - Power-Up Punch - TM98
  (653, 65300, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 49),
  -- Fennekin - Confide - TM100
  (653, 65300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 50),
  -- Fennekin - Cut - HM01
  (653, 65300, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 51),
  -- Fennekin - Hypnosis - Egg
  (653, 65300, 95, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Fennekin - Heat Wave - Egg
  (653, 65300, 257, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Fennekin - Wish - Egg
  (653, 65300, 273, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Fennekin - Magic Coat - Egg
  (653, 65300, 277, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Fennekin - Fire Pledge - Tutor
  (653, 65300, 519, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 56),
  -- Braixen - Scratch - Level 1
  (654, 65400, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Braixen - Tail Whip - Level 1
  (654, 65400, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Braixen - Ember - Level 5
  (654, 65400, 52, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Braixen - Howl - Level 11
  (654, 65400, 336, 13, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Braixen - Flame Charge - Level 14
  (654, 65400, 488, 13, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Braixen - Psybeam - Level 18
  (654, 65400, 60, 13, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Braixen - Fire Spin - Level 22
  (654, 65400, 83, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Braixen - Lucky Chant - Level 27
  (654, 65400, 381, 13, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Braixen - Light Screen - Level 30
  (654, 65400, 113, 13, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Braixen - Psyshock - Level 34
  (654, 65400, 473, 13, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Braixen - Flamethrower - Level 41
  (654, 65400, 53, 13, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Braixen - Will-O-Wisp - Level 45
  (654, 65400, 261, 13, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Braixen - Psychic - Level 48
  (654, 65400, 94, 13, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Braixen - Sunny Day - Level 51
  (654, 65400, 241, 13, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Braixen - Magic Room - Level 53
  (654, 65400, 478, 13, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Braixen - Fire Blast - Level 55
  (654, 65400, 126, 13, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Braixen - Psyshock - TM03
  (654, 65400, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 17),
  -- Braixen - Toxic - TM06
  (654, 65400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Braixen - Hidden Power - TM10
  (654, 65400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Braixen - Sunny Day - TM11
  (654, 65400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Braixen - Light Screen - TM16
  (654, 65400, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 21),
  -- Braixen - Protect - TM17
  (654, 65400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Braixen - Rain Dance - TM18
  (654, 65400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Braixen - Safeguard - TM20
  (654, 65400, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 24),
  -- Braixen - Frustration - TM21
  (654, 65400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Braixen - Solar Beam - TM22
  (654, 65400, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 26),
  -- Braixen - Return - TM27
  (654, 65400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Braixen - Psychic - TM29
  (654, 65400, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 28),
  -- Braixen - Double Team - TM32
  (654, 65400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Braixen - Flamethrower - TM35
  (654, 65400, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 30),
  -- Braixen - Fire Blast - TM38
  (654, 65400, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 31),
  -- Braixen - Facade - TM42
  (654, 65400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Braixen - Flame Charge - TM43
  (654, 65400, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 33),
  -- Braixen - Rest - TM44
  (654, 65400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Braixen - Attract - TM45
  (654, 65400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 35),
  -- Braixen - Thief - TM46
  (654, 65400, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 36),
  -- Braixen - Round - TM48
  (654, 65400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Braixen - Echoed Voice - TM49
  (654, 65400, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 38),
  -- Braixen - Overheat - TM50
  (654, 65400, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 39),
  -- Braixen - Incinerate - TM59
  (654, 65400, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 40),
  -- Braixen - Will-O-Wisp - TM61
  (654, 65400, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 41),
  -- Braixen - Embargo - TM63
  (654, 65400, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 42),
  -- Braixen - Psych Up - TM77
  (654, 65400, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 43),
  -- Braixen - Dream Eater - TM85
  (654, 65400, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 44),
  -- Braixen - Grass Knot - TM86
  (654, 65400, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 45),
  -- Braixen - Swagger - TM87
  (654, 65400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 46),
  -- Braixen - Sleep Talk - TM88
  (654, 65400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 47),
  -- Braixen - Substitute - TM90
  (654, 65400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 48),
  -- Braixen - Power-Up Punch - TM98
  (654, 65400, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 49),
  -- Braixen - Confide - TM100
  (654, 65400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 50),
  -- Braixen - Cut - HM01
  (654, 65400, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 51),
  -- Braixen - Fire Pledge - Tutor
  (654, 65400, 519, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 52),
  -- Delphox - Scratch - Level 1
  (655, 65500, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Delphox - Tail Whip - Level 1
  (655, 65500, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Delphox - Shadow Ball - Level 1
  (655, 65500, 247, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Delphox - Future Sight - Level 1
  (655, 65500, 248, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Delphox - Role Play - Level 1
  (655, 65500, 272, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Delphox - Switcheroo - Level 1
  (655, 65500, 415, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Delphox - Ember - Level 5
  (655, 65500, 52, 13, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Delphox - Howl - Level 11
  (655, 65500, 336, 13, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Delphox - Flame Charge - Level 14
  (655, 65500, 488, 13, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Delphox - Psybeam - Level 18
  (655, 65500, 60, 13, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Delphox - Fire Spin - Level 22
  (655, 65500, 83, 13, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Delphox - Lucky Chant - Level 27
  (655, 65500, 381, 13, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Delphox - Light Screen - Level 30
  (655, 65500, 113, 13, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Delphox - Psyshock - Level 34
  (655, 65500, 473, 13, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Delphox - Mystical Fire - Level 36
  (655, 65500, 595, 13, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Delphox - Flamethrower - Level 42
  (655, 65500, 53, 13, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Delphox - Will-O-Wisp - Level 47
  (655, 65500, 261, 13, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Delphox - Psychic - Level 51
  (655, 65500, 94, 13, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Delphox - Sunny Day - Level 55
  (655, 65500, 241, 13, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Delphox - Magic Room - Level 58
  (655, 65500, 478, 13, NULL, 1, 58, NULL, NULL, NULL, 20),
  -- Delphox - Fire Blast - Level 61
  (655, 65500, 126, 13, NULL, 1, 61, NULL, NULL, NULL, 21),
  -- Delphox - Future Sight - Level 69
  (655, 65500, 248, 13, NULL, 1, 69, NULL, NULL, NULL, 22),
  -- Delphox - Mystical Fire - Level 75
  (655, 65500, 595, 13, NULL, 1, 75, NULL, NULL, NULL, 23),
  -- Delphox - Psyshock - TM03
  (655, 65500, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 24),
  -- Delphox - Calm Mind - TM04
  (655, 65500, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 25),
  -- Delphox - Toxic - TM06
  (655, 65500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 26),
  -- Delphox - Hidden Power - TM10
  (655, 65500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 27),
  -- Delphox - Sunny Day - TM11
  (655, 65500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 28),
  -- Delphox - Hyper Beam - TM15
  (655, 65500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 29),
  -- Delphox - Light Screen - TM16
  (655, 65500, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 30),
  -- Delphox - Protect - TM17
  (655, 65500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 31),
  -- Delphox - Rain Dance - TM18
  (655, 65500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 32),
  -- Delphox - Safeguard - TM20
  (655, 65500, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 33),
  -- Delphox - Frustration - TM21
  (655, 65500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 34),
  -- Delphox - Solar Beam - TM22
  (655, 65500, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 35),
  -- Delphox - Return - TM27
  (655, 65500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 36),
  -- Delphox - Psychic - TM29
  (655, 65500, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 37),
  -- Delphox - Shadow Ball - TM30
  (655, 65500, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 38),
  -- Delphox - Double Team - TM32
  (655, 65500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 39),
  -- Delphox - Flamethrower - TM35
  (655, 65500, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 40),
  -- Delphox - Fire Blast - TM38
  (655, 65500, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 41),
  -- Delphox - Facade - TM42
  (655, 65500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 42),
  -- Delphox - Flame Charge - TM43
  (655, 65500, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 43),
  -- Delphox - Rest - TM44
  (655, 65500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 44),
  -- Delphox - Attract - TM45
  (655, 65500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 45),
  -- Delphox - Thief - TM46
  (655, 65500, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 46),
  -- Delphox - Round - TM48
  (655, 65500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 47),
  -- Delphox - Echoed Voice - TM49
  (655, 65500, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 48),
  -- Delphox - Overheat - TM50
  (655, 65500, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 49),
  -- Delphox - Incinerate - TM59
  (655, 65500, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 50),
  -- Delphox - Will-O-Wisp - TM61
  (655, 65500, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 51),
  -- Delphox - Embargo - TM63
  (655, 65500, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 52),
  -- Delphox - Giga Impact - TM68
  (655, 65500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 53),
  -- Delphox - Psych Up - TM77
  (655, 65500, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 54),
  -- Delphox - Dream Eater - TM85
  (655, 65500, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 55),
  -- Delphox - Grass Knot - TM86
  (655, 65500, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 56),
  -- Delphox - Swagger - TM87
  (655, 65500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 57),
  -- Delphox - Sleep Talk - TM88
  (655, 65500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 58),
  -- Delphox - Substitute - TM90
  (655, 65500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 59),
  -- Delphox - Trick Room - TM92
  (655, 65500, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 60),
  -- Delphox - Power-Up Punch - TM98
  (655, 65500, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 61),
  -- Delphox - Confide - TM100
  (655, 65500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 62),
  -- Delphox - Cut - HM01
  (655, 65500, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 63),
  -- Delphox - Blast Burn - Tutor
  (655, 65500, 307, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 64),
  -- Delphox - Fire Pledge - Tutor
  (655, 65500, 519, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 65),
  -- Froakie - Pound - Level 1
  (656, 65600, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Froakie - Growl - Level 1
  (656, 65600, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Froakie - Bubble - Level 5
  (656, 65600, 145, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Froakie - Quick Attack - Level 8
  (656, 65600, 98, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Froakie - Lick - Level 10
  (656, 65600, 122, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Froakie - Water Pulse - Level 14
  (656, 65600, 352, 13, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Froakie - Smokescreen - Level 18
  (656, 65600, 108, 13, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Froakie - Round - Level 21
  (656, 65600, 496, 13, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Froakie - Fling - Level 25
  (656, 65600, 374, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Froakie - Smack Down - Level 29
  (656, 65600, 479, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Froakie - Substitute - Level 35
  (656, 65600, 164, 13, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Froakie - Bounce - Level 39
  (656, 65600, 340, 13, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Froakie - Double Team - Level 43
  (656, 65600, 104, 13, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Froakie - Hydro Pump - Level 48
  (656, 65600, 56, 13, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Froakie - Toxic - TM06
  (656, 65600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Froakie - Hidden Power - TM10
  (656, 65600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Froakie - Taunt - TM12
  (656, 65600, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 17),
  -- Froakie - Ice Beam - TM13
  (656, 65600, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 18),
  -- Froakie - Blizzard - TM14
  (656, 65600, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 19),
  -- Froakie - Protect - TM17
  (656, 65600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Froakie - Rain Dance - TM18
  (656, 65600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Froakie - Frustration - TM21
  (656, 65600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Froakie - Smack Down - TM23
  (656, 65600, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 23),
  -- Froakie - Return - TM27
  (656, 65600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Froakie - Dig - TM28
  (656, 65600, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 25),
  -- Froakie - Double Team - TM32
  (656, 65600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Froakie - Rock Tomb - TM39
  (656, 65600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 27),
  -- Froakie - Aerial Ace - TM40
  (656, 65600, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 28),
  -- Froakie - Facade - TM42
  (656, 65600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Froakie - Rest - TM44
  (656, 65600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Froakie - Attract - TM45
  (656, 65600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Froakie - Thief - TM46
  (656, 65600, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 32),
  -- Froakie - Round - TM48
  (656, 65600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Froakie - Echoed Voice - TM49
  (656, 65600, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 34),
  -- Froakie - Scald - TM55
  (656, 65600, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 35),
  -- Froakie - Fling - TM56
  (656, 65600, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 36),
  -- Froakie - Acrobatics - TM62
  (656, 65600, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 37),
  -- Froakie - Rock Slide - TM80
  (656, 65600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 38),
  -- Froakie - Grass Knot - TM86
  (656, 65600, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 39),
  -- Froakie - Swagger - TM87
  (656, 65600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Froakie - Sleep Talk - TM88
  (656, 65600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Froakie - U-turn - TM89
  (656, 65600, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 42),
  -- Froakie - Substitute - TM90
  (656, 65600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 43),
  -- Froakie - Rock Smash - TM94
  (656, 65600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 44),
  -- Froakie - Power-Up Punch - TM98
  (656, 65600, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 45),
  -- Froakie - Confide - TM100
  (656, 65600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Froakie - Cut - HM01
  (656, 65600, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 47),
  -- Froakie - Surf - HM03
  (656, 65600, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 48),
  -- Froakie - Strength - HM04
  (656, 65600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 49),
  -- Froakie - Waterfall - HM05
  (656, 65600, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 50),
  -- Froakie - Mind Reader - Egg
  (656, 65600, 170, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Froakie - Camouflage - Egg
  (656, 65600, 293, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Froakie - Mud Sport - Egg
  (656, 65600, 300, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Froakie - Water Sport - Egg
  (656, 65600, 346, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Froakie - Toxic Spikes - Egg
  (656, 65600, 390, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Froakie - Bestow - Egg
  (656, 65600, 516, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Froakie - Water Pledge - Tutor
  (656, 65600, 518, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 57),
  -- Frogadier - Pound - Level 1
  (657, 65700, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Frogadier - Growl - Level 1
  (657, 65700, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Frogadier - Bubble - Level 5
  (657, 65700, 145, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Frogadier - Quick Attack - Level 8
  (657, 65700, 98, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Frogadier - Lick - Level 10
  (657, 65700, 122, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Frogadier - Water Pulse - Level 14
  (657, 65700, 352, 13, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Frogadier - Smokescreen - Level 20
  (657, 65700, 108, 13, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Frogadier - Round - Level 23
  (657, 65700, 496, 13, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Frogadier - Fling - Level 28
  (657, 65700, 374, 13, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Frogadier - Smack Down - Level 33
  (657, 65700, 479, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Frogadier - Substitute - Level 38
  (657, 65700, 164, 13, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Frogadier - Bounce - Level 44
  (657, 65700, 340, 13, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Frogadier - Double Team - Level 48
  (657, 65700, 104, 13, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Frogadier - Hydro Pump - Level 55
  (657, 65700, 56, 13, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Frogadier - Toxic - TM06
  (657, 65700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Frogadier - Hidden Power - TM10
  (657, 65700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Frogadier - Taunt - TM12
  (657, 65700, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 17),
  -- Frogadier - Ice Beam - TM13
  (657, 65700, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 18),
  -- Frogadier - Blizzard - TM14
  (657, 65700, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 19),
  -- Frogadier - Protect - TM17
  (657, 65700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Frogadier - Rain Dance - TM18
  (657, 65700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Frogadier - Frustration - TM21
  (657, 65700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Frogadier - Smack Down - TM23
  (657, 65700, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 23),
  -- Frogadier - Return - TM27
  (657, 65700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Frogadier - Dig - TM28
  (657, 65700, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 25),
  -- Frogadier - Double Team - TM32
  (657, 65700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Frogadier - Rock Tomb - TM39
  (657, 65700, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 27),
  -- Frogadier - Aerial Ace - TM40
  (657, 65700, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 28),
  -- Frogadier - Facade - TM42
  (657, 65700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Frogadier - Rest - TM44
  (657, 65700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Frogadier - Attract - TM45
  (657, 65700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Frogadier - Thief - TM46
  (657, 65700, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 32),
  -- Frogadier - Round - TM48
  (657, 65700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Frogadier - Echoed Voice - TM49
  (657, 65700, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 34),
  -- Frogadier - Scald - TM55
  (657, 65700, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 35),
  -- Frogadier - Fling - TM56
  (657, 65700, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 36),
  -- Frogadier - Acrobatics - TM62
  (657, 65700, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 37),
  -- Frogadier - Rock Slide - TM80
  (657, 65700, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 38),
  -- Frogadier - Grass Knot - TM86
  (657, 65700, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 39),
  -- Frogadier - Swagger - TM87
  (657, 65700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Frogadier - Sleep Talk - TM88
  (657, 65700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Frogadier - U-turn - TM89
  (657, 65700, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 42),
  -- Frogadier - Substitute - TM90
  (657, 65700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 43),
  -- Frogadier - Rock Smash - TM94
  (657, 65700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 44),
  -- Frogadier - Dark Pulse - TM97
  (657, 65700, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 45),
  -- Frogadier - Power-Up Punch - TM98
  (657, 65700, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 46),
  -- Frogadier - Confide - TM100
  (657, 65700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 47),
  -- Frogadier - Cut - HM01
  (657, 65700, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 48),
  -- Frogadier - Surf - HM03
  (657, 65700, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 49),
  -- Frogadier - Strength - HM04
  (657, 65700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 50),
  -- Frogadier - Waterfall - HM05
  (657, 65700, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 51),
  -- Frogadier - Water Pledge - Tutor
  (657, 65700, 518, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 52),
  -- Greninja - Pound - Level 1
  (658, 65800, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Greninja - Growl - Level 1
  (658, 65800, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Greninja - Role Play - Level 1
  (658, 65800, 272, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Greninja - Night Slash - Level 1
  (658, 65800, 400, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Greninja - Mat Block - Level 1
  (658, 65800, 561, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Greninja - Bubble - Level 5
  (658, 65800, 145, 13, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Greninja - Quick Attack - Level 8
  (658, 65800, 98, 13, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Greninja - Lick - Level 10
  (658, 65800, 122, 13, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Greninja - Water Pulse - Level 14
  (658, 65800, 352, 13, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Greninja - Smokescreen - Level 20
  (658, 65800, 108, 13, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Greninja - Shadow Sneak - Level 23
  (658, 65800, 425, 13, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Greninja - Spikes - Level 28
  (658, 65800, 191, 13, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Greninja - Feint Attack - Level 33
  (658, 65800, 185, 13, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Greninja - Water Shuriken - Level 36
  (658, 65800, 594, 13, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Greninja - Substitute - Level 43
  (658, 65800, 164, 13, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Greninja - Extrasensory - Level 49
  (658, 65800, 326, 13, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Greninja - Double Team - Level 52
  (658, 65800, 104, 13, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Greninja - Haze - Level 56
  (658, 65800, 114, 13, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Greninja - Hydro Pump - Level 60
  (658, 65800, 56, 13, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Greninja - Night Slash - Level 70
  (658, 65800, 400, 13, NULL, 1, 70, NULL, NULL, NULL, 20),
  -- Greninja - Water Shuriken - Level 75
  (658, 65800, 594, 13, NULL, 1, 75, NULL, NULL, NULL, 21),
  -- Greninja - Toxic - TM06
  (658, 65800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Greninja - Hidden Power - TM10
  (658, 65800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Greninja - Taunt - TM12
  (658, 65800, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 24),
  -- Greninja - Ice Beam - TM13
  (658, 65800, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 25),
  -- Greninja - Blizzard - TM14
  (658, 65800, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 26),
  -- Greninja - Hyper Beam - TM15
  (658, 65800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 27),
  -- Greninja - Protect - TM17
  (658, 65800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 28),
  -- Greninja - Rain Dance - TM18
  (658, 65800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 29),
  -- Greninja - Frustration - TM21
  (658, 65800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 30),
  -- Greninja - Smack Down - TM23
  (658, 65800, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 31),
  -- Greninja - Return - TM27
  (658, 65800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 32),
  -- Greninja - Dig - TM28
  (658, 65800, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 33),
  -- Greninja - Double Team - TM32
  (658, 65800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Greninja - Rock Tomb - TM39
  (658, 65800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 35),
  -- Greninja - Aerial Ace - TM40
  (658, 65800, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 36),
  -- Greninja - Facade - TM42
  (658, 65800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 37),
  -- Greninja - Rest - TM44
  (658, 65800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 38),
  -- Greninja - Attract - TM45
  (658, 65800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 39),
  -- Greninja - Thief - TM46
  (658, 65800, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 40),
  -- Greninja - Round - TM48
  (658, 65800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Greninja - Echoed Voice - TM49
  (658, 65800, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 42),
  -- Greninja - Scald - TM55
  (658, 65800, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 43),
  -- Greninja - Fling - TM56
  (658, 65800, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 44),
  -- Greninja - Acrobatics - TM62
  (658, 65800, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 45),
  -- Greninja - Giga Impact - TM68
  (658, 65800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 46),
  -- Greninja - Rock Slide - TM80
  (658, 65800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 47),
  -- Greninja - Grass Knot - TM86
  (658, 65800, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 48),
  -- Greninja - Swagger - TM87
  (658, 65800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 49),
  -- Greninja - Sleep Talk - TM88
  (658, 65800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 50),
  -- Greninja - U-turn - TM89
  (658, 65800, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 51),
  -- Greninja - Substitute - TM90
  (658, 65800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 52),
  -- Greninja - Rock Smash - TM94
  (658, 65800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 53),
  -- Greninja - Dark Pulse - TM97
  (658, 65800, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 54),
  -- Greninja - Power-Up Punch - TM98
  (658, 65800, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 55),
  -- Greninja - Confide - TM100
  (658, 65800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 56),
  -- Greninja - Cut - HM01
  (658, 65800, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 57),
  -- Greninja - Surf - HM03
  (658, 65800, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 58),
  -- Greninja - Strength - HM04
  (658, 65800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 59),
  -- Greninja - Waterfall - HM05
  (658, 65800, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 60),
  -- Greninja - Hydro Cannon - Tutor
  (658, 65800, 308, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 61),
  -- Greninja - Water Pledge - Tutor
  (658, 65800, 518, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 62),
  -- Bunnelby - Tackle - Level 1
  (659, 65900, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bunnelby - Leer - Level 1
  (659, 65900, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bunnelby - Agility - Level 1
  (659, 65900, 97, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bunnelby - Quick Attack - Level 7
  (659, 65900, 98, 13, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Bunnelby - Double Slap - Level 10
  (659, 65900, 3, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Bunnelby - Mud-Slap - Level 13
  (659, 65900, 189, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Bunnelby - Take Down - Level 15
  (659, 65900, 36, 13, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Bunnelby - Mud Shot - Level 18
  (659, 65900, 341, 13, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Bunnelby - Double Kick - Level 20
  (659, 65900, 24, 13, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Bunnelby - Odor Sleuth - Level 25
  (659, 65900, 316, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Bunnelby - Flail - Level 29
  (659, 65900, 175, 13, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Bunnelby - Dig - Level 33
  (659, 65900, 91, 13, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Bunnelby - Bounce - Level 38
  (659, 65900, 340, 13, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Bunnelby - Super Fang - Level 42
  (659, 65900, 162, 13, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Bunnelby - Facade - Level 47
  (659, 65900, 263, 13, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Bunnelby - Earthquake - Level 49
  (659, 65900, 89, 13, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Bunnelby - Toxic - TM06
  (659, 65900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Bunnelby - Bulk Up - TM08
  (659, 65900, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 18),
  -- Bunnelby - Hidden Power - TM10
  (659, 65900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Bunnelby - Protect - TM17
  (659, 65900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Bunnelby - Frustration - TM21
  (659, 65900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Bunnelby - Smack Down - TM23
  (659, 65900, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 22),
  -- Bunnelby - Earthquake - TM26
  (659, 65900, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 23),
  -- Bunnelby - Return - TM27
  (659, 65900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Bunnelby - Dig - TM28
  (659, 65900, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 25),
  -- Bunnelby - Brick Break - TM31
  (659, 65900, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 26),
  -- Bunnelby - Double Team - TM32
  (659, 65900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Bunnelby - Sludge Bomb - TM36
  (659, 65900, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 28),
  -- Bunnelby - Sandstorm - TM37
  (659, 65900, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 29),
  -- Bunnelby - Rock Tomb - TM39
  (659, 65900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 30),
  -- Bunnelby - Torment - TM41
  (659, 65900, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 31),
  -- Bunnelby - Facade - TM42
  (659, 65900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Bunnelby - Rest - TM44
  (659, 65900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Bunnelby - Attract - TM45
  (659, 65900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Bunnelby - Thief - TM46
  (659, 65900, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 35),
  -- Bunnelby - Round - TM48
  (659, 65900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 36),
  -- Bunnelby - Fling - TM56
  (659, 65900, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 37),
  -- Bunnelby - Payback - TM66
  (659, 65900, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 38),
  -- Bunnelby - Stone Edge - TM71
  (659, 65900, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 39),
  -- Bunnelby - Bulldoze - TM78
  (659, 65900, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 40),
  -- Bunnelby - Rock Slide - TM80
  (659, 65900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 41),
  -- Bunnelby - Grass Knot - TM86
  (659, 65900, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 42),
  -- Bunnelby - Swagger - TM87
  (659, 65900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 43),
  -- Bunnelby - Sleep Talk - TM88
  (659, 65900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 44),
  -- Bunnelby - U-turn - TM89
  (659, 65900, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 45),
  -- Bunnelby - Substitute - TM90
  (659, 65900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 46),
  -- Bunnelby - Wild Charge - TM93
  (659, 65900, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 47),
  -- Bunnelby - Rock Smash - TM94
  (659, 65900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 48),
  -- Bunnelby - Nature Power - TM96
  (659, 65900, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 49),
  -- Bunnelby - Power-Up Punch - TM98
  (659, 65900, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 50),
  -- Bunnelby - Confide - TM100
  (659, 65900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 51),
  -- Bunnelby - Cut - HM01
  (659, 65900, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 52),
  -- Bunnelby - Surf - HM03
  (659, 65900, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 53),
  -- Bunnelby - Strength - HM04
  (659, 65900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 54),
  -- Bunnelby - Defense Curl - Egg
  (659, 65900, 111, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Bunnelby - Spikes - Egg
  (659, 65900, 191, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Bunnelby - Rollout - Egg
  (659, 65900, 205, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Diggersby - Swords Dance - Level 1
  (660, 66000, 14, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Diggersby - Tackle - Level 1
  (660, 66000, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Diggersby - Leer - Level 1
  (660, 66000, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Diggersby - Agility - Level 1
  (660, 66000, 97, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Diggersby - Hammer Arm - Level 1
  (660, 66000, 359, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Diggersby - Bulldoze - Level 1
  (660, 66000, 523, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Diggersby - Rototiller - Level 1
  (660, 66000, 563, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Diggersby - Quick Attack - Level 7
  (660, 66000, 98, 13, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Diggersby - Mud-Slap - Level 13
  (660, 66000, 189, 13, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Diggersby - Take Down - Level 15
  (660, 66000, 36, 13, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Diggersby - Mud Shot - Level 18
  (660, 66000, 341, 13, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Diggersby - Double Kick - Level 20
  (660, 66000, 24, 13, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Diggersby - Odor Sleuth - Level 26
  (660, 66000, 316, 13, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Diggersby - Flail - Level 31
  (660, 66000, 175, 13, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Diggersby - Dig - Level 37
  (660, 66000, 91, 13, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Diggersby - Bounce - Level 42
  (660, 66000, 340, 13, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Diggersby - Super Fang - Level 48
  (660, 66000, 162, 13, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Diggersby - Facade - Level 53
  (660, 66000, 263, 13, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Diggersby - Earthquake - Level 57
  (660, 66000, 89, 13, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Diggersby - Hammer Arm - Level 60
  (660, 66000, 359, 13, NULL, 1, 60, NULL, NULL, NULL, 20),
  -- Diggersby - Toxic - TM06
  (660, 66000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Diggersby - Bulk Up - TM08
  (660, 66000, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 22),
  -- Diggersby - Hidden Power - TM10
  (660, 66000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Diggersby - Hyper Beam - TM15
  (660, 66000, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Diggersby - Protect - TM17
  (660, 66000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Diggersby - Frustration - TM21
  (660, 66000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Diggersby - Smack Down - TM23
  (660, 66000, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 27),
  -- Diggersby - Earthquake - TM26
  (660, 66000, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 28),
  -- Diggersby - Return - TM27
  (660, 66000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Diggersby - Dig - TM28
  (660, 66000, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 30),
  -- Diggersby - Brick Break - TM31
  (660, 66000, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 31),
  -- Diggersby - Double Team - TM32
  (660, 66000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Diggersby - Sludge Bomb - TM36
  (660, 66000, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 33),
  -- Diggersby - Sandstorm - TM37
  (660, 66000, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 34),
  -- Diggersby - Rock Tomb - TM39
  (660, 66000, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 35),
  -- Diggersby - Torment - TM41
  (660, 66000, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 36),
  -- Diggersby - Facade - TM42
  (660, 66000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 37),
  -- Diggersby - Rest - TM44
  (660, 66000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 38),
  -- Diggersby - Attract - TM45
  (660, 66000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 39),
  -- Diggersby - Thief - TM46
  (660, 66000, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 40),
  -- Diggersby - Round - TM48
  (660, 66000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Diggersby - Fling - TM56
  (660, 66000, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 42),
  -- Diggersby - Payback - TM66
  (660, 66000, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 43),
  -- Diggersby - Giga Impact - TM68
  (660, 66000, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 44),
  -- Diggersby - Stone Edge - TM71
  (660, 66000, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 45),
  -- Diggersby - Swords Dance - TM75
  (660, 66000, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 46),
  -- Diggersby - Bulldoze - TM78
  (660, 66000, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 47),
  -- Diggersby - Rock Slide - TM80
  (660, 66000, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 48),
  -- Diggersby - Grass Knot - TM86
  (660, 66000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 49),
  -- Diggersby - Swagger - TM87
  (660, 66000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 50),
  -- Diggersby - Sleep Talk - TM88
  (660, 66000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 51),
  -- Diggersby - U-turn - TM89
  (660, 66000, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 52),
  -- Diggersby - Substitute - TM90
  (660, 66000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 53),
  -- Diggersby - Wild Charge - TM93
  (660, 66000, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 54),
  -- Diggersby - Rock Smash - TM94
  (660, 66000, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 55),
  -- Diggersby - Nature Power - TM96
  (660, 66000, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 56),
  -- Diggersby - Power-Up Punch - TM98
  (660, 66000, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 57),
  -- Diggersby - Confide - TM100
  (660, 66000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 58),
  -- Diggersby - Cut - HM01
  (660, 66000, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 59),
  -- Diggersby - Surf - HM03
  (660, 66000, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 60),
  -- Diggersby - Strength - HM04
  (660, 66000, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 61),
  -- Fletchling - Tackle - Level 1
  (661, 66100, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fletchling - Growl - Level 1
  (661, 66100, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fletchling - Quick Attack - Level 6
  (661, 66100, 98, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Fletchling - Peck - Level 10
  (661, 66100, 64, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Fletchling - Agility - Level 13
  (661, 66100, 97, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Fletchling - Flail - Level 16
  (661, 66100, 175, 13, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Fletchling - Roost - Level 21
  (661, 66100, 355, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Fletchling - Razor Wind - Level 25
  (661, 66100, 13, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Fletchling - Natural Gift - Level 29
  (661, 66100, 363, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Fletchling - Flame Charge - Level 34
  (661, 66100, 488, 13, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Fletchling - Acrobatics - Level 39
  (661, 66100, 512, 13, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Fletchling - Me First - Level 41
  (661, 66100, 382, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Fletchling - Tailwind - Level 45
  (661, 66100, 366, 13, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Fletchling - Steel Wing - Level 48
  (661, 66100, 211, 13, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Fletchling - Toxic - TM06
  (661, 66100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Fletchling - Hidden Power - TM10
  (661, 66100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Fletchling - Sunny Day - TM11
  (661, 66100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 17),
  -- Fletchling - Taunt - TM12
  (661, 66100, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 18),
  -- Fletchling - Protect - TM17
  (661, 66100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Fletchling - Roost - TM19
  (661, 66100, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 20),
  -- Fletchling - Frustration - TM21
  (661, 66100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Fletchling - Return - TM27
  (661, 66100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 22),
  -- Fletchling - Double Team - TM32
  (661, 66100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 23),
  -- Fletchling - Aerial Ace - TM40
  (661, 66100, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 24),
  -- Fletchling - Facade - TM42
  (661, 66100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 25),
  -- Fletchling - Flame Charge - TM43
  (661, 66100, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 26),
  -- Fletchling - Rest - TM44
  (661, 66100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Fletchling - Attract - TM45
  (661, 66100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Fletchling - Thief - TM46
  (661, 66100, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 29),
  -- Fletchling - Round - TM48
  (661, 66100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 30),
  -- Fletchling - Overheat - TM50
  (661, 66100, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 31),
  -- Fletchling - Steel Wing - TM51
  (661, 66100, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 32),
  -- Fletchling - Acrobatics - TM62
  (661, 66100, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 33),
  -- Fletchling - Swords Dance - TM75
  (661, 66100, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 34),
  -- Fletchling - Swagger - TM87
  (661, 66100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 35),
  -- Fletchling - Sleep Talk - TM88
  (661, 66100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 36),
  -- Fletchling - U-turn - TM89
  (661, 66100, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 37),
  -- Fletchling - Substitute - TM90
  (661, 66100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 38),
  -- Fletchling - Confide - TM100
  (661, 66100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 39),
  -- Fletchling - Fly - HM02
  (661, 66100, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 40),
  -- Fletchling - Snatch - Egg
  (661, 66100, 289, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Fletchling - Tailwind - Egg
  (661, 66100, 366, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Fletchling - Quick Guard - Egg
  (661, 66100, 501, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Fletchinder - Tackle - Level 1
  (662, 66200, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fletchinder - Growl - Level 1
  (662, 66200, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fletchinder - Quick Attack - Level 6
  (662, 66200, 98, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Fletchinder - Peck - Level 10
  (662, 66200, 64, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Fletchinder - Agility - Level 13
  (662, 66200, 97, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Fletchinder - Flail - Level 16
  (662, 66200, 175, 13, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Fletchinder - Ember - Level 17
  (662, 66200, 52, 13, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Fletchinder - Roost - Level 25
  (662, 66200, 355, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Fletchinder - Razor Wind - Level 27
  (662, 66200, 13, 13, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Fletchinder - Natural Gift - Level 31
  (662, 66200, 363, 13, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Fletchinder - Flame Charge - Level 38
  (662, 66200, 488, 13, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Fletchinder - Acrobatics - Level 42
  (662, 66200, 512, 13, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Fletchinder - Me First - Level 46
  (662, 66200, 382, 13, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Fletchinder - Tailwind - Level 51
  (662, 66200, 366, 13, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Fletchinder - Steel Wing - Level 55
  (662, 66200, 211, 13, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Fletchinder - Toxic - TM06
  (662, 66200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Fletchinder - Hidden Power - TM10
  (662, 66200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Fletchinder - Sunny Day - TM11
  (662, 66200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 18),
  -- Fletchinder - Taunt - TM12
  (662, 66200, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 19),
  -- Fletchinder - Protect - TM17
  (662, 66200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Fletchinder - Roost - TM19
  (662, 66200, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 21),
  -- Fletchinder - Frustration - TM21
  (662, 66200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Fletchinder - Return - TM27
  (662, 66200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Fletchinder - Double Team - TM32
  (662, 66200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 24),
  -- Fletchinder - Flamethrower - TM35
  (662, 66200, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 25),
  -- Fletchinder - Fire Blast - TM38
  (662, 66200, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 26),
  -- Fletchinder - Aerial Ace - TM40
  (662, 66200, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 27),
  -- Fletchinder - Facade - TM42
  (662, 66200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 28),
  -- Fletchinder - Flame Charge - TM43
  (662, 66200, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 29),
  -- Fletchinder - Rest - TM44
  (662, 66200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Fletchinder - Attract - TM45
  (662, 66200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Fletchinder - Thief - TM46
  (662, 66200, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 32),
  -- Fletchinder - Round - TM48
  (662, 66200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Fletchinder - Overheat - TM50
  (662, 66200, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 34),
  -- Fletchinder - Steel Wing - TM51
  (662, 66200, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 35),
  -- Fletchinder - Incinerate - TM59
  (662, 66200, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 36),
  -- Fletchinder - Will-O-Wisp - TM61
  (662, 66200, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 37),
  -- Fletchinder - Acrobatics - TM62
  (662, 66200, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 38),
  -- Fletchinder - Swords Dance - TM75
  (662, 66200, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 39),
  -- Fletchinder - Swagger - TM87
  (662, 66200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Fletchinder - Sleep Talk - TM88
  (662, 66200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Fletchinder - U-turn - TM89
  (662, 66200, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 42),
  -- Fletchinder - Substitute - TM90
  (662, 66200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 43),
  -- Fletchinder - Confide - TM100
  (662, 66200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 44),
  -- Fletchinder - Fly - HM02
  (662, 66200, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 45),
  -- Talonflame - Tackle - Level 1
  (663, 66300, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Talonflame - Growl - Level 1
  (663, 66300, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Talonflame - Flare Blitz - Level 1
  (663, 66300, 394, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Talonflame - Brave Bird - Level 1
  (663, 66300, 413, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Talonflame - Quick Attack - Level 6
  (663, 66300, 98, 13, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Talonflame - Peck - Level 10
  (663, 66300, 64, 13, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Talonflame - Agility - Level 13
  (663, 66300, 97, 13, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Talonflame - Flail - Level 16
  (663, 66300, 175, 13, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Talonflame - Ember - Level 17
  (663, 66300, 52, 13, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Talonflame - Roost - Level 25
  (663, 66300, 355, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Talonflame - Razor Wind - Level 27
  (663, 66300, 13, 13, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Talonflame - Natural Gift - Level 31
  (663, 66300, 363, 13, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Talonflame - Flame Charge - Level 39
  (663, 66300, 488, 13, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Talonflame - Acrobatics - Level 44
  (663, 66300, 512, 13, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Talonflame - Me First - Level 49
  (663, 66300, 382, 13, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Talonflame - Tailwind - Level 55
  (663, 66300, 366, 13, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Talonflame - Steel Wing - Level 60
  (663, 66300, 211, 13, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Talonflame - Brave Bird - Level 64
  (663, 66300, 413, 13, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Talonflame - Hone Claws - TM01
  (663, 66300, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 19),
  -- Talonflame - Toxic - TM06
  (663, 66300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Talonflame - Bulk Up - TM08
  (663, 66300, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 21),
  -- Talonflame - Hidden Power - TM10
  (663, 66300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Talonflame - Sunny Day - TM11
  (663, 66300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Talonflame - Taunt - TM12
  (663, 66300, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 24),
  -- Talonflame - Hyper Beam - TM15
  (663, 66300, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Talonflame - Protect - TM17
  (663, 66300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Talonflame - Roost - TM19
  (663, 66300, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 27),
  -- Talonflame - Frustration - TM21
  (663, 66300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Talonflame - Solar Beam - TM22
  (663, 66300, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 29),
  -- Talonflame - Return - TM27
  (663, 66300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Talonflame - Double Team - TM32
  (663, 66300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Talonflame - Flamethrower - TM35
  (663, 66300, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 32),
  -- Talonflame - Fire Blast - TM38
  (663, 66300, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 33),
  -- Talonflame - Aerial Ace - TM40
  (663, 66300, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 34),
  -- Talonflame - Facade - TM42
  (663, 66300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Talonflame - Flame Charge - TM43
  (663, 66300, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 36),
  -- Talonflame - Rest - TM44
  (663, 66300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Talonflame - Attract - TM45
  (663, 66300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Talonflame - Thief - TM46
  (663, 66300, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 39),
  -- Talonflame - Round - TM48
  (663, 66300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 40),
  -- Talonflame - Overheat - TM50
  (663, 66300, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 41),
  -- Talonflame - Steel Wing - TM51
  (663, 66300, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 42),
  -- Talonflame - Incinerate - TM59
  (663, 66300, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 43),
  -- Talonflame - Will-O-Wisp - TM61
  (663, 66300, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 44),
  -- Talonflame - Acrobatics - TM62
  (663, 66300, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 45),
  -- Talonflame - Giga Impact - TM68
  (663, 66300, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 46),
  -- Talonflame - Swords Dance - TM75
  (663, 66300, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 47),
  -- Talonflame - Swagger - TM87
  (663, 66300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Talonflame - Sleep Talk - TM88
  (663, 66300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Talonflame - U-turn - TM89
  (663, 66300, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 50),
  -- Talonflame - Substitute - TM90
  (663, 66300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 51),
  -- Talonflame - Confide - TM100
  (663, 66300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 52),
  -- Talonflame - Fly - HM02
  (663, 66300, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 53),
  -- Scatterbug - Tackle - Level 1
  (664, 66400, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scatterbug - String Shot - Level 1
  (664, 66400, 81, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scatterbug - Stun Spore - Level 6
  (664, 66400, 78, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Scatterbug - Bug Bite - Level 15
  (664, 66400, 450, 13, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Scatterbug - Poison Powder - Egg
  (664, 66400, 77, 13, NULL, 5, NULL, NULL, NULL, NULL, 5),
  -- Scatterbug - Stun Spore - Egg
  (664, 66400, 78, 13, NULL, 5, NULL, NULL, NULL, NULL, 6),
  -- Scatterbug - Rage Powder - Egg
  (664, 66400, 476, 13, NULL, 5, NULL, NULL, NULL, NULL, 7),
  -- Spewpa - Harden - Level 1
  (665, 66500, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spewpa - Protect - Level 9
  (665, 66500, 182, 13, NULL, 1, 9, NULL, NULL, NULL, 2),
  -- Spewpa - Protect - TM17
  (665, 66500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 3),
  -- Vivillon - Gust - Level 1
  (666, 66600, 16, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vivillon - Poison Powder - Level 1
  (666, 66600, 77, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vivillon - Stun Spore - Level 1
  (666, 66600, 78, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vivillon - Sleep Powder - Level 1
  (666, 66600, 79, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vivillon - Light Screen - Level 1
  (666, 66600, 113, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vivillon - Powder - Level 1
  (666, 66600, 600, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Vivillon - Struggle Bug - Level 12
  (666, 66600, 522, 13, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Vivillon - Psybeam - Level 17
  (666, 66600, 60, 13, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Vivillon - Supersonic - Level 21
  (666, 66600, 48, 13, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Vivillon - Draining Kiss - Level 25
  (666, 66600, 577, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Vivillon - Aromatherapy - Level 31
  (666, 66600, 312, 13, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Vivillon - Bug Buzz - Level 35
  (666, 66600, 405, 13, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Vivillon - Safeguard - Level 41
  (666, 66600, 219, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Vivillon - Quiver Dance - Level 45
  (666, 66600, 483, 13, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Vivillon - Hurricane - Level 50
  (666, 66600, 542, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Vivillon - Powder - Level 55
  (666, 66600, 600, 13, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Vivillon - Calm Mind - TM04
  (666, 66600, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 17),
  -- Vivillon - Toxic - TM06
  (666, 66600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Vivillon - Hidden Power - TM10
  (666, 66600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Vivillon - Sunny Day - TM11
  (666, 66600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Vivillon - Hyper Beam - TM15
  (666, 66600, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 21),
  -- Vivillon - Light Screen - TM16
  (666, 66600, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 22),
  -- Vivillon - Protect - TM17
  (666, 66600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Vivillon - Rain Dance - TM18
  (666, 66600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Vivillon - Roost - TM19
  (666, 66600, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 25),
  -- Vivillon - Safeguard - TM20
  (666, 66600, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 26),
  -- Vivillon - Frustration - TM21
  (666, 66600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Vivillon - Solar Beam - TM22
  (666, 66600, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 28),
  -- Vivillon - Return - TM27
  (666, 66600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Vivillon - Psychic - TM29
  (666, 66600, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 30),
  -- Vivillon - Double Team - TM32
  (666, 66600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Vivillon - Aerial Ace - TM40
  (666, 66600, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 32),
  -- Vivillon - Facade - TM42
  (666, 66600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 33),
  -- Vivillon - Rest - TM44
  (666, 66600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Vivillon - Attract - TM45
  (666, 66600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 35),
  -- Vivillon - Thief - TM46
  (666, 66600, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 36),
  -- Vivillon - Round - TM48
  (666, 66600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Vivillon - Energy Ball - TM53
  (666, 66600, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 38),
  -- Vivillon - Acrobatics - TM62
  (666, 66600, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 39),
  -- Vivillon - Giga Impact - TM68
  (666, 66600, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 40),
  -- Vivillon - Flash - TM70
  (666, 66600, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 41),
  -- Vivillon - Struggle Bug - TM76
  (666, 66600, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 42),
  -- Vivillon - Psych Up - TM77
  (666, 66600, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 43),
  -- Vivillon - Infestation - TM83
  (666, 66600, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 44),
  -- Vivillon - Dream Eater - TM85
  (666, 66600, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 45),
  -- Vivillon - Swagger - TM87
  (666, 66600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 46),
  -- Vivillon - Sleep Talk - TM88
  (666, 66600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 47),
  -- Vivillon - U-turn - TM89
  (666, 66600, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 48),
  -- Vivillon - Substitute - TM90
  (666, 66600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 49),
  -- Vivillon - Confide - TM100
  (666, 66600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 50),
  -- Litleo - Tackle - Level 1
  (667, 66700, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Litleo - Leer - Level 1
  (667, 66700, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Litleo - Ember - Level 5
  (667, 66700, 52, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Litleo - Work Up - Level 8
  (667, 66700, 526, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Litleo - Headbutt - Level 11
  (667, 66700, 29, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Litleo - Noble Roar - Level 15
  (667, 66700, 568, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Litleo - Take Down - Level 20
  (667, 66700, 36, 13, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Litleo - Fire Fang - Level 23
  (667, 66700, 424, 13, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Litleo - Endeavor - Level 28
  (667, 66700, 283, 13, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Litleo - Echoed Voice - Level 33
  (667, 66700, 497, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Litleo - Flamethrower - Level 36
  (667, 66700, 53, 13, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Litleo - Crunch - Level 39
  (667, 66700, 242, 13, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Litleo - Hyper Voice - Level 43
  (667, 66700, 304, 13, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Litleo - Incinerate - Level 46
  (667, 66700, 510, 13, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Litleo - Overheat - Level 50
  (667, 66700, 315, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Litleo - Roar - TM05
  (667, 66700, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 16),
  -- Litleo - Toxic - TM06
  (667, 66700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Litleo - Hidden Power - TM10
  (667, 66700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Litleo - Sunny Day - TM11
  (667, 66700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Litleo - Taunt - TM12
  (667, 66700, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 20),
  -- Litleo - Protect - TM17
  (667, 66700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Litleo - Rain Dance - TM18
  (667, 66700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Litleo - Frustration - TM21
  (667, 66700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Litleo - Solar Beam - TM22
  (667, 66700, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 24),
  -- Litleo - Return - TM27
  (667, 66700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Litleo - Dig - TM28
  (667, 66700, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 26),
  -- Litleo - Double Team - TM32
  (667, 66700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Litleo - Flamethrower - TM35
  (667, 66700, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 28),
  -- Litleo - Fire Blast - TM38
  (667, 66700, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 29),
  -- Litleo - Facade - TM42
  (667, 66700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Litleo - Flame Charge - TM43
  (667, 66700, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 31),
  -- Litleo - Rest - TM44
  (667, 66700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Litleo - Attract - TM45
  (667, 66700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Litleo - Thief - TM46
  (667, 66700, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 34),
  -- Litleo - Round - TM48
  (667, 66700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Litleo - Echoed Voice - TM49
  (667, 66700, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 36),
  -- Litleo - Overheat - TM50
  (667, 66700, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 37),
  -- Litleo - Incinerate - TM59
  (667, 66700, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 38),
  -- Litleo - Will-O-Wisp - TM61
  (667, 66700, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 39),
  -- Litleo - Payback - TM66
  (667, 66700, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 40),
  -- Litleo - Retaliate - TM67
  (667, 66700, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 41),
  -- Litleo - Bulldoze - TM78
  (667, 66700, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 42),
  -- Litleo - Swagger - TM87
  (667, 66700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 43),
  -- Litleo - Sleep Talk - TM88
  (667, 66700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 44),
  -- Litleo - Substitute - TM90
  (667, 66700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 45),
  -- Litleo - Wild Charge - TM93
  (667, 66700, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 46),
  -- Litleo - Rock Smash - TM94
  (667, 66700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 47),
  -- Litleo - Snarl - TM95
  (667, 66700, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 48),
  -- Litleo - Dark Pulse - TM97
  (667, 66700, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 49),
  -- Litleo - Confide - TM100
  (667, 66700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 50),
  -- Litleo - Strength - HM04
  (667, 66700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 51),
  -- Litleo - Fire Spin - Egg
  (667, 66700, 83, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Litleo - Yawn - Egg
  (667, 66700, 281, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Litleo - Snatch - Egg
  (667, 66700, 289, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Litleo - Entrainment - Egg
  (667, 66700, 494, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pyroar - Tackle - Level 1
  (668, 66800, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pyroar - Leer - Level 1
  (668, 66800, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pyroar - Hyper Beam - Level 1
  (668, 66800, 63, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pyroar - Ember - Level 5
  (668, 66800, 52, 13, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Pyroar - Work Up - Level 8
  (668, 66800, 526, 13, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Pyroar - Headbutt - Level 11
  (668, 66800, 29, 13, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Pyroar - Noble Roar - Level 15
  (668, 66800, 568, 13, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Pyroar - Take Down - Level 20
  (668, 66800, 36, 13, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Pyroar - Fire Fang - Level 23
  (668, 66800, 424, 13, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Pyroar - Endeavor - Level 28
  (668, 66800, 283, 13, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Pyroar - Echoed Voice - Level 33
  (668, 66800, 497, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Pyroar - Flamethrower - Level 38
  (668, 66800, 53, 13, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Pyroar - Crunch - Level 42
  (668, 66800, 242, 13, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Pyroar - Hyper Voice - Level 48
  (668, 66800, 304, 13, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Pyroar - Incinerate - Level 51
  (668, 66800, 510, 13, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Pyroar - Overheat - Level 57
  (668, 66800, 315, 13, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Pyroar - Roar - TM05
  (668, 66800, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 17),
  -- Pyroar - Toxic - TM06
  (668, 66800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Pyroar - Hidden Power - TM10
  (668, 66800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Pyroar - Sunny Day - TM11
  (668, 66800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Pyroar - Taunt - TM12
  (668, 66800, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 21),
  -- Pyroar - Hyper Beam - TM15
  (668, 66800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 22),
  -- Pyroar - Protect - TM17
  (668, 66800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Pyroar - Rain Dance - TM18
  (668, 66800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Pyroar - Frustration - TM21
  (668, 66800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Pyroar - Solar Beam - TM22
  (668, 66800, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 26),
  -- Pyroar - Return - TM27
  (668, 66800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Pyroar - Dig - TM28
  (668, 66800, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 28),
  -- Pyroar - Double Team - TM32
  (668, 66800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Pyroar - Flamethrower - TM35
  (668, 66800, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 30),
  -- Pyroar - Fire Blast - TM38
  (668, 66800, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 31),
  -- Pyroar - Facade - TM42
  (668, 66800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Pyroar - Flame Charge - TM43
  (668, 66800, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 33),
  -- Pyroar - Rest - TM44
  (668, 66800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Pyroar - Attract - TM45
  (668, 66800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 35),
  -- Pyroar - Thief - TM46
  (668, 66800, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 36),
  -- Pyroar - Round - TM48
  (668, 66800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Pyroar - Echoed Voice - TM49
  (668, 66800, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 38),
  -- Pyroar - Overheat - TM50
  (668, 66800, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 39),
  -- Pyroar - Incinerate - TM59
  (668, 66800, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 40),
  -- Pyroar - Will-O-Wisp - TM61
  (668, 66800, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 41),
  -- Pyroar - Payback - TM66
  (668, 66800, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 42),
  -- Pyroar - Retaliate - TM67
  (668, 66800, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 43),
  -- Pyroar - Giga Impact - TM68
  (668, 66800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 44),
  -- Pyroar - Bulldoze - TM78
  (668, 66800, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 45),
  -- Pyroar - Swagger - TM87
  (668, 66800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 46),
  -- Pyroar - Sleep Talk - TM88
  (668, 66800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 47),
  -- Pyroar - Substitute - TM90
  (668, 66800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 48),
  -- Pyroar - Wild Charge - TM93
  (668, 66800, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 49),
  -- Pyroar - Rock Smash - TM94
  (668, 66800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 50),
  -- Pyroar - Snarl - TM95
  (668, 66800, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 51),
  -- Pyroar - Dark Pulse - TM97
  (668, 66800, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 52),
  -- Pyroar - Confide - TM100
  (668, 66800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 53),
  -- Pyroar - Strength - HM04
  (668, 66800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 54),
  -- Flabebe - Vine Whip - Level 1
  (669, 66900, 22, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flabebe - Tackle - Level 1
  (669, 66900, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flabebe - Fairy Wind - Level 6
  (669, 66900, 584, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Flabebe - Lucky Chant - Level 10
  (669, 66900, 381, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Flabebe - Razor Leaf - Level 15
  (669, 66900, 75, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Flabebe - Wish - Level 20
  (669, 66900, 273, 13, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Flabebe - Magical Leaf - Level 22
  (669, 66900, 345, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Flabebe - Grassy Terrain - Level 24
  (669, 66900, 580, 13, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Flabebe - Petal Blizzard - Level 28
  (669, 66900, 572, 13, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Flabebe - Aromatherapy - Level 33
  (669, 66900, 312, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Flabebe - Misty Terrain - Level 37
  (669, 66900, 581, 13, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Flabebe - Moonblast - Level 41
  (669, 66900, 585, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Flabebe - Petal Dance - Level 45
  (669, 66900, 80, 13, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Flabebe - Solar Beam - Level 48
  (669, 66900, 76, 13, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Flabebe - Calm Mind - TM04
  (669, 66900, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 15),
  -- Flabebe - Toxic - TM06
  (669, 66900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Flabebe - Hidden Power - TM10
  (669, 66900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Flabebe - Sunny Day - TM11
  (669, 66900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 18),
  -- Flabebe - Protect - TM17
  (669, 66900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Flabebe - Rain Dance - TM18
  (669, 66900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Flabebe - Safeguard - TM20
  (669, 66900, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 21),
  -- Flabebe - Frustration - TM21
  (669, 66900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Flabebe - Solar Beam - TM22
  (669, 66900, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 23),
  -- Flabebe - Return - TM27
  (669, 66900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Flabebe - Psychic - TM29
  (669, 66900, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 25),
  -- Flabebe - Double Team - TM32
  (669, 66900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Flabebe - Facade - TM42
  (669, 66900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 27),
  -- Flabebe - Rest - TM44
  (669, 66900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 28),
  -- Flabebe - Attract - TM45
  (669, 66900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 29),
  -- Flabebe - Round - TM48
  (669, 66900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 30),
  -- Flabebe - Echoed Voice - TM49
  (669, 66900, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 31),
  -- Flabebe - Energy Ball - TM53
  (669, 66900, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 32),
  -- Flabebe - Flash - TM70
  (669, 66900, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 33),
  -- Flabebe - Grass Knot - TM86
  (669, 66900, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 34),
  -- Flabebe - Swagger - TM87
  (669, 66900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 35),
  -- Flabebe - Sleep Talk - TM88
  (669, 66900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 36),
  -- Flabebe - Substitute - TM90
  (669, 66900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 37),
  -- Flabebe - Nature Power - TM96
  (669, 66900, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 38),
  -- Flabebe - Dazzling Gleam - TM99
  (669, 66900, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 39),
  -- Flabebe - Confide - TM100
  (669, 66900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 40),
  -- Flabebe - Camouflage - Egg
  (669, 66900, 293, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Flabebe - Copycat - Egg
  (669, 66900, 383, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Flabebe - Captivate - Egg
  (669, 66900, 445, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Floette - Vine Whip - Level 1
  (670, 67000, 22, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Floette - Tackle - Level 1
  (670, 67000, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Floette - Fairy Wind - Level 6
  (670, 67000, 584, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Floette - Lucky Chant - Level 10
  (670, 67000, 381, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Floette - Razor Leaf - Level 15
  (670, 67000, 75, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Floette - Wish - Level 20
  (670, 67000, 273, 13, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Floette - Magical Leaf - Level 25
  (670, 67000, 345, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Floette - Grassy Terrain - Level 27
  (670, 67000, 580, 13, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Floette - Petal Blizzard - Level 33
  (670, 67000, 572, 13, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Floette - Aromatherapy - Level 38
  (670, 67000, 312, 13, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Floette - Misty Terrain - Level 43
  (670, 67000, 581, 13, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Floette - Moonblast - Level 46
  (670, 67000, 585, 13, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Floette - Petal Dance - Level 51
  (670, 67000, 80, 13, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Floette - Solar Beam - Level 58
  (670, 67000, 76, 13, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Floette - Calm Mind - TM04
  (670, 67000, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 15),
  -- Floette - Toxic - TM06
  (670, 67000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Floette - Hidden Power - TM10
  (670, 67000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Floette - Sunny Day - TM11
  (670, 67000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 18),
  -- Floette - Protect - TM17
  (670, 67000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Floette - Rain Dance - TM18
  (670, 67000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Floette - Safeguard - TM20
  (670, 67000, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 21),
  -- Floette - Frustration - TM21
  (670, 67000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Floette - Solar Beam - TM22
  (670, 67000, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 23),
  -- Floette - Return - TM27
  (670, 67000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Floette - Psychic - TM29
  (670, 67000, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 25),
  -- Floette - Double Team - TM32
  (670, 67000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Floette - Facade - TM42
  (670, 67000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 27),
  -- Floette - Rest - TM44
  (670, 67000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 28),
  -- Floette - Attract - TM45
  (670, 67000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 29),
  -- Floette - Round - TM48
  (670, 67000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 30),
  -- Floette - Echoed Voice - TM49
  (670, 67000, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 31),
  -- Floette - Energy Ball - TM53
  (670, 67000, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 32),
  -- Floette - Flash - TM70
  (670, 67000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 33),
  -- Floette - Grass Knot - TM86
  (670, 67000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 34),
  -- Floette - Swagger - TM87
  (670, 67000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 35),
  -- Floette - Sleep Talk - TM88
  (670, 67000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 36),
  -- Floette - Substitute - TM90
  (670, 67000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 37),
  -- Floette - Nature Power - TM96
  (670, 67000, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 38),
  -- Floette - Dazzling Gleam - TM99
  (670, 67000, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 39),
  -- Floette - Confide - TM100
  (670, 67000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 40),
  -- Florges - Petal Dance - Level 1
  (671, 67100, 80, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Florges - Wish - Level 1
  (671, 67100, 273, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Florges - Aromatherapy - Level 1
  (671, 67100, 312, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Florges - Magical Leaf - Level 1
  (671, 67100, 345, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Florges - Lucky Chant - Level 1
  (671, 67100, 381, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Florges - Grass Knot - Level 1
  (671, 67100, 447, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Florges - Petal Blizzard - Level 1
  (671, 67100, 572, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Florges - Disarming Voice - Level 1
  (671, 67100, 574, 13, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Florges - Flower Shield - Level 1
  (671, 67100, 579, 13, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Florges - Grassy Terrain - Level 1
  (671, 67100, 580, 13, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Florges - Misty Terrain - Level 1
  (671, 67100, 581, 13, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Florges - Moonblast - Level 1
  (671, 67100, 585, 13, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Florges - Calm Mind - TM04
  (671, 67100, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 13),
  -- Florges - Toxic - TM06
  (671, 67100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Florges - Hidden Power - TM10
  (671, 67100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Florges - Sunny Day - TM11
  (671, 67100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 16),
  -- Florges - Hyper Beam - TM15
  (671, 67100, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 17),
  -- Florges - Light Screen - TM16
  (671, 67100, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 18),
  -- Florges - Protect - TM17
  (671, 67100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Florges - Rain Dance - TM18
  (671, 67100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Florges - Safeguard - TM20
  (671, 67100, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 21),
  -- Florges - Frustration - TM21
  (671, 67100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Florges - Solar Beam - TM22
  (671, 67100, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 23),
  -- Florges - Return - TM27
  (671, 67100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Florges - Psychic - TM29
  (671, 67100, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 25),
  -- Florges - Double Team - TM32
  (671, 67100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Florges - Facade - TM42
  (671, 67100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 27),
  -- Florges - Rest - TM44
  (671, 67100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 28),
  -- Florges - Attract - TM45
  (671, 67100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 29),
  -- Florges - Round - TM48
  (671, 67100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 30),
  -- Florges - Echoed Voice - TM49
  (671, 67100, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 31),
  -- Florges - Energy Ball - TM53
  (671, 67100, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 32),
  -- Florges - Giga Impact - TM68
  (671, 67100, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 33),
  -- Florges - Flash - TM70
  (671, 67100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 34),
  -- Florges - Grass Knot - TM86
  (671, 67100, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 35),
  -- Florges - Swagger - TM87
  (671, 67100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 36),
  -- Florges - Sleep Talk - TM88
  (671, 67100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 37),
  -- Florges - Substitute - TM90
  (671, 67100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 38),
  -- Florges - Nature Power - TM96
  (671, 67100, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 39),
  -- Florges - Dazzling Gleam - TM99
  (671, 67100, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 40),
  -- Florges - Confide - TM100
  (671, 67100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 41),
  -- Skiddo - Tackle - Level 1
  (672, 67200, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skiddo - Growth - Level 1
  (672, 67200, 74, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skiddo - Vine Whip - Level 7
  (672, 67200, 22, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Skiddo - Tail Whip - Level 9
  (672, 67200, 39, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Skiddo - Leech Seed - Level 12
  (672, 67200, 73, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Skiddo - Razor Leaf - Level 13
  (672, 67200, 75, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Skiddo - Worry Seed - Level 16
  (672, 67200, 388, 13, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Skiddo - Synthesis - Level 20
  (672, 67200, 235, 13, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Skiddo - Take Down - Level 22
  (672, 67200, 36, 13, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Skiddo - Bulldoze - Level 26
  (672, 67200, 523, 13, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Skiddo - Seed Bomb - Level 30
  (672, 67200, 402, 13, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Skiddo - Bulk Up - Level 34
  (672, 67200, 339, 13, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Skiddo - Double-Edge - Level 38
  (672, 67200, 38, 13, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Skiddo - Horn Leech - Level 42
  (672, 67200, 532, 13, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Skiddo - Leaf Blade - Level 45
  (672, 67200, 348, 13, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Skiddo - Milk Drink - Level 50
  (672, 67200, 208, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Skiddo - Roar - TM05
  (672, 67200, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 17),
  -- Skiddo - Toxic - TM06
  (672, 67200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Skiddo - Bulk Up - TM08
  (672, 67200, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 19),
  -- Skiddo - Hidden Power - TM10
  (672, 67200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Skiddo - Sunny Day - TM11
  (672, 67200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Skiddo - Protect - TM17
  (672, 67200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Skiddo - Rain Dance - TM18
  (672, 67200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Skiddo - Frustration - TM21
  (672, 67200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Skiddo - Solar Beam - TM22
  (672, 67200, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 25),
  -- Skiddo - Return - TM27
  (672, 67200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Skiddo - Dig - TM28
  (672, 67200, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 27),
  -- Skiddo - Brick Break - TM31
  (672, 67200, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 28),
  -- Skiddo - Double Team - TM32
  (672, 67200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Skiddo - Facade - TM42
  (672, 67200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Skiddo - Rest - TM44
  (672, 67200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Skiddo - Attract - TM45
  (672, 67200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Skiddo - Round - TM48
  (672, 67200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Skiddo - Energy Ball - TM53
  (672, 67200, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 34),
  -- Skiddo - Payback - TM66
  (672, 67200, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 35),
  -- Skiddo - Retaliate - TM67
  (672, 67200, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 36),
  -- Skiddo - Bulldoze - TM78
  (672, 67200, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 37),
  -- Skiddo - Rock Slide - TM80
  (672, 67200, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 38),
  -- Skiddo - Grass Knot - TM86
  (672, 67200, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 39),
  -- Skiddo - Swagger - TM87
  (672, 67200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Skiddo - Sleep Talk - TM88
  (672, 67200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Skiddo - Substitute - TM90
  (672, 67200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Skiddo - Wild Charge - TM93
  (672, 67200, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 43),
  -- Skiddo - Rock Smash - TM94
  (672, 67200, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 44),
  -- Skiddo - Nature Power - TM96
  (672, 67200, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 45),
  -- Skiddo - Confide - TM100
  (672, 67200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Skiddo - Surf - HM03
  (672, 67200, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 47),
  -- Skiddo - Strength - HM04
  (672, 67200, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 48),
  -- Skiddo - Defense Curl - Egg
  (672, 67200, 111, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Skiddo - Rollout - Egg
  (672, 67200, 205, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Skiddo - Milk Drink - Egg
  (672, 67200, 208, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Gogoat - Tackle - Level 1
  (673, 67300, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gogoat - Growth - Level 1
  (673, 67300, 74, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gogoat - Aerial Ace - Level 1
  (673, 67300, 332, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gogoat - Vine Whip - Level 7
  (673, 67300, 22, 13, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Gogoat - Tail Whip - Level 9
  (673, 67300, 39, 13, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Gogoat - Leech Seed - Level 12
  (673, 67300, 73, 13, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Gogoat - Razor Leaf - Level 13
  (673, 67300, 75, 13, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Gogoat - Worry Seed - Level 16
  (673, 67300, 388, 13, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Gogoat - Synthesis - Level 20
  (673, 67300, 235, 13, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Gogoat - Take Down - Level 22
  (673, 67300, 36, 13, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Gogoat - Bulldoze - Level 26
  (673, 67300, 523, 13, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Gogoat - Seed Bomb - Level 30
  (673, 67300, 402, 13, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Gogoat - Bulk Up - Level 34
  (673, 67300, 339, 13, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Gogoat - Double-Edge - Level 40
  (673, 67300, 38, 13, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Gogoat - Horn Leech - Level 47
  (673, 67300, 532, 13, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Gogoat - Leaf Blade - Level 55
  (673, 67300, 348, 13, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Gogoat - Milk Drink - Level 58
  (673, 67300, 208, 13, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Gogoat - Earthquake - Level 60
  (673, 67300, 89, 13, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Gogoat - Aerial Ace - Level 65
  (673, 67300, 332, 13, NULL, 1, 65, NULL, NULL, NULL, 19),
  -- Gogoat - Roar - TM05
  (673, 67300, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 20),
  -- Gogoat - Toxic - TM06
  (673, 67300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Gogoat - Bulk Up - TM08
  (673, 67300, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 22),
  -- Gogoat - Hidden Power - TM10
  (673, 67300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Gogoat - Sunny Day - TM11
  (673, 67300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 24),
  -- Gogoat - Hyper Beam - TM15
  (673, 67300, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Gogoat - Protect - TM17
  (673, 67300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Gogoat - Rain Dance - TM18
  (673, 67300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Gogoat - Frustration - TM21
  (673, 67300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Gogoat - Solar Beam - TM22
  (673, 67300, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 29),
  -- Gogoat - Earthquake - TM26
  (673, 67300, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 30),
  -- Gogoat - Return - TM27
  (673, 67300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Gogoat - Dig - TM28
  (673, 67300, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 32),
  -- Gogoat - Brick Break - TM31
  (673, 67300, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 33),
  -- Gogoat - Double Team - TM32
  (673, 67300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Gogoat - Aerial Ace - TM40
  (673, 67300, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 35),
  -- Gogoat - Facade - TM42
  (673, 67300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Gogoat - Rest - TM44
  (673, 67300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Gogoat - Attract - TM45
  (673, 67300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Gogoat - Round - TM48
  (673, 67300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Gogoat - Energy Ball - TM53
  (673, 67300, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 40),
  -- Gogoat - Payback - TM66
  (673, 67300, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 41),
  -- Gogoat - Retaliate - TM67
  (673, 67300, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 42),
  -- Gogoat - Giga Impact - TM68
  (673, 67300, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 43),
  -- Gogoat - Bulldoze - TM78
  (673, 67300, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 44),
  -- Gogoat - Rock Slide - TM80
  (673, 67300, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 45),
  -- Gogoat - Grass Knot - TM86
  (673, 67300, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 46),
  -- Gogoat - Swagger - TM87
  (673, 67300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Gogoat - Sleep Talk - TM88
  (673, 67300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Gogoat - Substitute - TM90
  (673, 67300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 49),
  -- Gogoat - Wild Charge - TM93
  (673, 67300, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 50),
  -- Gogoat - Rock Smash - TM94
  (673, 67300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 51),
  -- Gogoat - Nature Power - TM96
  (673, 67300, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 52),
  -- Gogoat - Confide - TM100
  (673, 67300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 53),
  -- Gogoat - Surf - HM03
  (673, 67300, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 54),
  -- Gogoat - Strength - HM04
  (673, 67300, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 55),
  -- Pancham - Tackle - Level 1
  (674, 67400, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pancham - Leer - Level 1
  (674, 67400, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pancham - Arm Thrust - Level 7
  (674, 67400, 292, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Pancham - Work Up - Level 10
  (674, 67400, 526, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Pancham - Karate Chop - Level 12
  (674, 67400, 2, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pancham - Comet Punch - Level 15
  (674, 67400, 4, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Pancham - Slash - Level 20
  (674, 67400, 163, 13, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Pancham - Circle Throw - Level 25
  (674, 67400, 509, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Pancham - Vital Throw - Level 27
  (674, 67400, 233, 13, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Pancham - Body Slam - Level 33
  (674, 67400, 34, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Pancham - Crunch - Level 39
  (674, 67400, 242, 13, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Pancham - Entrainment - Level 42
  (674, 67400, 494, 13, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Pancham - Parting Shot - Level 45
  (674, 67400, 575, 13, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Pancham - Sky Uppercut - Level 48
  (674, 67400, 327, 13, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Pancham - Roar - TM05
  (674, 67400, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 15),
  -- Pancham - Toxic - TM06
  (674, 67400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Pancham - Bulk Up - TM08
  (674, 67400, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 17),
  -- Pancham - Hidden Power - TM10
  (674, 67400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Pancham - Sunny Day - TM11
  (674, 67400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Pancham - Protect - TM17
  (674, 67400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Pancham - Rain Dance - TM18
  (674, 67400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Pancham - Frustration - TM21
  (674, 67400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Pancham - Return - TM27
  (674, 67400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Pancham - Dig - TM28
  (674, 67400, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 24),
  -- Pancham - Brick Break - TM31
  (674, 67400, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 25),
  -- Pancham - Double Team - TM32
  (674, 67400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Pancham - Sludge Bomb - TM36
  (674, 67400, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 27),
  -- Pancham - Rock Tomb - TM39
  (674, 67400, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 28),
  -- Pancham - Aerial Ace - TM40
  (674, 67400, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 29),
  -- Pancham - Torment - TM41
  (674, 67400, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 30),
  -- Pancham - Facade - TM42
  (674, 67400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Pancham - Rest - TM44
  (674, 67400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Pancham - Attract - TM45
  (674, 67400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Pancham - Low Sweep - TM47
  (674, 67400, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 34),
  -- Pancham - Round - TM48
  (674, 67400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Pancham - Echoed Voice - TM49
  (674, 67400, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 36),
  -- Pancham - False Swipe - TM54
  (674, 67400, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 37),
  -- Pancham - Fling - TM56
  (674, 67400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 38),
  -- Pancham - Shadow Claw - TM65
  (674, 67400, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 39),
  -- Pancham - Payback - TM66
  (674, 67400, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 40),
  -- Pancham - Retaliate - TM67
  (674, 67400, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 41),
  -- Pancham - Stone Edge - TM71
  (674, 67400, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 42),
  -- Pancham - Swords Dance - TM75
  (674, 67400, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 43),
  -- Pancham - Bulldoze - TM78
  (674, 67400, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 44),
  -- Pancham - Rock Slide - TM80
  (674, 67400, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 45),
  -- Pancham - Grass Knot - TM86
  (674, 67400, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 46),
  -- Pancham - Swagger - TM87
  (674, 67400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Pancham - Sleep Talk - TM88
  (674, 67400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Pancham - Substitute - TM90
  (674, 67400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 49),
  -- Pancham - Rock Smash - TM94
  (674, 67400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 50),
  -- Pancham - Dark Pulse - TM97
  (674, 67400, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 51),
  -- Pancham - Power-Up Punch - TM98
  (674, 67400, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 52),
  -- Pancham - Confide - TM100
  (674, 67400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 53),
  -- Pancham - Cut - HM01
  (674, 67400, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 54),
  -- Pancham - Surf - HM03
  (674, 67400, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 55),
  -- Pancham - Strength - HM04
  (674, 67400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 56),
  -- Pancham - Me First - Egg
  (674, 67400, 382, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pancham - Storm Throw - Egg
  (674, 67400, 480, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Pancham - Foul Play - Egg
  (674, 67400, 492, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Pancham - Quick Guard - Egg
  (674, 67400, 501, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Pancham - Quash - Egg
  (674, 67400, 511, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Pangoro - Tackle - Level 1
  (675, 67500, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pangoro - Leer - Level 1
  (675, 67500, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pangoro - Hammer Arm - Level 1
  (675, 67500, 359, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pangoro - Entrainment - Level 1
  (675, 67500, 494, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pangoro - Arm Thrust - Level 7
  (675, 67500, 292, 13, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Pangoro - Work Up - Level 10
  (675, 67500, 526, 13, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Pangoro - Karate Chop - Level 12
  (675, 67500, 2, 13, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Pangoro - Comet Punch - Level 15
  (675, 67500, 4, 13, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Pangoro - Slash - Level 20
  (675, 67500, 163, 13, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Pangoro - Circle Throw - Level 25
  (675, 67500, 509, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Pangoro - Vital Throw - Level 27
  (675, 67500, 233, 13, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Pangoro - Body Slam - Level 35
  (675, 67500, 34, 13, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Pangoro - Crunch - Level 42
  (675, 67500, 242, 13, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Pangoro - Entrainment - Level 45
  (675, 67500, 494, 13, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Pangoro - Parting Shot - Level 48
  (675, 67500, 575, 13, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Pangoro - Sky Uppercut - Level 52
  (675, 67500, 327, 13, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Pangoro - Hammer Arm - Level 57
  (675, 67500, 359, 13, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Pangoro - Taunt - Level 65
  (675, 67500, 269, 13, NULL, 1, 65, NULL, NULL, NULL, 18),
  -- Pangoro - Low Sweep - Level 70
  (675, 67500, 490, 13, NULL, 1, 70, NULL, NULL, NULL, 19),
  -- Pangoro - Hone Claws - TM01
  (675, 67500, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 20),
  -- Pangoro - Dragon Claw - TM02
  (675, 67500, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 21),
  -- Pangoro - Roar - TM05
  (675, 67500, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 22),
  -- Pangoro - Toxic - TM06
  (675, 67500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 23),
  -- Pangoro - Bulk Up - TM08
  (675, 67500, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 24),
  -- Pangoro - Hidden Power - TM10
  (675, 67500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 25),
  -- Pangoro - Sunny Day - TM11
  (675, 67500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 26),
  -- Pangoro - Taunt - TM12
  (675, 67500, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 27),
  -- Pangoro - Hyper Beam - TM15
  (675, 67500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 28),
  -- Pangoro - Protect - TM17
  (675, 67500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 29),
  -- Pangoro - Rain Dance - TM18
  (675, 67500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 30),
  -- Pangoro - Frustration - TM21
  (675, 67500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 31),
  -- Pangoro - Earthquake - TM26
  (675, 67500, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 32),
  -- Pangoro - Return - TM27
  (675, 67500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Pangoro - Dig - TM28
  (675, 67500, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 34),
  -- Pangoro - Brick Break - TM31
  (675, 67500, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 35),
  -- Pangoro - Double Team - TM32
  (675, 67500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 36),
  -- Pangoro - Sludge Bomb - TM36
  (675, 67500, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 37),
  -- Pangoro - Rock Tomb - TM39
  (675, 67500, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 38),
  -- Pangoro - Aerial Ace - TM40
  (675, 67500, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 39),
  -- Pangoro - Torment - TM41
  (675, 67500, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 40),
  -- Pangoro - Facade - TM42
  (675, 67500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 41),
  -- Pangoro - Rest - TM44
  (675, 67500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 42),
  -- Pangoro - Attract - TM45
  (675, 67500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 43),
  -- Pangoro - Thief - TM46
  (675, 67500, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 44),
  -- Pangoro - Low Sweep - TM47
  (675, 67500, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 45),
  -- Pangoro - Round - TM48
  (675, 67500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 46),
  -- Pangoro - Echoed Voice - TM49
  (675, 67500, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 47),
  -- Pangoro - Focus Blast - TM52
  (675, 67500, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 48),
  -- Pangoro - False Swipe - TM54
  (675, 67500, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 49),
  -- Pangoro - Fling - TM56
  (675, 67500, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 50),
  -- Pangoro - Quash - TM60
  (675, 67500, 511, 13, NULL, 2, NULL, NULL, 13002060, NULL, 51),
  -- Pangoro - Embargo - TM63
  (675, 67500, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 52),
  -- Pangoro - Shadow Claw - TM65
  (675, 67500, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 53),
  -- Pangoro - Payback - TM66
  (675, 67500, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 54),
  -- Pangoro - Retaliate - TM67
  (675, 67500, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 55),
  -- Pangoro - Giga Impact - TM68
  (675, 67500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 56),
  -- Pangoro - Stone Edge - TM71
  (675, 67500, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 57),
  -- Pangoro - Swords Dance - TM75
  (675, 67500, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 58),
  -- Pangoro - Bulldoze - TM78
  (675, 67500, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 59),
  -- Pangoro - Rock Slide - TM80
  (675, 67500, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 60),
  -- Pangoro - X-Scissor - TM81
  (675, 67500, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 61),
  -- Pangoro - Infestation - TM83
  (675, 67500, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 62),
  -- Pangoro - Poison Jab - TM84
  (675, 67500, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 63),
  -- Pangoro - Grass Knot - TM86
  (675, 67500, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 64),
  -- Pangoro - Swagger - TM87
  (675, 67500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 65),
  -- Pangoro - Sleep Talk - TM88
  (675, 67500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 66),
  -- Pangoro - Substitute - TM90
  (675, 67500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 67),
  -- Pangoro - Rock Smash - TM94
  (675, 67500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 68),
  -- Pangoro - Snarl - TM95
  (675, 67500, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 69),
  -- Pangoro - Dark Pulse - TM97
  (675, 67500, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 70),
  -- Pangoro - Power-Up Punch - TM98
  (675, 67500, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 71),
  -- Pangoro - Confide - TM100
  (675, 67500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 72),
  -- Pangoro - Cut - HM01
  (675, 67500, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 73),
  -- Pangoro - Surf - HM03
  (675, 67500, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 74),
  -- Pangoro - Strength - HM04
  (675, 67500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 75),
  -- Furfrou - Tackle - Level 1
  (676, 67600, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Furfrou - Growl - Level 1
  (676, 67600, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Furfrou - Sand Attack - Level 5
  (676, 67600, 28, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Furfrou - Baby-Doll Eyes - Level 9
  (676, 67600, 608, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Furfrou - Headbutt - Level 12
  (676, 67600, 29, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Furfrou - Tail Whip - Level 15
  (676, 67600, 39, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Furfrou - Bite - Level 22
  (676, 67600, 44, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Furfrou - Odor Sleuth - Level 27
  (676, 67600, 316, 13, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Furfrou - Retaliate - Level 33
  (676, 67600, 514, 13, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Furfrou - Take Down - Level 35
  (676, 67600, 36, 13, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Furfrou - Charm - Level 38
  (676, 67600, 204, 13, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Furfrou - Sucker Punch - Level 42
  (676, 67600, 389, 13, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Furfrou - Cotton Guard - Level 48
  (676, 67600, 538, 13, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Furfrou - Roar - TM05
  (676, 67600, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 14),
  -- Furfrou - Toxic - TM06
  (676, 67600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Furfrou - Hidden Power - TM10
  (676, 67600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Furfrou - Sunny Day - TM11
  (676, 67600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 17),
  -- Furfrou - Protect - TM17
  (676, 67600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 18),
  -- Furfrou - Rain Dance - TM18
  (676, 67600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 19),
  -- Furfrou - Frustration - TM21
  (676, 67600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 20),
  -- Furfrou - Return - TM27
  (676, 67600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 21),
  -- Furfrou - Dig - TM28
  (676, 67600, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 22),
  -- Furfrou - Double Team - TM32
  (676, 67600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 23),
  -- Furfrou - Facade - TM42
  (676, 67600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 24),
  -- Furfrou - Rest - TM44
  (676, 67600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 25),
  -- Furfrou - Attract - TM45
  (676, 67600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 26),
  -- Furfrou - Round - TM48
  (676, 67600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 27),
  -- Furfrou - Echoed Voice - TM49
  (676, 67600, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 28),
  -- Furfrou - Charge Beam - TM57
  (676, 67600, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 29),
  -- Furfrou - Retaliate - TM67
  (676, 67600, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 30),
  -- Furfrou - Giga Impact - TM68
  (676, 67600, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 31),
  -- Furfrou - Flash - TM70
  (676, 67600, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 32),
  -- Furfrou - Thunder Wave - TM73
  (676, 67600, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 33),
  -- Furfrou - Grass Knot - TM86
  (676, 67600, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 34),
  -- Furfrou - Swagger - TM87
  (676, 67600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 35),
  -- Furfrou - Sleep Talk - TM88
  (676, 67600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 36),
  -- Furfrou - U-turn - TM89
  (676, 67600, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 37),
  -- Furfrou - Substitute - TM90
  (676, 67600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 38),
  -- Furfrou - Wild Charge - TM93
  (676, 67600, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 39),
  -- Furfrou - Rock Smash - TM94
  (676, 67600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 40),
  -- Furfrou - Snarl - TM95
  (676, 67600, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 41),
  -- Furfrou - Dark Pulse - TM97
  (676, 67600, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 42),
  -- Furfrou - Confide - TM100
  (676, 67600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 43),
  -- Furfrou - Surf - HM03
  (676, 67600, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 44),
  -- Furfrou - Mimic - Egg
  (676, 67600, 102, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Furfrou - Role Play - Egg
  (676, 67600, 272, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Furfrou - Refresh - Egg
  (676, 67600, 287, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Furfrou - Captivate - Egg
  (676, 67600, 445, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Furfrou - Work Up - Egg
  (676, 67600, 526, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Espurr - Scratch - Level 1
  (677, 67700, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Espurr - Leer - Level 1
  (677, 67700, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Espurr - Covet - Level 5
  (677, 67700, 343, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Espurr - Confusion - Level 9
  (677, 67700, 93, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Espurr - Light Screen - Level 13
  (677, 67700, 113, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Espurr - Psybeam - Level 17
  (677, 67700, 60, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Espurr - Fake Out - Level 19
  (677, 67700, 252, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Espurr - Disarming Voice - Level 22
  (677, 67700, 574, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Espurr - Psyshock - Level 25
  (677, 67700, 473, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Espurr - Psyshock - TM03
  (677, 67700, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 10),
  -- Espurr - Calm Mind - TM04
  (677, 67700, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 11),
  -- Espurr - Toxic - TM06
  (677, 67700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 12),
  -- Espurr - Hidden Power - TM10
  (677, 67700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 13),
  -- Espurr - Sunny Day - TM11
  (677, 67700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 14),
  -- Espurr - Light Screen - TM16
  (677, 67700, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 15),
  -- Espurr - Protect - TM17
  (677, 67700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 16),
  -- Espurr - Rain Dance - TM18
  (677, 67700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 17),
  -- Espurr - Safeguard - TM20
  (677, 67700, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 18),
  -- Espurr - Frustration - TM21
  (677, 67700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 19),
  -- Espurr - Thunderbolt - TM24
  (677, 67700, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 20),
  -- Espurr - Return - TM27
  (677, 67700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 21),
  -- Espurr - Psychic - TM29
  (677, 67700, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 22),
  -- Espurr - Double Team - TM32
  (677, 67700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 23),
  -- Espurr - Reflect - TM33
  (677, 67700, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 24),
  -- Espurr - Torment - TM41
  (677, 67700, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 25),
  -- Espurr - Facade - TM42
  (677, 67700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Espurr - Rest - TM44
  (677, 67700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Espurr - Attract - TM45
  (677, 67700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Espurr - Round - TM48
  (677, 67700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 29),
  -- Espurr - Echoed Voice - TM49
  (677, 67700, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 30),
  -- Espurr - Energy Ball - TM53
  (677, 67700, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 31),
  -- Espurr - Charge Beam - TM57
  (677, 67700, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 32),
  -- Espurr - Payback - TM66
  (677, 67700, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 33),
  -- Espurr - Flash - TM70
  (677, 67700, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 34),
  -- Espurr - Thunder Wave - TM73
  (677, 67700, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 35),
  -- Espurr - Psych Up - TM77
  (677, 67700, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 36),
  -- Espurr - Dream Eater - TM85
  (677, 67700, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 37),
  -- Espurr - Swagger - TM87
  (677, 67700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 38),
  -- Espurr - Sleep Talk - TM88
  (677, 67700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 39),
  -- Espurr - Substitute - TM90
  (677, 67700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 40),
  -- Espurr - Trick Room - TM92
  (677, 67700, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 41),
  -- Espurr - Dark Pulse - TM97
  (677, 67700, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 42),
  -- Espurr - Confide - TM100
  (677, 67700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 43),
  -- Espurr - Cut - HM01
  (677, 67700, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 44),
  -- Espurr - Barrier - Egg
  (677, 67700, 112, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Espurr - Trick - Egg
  (677, 67700, 271, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Espurr - Assist - Egg
  (677, 67700, 274, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Espurr - Yawn - Egg
  (677, 67700, 281, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Meowstic - Scratch - Level 1
  (678, 67800, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowstic - Leer - Level 1
  (678, 67800, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowstic - Mean Look - Level 1
  (678, 67800, 212, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Meowstic - Helping Hand - Level 1
  (678, 67800, 270, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Meowstic - Quick Guard - Level 1
  (678, 67800, 501, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Meowstic - Covet - Level 5
  (678, 67800, 343, 13, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Meowstic - Confusion - Level 9
  (678, 67800, 93, 13, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Meowstic - Light Screen - Level 13
  (678, 67800, 113, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Meowstic - Psybeam - Level 17
  (678, 67800, 60, 13, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Meowstic - Fake Out - Level 19
  (678, 67800, 252, 13, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Meowstic - Disarming Voice - Level 22
  (678, 67800, 574, 13, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Meowstic - Psyshock - Level 25
  (678, 67800, 473, 13, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Meowstic - Charm - Level 28
  (678, 67800, 204, 13, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Meowstic - Miracle Eye - Level 31
  (678, 67800, 357, 13, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Meowstic - Reflect - Level 35
  (678, 67800, 115, 13, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Meowstic - Psychic - Level 40
  (678, 67800, 94, 13, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Meowstic - Role Play - Level 43
  (678, 67800, 272, 13, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Meowstic - Imprison - Level 45
  (678, 67800, 286, 13, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Meowstic - Sucker Punch - Level 48
  (678, 67800, 389, 13, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Meowstic - Misty Terrain - Level 50
  (678, 67800, 581, 13, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Meowstic - Quick Guard - Level 53
  (678, 67800, 501, 13, NULL, 1, 53, NULL, NULL, NULL, 21),
  -- Meowstic - Psyshock - TM03
  (678, 67800, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 22),
  -- Meowstic - Calm Mind - TM04
  (678, 67800, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 23),
  -- Meowstic - Toxic - TM06
  (678, 67800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 24),
  -- Meowstic - Hidden Power - TM10
  (678, 67800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 25),
  -- Meowstic - Sunny Day - TM11
  (678, 67800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 26),
  -- Meowstic - Hyper Beam - TM15
  (678, 67800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 27),
  -- Meowstic - Light Screen - TM16
  (678, 67800, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 28),
  -- Meowstic - Protect - TM17
  (678, 67800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 29),
  -- Meowstic - Rain Dance - TM18
  (678, 67800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 30),
  -- Meowstic - Safeguard - TM20
  (678, 67800, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 31),
  -- Meowstic - Frustration - TM21
  (678, 67800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 32),
  -- Meowstic - Thunderbolt - TM24
  (678, 67800, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 33),
  -- Meowstic - Return - TM27
  (678, 67800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 34),
  -- Meowstic - Dig - TM28
  (678, 67800, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 35),
  -- Meowstic - Psychic - TM29
  (678, 67800, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 36),
  -- Meowstic - Shadow Ball - TM30
  (678, 67800, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 37),
  -- Meowstic - Double Team - TM32
  (678, 67800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 38),
  -- Meowstic - Reflect - TM33
  (678, 67800, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 39),
  -- Meowstic - Torment - TM41
  (678, 67800, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 40),
  -- Meowstic - Facade - TM42
  (678, 67800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 41),
  -- Meowstic - Rest - TM44
  (678, 67800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 42),
  -- Meowstic - Attract - TM45
  (678, 67800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 43),
  -- Meowstic - Round - TM48
  (678, 67800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 44),
  -- Meowstic - Echoed Voice - TM49
  (678, 67800, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 45),
  -- Meowstic - Energy Ball - TM53
  (678, 67800, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 46),
  -- Meowstic - Charge Beam - TM57
  (678, 67800, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 47),
  -- Meowstic - Payback - TM66
  (678, 67800, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 48),
  -- Meowstic - Giga Impact - TM68
  (678, 67800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 49),
  -- Meowstic - Flash - TM70
  (678, 67800, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 50),
  -- Meowstic - Thunder Wave - TM73
  (678, 67800, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 51),
  -- Meowstic - Psych Up - TM77
  (678, 67800, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 52),
  -- Meowstic - Dream Eater - TM85
  (678, 67800, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 53),
  -- Meowstic - Swagger - TM87
  (678, 67800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 54),
  -- Meowstic - Sleep Talk - TM88
  (678, 67800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 55),
  -- Meowstic - Substitute - TM90
  (678, 67800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 56),
  -- Meowstic - Trick Room - TM92
  (678, 67800, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 57),
  -- Meowstic - Dark Pulse - TM97
  (678, 67800, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 58),
  -- Meowstic - Power-Up Punch - TM98
  (678, 67800, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 59),
  -- Meowstic - Confide - TM100
  (678, 67800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 60),
  -- Meowstic - Cut - HM01
  (678, 67800, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 61),
  -- Honedge - Swords Dance - Level 1
  (679, 67900, 14, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Honedge - Tackle - Level 1
  (679, 67900, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Honedge - Fury Cutter - Level 5
  (679, 67900, 210, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Honedge - Metal Sound - Level 8
  (679, 67900, 319, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Honedge - Pursuit - Level 13
  (679, 67900, 228, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Honedge - Autotomize - Level 18
  (679, 67900, 475, 13, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Honedge - Shadow Sneak - Level 20
  (679, 67900, 425, 13, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Honedge - Aerial Ace - Level 22
  (679, 67900, 332, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Honedge - Retaliate - Level 26
  (679, 67900, 514, 13, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Honedge - Slash - Level 29
  (679, 67900, 163, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Honedge - Iron Defense - Level 32
  (679, 67900, 334, 13, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Honedge - Night Slash - Level 35
  (679, 67900, 400, 13, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Honedge - Power Trick - Level 39
  (679, 67900, 379, 13, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Honedge - Iron Head - Level 42
  (679, 67900, 442, 13, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Honedge - Sacred Sword - Level 47
  (679, 67900, 533, 13, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Honedge - Toxic - TM06
  (679, 67900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Honedge - Hidden Power - TM10
  (679, 67900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Honedge - Protect - TM17
  (679, 67900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 18),
  -- Honedge - Rain Dance - TM18
  (679, 67900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 19),
  -- Honedge - Frustration - TM21
  (679, 67900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 20),
  -- Honedge - Return - TM27
  (679, 67900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 21),
  -- Honedge - Brick Break - TM31
  (679, 67900, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 22),
  -- Honedge - Double Team - TM32
  (679, 67900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 23),
  -- Honedge - Reflect - TM33
  (679, 67900, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 24),
  -- Honedge - Aerial Ace - TM40
  (679, 67900, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 25),
  -- Honedge - Facade - TM42
  (679, 67900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Honedge - Rest - TM44
  (679, 67900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Honedge - Attract - TM45
  (679, 67900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Honedge - False Swipe - TM54
  (679, 67900, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 29),
  -- Honedge - Shadow Claw - TM65
  (679, 67900, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 30),
  -- Honedge - Retaliate - TM67
  (679, 67900, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 31),
  -- Honedge - Gyro Ball - TM74
  (679, 67900, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 32),
  -- Honedge - Swords Dance - TM75
  (679, 67900, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 33),
  -- Honedge - Rock Slide - TM80
  (679, 67900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 34),
  -- Honedge - Swagger - TM87
  (679, 67900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 35),
  -- Honedge - Sleep Talk - TM88
  (679, 67900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 36),
  -- Honedge - Substitute - TM90
  (679, 67900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 37),
  -- Honedge - Flash Cannon - TM91
  (679, 67900, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 38),
  -- Honedge - Rock Smash - TM94
  (679, 67900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 39),
  -- Honedge - Confide - TM100
  (679, 67900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 40),
  -- Honedge - Cut - HM01
  (679, 67900, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 41),
  -- Honedge - Destiny Bond - Egg
  (679, 67900, 194, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Honedge - Metal Sound - Egg
  (679, 67900, 319, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Honedge - Shadow Sneak - Egg
  (679, 67900, 425, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Honedge - Wide Guard - Egg
  (679, 67900, 469, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Doublade - Swords Dance - Level 1
  (680, 68000, 14, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Doublade - Tackle - Level 1
  (680, 68000, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Doublade - Fury Cutter - Level 5
  (680, 68000, 210, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Doublade - Metal Sound - Level 8
  (680, 68000, 319, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Doublade - Pursuit - Level 13
  (680, 68000, 228, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Doublade - Autotomize - Level 18
  (680, 68000, 475, 13, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Doublade - Shadow Sneak - Level 20
  (680, 68000, 425, 13, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Doublade - Aerial Ace - Level 22
  (680, 68000, 332, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Doublade - Retaliate - Level 26
  (680, 68000, 514, 13, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Doublade - Slash - Level 29
  (680, 68000, 163, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Doublade - Iron Defense - Level 32
  (680, 68000, 334, 13, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Doublade - Night Slash - Level 36
  (680, 68000, 400, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Doublade - Power Trick - Level 41
  (680, 68000, 379, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Doublade - Iron Head - Level 45
  (680, 68000, 442, 13, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Doublade - Sacred Sword - Level 51
  (680, 68000, 533, 13, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Doublade - Toxic - TM06
  (680, 68000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Doublade - Hidden Power - TM10
  (680, 68000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Doublade - Protect - TM17
  (680, 68000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 18),
  -- Doublade - Rain Dance - TM18
  (680, 68000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 19),
  -- Doublade - Frustration - TM21
  (680, 68000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 20),
  -- Doublade - Return - TM27
  (680, 68000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 21),
  -- Doublade - Brick Break - TM31
  (680, 68000, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 22),
  -- Doublade - Double Team - TM32
  (680, 68000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 23),
  -- Doublade - Reflect - TM33
  (680, 68000, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 24),
  -- Doublade - Aerial Ace - TM40
  (680, 68000, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 25),
  -- Doublade - Facade - TM42
  (680, 68000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Doublade - Rest - TM44
  (680, 68000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Doublade - Attract - TM45
  (680, 68000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Doublade - False Swipe - TM54
  (680, 68000, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 29),
  -- Doublade - Shadow Claw - TM65
  (680, 68000, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 30),
  -- Doublade - Retaliate - TM67
  (680, 68000, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 31),
  -- Doublade - Gyro Ball - TM74
  (680, 68000, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 32),
  -- Doublade - Swords Dance - TM75
  (680, 68000, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 33),
  -- Doublade - Rock Slide - TM80
  (680, 68000, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 34),
  -- Doublade - Swagger - TM87
  (680, 68000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 35),
  -- Doublade - Sleep Talk - TM88
  (680, 68000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 36),
  -- Doublade - Substitute - TM90
  (680, 68000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 37),
  -- Doublade - Flash Cannon - TM91
  (680, 68000, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 38),
  -- Doublade - Rock Smash - TM94
  (680, 68000, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 39),
  -- Doublade - Confide - TM100
  (680, 68000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 40),
  -- Doublade - Cut - HM01
  (680, 68000, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 41),
  -- Aegislash - Swords Dance - Level 1
  (681, 68100, 14, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aegislash - Slash - Level 1
  (681, 68100, 163, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aegislash - Fury Cutter - Level 1
  (681, 68100, 210, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Aegislash - Pursuit - Level 1
  (681, 68100, 228, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Aegislash - Aerial Ace - Level 1
  (681, 68100, 332, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Aegislash - Iron Defense - Level 1
  (681, 68100, 334, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Aegislash - Power Trick - Level 1
  (681, 68100, 379, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Aegislash - Night Slash - Level 1
  (681, 68100, 400, 13, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Aegislash - Shadow Sneak - Level 1
  (681, 68100, 425, 13, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Aegislash - Iron Head - Level 1
  (681, 68100, 442, 13, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Aegislash - Head Smash - Level 1
  (681, 68100, 457, 13, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Aegislash - Autotomize - Level 1
  (681, 68100, 475, 13, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Aegislash - Sacred Sword - Level 1
  (681, 68100, 533, 13, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Aegislash - King's Shield - Level 1
  (681, 68100, 588, 13, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Aegislash - Toxic - TM06
  (681, 68100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Aegislash - Hidden Power - TM10
  (681, 68100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Aegislash - Sunny Day - TM11
  (681, 68100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 17),
  -- Aegislash - Hyper Beam - TM15
  (681, 68100, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 18),
  -- Aegislash - Protect - TM17
  (681, 68100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Aegislash - Rain Dance - TM18
  (681, 68100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Aegislash - Frustration - TM21
  (681, 68100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Aegislash - Return - TM27
  (681, 68100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 22),
  -- Aegislash - Shadow Ball - TM30
  (681, 68100, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 23),
  -- Aegislash - Brick Break - TM31
  (681, 68100, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 24),
  -- Aegislash - Double Team - TM32
  (681, 68100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 25),
  -- Aegislash - Reflect - TM33
  (681, 68100, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 26),
  -- Aegislash - Aerial Ace - TM40
  (681, 68100, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 27),
  -- Aegislash - Facade - TM42
  (681, 68100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 28),
  -- Aegislash - Rest - TM44
  (681, 68100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 29),
  -- Aegislash - Attract - TM45
  (681, 68100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 30),
  -- Aegislash - Round - TM48
  (681, 68100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 31),
  -- Aegislash - False Swipe - TM54
  (681, 68100, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 32),
  -- Aegislash - Shadow Claw - TM65
  (681, 68100, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 33),
  -- Aegislash - Retaliate - TM67
  (681, 68100, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 34),
  -- Aegislash - Giga Impact - TM68
  (681, 68100, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 35),
  -- Aegislash - Gyro Ball - TM74
  (681, 68100, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 36),
  -- Aegislash - Swords Dance - TM75
  (681, 68100, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 37),
  -- Aegislash - Rock Slide - TM80
  (681, 68100, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 38),
  -- Aegislash - Swagger - TM87
  (681, 68100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 39),
  -- Aegislash - Sleep Talk - TM88
  (681, 68100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 40),
  -- Aegislash - Substitute - TM90
  (681, 68100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 41),
  -- Aegislash - Flash Cannon - TM91
  (681, 68100, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 42),
  -- Aegislash - Rock Smash - TM94
  (681, 68100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 43),
  -- Aegislash - Confide - TM100
  (681, 68100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 44),
  -- Aegislash - Cut - HM01
  (681, 68100, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 45),
  -- Spritzee - Sweet Scent - Level 1
  (682, 68200, 230, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spritzee - Fairy Wind - Level 1
  (682, 68200, 584, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spritzee - Sweet Kiss - Level 6
  (682, 68200, 186, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Spritzee - Odor Sleuth - Level 8
  (682, 68200, 316, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Spritzee - Echoed Voice - Level 13
  (682, 68200, 497, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Spritzee - Calm Mind - Level 17
  (682, 68200, 347, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Spritzee - Draining Kiss - Level 21
  (682, 68200, 577, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Spritzee - Aromatherapy - Level 25
  (682, 68200, 312, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Spritzee - Attract - Level 29
  (682, 68200, 213, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Spritzee - Moonblast - Level 31
  (682, 68200, 585, 13, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Spritzee - Charm - Level 35
  (682, 68200, 204, 13, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Spritzee - Flail - Level 38
  (682, 68200, 175, 13, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Spritzee - Misty Terrain - Level 42
  (682, 68200, 581, 13, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Spritzee - Skill Swap - Level 44
  (682, 68200, 285, 13, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Spritzee - Psychic - Level 48
  (682, 68200, 94, 13, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Spritzee - Disarming Voice - Level 50
  (682, 68200, 574, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Spritzee - Calm Mind - TM04
  (682, 68200, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 17),
  -- Spritzee - Toxic - TM06
  (682, 68200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Spritzee - Hidden Power - TM10
  (682, 68200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Spritzee - Sunny Day - TM11
  (682, 68200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Spritzee - Light Screen - TM16
  (682, 68200, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 21),
  -- Spritzee - Protect - TM17
  (682, 68200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Spritzee - Rain Dance - TM18
  (682, 68200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Spritzee - Frustration - TM21
  (682, 68200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Spritzee - Thunderbolt - TM24
  (682, 68200, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 25),
  -- Spritzee - Return - TM27
  (682, 68200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Spritzee - Psychic - TM29
  (682, 68200, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 27),
  -- Spritzee - Double Team - TM32
  (682, 68200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Spritzee - Reflect - TM33
  (682, 68200, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 29),
  -- Spritzee - Torment - TM41
  (682, 68200, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 30),
  -- Spritzee - Facade - TM42
  (682, 68200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Spritzee - Rest - TM44
  (682, 68200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Spritzee - Attract - TM45
  (682, 68200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Spritzee - Round - TM48
  (682, 68200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Spritzee - Echoed Voice - TM49
  (682, 68200, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 35),
  -- Spritzee - Energy Ball - TM53
  (682, 68200, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 36),
  -- Spritzee - Charge Beam - TM57
  (682, 68200, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 37),
  -- Spritzee - Flash - TM70
  (682, 68200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 38),
  -- Spritzee - Gyro Ball - TM74
  (682, 68200, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 39),
  -- Spritzee - Psych Up - TM77
  (682, 68200, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 40),
  -- Spritzee - Dream Eater - TM85
  (682, 68200, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 41),
  -- Spritzee - Swagger - TM87
  (682, 68200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 42),
  -- Spritzee - Sleep Talk - TM88
  (682, 68200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 43),
  -- Spritzee - Substitute - TM90
  (682, 68200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 44),
  -- Spritzee - Flash Cannon - TM91
  (682, 68200, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 45),
  -- Spritzee - Trick Room - TM92
  (682, 68200, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 46),
  -- Spritzee - Dazzling Gleam - TM99
  (682, 68200, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 47),
  -- Spritzee - Confide - TM100
  (682, 68200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 48),
  -- Spritzee - Disable - Egg
  (682, 68200, 50, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spritzee - Wish - Egg
  (682, 68200, 273, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Spritzee - Refresh - Egg
  (682, 68200, 287, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Spritzee - Captivate - Egg
  (682, 68200, 445, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Aromatisse - Sweet Scent - Level 1
  (683, 68300, 230, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aromatisse - Heal Pulse - Level 1
  (683, 68300, 505, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aromatisse - Fairy Wind - Level 1
  (683, 68300, 584, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Aromatisse - Aromatic Mist - Level 1
  (683, 68300, 597, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Aromatisse - Sweet Kiss - Level 6
  (683, 68300, 186, 13, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Aromatisse - Odor Sleuth - Level 8
  (683, 68300, 316, 13, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Aromatisse - Echoed Voice - Level 13
  (683, 68300, 497, 13, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Aromatisse - Calm Mind - Level 17
  (683, 68300, 347, 13, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Aromatisse - Draining Kiss - Level 21
  (683, 68300, 577, 13, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Aromatisse - Aromatherapy - Level 25
  (683, 68300, 312, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Aromatisse - Attract - Level 29
  (683, 68300, 213, 13, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Aromatisse - Moonblast - Level 31
  (683, 68300, 585, 13, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Aromatisse - Charm - Level 35
  (683, 68300, 204, 13, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Aromatisse - Flail - Level 38
  (683, 68300, 175, 13, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Aromatisse - Misty Terrain - Level 42
  (683, 68300, 581, 13, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Aromatisse - Skill Swap - Level 44
  (683, 68300, 285, 13, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Aromatisse - Psychic - Level 48
  (683, 68300, 94, 13, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Aromatisse - Disarming Voice - Level 53
  (683, 68300, 574, 13, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Aromatisse - Reflect - Level 57
  (683, 68300, 115, 13, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Aromatisse - Psych Up - Level 64
  (683, 68300, 244, 13, NULL, 1, 64, NULL, NULL, NULL, 20),
  -- Aromatisse - Psyshock - TM03
  (683, 68300, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 21),
  -- Aromatisse - Calm Mind - TM04
  (683, 68300, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 22),
  -- Aromatisse - Toxic - TM06
  (683, 68300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 23),
  -- Aromatisse - Hidden Power - TM10
  (683, 68300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Aromatisse - Sunny Day - TM11
  (683, 68300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 25),
  -- Aromatisse - Hyper Beam - TM15
  (683, 68300, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 26),
  -- Aromatisse - Light Screen - TM16
  (683, 68300, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 27),
  -- Aromatisse - Protect - TM17
  (683, 68300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 28),
  -- Aromatisse - Rain Dance - TM18
  (683, 68300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 29),
  -- Aromatisse - Frustration - TM21
  (683, 68300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 30),
  -- Aromatisse - Thunderbolt - TM24
  (683, 68300, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 31),
  -- Aromatisse - Thunder - TM25
  (683, 68300, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 32),
  -- Aromatisse - Return - TM27
  (683, 68300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Aromatisse - Psychic - TM29
  (683, 68300, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 34),
  -- Aromatisse - Double Team - TM32
  (683, 68300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 35),
  -- Aromatisse - Reflect - TM33
  (683, 68300, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 36),
  -- Aromatisse - Torment - TM41
  (683, 68300, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 37),
  -- Aromatisse - Facade - TM42
  (683, 68300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 38),
  -- Aromatisse - Rest - TM44
  (683, 68300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 39),
  -- Aromatisse - Attract - TM45
  (683, 68300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 40),
  -- Aromatisse - Round - TM48
  (683, 68300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Aromatisse - Echoed Voice - TM49
  (683, 68300, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 42),
  -- Aromatisse - Energy Ball - TM53
  (683, 68300, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 43),
  -- Aromatisse - Charge Beam - TM57
  (683, 68300, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 44),
  -- Aromatisse - Giga Impact - TM68
  (683, 68300, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 45),
  -- Aromatisse - Flash - TM70
  (683, 68300, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 46),
  -- Aromatisse - Gyro Ball - TM74
  (683, 68300, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 47),
  -- Aromatisse - Psych Up - TM77
  (683, 68300, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 48),
  -- Aromatisse - Dream Eater - TM85
  (683, 68300, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 49),
  -- Aromatisse - Swagger - TM87
  (683, 68300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 50),
  -- Aromatisse - Sleep Talk - TM88
  (683, 68300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 51),
  -- Aromatisse - Substitute - TM90
  (683, 68300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 52),
  -- Aromatisse - Flash Cannon - TM91
  (683, 68300, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 53),
  -- Aromatisse - Trick Room - TM92
  (683, 68300, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 54),
  -- Aromatisse - Dazzling Gleam - TM99
  (683, 68300, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 55),
  -- Aromatisse - Confide - TM100
  (683, 68300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 56),
  -- Swirlix - Tackle - Level 1
  (684, 68400, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swirlix - Sweet Scent - Level 1
  (684, 68400, 230, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swirlix - Fairy Wind - Level 5
  (684, 68400, 584, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Swirlix - Play Nice - Level 8
  (684, 68400, 589, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Swirlix - Fake Tears - Level 10
  (684, 68400, 313, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Swirlix - Round - Level 13
  (684, 68400, 496, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Swirlix - Cotton Spore - Level 17
  (684, 68400, 178, 13, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Swirlix - Endeavor - Level 21
  (684, 68400, 283, 13, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Swirlix - Aromatherapy - Level 26
  (684, 68400, 312, 13, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Swirlix - Draining Kiss - Level 31
  (684, 68400, 577, 13, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Swirlix - Energy Ball - Level 36
  (684, 68400, 412, 13, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Swirlix - Cotton Guard - Level 41
  (684, 68400, 538, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Swirlix - Wish - Level 45
  (684, 68400, 273, 13, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Swirlix - Play Rough - Level 49
  (684, 68400, 583, 13, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Swirlix - Light Screen - Level 58
  (684, 68400, 113, 13, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Swirlix - Safeguard - Level 67
  (684, 68400, 219, 13, NULL, 1, 67, NULL, NULL, NULL, 16),
  -- Swirlix - Calm Mind - TM04
  (684, 68400, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 17),
  -- Swirlix - Toxic - TM06
  (684, 68400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Swirlix - Hidden Power - TM10
  (684, 68400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Swirlix - Sunny Day - TM11
  (684, 68400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Swirlix - Light Screen - TM16
  (684, 68400, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 21),
  -- Swirlix - Protect - TM17
  (684, 68400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Swirlix - Rain Dance - TM18
  (684, 68400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Swirlix - Safeguard - TM20
  (684, 68400, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 24),
  -- Swirlix - Frustration - TM21
  (684, 68400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Swirlix - Thunderbolt - TM24
  (684, 68400, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 26),
  -- Swirlix - Return - TM27
  (684, 68400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Swirlix - Psychic - TM29
  (684, 68400, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 28),
  -- Swirlix - Double Team - TM32
  (684, 68400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Swirlix - Flamethrower - TM35
  (684, 68400, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 30),
  -- Swirlix - Facade - TM42
  (684, 68400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Swirlix - Rest - TM44
  (684, 68400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Swirlix - Attract - TM45
  (684, 68400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Swirlix - Thief - TM46
  (684, 68400, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 34),
  -- Swirlix - Round - TM48
  (684, 68400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Swirlix - Energy Ball - TM53
  (684, 68400, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 36),
  -- Swirlix - Flash - TM70
  (684, 68400, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 37),
  -- Swirlix - Psych Up - TM77
  (684, 68400, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 38),
  -- Swirlix - Dream Eater - TM85
  (684, 68400, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 39),
  -- Swirlix - Swagger - TM87
  (684, 68400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Swirlix - Sleep Talk - TM88
  (684, 68400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Swirlix - Substitute - TM90
  (684, 68400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Swirlix - Dazzling Gleam - TM99
  (684, 68400, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 43),
  -- Swirlix - Confide - TM100
  (684, 68400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 44),
  -- Swirlix - Surf - HM03
  (684, 68400, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 45),
  -- Swirlix - Belly Drum - Egg
  (684, 68400, 187, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Swirlix - Yawn - Egg
  (684, 68400, 281, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Swirlix - Copycat - Egg
  (684, 68400, 383, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Swirlix - After You - Egg
  (684, 68400, 495, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Slurpuff - Tackle - Level 1
  (685, 68500, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slurpuff - Sweet Scent - Level 1
  (685, 68500, 230, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slurpuff - Fairy Wind - Level 5
  (685, 68500, 584, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Slurpuff - Play Nice - Level 8
  (685, 68500, 589, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Slurpuff - Fake Tears - Level 10
  (685, 68500, 313, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Slurpuff - Round - Level 13
  (685, 68500, 496, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Slurpuff - Cotton Spore - Level 17
  (685, 68500, 178, 13, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Slurpuff - Endeavor - Level 21
  (685, 68500, 283, 13, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Slurpuff - Aromatherapy - Level 26
  (685, 68500, 312, 13, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Slurpuff - Draining Kiss - Level 31
  (685, 68500, 577, 13, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Slurpuff - Energy Ball - Level 36
  (685, 68500, 412, 13, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Slurpuff - Cotton Guard - Level 41
  (685, 68500, 538, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Slurpuff - Wish - Level 45
  (685, 68500, 273, 13, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Slurpuff - Play Rough - Level 49
  (685, 68500, 583, 13, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Slurpuff - Light Screen - Level 58
  (685, 68500, 113, 13, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Slurpuff - Safeguard - Level 67
  (685, 68500, 219, 13, NULL, 1, 67, NULL, NULL, NULL, 16),
  -- Slurpuff - Calm Mind - TM04
  (685, 68500, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 17),
  -- Slurpuff - Toxic - TM06
  (685, 68500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Slurpuff - Hidden Power - TM10
  (685, 68500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Slurpuff - Sunny Day - TM11
  (685, 68500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Slurpuff - Hyper Beam - TM15
  (685, 68500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 21),
  -- Slurpuff - Light Screen - TM16
  (685, 68500, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 22),
  -- Slurpuff - Protect - TM17
  (685, 68500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Slurpuff - Rain Dance - TM18
  (685, 68500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Slurpuff - Safeguard - TM20
  (685, 68500, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 25),
  -- Slurpuff - Frustration - TM21
  (685, 68500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Slurpuff - Thunderbolt - TM24
  (685, 68500, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 27),
  -- Slurpuff - Return - TM27
  (685, 68500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Slurpuff - Psychic - TM29
  (685, 68500, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 29),
  -- Slurpuff - Double Team - TM32
  (685, 68500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Slurpuff - Flamethrower - TM35
  (685, 68500, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 31),
  -- Slurpuff - Facade - TM42
  (685, 68500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Slurpuff - Rest - TM44
  (685, 68500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Slurpuff - Attract - TM45
  (685, 68500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Slurpuff - Thief - TM46
  (685, 68500, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 35),
  -- Slurpuff - Round - TM48
  (685, 68500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 36),
  -- Slurpuff - Energy Ball - TM53
  (685, 68500, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 37),
  -- Slurpuff - Giga Impact - TM68
  (685, 68500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 38),
  -- Slurpuff - Flash - TM70
  (685, 68500, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 39),
  -- Slurpuff - Psych Up - TM77
  (685, 68500, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 40),
  -- Slurpuff - Dream Eater - TM85
  (685, 68500, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 41),
  -- Slurpuff - Swagger - TM87
  (685, 68500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 42),
  -- Slurpuff - Sleep Talk - TM88
  (685, 68500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 43),
  -- Slurpuff - Substitute - TM90
  (685, 68500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 44),
  -- Slurpuff - Dazzling Gleam - TM99
  (685, 68500, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 45),
  -- Slurpuff - Confide - TM100
  (685, 68500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Slurpuff - Surf - HM03
  (685, 68500, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 47),
  -- Inkay - Tackle - Level 1
  (686, 68600, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Inkay - Peck - Level 1
  (686, 68600, 64, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Inkay - Constrict - Level 1
  (686, 68600, 132, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Inkay - Reflect - Level 4
  (686, 68600, 115, 13, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Inkay - Foul Play - Level 8
  (686, 68600, 492, 13, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Inkay - Swagger - Level 12
  (686, 68600, 207, 13, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Inkay - Psywave - Level 13
  (686, 68600, 149, 13, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Inkay - Topsy-Turvy - Level 15
  (686, 68600, 576, 13, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Inkay - Hypnosis - Level 18
  (686, 68600, 95, 13, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Inkay - Psybeam - Level 21
  (686, 68600, 60, 13, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Inkay - Switcheroo - Level 23
  (686, 68600, 415, 13, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Inkay - Payback - Level 27
  (686, 68600, 371, 13, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Inkay - Light Screen - Level 31
  (686, 68600, 113, 13, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Inkay - Pluck - Level 35
  (686, 68600, 365, 13, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Inkay - Psycho Cut - Level 39
  (686, 68600, 427, 13, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Inkay - Slash - Level 43
  (686, 68600, 163, 13, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Inkay - Night Slash - Level 46
  (686, 68600, 400, 13, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Inkay - Superpower - Level 48
  (686, 68600, 276, 13, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Inkay - Calm Mind - TM04
  (686, 68600, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 19),
  -- Inkay - Toxic - TM06
  (686, 68600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Inkay - Hidden Power - TM10
  (686, 68600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Inkay - Sunny Day - TM11
  (686, 68600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Inkay - Taunt - TM12
  (686, 68600, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 23),
  -- Inkay - Light Screen - TM16
  (686, 68600, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 24),
  -- Inkay - Protect - TM17
  (686, 68600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Inkay - Rain Dance - TM18
  (686, 68600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Inkay - Frustration - TM21
  (686, 68600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Inkay - Thunderbolt - TM24
  (686, 68600, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 28),
  -- Inkay - Return - TM27
  (686, 68600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Inkay - Psychic - TM29
  (686, 68600, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 30),
  -- Inkay - Double Team - TM32
  (686, 68600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Inkay - Reflect - TM33
  (686, 68600, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 32),
  -- Inkay - Flamethrower - TM35
  (686, 68600, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 33),
  -- Inkay - Aerial Ace - TM40
  (686, 68600, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 34),
  -- Inkay - Torment - TM41
  (686, 68600, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 35),
  -- Inkay - Facade - TM42
  (686, 68600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Inkay - Rest - TM44
  (686, 68600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Inkay - Attract - TM45
  (686, 68600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Inkay - Thief - TM46
  (686, 68600, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 39),
  -- Inkay - Round - TM48
  (686, 68600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 40),
  -- Inkay - Fling - TM56
  (686, 68600, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 41),
  -- Inkay - Embargo - TM63
  (686, 68600, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 42),
  -- Inkay - Payback - TM66
  (686, 68600, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 43),
  -- Inkay - Retaliate - TM67
  (686, 68600, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 44),
  -- Inkay - Flash - TM70
  (686, 68600, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 45),
  -- Inkay - Psych Up - TM77
  (686, 68600, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 46),
  -- Inkay - Rock Slide - TM80
  (686, 68600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 47),
  -- Inkay - Swagger - TM87
  (686, 68600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Inkay - Sleep Talk - TM88
  (686, 68600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Inkay - Substitute - TM90
  (686, 68600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 50),
  -- Inkay - Trick Room - TM92
  (686, 68600, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 51),
  -- Inkay - Dark Pulse - TM97
  (686, 68600, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 52),
  -- Inkay - Confide - TM100
  (686, 68600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 53),
  -- Inkay - Cut - HM01
  (686, 68600, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 54),
  -- Inkay - Destiny Bond - Egg
  (686, 68600, 194, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Inkay - Flatter - Egg
  (686, 68600, 260, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Inkay - Camouflage - Egg
  (686, 68600, 293, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Inkay - Power Split - Egg
  (686, 68600, 471, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Inkay - Simple Beam - Egg
  (686, 68600, 493, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Malamar - Tackle - Level 1
  (687, 68700, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Malamar - Peck - Level 1
  (687, 68700, 64, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Malamar - Constrict - Level 1
  (687, 68700, 132, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Malamar - Reversal - Level 1
  (687, 68700, 179, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Malamar - Superpower - Level 1
  (687, 68700, 276, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Malamar - Reflect - Level 4
  (687, 68700, 115, 13, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Malamar - Foul Play - Level 8
  (687, 68700, 492, 13, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Malamar - Swagger - Level 12
  (687, 68700, 207, 13, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Malamar - Psywave - Level 13
  (687, 68700, 149, 13, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Malamar - Topsy-Turvy - Level 15
  (687, 68700, 576, 13, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Malamar - Hypnosis - Level 18
  (687, 68700, 95, 13, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Malamar - Psybeam - Level 21
  (687, 68700, 60, 13, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Malamar - Switcheroo - Level 23
  (687, 68700, 415, 13, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Malamar - Payback - Level 27
  (687, 68700, 371, 13, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Malamar - Light Screen - Level 31
  (687, 68700, 113, 13, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Malamar - Pluck - Level 35
  (687, 68700, 365, 13, NULL, 1, 35, NULL, NULL, NULL, 16),
  -- Malamar - Psycho Cut - Level 39
  (687, 68700, 427, 13, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Malamar - Slash - Level 43
  (687, 68700, 163, 13, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Malamar - Night Slash - Level 46
  (687, 68700, 400, 13, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Malamar - Superpower - Level 48
  (687, 68700, 276, 13, NULL, 1, 48, NULL, NULL, NULL, 20),
  -- Malamar - Psyshock - TM03
  (687, 68700, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 21),
  -- Malamar - Calm Mind - TM04
  (687, 68700, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 22),
  -- Malamar - Toxic - TM06
  (687, 68700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 23),
  -- Malamar - Hidden Power - TM10
  (687, 68700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Malamar - Sunny Day - TM11
  (687, 68700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 25),
  -- Malamar - Taunt - TM12
  (687, 68700, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 26),
  -- Malamar - Hyper Beam - TM15
  (687, 68700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 27),
  -- Malamar - Light Screen - TM16
  (687, 68700, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 28),
  -- Malamar - Protect - TM17
  (687, 68700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 29),
  -- Malamar - Rain Dance - TM18
  (687, 68700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 30),
  -- Malamar - Frustration - TM21
  (687, 68700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 31),
  -- Malamar - Thunderbolt - TM24
  (687, 68700, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 32),
  -- Malamar - Return - TM27
  (687, 68700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Malamar - Psychic - TM29
  (687, 68700, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 34),
  -- Malamar - Double Team - TM32
  (687, 68700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 35),
  -- Malamar - Reflect - TM33
  (687, 68700, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 36),
  -- Malamar - Flamethrower - TM35
  (687, 68700, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 37),
  -- Malamar - Aerial Ace - TM40
  (687, 68700, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 38),
  -- Malamar - Torment - TM41
  (687, 68700, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 39),
  -- Malamar - Facade - TM42
  (687, 68700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 40),
  -- Malamar - Rest - TM44
  (687, 68700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 41),
  -- Malamar - Attract - TM45
  (687, 68700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 42),
  -- Malamar - Thief - TM46
  (687, 68700, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 43),
  -- Malamar - Round - TM48
  (687, 68700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 44),
  -- Malamar - Fling - TM56
  (687, 68700, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 45),
  -- Malamar - Embargo - TM63
  (687, 68700, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 46),
  -- Malamar - Payback - TM66
  (687, 68700, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 47),
  -- Malamar - Retaliate - TM67
  (687, 68700, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 48),
  -- Malamar - Giga Impact - TM68
  (687, 68700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 49),
  -- Malamar - Flash - TM70
  (687, 68700, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 50),
  -- Malamar - Psych Up - TM77
  (687, 68700, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 51),
  -- Malamar - Rock Slide - TM80
  (687, 68700, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 52),
  -- Malamar - Swagger - TM87
  (687, 68700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 53),
  -- Malamar - Sleep Talk - TM88
  (687, 68700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 54),
  -- Malamar - Substitute - TM90
  (687, 68700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 55),
  -- Malamar - Trick Room - TM92
  (687, 68700, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 56),
  -- Malamar - Dark Pulse - TM97
  (687, 68700, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 57),
  -- Malamar - Confide - TM100
  (687, 68700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 58),
  -- Malamar - Cut - HM01
  (687, 68700, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 59),
  -- Binacle - Scratch - Level 1
  (688, 68800, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Binacle - Sand Attack - Level 1
  (688, 68800, 28, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Binacle - Shell Smash - Level 1
  (688, 68800, 504, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Binacle - Water Gun - Level 4
  (688, 68800, 55, 13, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Binacle - Withdraw - Level 7
  (688, 68800, 110, 13, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Binacle - Fury Swipes - Level 10
  (688, 68800, 154, 13, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Binacle - Slash - Level 13
  (688, 68800, 163, 13, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Binacle - Mud-Slap - Level 18
  (688, 68800, 189, 13, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Binacle - Clamp - Level 20
  (688, 68800, 128, 13, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Binacle - Rock Polish - Level 24
  (688, 68800, 397, 13, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Binacle - Ancient Power - Level 28
  (688, 68800, 246, 13, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Binacle - Hone Claws - Level 32
  (688, 68800, 468, 13, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Binacle - Fury Cutter - Level 37
  (688, 68800, 210, 13, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Binacle - Night Slash - Level 41
  (688, 68800, 400, 13, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Binacle - Razor Shell - Level 45
  (688, 68800, 534, 13, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Binacle - Cross Chop - Level 49
  (688, 68800, 238, 13, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Binacle - Hone Claws - TM01
  (688, 68800, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 17),
  -- Binacle - Toxic - TM06
  (688, 68800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Binacle - Hidden Power - TM10
  (688, 68800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Binacle - Taunt - TM12
  (688, 68800, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 20),
  -- Binacle - Ice Beam - TM13
  (688, 68800, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 21),
  -- Binacle - Blizzard - TM14
  (688, 68800, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 22),
  -- Binacle - Protect - TM17
  (688, 68800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Binacle - Rain Dance - TM18
  (688, 68800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Binacle - Safeguard - TM20
  (688, 68800, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 25),
  -- Binacle - Frustration - TM21
  (688, 68800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Binacle - Smack Down - TM23
  (688, 68800, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 27),
  -- Binacle - Earthquake - TM26
  (688, 68800, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 28),
  -- Binacle - Return - TM27
  (688, 68800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Binacle - Dig - TM28
  (688, 68800, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 30),
  -- Binacle - Brick Break - TM31
  (688, 68800, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 31),
  -- Binacle - Double Team - TM32
  (688, 68800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Binacle - Sludge Wave - TM34
  (688, 68800, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 33),
  -- Binacle - Sludge Bomb - TM36
  (688, 68800, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 34),
  -- Binacle - Sandstorm - TM37
  (688, 68800, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 35),
  -- Binacle - Rock Tomb - TM39
  (688, 68800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 36),
  -- Binacle - Aerial Ace - TM40
  (688, 68800, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 37),
  -- Binacle - Torment - TM41
  (688, 68800, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 38),
  -- Binacle - Facade - TM42
  (688, 68800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 39),
  -- Binacle - Rest - TM44
  (688, 68800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 40),
  -- Binacle - Attract - TM45
  (688, 68800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 41),
  -- Binacle - Thief - TM46
  (688, 68800, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 42),
  -- Binacle - Round - TM48
  (688, 68800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 43),
  -- Binacle - False Swipe - TM54
  (688, 68800, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 44),
  -- Binacle - Scald - TM55
  (688, 68800, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 45),
  -- Binacle - Fling - TM56
  (688, 68800, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 46),
  -- Binacle - Embargo - TM63
  (688, 68800, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 47),
  -- Binacle - Shadow Claw - TM65
  (688, 68800, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 48),
  -- Binacle - Payback - TM66
  (688, 68800, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 49),
  -- Binacle - Rock Polish - TM69
  (688, 68800, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 50),
  -- Binacle - Stone Edge - TM71
  (688, 68800, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 51),
  -- Binacle - Swords Dance - TM75
  (688, 68800, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 52),
  -- Binacle - Bulldoze - TM78
  (688, 68800, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 53),
  -- Binacle - Rock Slide - TM80
  (688, 68800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 54),
  -- Binacle - X-Scissor - TM81
  (688, 68800, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 55),
  -- Binacle - Infestation - TM83
  (688, 68800, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 56),
  -- Binacle - Poison Jab - TM84
  (688, 68800, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 57),
  -- Binacle - Grass Knot - TM86
  (688, 68800, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 58),
  -- Binacle - Swagger - TM87
  (688, 68800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 59),
  -- Binacle - Sleep Talk - TM88
  (688, 68800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 60),
  -- Binacle - Substitute - TM90
  (688, 68800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 61),
  -- Binacle - Rock Smash - TM94
  (688, 68800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 62),
  -- Binacle - Nature Power - TM96
  (688, 68800, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 63),
  -- Binacle - Power-Up Punch - TM98
  (688, 68800, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 64),
  -- Binacle - Confide - TM100
  (688, 68800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 65),
  -- Binacle - Cut - HM01
  (688, 68800, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 66),
  -- Binacle - Surf - HM03
  (688, 68800, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 67),
  -- Binacle - Strength - HM04
  (688, 68800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 68),
  -- Binacle - Helping Hand - Egg
  (688, 68800, 270, 13, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Binacle - Tickle - Egg
  (688, 68800, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Binacle - Water Sport - Egg
  (688, 68800, 346, 13, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Binacle - Switcheroo - Egg
  (688, 68800, 415, 13, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Barbaracle - Scratch - Level 1
  (689, 68900, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Barbaracle - Sand Attack - Level 1
  (689, 68900, 28, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Barbaracle - Skull Bash - Level 1
  (689, 68900, 130, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Barbaracle - Stone Edge - Level 1
  (689, 68900, 444, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Barbaracle - Shell Smash - Level 1
  (689, 68900, 504, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Barbaracle - Water Gun - Level 4
  (689, 68900, 55, 13, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Barbaracle - Withdraw - Level 7
  (689, 68900, 110, 13, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Barbaracle - Fury Swipes - Level 10
  (689, 68900, 154, 13, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Barbaracle - Slash - Level 13
  (689, 68900, 163, 13, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Barbaracle - Mud-Slap - Level 18
  (689, 68900, 189, 13, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Barbaracle - Clamp - Level 20
  (689, 68900, 128, 13, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Barbaracle - Rock Polish - Level 24
  (689, 68900, 397, 13, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Barbaracle - Ancient Power - Level 28
  (689, 68900, 246, 13, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Barbaracle - Hone Claws - Level 32
  (689, 68900, 468, 13, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Barbaracle - Fury Cutter - Level 37
  (689, 68900, 210, 13, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Barbaracle - Night Slash - Level 44
  (689, 68900, 400, 13, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Barbaracle - Razor Shell - Level 48
  (689, 68900, 534, 13, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Barbaracle - Cross Chop - Level 55
  (689, 68900, 238, 13, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Barbaracle - Stone Edge - Level 60
  (689, 68900, 444, 13, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Barbaracle - Skull Bash - Level 65
  (689, 68900, 130, 13, NULL, 1, 65, NULL, NULL, NULL, 20),
  -- Barbaracle - Hone Claws - TM01
  (689, 68900, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 21),
  -- Barbaracle - Dragon Claw - TM02
  (689, 68900, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 22),
  -- Barbaracle - Toxic - TM06
  (689, 68900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 23),
  -- Barbaracle - Bulk Up - TM08
  (689, 68900, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 24),
  -- Barbaracle - Hidden Power - TM10
  (689, 68900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 25),
  -- Barbaracle - Taunt - TM12
  (689, 68900, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 26),
  -- Barbaracle - Ice Beam - TM13
  (689, 68900, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 27),
  -- Barbaracle - Blizzard - TM14
  (689, 68900, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 28),
  -- Barbaracle - Hyper Beam - TM15
  (689, 68900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 29),
  -- Barbaracle - Protect - TM17
  (689, 68900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 30),
  -- Barbaracle - Rain Dance - TM18
  (689, 68900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 31),
  -- Barbaracle - Safeguard - TM20
  (689, 68900, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 32),
  -- Barbaracle - Frustration - TM21
  (689, 68900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 33),
  -- Barbaracle - Smack Down - TM23
  (689, 68900, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 34),
  -- Barbaracle - Earthquake - TM26
  (689, 68900, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 35),
  -- Barbaracle - Return - TM27
  (689, 68900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 36),
  -- Barbaracle - Dig - TM28
  (689, 68900, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 37),
  -- Barbaracle - Brick Break - TM31
  (689, 68900, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 38),
  -- Barbaracle - Double Team - TM32
  (689, 68900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 39),
  -- Barbaracle - Sludge Wave - TM34
  (689, 68900, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 40),
  -- Barbaracle - Sludge Bomb - TM36
  (689, 68900, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 41),
  -- Barbaracle - Sandstorm - TM37
  (689, 68900, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 42),
  -- Barbaracle - Rock Tomb - TM39
  (689, 68900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 43),
  -- Barbaracle - Aerial Ace - TM40
  (689, 68900, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 44),
  -- Barbaracle - Torment - TM41
  (689, 68900, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 45),
  -- Barbaracle - Facade - TM42
  (689, 68900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 46),
  -- Barbaracle - Rest - TM44
  (689, 68900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 47),
  -- Barbaracle - Attract - TM45
  (689, 68900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 48),
  -- Barbaracle - Thief - TM46
  (689, 68900, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 49),
  -- Barbaracle - Round - TM48
  (689, 68900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 50),
  -- Barbaracle - Focus Blast - TM52
  (689, 68900, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 51),
  -- Barbaracle - False Swipe - TM54
  (689, 68900, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 52),
  -- Barbaracle - Scald - TM55
  (689, 68900, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 53),
  -- Barbaracle - Fling - TM56
  (689, 68900, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 54),
  -- Barbaracle - Embargo - TM63
  (689, 68900, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 55),
  -- Barbaracle - Shadow Claw - TM65
  (689, 68900, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 56),
  -- Barbaracle - Payback - TM66
  (689, 68900, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 57),
  -- Barbaracle - Giga Impact - TM68
  (689, 68900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 58),
  -- Barbaracle - Rock Polish - TM69
  (689, 68900, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 59),
  -- Barbaracle - Stone Edge - TM71
  (689, 68900, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 60),
  -- Barbaracle - Swords Dance - TM75
  (689, 68900, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 61),
  -- Barbaracle - Bulldoze - TM78
  (689, 68900, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 62),
  -- Barbaracle - Rock Slide - TM80
  (689, 68900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 63),
  -- Barbaracle - X-Scissor - TM81
  (689, 68900, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 64),
  -- Barbaracle - Infestation - TM83
  (689, 68900, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 65),
  -- Barbaracle - Poison Jab - TM84
  (689, 68900, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 66),
  -- Barbaracle - Grass Knot - TM86
  (689, 68900, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 67),
  -- Barbaracle - Swagger - TM87
  (689, 68900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 68),
  -- Barbaracle - Sleep Talk - TM88
  (689, 68900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 69),
  -- Barbaracle - Substitute - TM90
  (689, 68900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 70),
  -- Barbaracle - Rock Smash - TM94
  (689, 68900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 71),
  -- Barbaracle - Nature Power - TM96
  (689, 68900, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 72),
  -- Barbaracle - Power-Up Punch - TM98
  (689, 68900, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 73),
  -- Barbaracle - Confide - TM100
  (689, 68900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 74),
  -- Barbaracle - Cut - HM01
  (689, 68900, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 75),
  -- Barbaracle - Surf - HM03
  (689, 68900, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 76),
  -- Barbaracle - Strength - HM04
  (689, 68900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 77),
  -- Skrelp - Tackle - Level 1
  (690, 69000, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skrelp - Water Gun - Level 1
  (690, 69000, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skrelp - Smokescreen - Level 1
  (690, 69000, 108, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skrelp - Feint Attack - Level 5
  (690, 69000, 185, 13, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Skrelp - Tail Whip - Level 9
  (690, 69000, 39, 13, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Skrelp - Bubble - Level 12
  (690, 69000, 145, 13, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Skrelp - Acid - Level 15
  (690, 69000, 51, 13, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Skrelp - Camouflage - Level 19
  (690, 69000, 293, 13, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Skrelp - Poison Tail - Level 23
  (690, 69000, 342, 13, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Skrelp - Water Pulse - Level 25
  (690, 69000, 352, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Skrelp - Double Team - Level 28
  (690, 69000, 104, 13, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Skrelp - Toxic - Level 32
  (690, 69000, 92, 13, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Skrelp - Aqua Tail - Level 35
  (690, 69000, 401, 13, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Skrelp - Sludge Bomb - Level 38
  (690, 69000, 188, 13, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Skrelp - Hydro Pump - Level 42
  (690, 69000, 56, 13, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Skrelp - Dragon Pulse - Level 49
  (690, 69000, 406, 13, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Skrelp - Toxic - TM06
  (690, 69000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Skrelp - Hail - TM07
  (690, 69000, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 18),
  -- Skrelp - Venoshock - TM09
  (690, 69000, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 19),
  -- Skrelp - Hidden Power - TM10
  (690, 69000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Skrelp - Protect - TM17
  (690, 69000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Skrelp - Rain Dance - TM18
  (690, 69000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Skrelp - Frustration - TM21
  (690, 69000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Skrelp - Thunderbolt - TM24
  (690, 69000, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 24),
  -- Skrelp - Return - TM27
  (690, 69000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Skrelp - Shadow Ball - TM30
  (690, 69000, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 26),
  -- Skrelp - Double Team - TM32
  (690, 69000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Skrelp - Sludge Wave - TM34
  (690, 69000, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 28),
  -- Skrelp - Sludge Bomb - TM36
  (690, 69000, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 29),
  -- Skrelp - Facade - TM42
  (690, 69000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Skrelp - Rest - TM44
  (690, 69000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Skrelp - Attract - TM45
  (690, 69000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Skrelp - Round - TM48
  (690, 69000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Skrelp - Scald - TM55
  (690, 69000, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 34),
  -- Skrelp - Swagger - TM87
  (690, 69000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 35),
  -- Skrelp - Sleep Talk - TM88
  (690, 69000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 36),
  -- Skrelp - Substitute - TM90
  (690, 69000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 37),
  -- Skrelp - Confide - TM100
  (690, 69000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 38),
  -- Skrelp - Surf - HM03
  (690, 69000, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 39),
  -- Skrelp - Waterfall - HM05
  (690, 69000, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 40),
  -- Skrelp - Haze - Egg
  (690, 69000, 114, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Skrelp - Acid Armor - Egg
  (690, 69000, 151, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Skrelp - Toxic Spikes - Egg
  (690, 69000, 390, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Skrelp - Play Rough - Egg
  (690, 69000, 583, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Skrelp - Venom Drench - Egg
  (690, 69000, 599, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Dragalge - Tackle - Level 1
  (691, 69100, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragalge - Water Gun - Level 1
  (691, 69100, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragalge - Smokescreen - Level 1
  (691, 69100, 108, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragalge - Twister - Level 1
  (691, 69100, 239, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragalge - Dragon Tail - Level 1
  (691, 69100, 525, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dragalge - Feint Attack - Level 5
  (691, 69100, 185, 13, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Dragalge - Tail Whip - Level 9
  (691, 69100, 39, 13, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Dragalge - Bubble - Level 12
  (691, 69100, 145, 13, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Dragalge - Acid - Level 15
  (691, 69100, 51, 13, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Dragalge - Camouflage - Level 19
  (691, 69100, 293, 13, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Dragalge - Poison Tail - Level 23
  (691, 69100, 342, 13, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Dragalge - Water Pulse - Level 25
  (691, 69100, 352, 13, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Dragalge - Double Team - Level 28
  (691, 69100, 104, 13, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Dragalge - Toxic - Level 32
  (691, 69100, 92, 13, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Dragalge - Aqua Tail - Level 35
  (691, 69100, 401, 13, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Dragalge - Sludge Bomb - Level 38
  (691, 69100, 188, 13, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Dragalge - Hydro Pump - Level 42
  (691, 69100, 56, 13, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Dragalge - Dragon Pulse - Level 53
  (691, 69100, 406, 13, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Dragalge - Dragon Tail - Level 59
  (691, 69100, 525, 13, NULL, 1, 59, NULL, NULL, NULL, 19),
  -- Dragalge - Twister - Level 67
  (691, 69100, 239, 13, NULL, 1, 67, NULL, NULL, NULL, 20),
  -- Dragalge - Toxic - TM06
  (691, 69100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Dragalge - Hail - TM07
  (691, 69100, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 22),
  -- Dragalge - Venoshock - TM09
  (691, 69100, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 23),
  -- Dragalge - Hidden Power - TM10
  (691, 69100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Dragalge - Hyper Beam - TM15
  (691, 69100, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Dragalge - Protect - TM17
  (691, 69100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Dragalge - Rain Dance - TM18
  (691, 69100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Dragalge - Frustration - TM21
  (691, 69100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Dragalge - Thunderbolt - TM24
  (691, 69100, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 29),
  -- Dragalge - Thunder - TM25
  (691, 69100, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 30),
  -- Dragalge - Return - TM27
  (691, 69100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Dragalge - Shadow Ball - TM30
  (691, 69100, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 32),
  -- Dragalge - Double Team - TM32
  (691, 69100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Dragalge - Sludge Wave - TM34
  (691, 69100, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 34),
  -- Dragalge - Sludge Bomb - TM36
  (691, 69100, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 35),
  -- Dragalge - Facade - TM42
  (691, 69100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Dragalge - Rest - TM44
  (691, 69100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Dragalge - Attract - TM45
  (691, 69100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Dragalge - Round - TM48
  (691, 69100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Dragalge - Focus Blast - TM52
  (691, 69100, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 40),
  -- Dragalge - Scald - TM55
  (691, 69100, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 41),
  -- Dragalge - Giga Impact - TM68
  (691, 69100, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 42),
  -- Dragalge - Dragon Tail - TM82
  (691, 69100, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 43),
  -- Dragalge - Swagger - TM87
  (691, 69100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Dragalge - Sleep Talk - TM88
  (691, 69100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Dragalge - Substitute - TM90
  (691, 69100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 46),
  -- Dragalge - Confide - TM100
  (691, 69100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 47),
  -- Dragalge - Surf - HM03
  (691, 69100, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 48),
  -- Dragalge - Waterfall - HM05
  (691, 69100, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 49),
  -- Dragalge - Draco Meteor - Tutor
  (691, 69100, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 50),
  -- Clauncher - Water Gun - Level 1
  (692, 69200, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clauncher - Splash - Level 1
  (692, 69200, 150, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clauncher - Water Sport - Level 7
  (692, 69200, 346, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Clauncher - Vise Grip - Level 9
  (692, 69200, 11, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Clauncher - Bubble - Level 12
  (692, 69200, 145, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Clauncher - Flail - Level 16
  (692, 69200, 175, 13, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Clauncher - Bubble Beam - Level 20
  (692, 69200, 61, 13, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Clauncher - Swords Dance - Level 25
  (692, 69200, 14, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Clauncher - Crabhammer - Level 30
  (692, 69200, 152, 13, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Clauncher - Water Pulse - Level 34
  (692, 69200, 352, 13, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Clauncher - Smack Down - Level 39
  (692, 69200, 479, 13, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Clauncher - Aqua Jet - Level 43
  (692, 69200, 453, 13, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Clauncher - Muddy Water - Level 48
  (692, 69200, 330, 13, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Clauncher - Toxic - TM06
  (692, 69200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Clauncher - Venoshock - TM09
  (692, 69200, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 15),
  -- Clauncher - Hidden Power - TM10
  (692, 69200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Clauncher - Ice Beam - TM13
  (692, 69200, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 17),
  -- Clauncher - Protect - TM17
  (692, 69200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 18),
  -- Clauncher - Rain Dance - TM18
  (692, 69200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 19),
  -- Clauncher - Frustration - TM21
  (692, 69200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 20),
  -- Clauncher - Smack Down - TM23
  (692, 69200, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 21),
  -- Clauncher - Return - TM27
  (692, 69200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 22),
  -- Clauncher - Double Team - TM32
  (692, 69200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 23),
  -- Clauncher - Sludge Wave - TM34
  (692, 69200, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 24),
  -- Clauncher - Sludge Bomb - TM36
  (692, 69200, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 25),
  -- Clauncher - Facade - TM42
  (692, 69200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Clauncher - Rest - TM44
  (692, 69200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Clauncher - Attract - TM45
  (692, 69200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Clauncher - Round - TM48
  (692, 69200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 29),
  -- Clauncher - Scald - TM55
  (692, 69200, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 30),
  -- Clauncher - Swords Dance - TM75
  (692, 69200, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 31),
  -- Clauncher - Rock Slide - TM80
  (692, 69200, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 32),
  -- Clauncher - Swagger - TM87
  (692, 69200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 33),
  -- Clauncher - Sleep Talk - TM88
  (692, 69200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 34),
  -- Clauncher - U-turn - TM89
  (692, 69200, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 35),
  -- Clauncher - Substitute - TM90
  (692, 69200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 36),
  -- Clauncher - Flash Cannon - TM91
  (692, 69200, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 37),
  -- Clauncher - Confide - TM100
  (692, 69200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 38),
  -- Clauncher - Cut - HM01
  (692, 69200, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 39),
  -- Clauncher - Surf - HM03
  (692, 69200, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 40),
  -- Clauncher - Waterfall - HM05
  (692, 69200, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 41),
  -- Clauncher - Crabhammer - Egg
  (692, 69200, 152, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Clauncher - Endure - Egg
  (692, 69200, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Clauncher - Helping Hand - Egg
  (692, 69200, 270, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Clauncher - Aqua Jet - Egg
  (692, 69200, 453, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Clauncher - Entrainment - Egg
  (692, 69200, 494, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Clawitzer - Water Gun - Level 1
  (693, 69300, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clawitzer - Splash - Level 1
  (693, 69300, 150, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clawitzer - Aura Sphere - Level 1
  (693, 69300, 396, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Clawitzer - Dark Pulse - Level 1
  (693, 69300, 399, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Clawitzer - Dragon Pulse - Level 1
  (693, 69300, 406, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Clawitzer - Heal Pulse - Level 1
  (693, 69300, 505, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Clawitzer - Water Sport - Level 7
  (693, 69300, 346, 13, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Clawitzer - Vise Grip - Level 9
  (693, 69300, 11, 13, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Clawitzer - Bubble - Level 12
  (693, 69300, 145, 13, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Clawitzer - Flail - Level 16
  (693, 69300, 175, 13, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Clawitzer - Bubble Beam - Level 20
  (693, 69300, 61, 13, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Clawitzer - Swords Dance - Level 25
  (693, 69300, 14, 13, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Clawitzer - Crabhammer - Level 30
  (693, 69300, 152, 13, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Clawitzer - Water Pulse - Level 34
  (693, 69300, 352, 13, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Clawitzer - Smack Down - Level 42
  (693, 69300, 479, 13, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Clawitzer - Aqua Jet - Level 47
  (693, 69300, 453, 13, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Clawitzer - Muddy Water - Level 53
  (693, 69300, 330, 13, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Clawitzer - Dark Pulse - Level 57
  (693, 69300, 399, 13, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Clawitzer - Dragon Pulse - Level 63
  (693, 69300, 406, 13, NULL, 1, 63, NULL, NULL, NULL, 19),
  -- Clawitzer - Aura Sphere - Level 67
  (693, 69300, 396, 13, NULL, 1, 67, NULL, NULL, NULL, 20),
  -- Clawitzer - Toxic - TM06
  (693, 69300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Clawitzer - Venoshock - TM09
  (693, 69300, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 22),
  -- Clawitzer - Hidden Power - TM10
  (693, 69300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Clawitzer - Ice Beam - TM13
  (693, 69300, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 24),
  -- Clawitzer - Hyper Beam - TM15
  (693, 69300, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Clawitzer - Protect - TM17
  (693, 69300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Clawitzer - Rain Dance - TM18
  (693, 69300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Clawitzer - Frustration - TM21
  (693, 69300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Clawitzer - Smack Down - TM23
  (693, 69300, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 29),
  -- Clawitzer - Return - TM27
  (693, 69300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Clawitzer - Shadow Ball - TM30
  (693, 69300, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 31),
  -- Clawitzer - Double Team - TM32
  (693, 69300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Clawitzer - Sludge Wave - TM34
  (693, 69300, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 33),
  -- Clawitzer - Sludge Bomb - TM36
  (693, 69300, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 34),
  -- Clawitzer - Facade - TM42
  (693, 69300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Clawitzer - Rest - TM44
  (693, 69300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Clawitzer - Attract - TM45
  (693, 69300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Clawitzer - Round - TM48
  (693, 69300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Clawitzer - Focus Blast - TM52
  (693, 69300, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 39),
  -- Clawitzer - Scald - TM55
  (693, 69300, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 40),
  -- Clawitzer - Giga Impact - TM68
  (693, 69300, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 41),
  -- Clawitzer - Swords Dance - TM75
  (693, 69300, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 42),
  -- Clawitzer - Rock Slide - TM80
  (693, 69300, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 43),
  -- Clawitzer - Swagger - TM87
  (693, 69300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Clawitzer - Sleep Talk - TM88
  (693, 69300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Clawitzer - U-turn - TM89
  (693, 69300, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 46),
  -- Clawitzer - Substitute - TM90
  (693, 69300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 47),
  -- Clawitzer - Flash Cannon - TM91
  (693, 69300, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 48),
  -- Clawitzer - Dark Pulse - TM97
  (693, 69300, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 49),
  -- Clawitzer - Confide - TM100
  (693, 69300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 50),
  -- Clawitzer - Cut - HM01
  (693, 69300, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 51),
  -- Clawitzer - Surf - HM03
  (693, 69300, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 52),
  -- Clawitzer - Waterfall - HM05
  (693, 69300, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 53),
  -- Helioptile - Pound - Level 1
  (694, 69400, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Helioptile - Tail Whip - Level 1
  (694, 69400, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Helioptile - Thunder Shock - Level 6
  (694, 69400, 84, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Helioptile - Charge - Level 11
  (694, 69400, 268, 13, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Helioptile - Mud-Slap - Level 13
  (694, 69400, 189, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Helioptile - Quick Attack - Level 17
  (694, 69400, 98, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Helioptile - Razor Wind - Level 22
  (694, 69400, 13, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Helioptile - Parabolic Charge - Level 25
  (694, 69400, 570, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Helioptile - Thunder Wave - Level 31
  (694, 69400, 86, 13, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Helioptile - Bulldoze - Level 35
  (694, 69400, 523, 13, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Helioptile - Volt Switch - Level 40
  (694, 69400, 521, 13, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Helioptile - Electrify - Level 45
  (694, 69400, 582, 13, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Helioptile - Thunderbolt - Level 49
  (694, 69400, 85, 13, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Helioptile - Toxic - TM06
  (694, 69400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Helioptile - Hidden Power - TM10
  (694, 69400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Helioptile - Light Screen - TM16
  (694, 69400, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 16),
  -- Helioptile - Protect - TM17
  (694, 69400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 17),
  -- Helioptile - Rain Dance - TM18
  (694, 69400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 18),
  -- Helioptile - Frustration - TM21
  (694, 69400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 19),
  -- Helioptile - Thunderbolt - TM24
  (694, 69400, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 20),
  -- Helioptile - Thunder - TM25
  (694, 69400, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 21),
  -- Helioptile - Return - TM27
  (694, 69400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 22),
  -- Helioptile - Dig - TM28
  (694, 69400, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 23),
  -- Helioptile - Double Team - TM32
  (694, 69400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 24),
  -- Helioptile - Sandstorm - TM37
  (694, 69400, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 25),
  -- Helioptile - Rock Tomb - TM39
  (694, 69400, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 26),
  -- Helioptile - Facade - TM42
  (694, 69400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 27),
  -- Helioptile - Rest - TM44
  (694, 69400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 28),
  -- Helioptile - Attract - TM45
  (694, 69400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 29),
  -- Helioptile - Low Sweep - TM47
  (694, 69400, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 30),
  -- Helioptile - Round - TM48
  (694, 69400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 31),
  -- Helioptile - Charge Beam - TM57
  (694, 69400, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 32),
  -- Helioptile - Flash - TM70
  (694, 69400, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 33),
  -- Helioptile - Volt Switch - TM72
  (694, 69400, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 34),
  -- Helioptile - Thunder Wave - TM73
  (694, 69400, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 35),
  -- Helioptile - Psych Up - TM77
  (694, 69400, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 36),
  -- Helioptile - Bulldoze - TM78
  (694, 69400, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 37),
  -- Helioptile - Rock Slide - TM80
  (694, 69400, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 38),
  -- Helioptile - Dragon Tail - TM82
  (694, 69400, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 39),
  -- Helioptile - Grass Knot - TM86
  (694, 69400, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 40),
  -- Helioptile - Swagger - TM87
  (694, 69400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 41),
  -- Helioptile - Sleep Talk - TM88
  (694, 69400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 42),
  -- Helioptile - U-turn - TM89
  (694, 69400, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 43),
  -- Helioptile - Substitute - TM90
  (694, 69400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 44),
  -- Helioptile - Wild Charge - TM93
  (694, 69400, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 45),
  -- Helioptile - Dark Pulse - TM97
  (694, 69400, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 46),
  -- Helioptile - Confide - TM100
  (694, 69400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 47),
  -- Helioptile - Cut - HM01
  (694, 69400, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 48),
  -- Helioptile - Surf - HM03
  (694, 69400, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 49),
  -- Helioptile - Agility - Egg
  (694, 69400, 97, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Helioptile - Glare - Egg
  (694, 69400, 137, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Helioptile - Camouflage - Egg
  (694, 69400, 293, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Helioptile - Electric Terrain - Egg
  (694, 69400, 604, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Heliolisk - Razor Wind - Level 1
  (695, 69500, 13, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heliolisk - Thunder - Level 1
  (695, 69500, 87, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Heliolisk - Quick Attack - Level 1
  (695, 69500, 98, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Heliolisk - Charge - Level 1
  (695, 69500, 268, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Heliolisk - Parabolic Charge - Level 1
  (695, 69500, 570, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Heliolisk - Electrify - Level 1
  (695, 69500, 582, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Heliolisk - Eerie Impulse - Level 1
  (695, 69500, 598, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Heliolisk - Toxic - TM06
  (695, 69500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 8),
  -- Heliolisk - Hidden Power - TM10
  (695, 69500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 9),
  -- Heliolisk - Hyper Beam - TM15
  (695, 69500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 10),
  -- Heliolisk - Light Screen - TM16
  (695, 69500, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 11),
  -- Heliolisk - Protect - TM17
  (695, 69500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 12),
  -- Heliolisk - Rain Dance - TM18
  (695, 69500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 13),
  -- Heliolisk - Frustration - TM21
  (695, 69500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 14),
  -- Heliolisk - Thunderbolt - TM24
  (695, 69500, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 15),
  -- Heliolisk - Thunder - TM25
  (695, 69500, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 16),
  -- Heliolisk - Return - TM27
  (695, 69500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 17),
  -- Heliolisk - Dig - TM28
  (695, 69500, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 18),
  -- Heliolisk - Double Team - TM32
  (695, 69500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 19),
  -- Heliolisk - Sandstorm - TM37
  (695, 69500, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 20),
  -- Heliolisk - Rock Tomb - TM39
  (695, 69500, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 21),
  -- Heliolisk - Facade - TM42
  (695, 69500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 22),
  -- Heliolisk - Rest - TM44
  (695, 69500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 23),
  -- Heliolisk - Attract - TM45
  (695, 69500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 24),
  -- Heliolisk - Low Sweep - TM47
  (695, 69500, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 25),
  -- Heliolisk - Round - TM48
  (695, 69500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 26),
  -- Heliolisk - Focus Blast - TM52
  (695, 69500, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 27),
  -- Heliolisk - Charge Beam - TM57
  (695, 69500, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 28),
  -- Heliolisk - Giga Impact - TM68
  (695, 69500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 29),
  -- Heliolisk - Flash - TM70
  (695, 69500, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 30),
  -- Heliolisk - Volt Switch - TM72
  (695, 69500, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 31),
  -- Heliolisk - Thunder Wave - TM73
  (695, 69500, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 32),
  -- Heliolisk - Psych Up - TM77
  (695, 69500, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 33),
  -- Heliolisk - Bulldoze - TM78
  (695, 69500, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 34),
  -- Heliolisk - Rock Slide - TM80
  (695, 69500, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 35),
  -- Heliolisk - Dragon Tail - TM82
  (695, 69500, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 36),
  -- Heliolisk - Grass Knot - TM86
  (695, 69500, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 37),
  -- Heliolisk - Swagger - TM87
  (695, 69500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 38),
  -- Heliolisk - Sleep Talk - TM88
  (695, 69500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 39),
  -- Heliolisk - U-turn - TM89
  (695, 69500, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 40),
  -- Heliolisk - Substitute - TM90
  (695, 69500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 41),
  -- Heliolisk - Wild Charge - TM93
  (695, 69500, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 42),
  -- Heliolisk - Dark Pulse - TM97
  (695, 69500, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 43),
  -- Heliolisk - Confide - TM100
  (695, 69500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 44),
  -- Heliolisk - Cut - HM01
  (695, 69500, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 45),
  -- Heliolisk - Surf - HM03
  (695, 69500, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 46),
  -- Tyrunt - Tackle - Level 1
  (696, 69600, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyrunt - Tail Whip - Level 1
  (696, 69600, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tyrunt - Roar - Level 6
  (696, 69600, 46, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Tyrunt - Stomp - Level 10
  (696, 69600, 23, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tyrunt - Bide - Level 12
  (696, 69600, 117, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Tyrunt - Stealth Rock - Level 15
  (696, 69600, 446, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Tyrunt - Bite - Level 17
  (696, 69600, 44, 13, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Tyrunt - Charm - Level 20
  (696, 69600, 204, 13, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Tyrunt - Ancient Power - Level 26
  (696, 69600, 246, 13, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Tyrunt - Dragon Tail - Level 30
  (696, 69600, 525, 13, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Tyrunt - Crunch - Level 34
  (696, 69600, 242, 13, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Tyrunt - Dragon Claw - Level 37
  (696, 69600, 337, 13, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Tyrunt - Thrash - Level 40
  (696, 69600, 37, 13, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Tyrunt - Earthquake - Level 44
  (696, 69600, 89, 13, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Tyrunt - Horn Drill - Level 49
  (696, 69600, 32, 13, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Tyrunt - Hone Claws - TM01
  (696, 69600, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 16),
  -- Tyrunt - Dragon Claw - TM02
  (696, 69600, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 17),
  -- Tyrunt - Roar - TM05
  (696, 69600, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 18),
  -- Tyrunt - Toxic - TM06
  (696, 69600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Tyrunt - Hidden Power - TM10
  (696, 69600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Tyrunt - Sunny Day - TM11
  (696, 69600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Tyrunt - Protect - TM17
  (696, 69600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Tyrunt - Frustration - TM21
  (696, 69600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Tyrunt - Earthquake - TM26
  (696, 69600, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 24),
  -- Tyrunt - Return - TM27
  (696, 69600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Tyrunt - Dig - TM28
  (696, 69600, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 26),
  -- Tyrunt - Brick Break - TM31
  (696, 69600, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 27),
  -- Tyrunt - Double Team - TM32
  (696, 69600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Tyrunt - Sandstorm - TM37
  (696, 69600, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 29),
  -- Tyrunt - Rock Tomb - TM39
  (696, 69600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 30),
  -- Tyrunt - Aerial Ace - TM40
  (696, 69600, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 31),
  -- Tyrunt - Facade - TM42
  (696, 69600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Tyrunt - Rest - TM44
  (696, 69600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Tyrunt - Attract - TM45
  (696, 69600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Tyrunt - Round - TM48
  (696, 69600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Tyrunt - Rock Polish - TM69
  (696, 69600, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 36),
  -- Tyrunt - Stone Edge - TM71
  (696, 69600, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 37),
  -- Tyrunt - Bulldoze - TM78
  (696, 69600, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 38),
  -- Tyrunt - Rock Slide - TM80
  (696, 69600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 39),
  -- Tyrunt - Dragon Tail - TM82
  (696, 69600, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 40),
  -- Tyrunt - Swagger - TM87
  (696, 69600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 41),
  -- Tyrunt - Sleep Talk - TM88
  (696, 69600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 42),
  -- Tyrunt - Substitute - TM90
  (696, 69600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 43),
  -- Tyrunt - Rock Smash - TM94
  (696, 69600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 44),
  -- Tyrunt - Dark Pulse - TM97
  (696, 69600, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 45),
  -- Tyrunt - Confide - TM100
  (696, 69600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Tyrunt - Strength - HM04
  (696, 69600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 47),
  -- Tyrunt - Curse - Egg
  (696, 69600, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Tyrunt - Poison Fang - Egg
  (696, 69600, 305, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Tyrunt - Dragon Dance - Egg
  (696, 69600, 349, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tyrunt - Rock Polish - Egg
  (696, 69600, 397, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tyrunt - Thunder Fang - Egg
  (696, 69600, 422, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tyrunt - Ice Fang - Egg
  (696, 69600, 423, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tyrunt - Fire Fang - Egg
  (696, 69600, 424, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tyrunt - Draco Meteor - Tutor
  (696, 69600, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 55),
  -- Tyrantrum - Tackle - Level 1
  (697, 69700, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyrantrum - Tail Whip - Level 1
  (697, 69700, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tyrantrum - Head Smash - Level 1
  (697, 69700, 457, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tyrantrum - Roar - Level 6
  (697, 69700, 46, 13, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Tyrantrum - Stomp - Level 10
  (697, 69700, 23, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Tyrantrum - Bide - Level 12
  (697, 69700, 117, 13, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Tyrantrum - Stealth Rock - Level 15
  (697, 69700, 446, 13, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Tyrantrum - Bite - Level 17
  (697, 69700, 44, 13, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Tyrantrum - Charm - Level 20
  (697, 69700, 204, 13, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Tyrantrum - Ancient Power - Level 26
  (697, 69700, 246, 13, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Tyrantrum - Dragon Tail - Level 30
  (697, 69700, 525, 13, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Tyrantrum - Crunch - Level 34
  (697, 69700, 242, 13, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Tyrantrum - Dragon Claw - Level 37
  (697, 69700, 337, 13, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Tyrantrum - Thrash - Level 42
  (697, 69700, 37, 13, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Tyrantrum - Earthquake - Level 47
  (697, 69700, 89, 13, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Tyrantrum - Horn Drill - Level 53
  (697, 69700, 32, 13, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Tyrantrum - Head Smash - Level 58
  (697, 69700, 457, 13, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Tyrantrum - Rock Slide - Level 68
  (697, 69700, 157, 13, NULL, 1, 68, NULL, NULL, NULL, 18),
  -- Tyrantrum - Giga Impact - Level 75
  (697, 69700, 416, 13, NULL, 1, 75, NULL, NULL, NULL, 19),
  -- Tyrantrum - Hone Claws - TM01
  (697, 69700, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 20),
  -- Tyrantrum - Dragon Claw - TM02
  (697, 69700, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 21),
  -- Tyrantrum - Roar - TM05
  (697, 69700, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 22),
  -- Tyrantrum - Toxic - TM06
  (697, 69700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 23),
  -- Tyrantrum - Hidden Power - TM10
  (697, 69700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Tyrantrum - Sunny Day - TM11
  (697, 69700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 25),
  -- Tyrantrum - Hyper Beam - TM15
  (697, 69700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 26),
  -- Tyrantrum - Protect - TM17
  (697, 69700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 27),
  -- Tyrantrum - Frustration - TM21
  (697, 69700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Tyrantrum - Earthquake - TM26
  (697, 69700, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 29),
  -- Tyrantrum - Return - TM27
  (697, 69700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Tyrantrum - Dig - TM28
  (697, 69700, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 31),
  -- Tyrantrum - Brick Break - TM31
  (697, 69700, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 32),
  -- Tyrantrum - Double Team - TM32
  (697, 69700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Tyrantrum - Sandstorm - TM37
  (697, 69700, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 34),
  -- Tyrantrum - Rock Tomb - TM39
  (697, 69700, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 35),
  -- Tyrantrum - Aerial Ace - TM40
  (697, 69700, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 36),
  -- Tyrantrum - Facade - TM42
  (697, 69700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 37),
  -- Tyrantrum - Rest - TM44
  (697, 69700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 38),
  -- Tyrantrum - Attract - TM45
  (697, 69700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 39),
  -- Tyrantrum - Round - TM48
  (697, 69700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 40),
  -- Tyrantrum - Giga Impact - TM68
  (697, 69700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 41),
  -- Tyrantrum - Rock Polish - TM69
  (697, 69700, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 42),
  -- Tyrantrum - Stone Edge - TM71
  (697, 69700, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 43),
  -- Tyrantrum - Bulldoze - TM78
  (697, 69700, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 44),
  -- Tyrantrum - Rock Slide - TM80
  (697, 69700, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 45),
  -- Tyrantrum - Dragon Tail - TM82
  (697, 69700, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 46),
  -- Tyrantrum - Swagger - TM87
  (697, 69700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Tyrantrum - Sleep Talk - TM88
  (697, 69700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Tyrantrum - Substitute - TM90
  (697, 69700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 49),
  -- Tyrantrum - Rock Smash - TM94
  (697, 69700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 50),
  -- Tyrantrum - Dark Pulse - TM97
  (697, 69700, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 51),
  -- Tyrantrum - Confide - TM100
  (697, 69700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 52),
  -- Tyrantrum - Strength - HM04
  (697, 69700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 53),
  -- Tyrantrum - Draco Meteor - Tutor
  (697, 69700, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 54),
  -- Amaura - Growl - Level 1
  (698, 69800, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Amaura - Powder Snow - Level 1
  (698, 69800, 181, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Amaura - Thunder Wave - Level 5
  (698, 69800, 86, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Amaura - Rock Throw - Level 10
  (698, 69800, 88, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Amaura - Icy Wind - Level 13
  (698, 69800, 196, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Amaura - Take Down - Level 15
  (698, 69800, 36, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Amaura - Mist - Level 18
  (698, 69800, 54, 13, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Amaura - Aurora Beam - Level 20
  (698, 69800, 62, 13, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Amaura - Ancient Power - Level 26
  (698, 69800, 246, 13, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Amaura - Round - Level 30
  (698, 69800, 496, 13, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Amaura - Avalanche - Level 34
  (698, 69800, 419, 13, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Amaura - Hail - Level 38
  (698, 69800, 258, 13, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Amaura - Nature Power - Level 41
  (698, 69800, 267, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Amaura - Encore - Level 44
  (698, 69800, 227, 13, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Amaura - Light Screen - Level 47
  (698, 69800, 113, 13, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Amaura - Ice Beam - Level 50
  (698, 69800, 58, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Amaura - Hyper Beam - Level 57
  (698, 69800, 63, 13, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Amaura - Blizzard - Level 65
  (698, 69800, 59, 13, NULL, 1, 65, NULL, NULL, NULL, 18),
  -- Amaura - Calm Mind - TM04
  (698, 69800, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 19),
  -- Amaura - Roar - TM05
  (698, 69800, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 20),
  -- Amaura - Toxic - TM06
  (698, 69800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Amaura - Hail - TM07
  (698, 69800, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 22),
  -- Amaura - Hidden Power - TM10
  (698, 69800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Amaura - Ice Beam - TM13
  (698, 69800, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 24),
  -- Amaura - Blizzard - TM14
  (698, 69800, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 25),
  -- Amaura - Hyper Beam - TM15
  (698, 69800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 26),
  -- Amaura - Light Screen - TM16
  (698, 69800, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 27),
  -- Amaura - Protect - TM17
  (698, 69800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 28),
  -- Amaura - Rain Dance - TM18
  (698, 69800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 29),
  -- Amaura - Safeguard - TM20
  (698, 69800, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 30),
  -- Amaura - Frustration - TM21
  (698, 69800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 31),
  -- Amaura - Thunderbolt - TM24
  (698, 69800, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 32),
  -- Amaura - Return - TM27
  (698, 69800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Amaura - Double Team - TM32
  (698, 69800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Amaura - Reflect - TM33
  (698, 69800, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 35),
  -- Amaura - Sandstorm - TM37
  (698, 69800, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 36),
  -- Amaura - Rock Tomb - TM39
  (698, 69800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 37),
  -- Amaura - Facade - TM42
  (698, 69800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 38),
  -- Amaura - Rest - TM44
  (698, 69800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 39),
  -- Amaura - Attract - TM45
  (698, 69800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 40),
  -- Amaura - Round - TM48
  (698, 69800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Amaura - Echoed Voice - TM49
  (698, 69800, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 42),
  -- Amaura - Charge Beam - TM57
  (698, 69800, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 43),
  -- Amaura - Rock Polish - TM69
  (698, 69800, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 44),
  -- Amaura - Flash - TM70
  (698, 69800, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 45),
  -- Amaura - Stone Edge - TM71
  (698, 69800, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 46),
  -- Amaura - Thunder Wave - TM73
  (698, 69800, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 47),
  -- Amaura - Psych Up - TM77
  (698, 69800, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 48),
  -- Amaura - Bulldoze - TM78
  (698, 69800, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 49),
  -- Amaura - Frost Breath - TM79
  (698, 69800, 524, 13, NULL, 2, NULL, NULL, 13002079, NULL, 50),
  -- Amaura - Rock Slide - TM80
  (698, 69800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 51),
  -- Amaura - Dragon Tail - TM82
  (698, 69800, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 52),
  -- Amaura - Dream Eater - TM85
  (698, 69800, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 53),
  -- Amaura - Swagger - TM87
  (698, 69800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 54),
  -- Amaura - Sleep Talk - TM88
  (698, 69800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 55),
  -- Amaura - Substitute - TM90
  (698, 69800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 56),
  -- Amaura - Flash Cannon - TM91
  (698, 69800, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 57),
  -- Amaura - Rock Smash - TM94
  (698, 69800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 58),
  -- Amaura - Nature Power - TM96
  (698, 69800, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 59),
  -- Amaura - Dark Pulse - TM97
  (698, 69800, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 60),
  -- Amaura - Confide - TM100
  (698, 69800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 61),
  -- Amaura - Barrier - Egg
  (698, 69800, 112, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Amaura - Haze - Egg
  (698, 69800, 114, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Amaura - Mirror Coat - Egg
  (698, 69800, 243, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Amaura - Magnet Rise - Egg
  (698, 69800, 393, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Amaura - Discharge - Egg
  (698, 69800, 435, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Aurorus - Growl - Level 1
  (699, 69900, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aurorus - Powder Snow - Level 1
  (699, 69900, 181, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aurorus - Freeze-Dry - Level 1
  (699, 69900, 573, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Aurorus - Thunder Wave - Level 5
  (699, 69900, 86, 13, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Aurorus - Rock Throw - Level 10
  (699, 69900, 88, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Aurorus - Icy Wind - Level 13
  (699, 69900, 196, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Aurorus - Take Down - Level 15
  (699, 69900, 36, 13, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Aurorus - Mist - Level 18
  (699, 69900, 54, 13, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Aurorus - Aurora Beam - Level 20
  (699, 69900, 62, 13, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Aurorus - Ancient Power - Level 26
  (699, 69900, 246, 13, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Aurorus - Round - Level 30
  (699, 69900, 496, 13, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Aurorus - Avalanche - Level 34
  (699, 69900, 419, 13, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Aurorus - Hail - Level 38
  (699, 69900, 258, 13, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Aurorus - Nature Power - Level 43
  (699, 69900, 267, 13, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Aurorus - Encore - Level 46
  (699, 69900, 227, 13, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Aurorus - Light Screen - Level 50
  (699, 69900, 113, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Aurorus - Ice Beam - Level 56
  (699, 69900, 58, 13, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Aurorus - Hyper Beam - Level 63
  (699, 69900, 63, 13, NULL, 1, 63, NULL, NULL, NULL, 18),
  -- Aurorus - Blizzard - Level 74
  (699, 69900, 59, 13, NULL, 1, 74, NULL, NULL, NULL, 19),
  -- Aurorus - Freeze-Dry - Level 77
  (699, 69900, 573, 13, NULL, 1, 77, NULL, NULL, NULL, 20),
  -- Aurorus - Calm Mind - TM04
  (699, 69900, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 21),
  -- Aurorus - Roar - TM05
  (699, 69900, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 22),
  -- Aurorus - Toxic - TM06
  (699, 69900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 23),
  -- Aurorus - Hail - TM07
  (699, 69900, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 24),
  -- Aurorus - Hidden Power - TM10
  (699, 69900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 25),
  -- Aurorus - Ice Beam - TM13
  (699, 69900, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 26),
  -- Aurorus - Blizzard - TM14
  (699, 69900, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 27),
  -- Aurorus - Hyper Beam - TM15
  (699, 69900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 28),
  -- Aurorus - Light Screen - TM16
  (699, 69900, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 29),
  -- Aurorus - Protect - TM17
  (699, 69900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 30),
  -- Aurorus - Rain Dance - TM18
  (699, 69900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 31),
  -- Aurorus - Safeguard - TM20
  (699, 69900, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 32),
  -- Aurorus - Frustration - TM21
  (699, 69900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 33),
  -- Aurorus - Thunderbolt - TM24
  (699, 69900, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 34),
  -- Aurorus - Thunder - TM25
  (699, 69900, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 35),
  -- Aurorus - Earthquake - TM26
  (699, 69900, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 36),
  -- Aurorus - Return - TM27
  (699, 69900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 37),
  -- Aurorus - Psychic - TM29
  (699, 69900, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 38),
  -- Aurorus - Double Team - TM32
  (699, 69900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 39),
  -- Aurorus - Reflect - TM33
  (699, 69900, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 40),
  -- Aurorus - Sandstorm - TM37
  (699, 69900, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 41),
  -- Aurorus - Rock Tomb - TM39
  (699, 69900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 42),
  -- Aurorus - Facade - TM42
  (699, 69900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 43),
  -- Aurorus - Rest - TM44
  (699, 69900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 44),
  -- Aurorus - Attract - TM45
  (699, 69900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 45),
  -- Aurorus - Round - TM48
  (699, 69900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 46),
  -- Aurorus - Echoed Voice - TM49
  (699, 69900, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 47),
  -- Aurorus - Charge Beam - TM57
  (699, 69900, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 48),
  -- Aurorus - Giga Impact - TM68
  (699, 69900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 49),
  -- Aurorus - Rock Polish - TM69
  (699, 69900, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 50),
  -- Aurorus - Flash - TM70
  (699, 69900, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 51),
  -- Aurorus - Stone Edge - TM71
  (699, 69900, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 52),
  -- Aurorus - Thunder Wave - TM73
  (699, 69900, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 53),
  -- Aurorus - Psych Up - TM77
  (699, 69900, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 54),
  -- Aurorus - Bulldoze - TM78
  (699, 69900, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 55),
  -- Aurorus - Frost Breath - TM79
  (699, 69900, 524, 13, NULL, 2, NULL, NULL, 13002079, NULL, 56),
  -- Aurorus - Rock Slide - TM80
  (699, 69900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 57),
  -- Aurorus - Dragon Tail - TM82
  (699, 69900, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 58),
  -- Aurorus - Dream Eater - TM85
  (699, 69900, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 59),
  -- Aurorus - Swagger - TM87
  (699, 69900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 60),
  -- Aurorus - Sleep Talk - TM88
  (699, 69900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 61),
  -- Aurorus - Substitute - TM90
  (699, 69900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 62),
  -- Aurorus - Flash Cannon - TM91
  (699, 69900, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 63),
  -- Aurorus - Rock Smash - TM94
  (699, 69900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 64),
  -- Aurorus - Nature Power - TM96
  (699, 69900, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 65),
  -- Aurorus - Dark Pulse - TM97
  (699, 69900, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 66),
  -- Aurorus - Confide - TM100
  (699, 69900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 67),
  -- Sylveon - Tackle - Level 1
  (700, 70000, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sylveon - Tail Whip - Level 1
  (700, 70000, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sylveon - Helping Hand - Level 1
  (700, 70000, 270, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sylveon - Disarming Voice - Level 1
  (700, 70000, 574, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sylveon - Sand Attack - Level 5
  (700, 70000, 28, 13, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Sylveon - Fairy Wind - Level 9
  (700, 70000, 584, 13, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Sylveon - Quick Attack - Level 13
  (700, 70000, 98, 13, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Sylveon - Swift - Level 17
  (700, 70000, 129, 13, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Sylveon - Draining Kiss - Level 20
  (700, 70000, 577, 13, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Sylveon - Skill Swap - Level 25
  (700, 70000, 285, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Sylveon - Misty Terrain - Level 29
  (700, 70000, 581, 13, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Sylveon - Light Screen - Level 33
  (700, 70000, 113, 13, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Sylveon - Moonblast - Level 37
  (700, 70000, 585, 13, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Sylveon - Last Resort - Level 41
  (700, 70000, 387, 13, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Sylveon - Psych Up - Level 45
  (700, 70000, 244, 13, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Sylveon - Psyshock - TM03
  (700, 70000, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 16),
  -- Sylveon - Calm Mind - TM04
  (700, 70000, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 17),
  -- Sylveon - Toxic - TM06
  (700, 70000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Sylveon - Hidden Power - TM10
  (700, 70000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Sylveon - Sunny Day - TM11
  (700, 70000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Sylveon - Hyper Beam - TM15
  (700, 70000, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 21),
  -- Sylveon - Light Screen - TM16
  (700, 70000, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 22),
  -- Sylveon - Protect - TM17
  (700, 70000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Sylveon - Rain Dance - TM18
  (700, 70000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Sylveon - Safeguard - TM20
  (700, 70000, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 25),
  -- Sylveon - Frustration - TM21
  (700, 70000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Sylveon - Return - TM27
  (700, 70000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Sylveon - Dig - TM28
  (700, 70000, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 28),
  -- Sylveon - Shadow Ball - TM30
  (700, 70000, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 29),
  -- Sylveon - Double Team - TM32
  (700, 70000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Sylveon - Reflect - TM33
  (700, 70000, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 31),
  -- Sylveon - Facade - TM42
  (700, 70000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Sylveon - Rest - TM44
  (700, 70000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Sylveon - Attract - TM45
  (700, 70000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Sylveon - Round - TM48
  (700, 70000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Sylveon - Echoed Voice - TM49
  (700, 70000, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 36),
  -- Sylveon - Retaliate - TM67
  (700, 70000, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 37),
  -- Sylveon - Giga Impact - TM68
  (700, 70000, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 38),
  -- Sylveon - Flash - TM70
  (700, 70000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 39),
  -- Sylveon - Psych Up - TM77
  (700, 70000, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 40),
  -- Sylveon - Swagger - TM87
  (700, 70000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 41),
  -- Sylveon - Sleep Talk - TM88
  (700, 70000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 42),
  -- Sylveon - Substitute - TM90
  (700, 70000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 43),
  -- Sylveon - Dazzling Gleam - TM99
  (700, 70000, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 44),
  -- Sylveon - Confide - TM100
  (700, 70000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 45),
  -- Sylveon - Cut - HM01
  (700, 70000, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 46);
