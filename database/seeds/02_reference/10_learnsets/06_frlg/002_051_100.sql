-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation III Pokémon learnset raw pages, using FireRed /
-- LeafGreen level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii FireRed / LeafGreen Pokedex learnset pages and PokemonDB
-- Generation 3 FireRed / LeafGreen learnset pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: FireRed / LeafGreen
-- Pokémon: #051-#100
-- Rows: 2138
-- Scope: level-up, TM, HM, egg move, and Move Tutor acquisition rows.
-- HM08 Dive compatibility rows from game data are intentionally excluded because
-- HM08 is not legitimately obtainable in FireRed / LeafGreen.
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
  -- Dugtrio - Tri Attack - Level 1
  (51, 5100, 161, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dugtrio - Scratch - Level 1
  (51, 5100, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dugtrio - Sand Attack - Level 1
  (51, 5100, 28, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dugtrio - Growl - Level 1
  (51, 5100, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dugtrio - Growl - Level 5
  (51, 5100, 45, 6, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Dugtrio - Magnitude - Level 9
  (51, 5100, 222, 6, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Dugtrio - Dig - Level 17
  (51, 5100, 91, 6, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Dugtrio - Fury Swipes - Level 21
  (51, 5100, 154, 6, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Dugtrio - Mud-Slap - Level 25
  (51, 5100, 189, 6, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Dugtrio - Sand Tomb - Level 26
  (51, 5100, 328, 6, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Dugtrio - Slash - Level 38
  (51, 5100, 163, 6, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Dugtrio - Earthquake - Level 51
  (51, 5100, 89, 6, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Dugtrio - Fissure - Level 64
  (51, 5100, 90, 6, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Dugtrio - Toxic - TM06
  (51, 5100, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Dugtrio - Hidden Power - TM10
  (51, 5100, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Dugtrio - Sunny Day - TM11
  (51, 5100, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Dugtrio - Hyper Beam - TM15
  (51, 5100, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 17),
  -- Dugtrio - Protect - TM17
  (51, 5100, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 18),
  -- Dugtrio - Frustration - TM21
  (51, 5100, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 19),
  -- Dugtrio - Earthquake - TM26
  (51, 5100, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 20),
  -- Dugtrio - Return - TM27
  (51, 5100, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 21),
  -- Dugtrio - Dig - TM28
  (51, 5100, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 22),
  -- Dugtrio - Double Team - TM32
  (51, 5100, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 23),
  -- Dugtrio - Sludge Bomb - TM36
  (51, 5100, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 24),
  -- Dugtrio - Rock Tomb - TM39
  (51, 5100, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 25),
  -- Dugtrio - Aerial Ace - TM40
  (51, 5100, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 26),
  -- Dugtrio - Facade - TM42
  (51, 5100, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 27),
  -- Dugtrio - Secret Power - TM43
  (51, 5100, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 28),
  -- Dugtrio - Rest - TM44
  (51, 5100, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 29),
  -- Dugtrio - Attract - TM45
  (51, 5100, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 30),
  -- Dugtrio - Thief - TM46
  (51, 5100, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 31),
  -- Dugtrio - Cut - HM01
  (51, 5100, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 32),
  -- Dugtrio - Rock Smash - HM06
  (51, 5100, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 33),
  -- Dugtrio - Body Slam - Move Tutor
  (51, 5100, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Dugtrio - Double-Edge - Move Tutor
  (51, 5100, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Dugtrio - Mimic - Move Tutor
  (51, 5100, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Dugtrio - Rock Slide - Move Tutor
  (51, 5100, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Dugtrio - Substitute - Move Tutor
  (51, 5100, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Meowth - Scratch - Level 1
  (52, 5200, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowth - Growl - Level 1
  (52, 5200, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowth - Bite - Level 10
  (52, 5200, 44, 6, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Meowth - Pay Day - Level 18
  (52, 5200, 6, 6, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Meowth - Feint Attack - Level 25
  (52, 5200, 185, 6, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Meowth - Screech - Level 31
  (52, 5200, 103, 6, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Meowth - Fury Swipes - Level 36
  (52, 5200, 154, 6, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Meowth - Slash - Level 40
  (52, 5200, 163, 6, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Meowth - Fake Out - Level 43
  (52, 5200, 252, 6, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Meowth - Swagger - Level 45
  (52, 5200, 207, 6, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Meowth - Water Pulse - TM03
  (52, 5200, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 11),
  -- Meowth - Toxic - TM06
  (52, 5200, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Meowth - Hidden Power - TM10
  (52, 5200, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Meowth - Sunny Day - TM11
  (52, 5200, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 14),
  -- Meowth - Taunt - TM12
  (52, 5200, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 15),
  -- Meowth - Protect - TM17
  (52, 5200, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 16),
  -- Meowth - Rain Dance - TM18
  (52, 5200, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 17),
  -- Meowth - Frustration - TM21
  (52, 5200, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 18),
  -- Meowth - Iron Tail - TM23
  (52, 5200, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 19),
  -- Meowth - Thunderbolt - TM24
  (52, 5200, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 20),
  -- Meowth - Thunder - TM25
  (52, 5200, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 21),
  -- Meowth - Return - TM27
  (52, 5200, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 22),
  -- Meowth - Dig - TM28
  (52, 5200, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 23),
  -- Meowth - Shadow Ball - TM30
  (52, 5200, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 24),
  -- Meowth - Double Team - TM32
  (52, 5200, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Meowth - Shock Wave - TM34
  (52, 5200, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 26),
  -- Meowth - Aerial Ace - TM40
  (52, 5200, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 27),
  -- Meowth - Torment - TM41
  (52, 5200, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 28),
  -- Meowth - Facade - TM42
  (52, 5200, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 29),
  -- Meowth - Secret Power - TM43
  (52, 5200, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 30),
  -- Meowth - Rest - TM44
  (52, 5200, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 31),
  -- Meowth - Attract - TM45
  (52, 5200, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 32),
  -- Meowth - Thief - TM46
  (52, 5200, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 33),
  -- Meowth - Snatch - TM49
  (52, 5200, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 34),
  -- Meowth - Cut - HM01
  (52, 5200, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 35),
  -- Meowth - Flash - HM05
  (52, 5200, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 36),
  -- Meowth - Amnesia - Egg Move
  (52, 5200, 133, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Meowth - Assist - Egg Move
  (52, 5200, 274, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Meowth - Charm - Egg Move
  (52, 5200, 204, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Meowth - Hypnosis - Egg Move
  (52, 5200, 95, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Meowth - Psych Up - Egg Move
  (52, 5200, 244, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Meowth - Spite - Egg Move
  (52, 5200, 180, 6, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Meowth - Body Slam - Move Tutor
  (52, 5200, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Meowth - Double-Edge - Move Tutor
  (52, 5200, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Meowth - Dream Eater - Move Tutor
  (52, 5200, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Meowth - Mimic - Move Tutor
  (52, 5200, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Meowth - Substitute - Move Tutor
  (52, 5200, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Persian - Scratch - Level 1
  (53, 5300, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Persian - Growl - Level 1
  (53, 5300, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Persian - Bite - Level 1
  (53, 5300, 44, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Persian - Bite - Level 10
  (53, 5300, 44, 6, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Persian - Pay Day - Level 18
  (53, 5300, 6, 6, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Persian - Feint Attack - Level 25
  (53, 5300, 185, 6, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Persian - Screech - Level 34
  (53, 5300, 103, 6, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Persian - Fury Swipes - Level 42
  (53, 5300, 154, 6, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Persian - Slash - Level 49
  (53, 5300, 163, 6, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Persian - Fake Out - Level 55
  (53, 5300, 252, 6, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Persian - Swagger - Level 61
  (53, 5300, 207, 6, NULL, 1, 61, NULL, NULL, NULL, 11),
  -- Persian - Water Pulse - TM03
  (53, 5300, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 12),
  -- Persian - Roar - TM05
  (53, 5300, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 13),
  -- Persian - Toxic - TM06
  (53, 5300, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Persian - Hidden Power - TM10
  (53, 5300, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Persian - Sunny Day - TM11
  (53, 5300, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Persian - Taunt - TM12
  (53, 5300, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 17),
  -- Persian - Hyper Beam - TM15
  (53, 5300, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 18),
  -- Persian - Protect - TM17
  (53, 5300, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 19),
  -- Persian - Rain Dance - TM18
  (53, 5300, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 20),
  -- Persian - Frustration - TM21
  (53, 5300, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 21),
  -- Persian - Iron Tail - TM23
  (53, 5300, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 22),
  -- Persian - Thunderbolt - TM24
  (53, 5300, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 23),
  -- Persian - Thunder - TM25
  (53, 5300, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 24),
  -- Persian - Return - TM27
  (53, 5300, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 25),
  -- Persian - Dig - TM28
  (53, 5300, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 26),
  -- Persian - Shadow Ball - TM30
  (53, 5300, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 27),
  -- Persian - Double Team - TM32
  (53, 5300, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 28),
  -- Persian - Shock Wave - TM34
  (53, 5300, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 29),
  -- Persian - Aerial Ace - TM40
  (53, 5300, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 30),
  -- Persian - Torment - TM41
  (53, 5300, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 31),
  -- Persian - Facade - TM42
  (53, 5300, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 32),
  -- Persian - Secret Power - TM43
  (53, 5300, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 33),
  -- Persian - Rest - TM44
  (53, 5300, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 34),
  -- Persian - Attract - TM45
  (53, 5300, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 35),
  -- Persian - Thief - TM46
  (53, 5300, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 36),
  -- Persian - Snatch - TM49
  (53, 5300, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 37),
  -- Persian - Cut - HM01
  (53, 5300, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 38),
  -- Persian - Flash - HM05
  (53, 5300, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 39),
  -- Persian - Body Slam - Move Tutor
  (53, 5300, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Persian - Double-Edge - Move Tutor
  (53, 5300, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Persian - Dream Eater - Move Tutor
  (53, 5300, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Persian - Mimic - Move Tutor
  (53, 5300, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Persian - Substitute - Move Tutor
  (53, 5300, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Psyduck - Scratch - Level 1
  (54, 5400, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Psyduck - Water Sport - Level 1
  (54, 5400, 346, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Psyduck - Tail Whip - Level 5
  (54, 5400, 39, 6, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Psyduck - Disable - Level 10
  (54, 5400, 50, 6, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Psyduck - Confusion - Level 16
  (54, 5400, 93, 6, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Psyduck - Screech - Level 23
  (54, 5400, 103, 6, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Psyduck - Psych Up - Level 31
  (54, 5400, 244, 6, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Psyduck - Fury Swipes - Level 40
  (54, 5400, 154, 6, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Psyduck - Hydro Pump - Level 50
  (54, 5400, 56, 6, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Psyduck - Focus Punch - TM01
  (54, 5400, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 10),
  -- Psyduck - Water Pulse - TM03
  (54, 5400, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 11),
  -- Psyduck - Calm Mind - TM04
  (54, 5400, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 12),
  -- Psyduck - Toxic - TM06
  (54, 5400, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 13),
  -- Psyduck - Hail - TM07
  (54, 5400, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 14),
  -- Psyduck - Hidden Power - TM10
  (54, 5400, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Psyduck - Ice Beam - TM13
  (54, 5400, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 16),
  -- Psyduck - Blizzard - TM14
  (54, 5400, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 17),
  -- Psyduck - Protect - TM17
  (54, 5400, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 18),
  -- Psyduck - Rain Dance - TM18
  (54, 5400, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 19),
  -- Psyduck - Frustration - TM21
  (54, 5400, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Psyduck - Iron Tail - TM23
  (54, 5400, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 21),
  -- Psyduck - Return - TM27
  (54, 5400, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 22),
  -- Psyduck - Dig - TM28
  (54, 5400, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 23),
  -- Psyduck - Brick Break - TM31
  (54, 5400, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 24),
  -- Psyduck - Double Team - TM32
  (54, 5400, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Psyduck - Aerial Ace - TM40
  (54, 5400, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 26),
  -- Psyduck - Facade - TM42
  (54, 5400, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 27),
  -- Psyduck - Secret Power - TM43
  (54, 5400, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 28),
  -- Psyduck - Rest - TM44
  (54, 5400, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 29),
  -- Psyduck - Attract - TM45
  (54, 5400, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 30),
  -- Psyduck - Surf - HM03
  (54, 5400, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 31),
  -- Psyduck - Strength - HM04
  (54, 5400, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 32),
  -- Psyduck - Flash - HM05
  (54, 5400, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 33),
  -- Psyduck - Rock Smash - HM06
  (54, 5400, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 34),
  -- Psyduck - Waterfall - HM07
  (54, 5400, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 35),
  -- Psyduck - Cross Chop - Egg Move
  (54, 5400, 238, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Psyduck - Foresight - Egg Move
  (54, 5400, 193, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Psyduck - Future Sight - Egg Move
  (54, 5400, 248, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Psyduck - Hypnosis - Egg Move
  (54, 5400, 95, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Psyduck - Light Screen - Egg Move
  (54, 5400, 113, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Psyduck - Psybeam - Egg Move
  (54, 5400, 60, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Psyduck - Psychic - Egg Move
  (54, 5400, 94, 6, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Psyduck - Refresh - Egg Move
  (54, 5400, 287, 6, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Psyduck - Body Slam - Move Tutor
  (54, 5400, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Psyduck - Counter - Move Tutor
  (54, 5400, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Psyduck - Double-Edge - Move Tutor
  (54, 5400, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Psyduck - Mega Kick - Move Tutor
  (54, 5400, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Psyduck - Mega Punch - Move Tutor
  (54, 5400, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Psyduck - Mimic - Move Tutor
  (54, 5400, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Psyduck - Seismic Toss - Move Tutor
  (54, 5400, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Psyduck - Substitute - Move Tutor
  (54, 5400, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Golduck - Scratch - Level 1
  (55, 5500, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golduck - Water Sport - Level 1
  (55, 5500, 346, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golduck - Tail Whip - Level 1
  (55, 5500, 39, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golduck - Disable - Level 1
  (55, 5500, 50, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golduck - Tail Whip - Level 5
  (55, 5500, 39, 6, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Golduck - Disable - Level 10
  (55, 5500, 50, 6, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Golduck - Confusion - Level 16
  (55, 5500, 93, 6, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Golduck - Screech - Level 23
  (55, 5500, 103, 6, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Golduck - Psych Up - Level 31
  (55, 5500, 244, 6, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Golduck - Fury Swipes - Level 44
  (55, 5500, 154, 6, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Golduck - Hydro Pump - Level 58
  (55, 5500, 56, 6, NULL, 1, 58, NULL, NULL, NULL, 11),
  -- Golduck - Focus Punch - TM01
  (55, 5500, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 12),
  -- Golduck - Water Pulse - TM03
  (55, 5500, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 13),
  -- Golduck - Calm Mind - TM04
  (55, 5500, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 14),
  -- Golduck - Toxic - TM06
  (55, 5500, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Golduck - Hail - TM07
  (55, 5500, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 16),
  -- Golduck - Hidden Power - TM10
  (55, 5500, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 17),
  -- Golduck - Ice Beam - TM13
  (55, 5500, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 18),
  -- Golduck - Blizzard - TM14
  (55, 5500, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 19),
  -- Golduck - Hyper Beam - TM15
  (55, 5500, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 20),
  -- Golduck - Protect - TM17
  (55, 5500, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 21),
  -- Golduck - Rain Dance - TM18
  (55, 5500, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 22),
  -- Golduck - Frustration - TM21
  (55, 5500, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 23),
  -- Golduck - Iron Tail - TM23
  (55, 5500, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 24),
  -- Golduck - Return - TM27
  (55, 5500, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 25),
  -- Golduck - Dig - TM28
  (55, 5500, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 26),
  -- Golduck - Brick Break - TM31
  (55, 5500, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 27),
  -- Golduck - Double Team - TM32
  (55, 5500, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 28),
  -- Golduck - Aerial Ace - TM40
  (55, 5500, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 29),
  -- Golduck - Facade - TM42
  (55, 5500, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 30),
  -- Golduck - Secret Power - TM43
  (55, 5500, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 31),
  -- Golduck - Rest - TM44
  (55, 5500, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 32),
  -- Golduck - Attract - TM45
  (55, 5500, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 33),
  -- Golduck - Surf - HM03
  (55, 5500, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 34),
  -- Golduck - Strength - HM04
  (55, 5500, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 35),
  -- Golduck - Flash - HM05
  (55, 5500, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 36),
  -- Golduck - Rock Smash - HM06
  (55, 5500, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 37),
  -- Golduck - Waterfall - HM07
  (55, 5500, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 38),
  -- Golduck - Body Slam - Move Tutor
  (55, 5500, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Golduck - Counter - Move Tutor
  (55, 5500, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Golduck - Double-Edge - Move Tutor
  (55, 5500, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Golduck - Mega Kick - Move Tutor
  (55, 5500, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Golduck - Mega Punch - Move Tutor
  (55, 5500, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Golduck - Mimic - Move Tutor
  (55, 5500, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Golduck - Seismic Toss - Move Tutor
  (55, 5500, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Golduck - Substitute - Move Tutor
  (55, 5500, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Mankey - Scratch - Level 1
  (56, 5600, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mankey - Leer - Level 1
  (56, 5600, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mankey - Low Kick - Level 6
  (56, 5600, 67, 6, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Mankey - Karate Chop - Level 11
  (56, 5600, 2, 6, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Mankey - Fury Swipes - Level 16
  (56, 5600, 154, 6, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Mankey - Focus Energy - Level 21
  (56, 5600, 116, 6, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Mankey - Seismic Toss - Level 26
  (56, 5600, 69, 6, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Mankey - Cross Chop - Level 31
  (56, 5600, 238, 6, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Mankey - Swagger - Level 36
  (56, 5600, 207, 6, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Mankey - Screech - Level 41
  (56, 5600, 103, 6, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Mankey - Thrash - Level 46
  (56, 5600, 37, 6, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Mankey - Focus Punch - TM01
  (56, 5600, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 12),
  -- Mankey - Toxic - TM06
  (56, 5600, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 13),
  -- Mankey - Bulk Up - TM08
  (56, 5600, 339, 6, NULL, 2, NULL, NULL, 6002008, NULL, 14),
  -- Mankey - Hidden Power - TM10
  (56, 5600, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Mankey - Sunny Day - TM11
  (56, 5600, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Mankey - Taunt - TM12
  (56, 5600, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 17),
  -- Mankey - Protect - TM17
  (56, 5600, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 18),
  -- Mankey - Rain Dance - TM18
  (56, 5600, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 19),
  -- Mankey - Frustration - TM21
  (56, 5600, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Mankey - Iron Tail - TM23
  (56, 5600, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 21),
  -- Mankey - Thunderbolt - TM24
  (56, 5600, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 22),
  -- Mankey - Thunder - TM25
  (56, 5600, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 23),
  -- Mankey - Earthquake - TM26
  (56, 5600, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 24),
  -- Mankey - Return - TM27
  (56, 5600, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 25),
  -- Mankey - Dig - TM28
  (56, 5600, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 26),
  -- Mankey - Brick Break - TM31
  (56, 5600, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 27),
  -- Mankey - Double Team - TM32
  (56, 5600, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 28),
  -- Mankey - Rock Tomb - TM39
  (56, 5600, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 29),
  -- Mankey - Aerial Ace - TM40
  (56, 5600, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 30),
  -- Mankey - Facade - TM42
  (56, 5600, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 31),
  -- Mankey - Secret Power - TM43
  (56, 5600, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 32),
  -- Mankey - Rest - TM44
  (56, 5600, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 33),
  -- Mankey - Attract - TM45
  (56, 5600, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 34),
  -- Mankey - Thief - TM46
  (56, 5600, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 35),
  -- Mankey - Overheat - TM50
  (56, 5600, 315, 6, NULL, 2, NULL, NULL, 6002050, NULL, 36),
  -- Mankey - Strength - HM04
  (56, 5600, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 37),
  -- Mankey - Rock Smash - HM06
  (56, 5600, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 38),
  -- Mankey - Beat Up - Egg Move
  (56, 5600, 251, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Mankey - Counter - Egg Move
  (56, 5600, 68, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Mankey - Foresight - Egg Move
  (56, 5600, 193, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Mankey - Meditate - Egg Move
  (56, 5600, 96, 6, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mankey - Revenge - Egg Move
  (56, 5600, 279, 6, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mankey - Reversal - Egg Move
  (56, 5600, 179, 6, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mankey - Rock Slide - Egg Move
  (56, 5600, 157, 6, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Mankey - Smelling Salts - Egg Move
  (56, 5600, 265, 6, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mankey - Body Slam - Move Tutor
  (56, 5600, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Mankey - Counter - Move Tutor
  (56, 5600, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Mankey - Double-Edge - Move Tutor
  (56, 5600, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Mankey - Mega Kick - Move Tutor
  (56, 5600, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Mankey - Mega Punch - Move Tutor
  (56, 5600, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Mankey - Metronome - Move Tutor
  (56, 5600, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Mankey - Mimic - Move Tutor
  (56, 5600, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Mankey - Rock Slide - Move Tutor
  (56, 5600, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 54),
  -- Mankey - Seismic Toss - Move Tutor
  (56, 5600, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 55),
  -- Mankey - Substitute - Move Tutor
  (56, 5600, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 56),
  -- Primeape - Scratch - Level 1
  (57, 5700, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Primeape - Leer - Level 1
  (57, 5700, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Primeape - Low Kick - Level 1
  (57, 5700, 67, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Primeape - Rage - Level 1
  (57, 5700, 99, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Primeape - Low Kick - Level 6
  (57, 5700, 67, 6, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Primeape - Karate Chop - Level 11
  (57, 5700, 2, 6, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Primeape - Fury Swipes - Level 16
  (57, 5700, 154, 6, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Primeape - Focus Energy - Level 21
  (57, 5700, 116, 6, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Primeape - Rage - Level 28
  (57, 5700, 99, 6, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Primeape - Seismic Toss - Level 26
  (57, 5700, 69, 6, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Primeape - Cross Chop - Level 35
  (57, 5700, 238, 6, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Primeape - Swagger - Level 44
  (57, 5700, 207, 6, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Primeape - Screech - Level 53
  (57, 5700, 103, 6, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Primeape - Thrash - Level 62
  (57, 5700, 37, 6, NULL, 1, 62, NULL, NULL, NULL, 14),
  -- Primeape - Focus Punch - TM01
  (57, 5700, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 15),
  -- Primeape - Toxic - TM06
  (57, 5700, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Primeape - Bulk Up - TM08
  (57, 5700, 339, 6, NULL, 2, NULL, NULL, 6002008, NULL, 17),
  -- Primeape - Hidden Power - TM10
  (57, 5700, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 18),
  -- Primeape - Sunny Day - TM11
  (57, 5700, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 19),
  -- Primeape - Taunt - TM12
  (57, 5700, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 20),
  -- Primeape - Hyper Beam - TM15
  (57, 5700, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 21),
  -- Primeape - Protect - TM17
  (57, 5700, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 22),
  -- Primeape - Rain Dance - TM18
  (57, 5700, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 23),
  -- Primeape - Frustration - TM21
  (57, 5700, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 24),
  -- Primeape - Iron Tail - TM23
  (57, 5700, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 25),
  -- Primeape - Thunderbolt - TM24
  (57, 5700, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 26),
  -- Primeape - Thunder - TM25
  (57, 5700, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 27),
  -- Primeape - Earthquake - TM26
  (57, 5700, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 28),
  -- Primeape - Return - TM27
  (57, 5700, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 29),
  -- Primeape - Dig - TM28
  (57, 5700, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 30),
  -- Primeape - Brick Break - TM31
  (57, 5700, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 31),
  -- Primeape - Double Team - TM32
  (57, 5700, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 32),
  -- Primeape - Rock Tomb - TM39
  (57, 5700, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 33),
  -- Primeape - Aerial Ace - TM40
  (57, 5700, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 34),
  -- Primeape - Facade - TM42
  (57, 5700, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 35),
  -- Primeape - Secret Power - TM43
  (57, 5700, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 36),
  -- Primeape - Rest - TM44
  (57, 5700, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 37),
  -- Primeape - Attract - TM45
  (57, 5700, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 38),
  -- Primeape - Thief - TM46
  (57, 5700, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 39),
  -- Primeape - Overheat - TM50
  (57, 5700, 315, 6, NULL, 2, NULL, NULL, 6002050, NULL, 40),
  -- Primeape - Strength - HM04
  (57, 5700, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 41),
  -- Primeape - Rock Smash - HM06
  (57, 5700, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 42),
  -- Primeape - Body Slam - Move Tutor
  (57, 5700, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Primeape - Counter - Move Tutor
  (57, 5700, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Primeape - Double-Edge - Move Tutor
  (57, 5700, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Primeape - Mega Kick - Move Tutor
  (57, 5700, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Primeape - Mega Punch - Move Tutor
  (57, 5700, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Primeape - Metronome - Move Tutor
  (57, 5700, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Primeape - Mimic - Move Tutor
  (57, 5700, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Primeape - Rock Slide - Move Tutor
  (57, 5700, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Primeape - Seismic Toss - Move Tutor
  (57, 5700, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Primeape - Substitute - Move Tutor
  (57, 5700, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Growlithe - Bite - Level 1
  (58, 5800, 44, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Growlithe - Roar - Level 1
  (58, 5800, 46, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Growlithe - Ember - Level 7
  (58, 5800, 52, 6, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Growlithe - Leer - Level 13
  (58, 5800, 43, 6, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Growlithe - Odor Sleuth - Level 19
  (58, 5800, 316, 6, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Growlithe - Take Down - Level 25
  (58, 5800, 36, 6, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Growlithe - Flame Wheel - Level 31
  (58, 5800, 172, 6, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Growlithe - Helping Hand - Level 37
  (58, 5800, 270, 6, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Growlithe - Agility - Level 43
  (58, 5800, 97, 6, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Growlithe - Flamethrower - Level 49
  (58, 5800, 53, 6, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Growlithe - Roar - TM05
  (58, 5800, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 11),
  -- Growlithe - Toxic - TM06
  (58, 5800, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Growlithe - Hidden Power - TM10
  (58, 5800, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Growlithe - Sunny Day - TM11
  (58, 5800, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 14),
  -- Growlithe - Protect - TM17
  (58, 5800, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Growlithe - Frustration - TM21
  (58, 5800, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 16),
  -- Growlithe - Iron Tail - TM23
  (58, 5800, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 17),
  -- Growlithe - Return - TM27
  (58, 5800, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 18),
  -- Growlithe - Dig - TM28
  (58, 5800, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 19),
  -- Growlithe - Double Team - TM32
  (58, 5800, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 20),
  -- Growlithe - Flamethrower - TM35
  (58, 5800, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 21),
  -- Growlithe - Fire Blast - TM38
  (58, 5800, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 22),
  -- Growlithe - Aerial Ace - TM40
  (58, 5800, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 23),
  -- Growlithe - Facade - TM42
  (58, 5800, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 24),
  -- Growlithe - Secret Power - TM43
  (58, 5800, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 25),
  -- Growlithe - Rest - TM44
  (58, 5800, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 26),
  -- Growlithe - Attract - TM45
  (58, 5800, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 27),
  -- Growlithe - Thief - TM46
  (58, 5800, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 28),
  -- Growlithe - Overheat - TM50
  (58, 5800, 315, 6, NULL, 2, NULL, NULL, 6002050, NULL, 29),
  -- Growlithe - Strength - HM04
  (58, 5800, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 30),
  -- Growlithe - Rock Smash - HM06
  (58, 5800, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 31),
  -- Growlithe - Body Slam - Egg Move
  (58, 5800, 34, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Growlithe - Crunch - Egg Move
  (58, 5800, 242, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Growlithe - Fire Spin - Egg Move
  (58, 5800, 83, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Growlithe - Heat Wave - Egg Move
  (58, 5800, 257, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Growlithe - Howl - Egg Move
  (58, 5800, 336, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Growlithe - Safeguard - Egg Move
  (58, 5800, 219, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Growlithe - Thrash - Egg Move
  (58, 5800, 37, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Growlithe - Body Slam - Move Tutor
  (58, 5800, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Growlithe - Double-Edge - Move Tutor
  (58, 5800, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Growlithe - Mimic - Move Tutor
  (58, 5800, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Growlithe - Substitute - Move Tutor
  (58, 5800, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Arcanine - Bite - Level 1
  (59, 5900, 44, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arcanine - Roar - Level 1
  (59, 5900, 46, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arcanine - Ember - Level 1
  (59, 5900, 52, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arcanine - Odor Sleuth - Level 1
  (59, 5900, 316, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arcanine - Extreme Speed - Level 49
  (59, 5900, 245, 6, NULL, 1, 49, NULL, NULL, NULL, 5),
  -- Arcanine - Roar - TM05
  (59, 5900, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 6),
  -- Arcanine - Toxic - TM06
  (59, 5900, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 7),
  -- Arcanine - Hidden Power - TM10
  (59, 5900, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 8),
  -- Arcanine - Sunny Day - TM11
  (59, 5900, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 9),
  -- Arcanine - Hyper Beam - TM15
  (59, 5900, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 10),
  -- Arcanine - Protect - TM17
  (59, 5900, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 11),
  -- Arcanine - Frustration - TM21
  (59, 5900, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 12),
  -- Arcanine - Iron Tail - TM23
  (59, 5900, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 13),
  -- Arcanine - Return - TM27
  (59, 5900, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 14),
  -- Arcanine - Dig - TM28
  (59, 5900, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 15),
  -- Arcanine - Double Team - TM32
  (59, 5900, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 16),
  -- Arcanine - Flamethrower - TM35
  (59, 5900, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 17),
  -- Arcanine - Fire Blast - TM38
  (59, 5900, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 18),
  -- Arcanine - Aerial Ace - TM40
  (59, 5900, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 19),
  -- Arcanine - Facade - TM42
  (59, 5900, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 20),
  -- Arcanine - Secret Power - TM43
  (59, 5900, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 21),
  -- Arcanine - Rest - TM44
  (59, 5900, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 22),
  -- Arcanine - Attract - TM45
  (59, 5900, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 23),
  -- Arcanine - Thief - TM46
  (59, 5900, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 24),
  -- Arcanine - Overheat - TM50
  (59, 5900, 315, 6, NULL, 2, NULL, NULL, 6002050, NULL, 25),
  -- Arcanine - Strength - HM04
  (59, 5900, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 26),
  -- Arcanine - Rock Smash - HM06
  (59, 5900, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 27),
  -- Arcanine - Body Slam - Move Tutor
  (59, 5900, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 28),
  -- Arcanine - Double-Edge - Move Tutor
  (59, 5900, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 29),
  -- Arcanine - Mimic - Move Tutor
  (59, 5900, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 30),
  -- Arcanine - Substitute - Move Tutor
  (59, 5900, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 31),
  -- Poliwag - Bubble - Level 1
  (60, 6000, 145, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwag - Hypnosis - Level 7
  (60, 6000, 95, 6, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Poliwag - Water Gun - Level 13
  (60, 6000, 55, 6, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Poliwag - Double Slap - Level 19
  (60, 6000, 3, 6, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Poliwag - Rain Dance - Level 25
  (60, 6000, 240, 6, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Poliwag - Body Slam - Level 31
  (60, 6000, 34, 6, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Poliwag - Belly Drum - Level 37
  (60, 6000, 187, 6, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Poliwag - Hydro Pump - Level 43
  (60, 6000, 56, 6, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Poliwag - Water Pulse - TM03
  (60, 6000, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 9),
  -- Poliwag - Toxic - TM06
  (60, 6000, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 10),
  -- Poliwag - Hail - TM07
  (60, 6000, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 11),
  -- Poliwag - Hidden Power - TM10
  (60, 6000, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 12),
  -- Poliwag - Ice Beam - TM13
  (60, 6000, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 13),
  -- Poliwag - Blizzard - TM14
  (60, 6000, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 14),
  -- Poliwag - Protect - TM17
  (60, 6000, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Poliwag - Rain Dance - TM18
  (60, 6000, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 16),
  -- Poliwag - Frustration - TM21
  (60, 6000, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 17),
  -- Poliwag - Return - TM27
  (60, 6000, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 18),
  -- Poliwag - Dig - TM28
  (60, 6000, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 19),
  -- Poliwag - Psychic - TM29
  (60, 6000, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 20),
  -- Poliwag - Double Team - TM32
  (60, 6000, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 21),
  -- Poliwag - Facade - TM42
  (60, 6000, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 22),
  -- Poliwag - Secret Power - TM43
  (60, 6000, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 23),
  -- Poliwag - Rest - TM44
  (60, 6000, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 24),
  -- Poliwag - Attract - TM45
  (60, 6000, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 25),
  -- Poliwag - Thief - TM46
  (60, 6000, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 26),
  -- Poliwag - Surf - HM03
  (60, 6000, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 27),
  -- Poliwag - Waterfall - HM07
  (60, 6000, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 28),
  -- Poliwag - Bubble Beam - Egg Move
  (60, 6000, 61, 6, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Poliwag - Haze - Egg Move
  (60, 6000, 114, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Poliwag - Ice Ball - Egg Move
  (60, 6000, 301, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Poliwag - Mind Reader - Egg Move
  (60, 6000, 170, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Poliwag - Mist - Egg Move
  (60, 6000, 54, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Poliwag - Splash - Egg Move
  (60, 6000, 150, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Poliwag - Water Sport - Egg Move
  (60, 6000, 346, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Poliwag - Body Slam - Move Tutor
  (60, 6000, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Poliwag - Double-Edge - Move Tutor
  (60, 6000, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Poliwag - Mimic - Move Tutor
  (60, 6000, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Poliwag - Substitute - Move Tutor
  (60, 6000, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Poliwhirl - Bubble - Level 1
  (61, 6100, 145, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwhirl - Hypnosis - Level 1
  (61, 6100, 95, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwhirl - Water Gun - Level 1
  (61, 6100, 55, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwhirl - Hypnosis - Level 7
  (61, 6100, 95, 6, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Poliwhirl - Water Gun - Level 13
  (61, 6100, 55, 6, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Poliwhirl - Double Slap - Level 19
  (61, 6100, 3, 6, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Poliwhirl - Rain Dance - Level 27
  (61, 6100, 240, 6, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Poliwhirl - Body Slam - Level 35
  (61, 6100, 34, 6, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Poliwhirl - Belly Drum - Level 43
  (61, 6100, 187, 6, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Poliwhirl - Hydro Pump - Level 51
  (61, 6100, 56, 6, NULL, 1, 51, NULL, NULL, NULL, 10),
  -- Poliwhirl - Focus Punch - TM01
  (61, 6100, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 11),
  -- Poliwhirl - Water Pulse - TM03
  (61, 6100, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 12),
  -- Poliwhirl - Toxic - TM06
  (61, 6100, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 13),
  -- Poliwhirl - Hail - TM07
  (61, 6100, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 14),
  -- Poliwhirl - Hidden Power - TM10
  (61, 6100, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Poliwhirl - Ice Beam - TM13
  (61, 6100, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 16),
  -- Poliwhirl - Blizzard - TM14
  (61, 6100, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 17),
  -- Poliwhirl - Protect - TM17
  (61, 6100, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 18),
  -- Poliwhirl - Rain Dance - TM18
  (61, 6100, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 19),
  -- Poliwhirl - Frustration - TM21
  (61, 6100, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Poliwhirl - Earthquake - TM26
  (61, 6100, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 21),
  -- Poliwhirl - Return - TM27
  (61, 6100, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 22),
  -- Poliwhirl - Dig - TM28
  (61, 6100, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 23),
  -- Poliwhirl - Psychic - TM29
  (61, 6100, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 24),
  -- Poliwhirl - Brick Break - TM31
  (61, 6100, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 25),
  -- Poliwhirl - Double Team - TM32
  (61, 6100, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 26),
  -- Poliwhirl - Facade - TM42
  (61, 6100, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 27),
  -- Poliwhirl - Secret Power - TM43
  (61, 6100, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 28),
  -- Poliwhirl - Rest - TM44
  (61, 6100, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 29),
  -- Poliwhirl - Attract - TM45
  (61, 6100, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 30),
  -- Poliwhirl - Thief - TM46
  (61, 6100, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 31),
  -- Poliwhirl - Surf - HM03
  (61, 6100, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 32),
  -- Poliwhirl - Strength - HM04
  (61, 6100, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 33),
  -- Poliwhirl - Rock Smash - HM06
  (61, 6100, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 34),
  -- Poliwhirl - Waterfall - HM07
  (61, 6100, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 35),
  -- Poliwhirl - Body Slam - Move Tutor
  (61, 6100, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Poliwhirl - Counter - Move Tutor
  (61, 6100, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Poliwhirl - Double-Edge - Move Tutor
  (61, 6100, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Poliwhirl - Mega Kick - Move Tutor
  (61, 6100, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Poliwhirl - Mega Punch - Move Tutor
  (61, 6100, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Poliwhirl - Metronome - Move Tutor
  (61, 6100, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Poliwhirl - Mimic - Move Tutor
  (61, 6100, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Poliwhirl - Seismic Toss - Move Tutor
  (61, 6100, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Poliwhirl - Substitute - Move Tutor
  (61, 6100, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Poliwrath - Water Gun - Level 1
  (62, 6200, 55, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwrath - Hypnosis - Level 1
  (62, 6200, 95, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwrath - Double Slap - Level 1
  (62, 6200, 3, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwrath - Submission - Level 1
  (62, 6200, 66, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Poliwrath - Submission - Level 35
  (62, 6200, 66, 6, NULL, 1, 35, NULL, NULL, NULL, 5),
  -- Poliwrath - Mind Reader - Level 51
  (62, 6200, 170, 6, NULL, 1, 51, NULL, NULL, NULL, 6),
  -- Poliwrath - Focus Punch - TM01
  (62, 6200, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 7),
  -- Poliwrath - Water Pulse - TM03
  (62, 6200, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 8),
  -- Poliwrath - Toxic - TM06
  (62, 6200, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 9),
  -- Poliwrath - Hail - TM07
  (62, 6200, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 10),
  -- Poliwrath - Bulk Up - TM08
  (62, 6200, 339, 6, NULL, 2, NULL, NULL, 6002008, NULL, 11),
  -- Poliwrath - Hidden Power - TM10
  (62, 6200, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 12),
  -- Poliwrath - Ice Beam - TM13
  (62, 6200, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 13),
  -- Poliwrath - Blizzard - TM14
  (62, 6200, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 14),
  -- Poliwrath - Hyper Beam - TM15
  (62, 6200, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 15),
  -- Poliwrath - Protect - TM17
  (62, 6200, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 16),
  -- Poliwrath - Rain Dance - TM18
  (62, 6200, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 17),
  -- Poliwrath - Frustration - TM21
  (62, 6200, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 18),
  -- Poliwrath - Earthquake - TM26
  (62, 6200, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 19),
  -- Poliwrath - Return - TM27
  (62, 6200, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 20),
  -- Poliwrath - Dig - TM28
  (62, 6200, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 21),
  -- Poliwrath - Psychic - TM29
  (62, 6200, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 22),
  -- Poliwrath - Brick Break - TM31
  (62, 6200, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 23),
  -- Poliwrath - Double Team - TM32
  (62, 6200, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 24),
  -- Poliwrath - Rock Tomb - TM39
  (62, 6200, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 25),
  -- Poliwrath - Facade - TM42
  (62, 6200, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 26),
  -- Poliwrath - Secret Power - TM43
  (62, 6200, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 27),
  -- Poliwrath - Rest - TM44
  (62, 6200, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 28),
  -- Poliwrath - Attract - TM45
  (62, 6200, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 29),
  -- Poliwrath - Thief - TM46
  (62, 6200, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 30),
  -- Poliwrath - Surf - HM03
  (62, 6200, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 31),
  -- Poliwrath - Strength - HM04
  (62, 6200, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 32),
  -- Poliwrath - Rock Smash - HM06
  (62, 6200, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 33),
  -- Poliwrath - Waterfall - HM07
  (62, 6200, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 34),
  -- Poliwrath - Body Slam - Move Tutor
  (62, 6200, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Poliwrath - Counter - Move Tutor
  (62, 6200, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Poliwrath - Double-Edge - Move Tutor
  (62, 6200, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Poliwrath - Mega Kick - Move Tutor
  (62, 6200, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Poliwrath - Mega Punch - Move Tutor
  (62, 6200, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Poliwrath - Metronome - Move Tutor
  (62, 6200, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Poliwrath - Mimic - Move Tutor
  (62, 6200, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Poliwrath - Seismic Toss - Move Tutor
  (62, 6200, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Poliwrath - Substitute - Move Tutor
  (62, 6200, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Abra - Teleport - Level 1
  (63, 6300, 100, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abra - Focus Punch - TM01
  (63, 6300, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 2),
  -- Abra - Calm Mind - TM04
  (63, 6300, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 3),
  -- Abra - Toxic - TM06
  (63, 6300, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 4),
  -- Abra - Hidden Power - TM10
  (63, 6300, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 5),
  -- Abra - Sunny Day - TM11
  (63, 6300, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 6),
  -- Abra - Taunt - TM12
  (63, 6300, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 7),
  -- Abra - Light Screen - TM16
  (63, 6300, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 8),
  -- Abra - Protect - TM17
  (63, 6300, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 9),
  -- Abra - Rain Dance - TM18
  (63, 6300, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 10),
  -- Abra - Safeguard - TM20
  (63, 6300, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 11),
  -- Abra - Frustration - TM21
  (63, 6300, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 12),
  -- Abra - Iron Tail - TM23
  (63, 6300, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 13),
  -- Abra - Return - TM27
  (63, 6300, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 14),
  -- Abra - Psychic - TM29
  (63, 6300, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 15),
  -- Abra - Shadow Ball - TM30
  (63, 6300, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 16),
  -- Abra - Double Team - TM32
  (63, 6300, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 17),
  -- Abra - Reflect - TM33
  (63, 6300, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 18),
  -- Abra - Shock Wave - TM34
  (63, 6300, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 19),
  -- Abra - Torment - TM41
  (63, 6300, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 20),
  -- Abra - Facade - TM42
  (63, 6300, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 21),
  -- Abra - Secret Power - TM43
  (63, 6300, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 22),
  -- Abra - Rest - TM44
  (63, 6300, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 23),
  -- Abra - Attract - TM45
  (63, 6300, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 24),
  -- Abra - Thief - TM46
  (63, 6300, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 25),
  -- Abra - Skill Swap - TM48
  (63, 6300, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 26),
  -- Abra - Snatch - TM49
  (63, 6300, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 27),
  -- Abra - Flash - HM05
  (63, 6300, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 28),
  -- Abra - Barrier - Egg Move
  (63, 6300, 112, 6, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Abra - Encore - Egg Move
  (63, 6300, 227, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Abra - Fire Punch - Egg Move
  (63, 6300, 7, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Abra - Ice Punch - Egg Move
  (63, 6300, 8, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Abra - Knock Off - Egg Move
  (63, 6300, 282, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Abra - Thunder Punch - Egg Move
  (63, 6300, 9, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Abra - Body Slam - Move Tutor
  (63, 6300, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Abra - Counter - Move Tutor
  (63, 6300, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Abra - Double-Edge - Move Tutor
  (63, 6300, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Abra - Dream Eater - Move Tutor
  (63, 6300, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Abra - Mega Kick - Move Tutor
  (63, 6300, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Abra - Mega Punch - Move Tutor
  (63, 6300, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Abra - Metronome - Move Tutor
  (63, 6300, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Abra - Mimic - Move Tutor
  (63, 6300, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Abra - Seismic Toss - Move Tutor
  (63, 6300, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Abra - Substitute - Move Tutor
  (63, 6300, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Abra - Thunder Wave - Move Tutor
  (63, 6300, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Kadabra - Teleport - Level 1
  (64, 6400, 100, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kadabra - Kinesis - Level 1
  (64, 6400, 134, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kadabra - Confusion - Level 1
  (64, 6400, 93, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kadabra - Confusion - Level 16
  (64, 6400, 93, 6, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Kadabra - Disable - Level 18
  (64, 6400, 50, 6, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Kadabra - Psybeam - Level 21
  (64, 6400, 60, 6, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Kadabra - Reflect - Level 23
  (64, 6400, 115, 6, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Kadabra - Recover - Level 25
  (64, 6400, 105, 6, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Kadabra - Future Sight - Level 30
  (64, 6400, 248, 6, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Kadabra - Role Play - Level 33
  (64, 6400, 272, 6, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Kadabra - Psychic - Level 36
  (64, 6400, 94, 6, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Kadabra - Trick - Level 43
  (64, 6400, 271, 6, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Kadabra - Focus Punch - TM01
  (64, 6400, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 13),
  -- Kadabra - Calm Mind - TM04
  (64, 6400, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 14),
  -- Kadabra - Toxic - TM06
  (64, 6400, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Kadabra - Hidden Power - TM10
  (64, 6400, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Kadabra - Sunny Day - TM11
  (64, 6400, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 17),
  -- Kadabra - Taunt - TM12
  (64, 6400, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 18),
  -- Kadabra - Light Screen - TM16
  (64, 6400, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 19),
  -- Kadabra - Protect - TM17
  (64, 6400, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 20),
  -- Kadabra - Rain Dance - TM18
  (64, 6400, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 21),
  -- Kadabra - Safeguard - TM20
  (64, 6400, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 22),
  -- Kadabra - Frustration - TM21
  (64, 6400, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 23),
  -- Kadabra - Iron Tail - TM23
  (64, 6400, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 24),
  -- Kadabra - Return - TM27
  (64, 6400, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 25),
  -- Kadabra - Psychic - TM29
  (64, 6400, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 26),
  -- Kadabra - Shadow Ball - TM30
  (64, 6400, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 27),
  -- Kadabra - Double Team - TM32
  (64, 6400, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 28),
  -- Kadabra - Reflect - TM33
  (64, 6400, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 29),
  -- Kadabra - Shock Wave - TM34
  (64, 6400, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 30),
  -- Kadabra - Torment - TM41
  (64, 6400, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 31),
  -- Kadabra - Facade - TM42
  (64, 6400, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 32),
  -- Kadabra - Secret Power - TM43
  (64, 6400, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 33),
  -- Kadabra - Rest - TM44
  (64, 6400, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 34),
  -- Kadabra - Attract - TM45
  (64, 6400, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 35),
  -- Kadabra - Thief - TM46
  (64, 6400, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 36),
  -- Kadabra - Skill Swap - TM48
  (64, 6400, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 37),
  -- Kadabra - Snatch - TM49
  (64, 6400, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 38),
  -- Kadabra - Flash - HM05
  (64, 6400, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 39),
  -- Kadabra - Body Slam - Move Tutor
  (64, 6400, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Kadabra - Counter - Move Tutor
  (64, 6400, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Kadabra - Double-Edge - Move Tutor
  (64, 6400, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Kadabra - Dream Eater - Move Tutor
  (64, 6400, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Kadabra - Mega Kick - Move Tutor
  (64, 6400, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Kadabra - Mega Punch - Move Tutor
  (64, 6400, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Kadabra - Metronome - Move Tutor
  (64, 6400, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Kadabra - Mimic - Move Tutor
  (64, 6400, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Kadabra - Seismic Toss - Move Tutor
  (64, 6400, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Kadabra - Substitute - Move Tutor
  (64, 6400, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Kadabra - Thunder Wave - Move Tutor
  (64, 6400, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Alakazam - Teleport - Level 1
  (65, 6500, 100, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alakazam - Kinesis - Level 1
  (65, 6500, 134, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alakazam - Confusion - Level 1
  (65, 6500, 93, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alakazam - Confusion - Level 16
  (65, 6500, 93, 6, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Alakazam - Disable - Level 18
  (65, 6500, 50, 6, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Alakazam - Psybeam - Level 21
  (65, 6500, 60, 6, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Alakazam - Reflect - Level 23
  (65, 6500, 115, 6, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Alakazam - Recover - Level 25
  (65, 6500, 105, 6, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Alakazam - Future Sight - Level 30
  (65, 6500, 248, 6, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Alakazam - Calm Mind - Level 33
  (65, 6500, 347, 6, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Alakazam - Psychic - Level 36
  (65, 6500, 94, 6, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Alakazam - Trick - Level 43
  (65, 6500, 271, 6, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Alakazam - Focus Punch - TM01
  (65, 6500, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 13),
  -- Alakazam - Calm Mind - TM04
  (65, 6500, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 14),
  -- Alakazam - Toxic - TM06
  (65, 6500, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Alakazam - Hidden Power - TM10
  (65, 6500, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Alakazam - Sunny Day - TM11
  (65, 6500, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 17),
  -- Alakazam - Taunt - TM12
  (65, 6500, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 18),
  -- Alakazam - Hyper Beam - TM15
  (65, 6500, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 19),
  -- Alakazam - Light Screen - TM16
  (65, 6500, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 20),
  -- Alakazam - Protect - TM17
  (65, 6500, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 21),
  -- Alakazam - Rain Dance - TM18
  (65, 6500, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 22),
  -- Alakazam - Safeguard - TM20
  (65, 6500, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 23),
  -- Alakazam - Frustration - TM21
  (65, 6500, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 24),
  -- Alakazam - Iron Tail - TM23
  (65, 6500, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 25),
  -- Alakazam - Return - TM27
  (65, 6500, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 26),
  -- Alakazam - Psychic - TM29
  (65, 6500, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 27),
  -- Alakazam - Shadow Ball - TM30
  (65, 6500, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 28),
  -- Alakazam - Double Team - TM32
  (65, 6500, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 29),
  -- Alakazam - Reflect - TM33
  (65, 6500, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 30),
  -- Alakazam - Shock Wave - TM34
  (65, 6500, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 31),
  -- Alakazam - Torment - TM41
  (65, 6500, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 32),
  -- Alakazam - Facade - TM42
  (65, 6500, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 33),
  -- Alakazam - Secret Power - TM43
  (65, 6500, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 34),
  -- Alakazam - Rest - TM44
  (65, 6500, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 35),
  -- Alakazam - Attract - TM45
  (65, 6500, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 36),
  -- Alakazam - Thief - TM46
  (65, 6500, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 37),
  -- Alakazam - Skill Swap - TM48
  (65, 6500, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 38),
  -- Alakazam - Snatch - TM49
  (65, 6500, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 39),
  -- Alakazam - Flash - HM05
  (65, 6500, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 40),
  -- Alakazam - Body Slam - Move Tutor
  (65, 6500, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Alakazam - Counter - Move Tutor
  (65, 6500, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Alakazam - Double-Edge - Move Tutor
  (65, 6500, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Alakazam - Dream Eater - Move Tutor
  (65, 6500, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Alakazam - Mega Kick - Move Tutor
  (65, 6500, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Alakazam - Mega Punch - Move Tutor
  (65, 6500, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Alakazam - Metronome - Move Tutor
  (65, 6500, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Alakazam - Mimic - Move Tutor
  (65, 6500, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Alakazam - Seismic Toss - Move Tutor
  (65, 6500, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Alakazam - Substitute - Move Tutor
  (65, 6500, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Alakazam - Thunder Wave - Move Tutor
  (65, 6500, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Machop - Low Kick - Level 1
  (66, 6600, 67, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machop - Leer - Level 1
  (66, 6600, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machop - Focus Energy - Level 7
  (66, 6600, 116, 6, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Machop - Karate Chop - Level 13
  (66, 6600, 2, 6, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Machop - Seismic Toss - Level 19
  (66, 6600, 69, 6, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Machop - Foresight - Level 22
  (66, 6600, 193, 6, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Machop - Revenge - Level 25
  (66, 6600, 279, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Machop - Vital Throw - Level 31
  (66, 6600, 233, 6, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Machop - Submission - Level 37
  (66, 6600, 66, 6, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Machop - Cross Chop - Level 40
  (66, 6600, 238, 6, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Machop - Scary Face - Level 43
  (66, 6600, 184, 6, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Machop - Dynamic Punch - Level 49
  (66, 6600, 223, 6, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Machop - Focus Punch - TM01
  (66, 6600, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 13),
  -- Machop - Toxic - TM06
  (66, 6600, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Machop - Bulk Up - TM08
  (66, 6600, 339, 6, NULL, 2, NULL, NULL, 6002008, NULL, 15),
  -- Machop - Hidden Power - TM10
  (66, 6600, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Machop - Sunny Day - TM11
  (66, 6600, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 17),
  -- Machop - Protect - TM17
  (66, 6600, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 18),
  -- Machop - Rain Dance - TM18
  (66, 6600, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 19),
  -- Machop - Frustration - TM21
  (66, 6600, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Machop - Earthquake - TM26
  (66, 6600, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 21),
  -- Machop - Return - TM27
  (66, 6600, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 22),
  -- Machop - Dig - TM28
  (66, 6600, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 23),
  -- Machop - Brick Break - TM31
  (66, 6600, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 24),
  -- Machop - Double Team - TM32
  (66, 6600, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Machop - Flamethrower - TM35
  (66, 6600, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 26),
  -- Machop - Fire Blast - TM38
  (66, 6600, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 27),
  -- Machop - Rock Tomb - TM39
  (66, 6600, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 28),
  -- Machop - Facade - TM42
  (66, 6600, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 29),
  -- Machop - Secret Power - TM43
  (66, 6600, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 30),
  -- Machop - Rest - TM44
  (66, 6600, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 31),
  -- Machop - Attract - TM45
  (66, 6600, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 32),
  -- Machop - Thief - TM46
  (66, 6600, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 33),
  -- Machop - Strength - HM04
  (66, 6600, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 34),
  -- Machop - Rock Smash - HM06
  (66, 6600, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 35),
  -- Machop - Counter - Egg Move
  (66, 6600, 68, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Machop - Encore - Egg Move
  (66, 6600, 227, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Machop - Light Screen - Egg Move
  (66, 6600, 113, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Machop - Meditate - Egg Move
  (66, 6600, 96, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Machop - Rock Slide - Egg Move
  (66, 6600, 157, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Machop - Rolling Kick - Egg Move
  (66, 6600, 27, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Machop - Smelling Salts - Egg Move
  (66, 6600, 265, 6, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Machop - Body Slam - Move Tutor
  (66, 6600, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Machop - Counter - Move Tutor
  (66, 6600, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Machop - Double-Edge - Move Tutor
  (66, 6600, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Machop - Mega Kick - Move Tutor
  (66, 6600, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Machop - Mega Punch - Move Tutor
  (66, 6600, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Machop - Metronome - Move Tutor
  (66, 6600, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Machop - Mimic - Move Tutor
  (66, 6600, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Machop - Rock Slide - Move Tutor
  (66, 6600, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Machop - Seismic Toss - Move Tutor
  (66, 6600, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Machop - Substitute - Move Tutor
  (66, 6600, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Machoke - Low Kick - Level 1
  (67, 6700, 67, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machoke - Leer - Level 1
  (67, 6700, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machoke - Focus Energy - Level 1
  (67, 6700, 116, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Machoke - Focus Energy - Level 7
  (67, 6700, 116, 6, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Machoke - Karate Chop - Level 13
  (67, 6700, 2, 6, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Machoke - Seismic Toss - Level 19
  (67, 6700, 69, 6, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Machoke - Foresight - Level 22
  (67, 6700, 193, 6, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Machoke - Revenge - Level 25
  (67, 6700, 279, 6, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Machoke - Vital Throw - Level 33
  (67, 6700, 233, 6, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Machoke - Submission - Level 41
  (67, 6700, 66, 6, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Machoke - Cross Chop - Level 46
  (67, 6700, 238, 6, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Machoke - Scary Face - Level 51
  (67, 6700, 184, 6, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Machoke - Dynamic Punch - Level 59
  (67, 6700, 223, 6, NULL, 1, 59, NULL, NULL, NULL, 13),
  -- Machoke - Focus Punch - TM01
  (67, 6700, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 14),
  -- Machoke - Toxic - TM06
  (67, 6700, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Machoke - Bulk Up - TM08
  (67, 6700, 339, 6, NULL, 2, NULL, NULL, 6002008, NULL, 16),
  -- Machoke - Hidden Power - TM10
  (67, 6700, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 17),
  -- Machoke - Sunny Day - TM11
  (67, 6700, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 18),
  -- Machoke - Protect - TM17
  (67, 6700, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 19),
  -- Machoke - Rain Dance - TM18
  (67, 6700, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 20),
  -- Machoke - Frustration - TM21
  (67, 6700, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 21),
  -- Machoke - Earthquake - TM26
  (67, 6700, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 22),
  -- Machoke - Return - TM27
  (67, 6700, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 23),
  -- Machoke - Dig - TM28
  (67, 6700, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 24),
  -- Machoke - Brick Break - TM31
  (67, 6700, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 25),
  -- Machoke - Double Team - TM32
  (67, 6700, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 26),
  -- Machoke - Flamethrower - TM35
  (67, 6700, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 27),
  -- Machoke - Fire Blast - TM38
  (67, 6700, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 28),
  -- Machoke - Rock Tomb - TM39
  (67, 6700, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 29),
  -- Machoke - Facade - TM42
  (67, 6700, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 30),
  -- Machoke - Secret Power - TM43
  (67, 6700, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 31),
  -- Machoke - Rest - TM44
  (67, 6700, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 32),
  -- Machoke - Attract - TM45
  (67, 6700, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 33),
  -- Machoke - Thief - TM46
  (67, 6700, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 34),
  -- Machoke - Strength - HM04
  (67, 6700, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 35),
  -- Machoke - Rock Smash - HM06
  (67, 6700, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 36),
  -- Machoke - Body Slam - Move Tutor
  (67, 6700, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Machoke - Counter - Move Tutor
  (67, 6700, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Machoke - Double-Edge - Move Tutor
  (67, 6700, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Machoke - Mega Kick - Move Tutor
  (67, 6700, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Machoke - Mega Punch - Move Tutor
  (67, 6700, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Machoke - Metronome - Move Tutor
  (67, 6700, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Machoke - Mimic - Move Tutor
  (67, 6700, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Machoke - Rock Slide - Move Tutor
  (67, 6700, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Machoke - Seismic Toss - Move Tutor
  (67, 6700, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Machoke - Substitute - Move Tutor
  (67, 6700, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Machamp - Low Kick - Level 1
  (68, 6800, 67, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machamp - Leer - Level 1
  (68, 6800, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machamp - Focus Energy - Level 1
  (68, 6800, 116, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Machamp - Focus Energy - Level 7
  (68, 6800, 116, 6, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Machamp - Karate Chop - Level 13
  (68, 6800, 2, 6, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Machamp - Seismic Toss - Level 19
  (68, 6800, 69, 6, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Machamp - Foresight - Level 22
  (68, 6800, 193, 6, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Machamp - Revenge - Level 25
  (68, 6800, 279, 6, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Machamp - Vital Throw - Level 33
  (68, 6800, 233, 6, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Machamp - Submission - Level 41
  (68, 6800, 66, 6, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Machamp - Cross Chop - Level 46
  (68, 6800, 238, 6, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Machamp - Scary Face - Level 51
  (68, 6800, 184, 6, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Machamp - Dynamic Punch - Level 59
  (68, 6800, 223, 6, NULL, 1, 59, NULL, NULL, NULL, 13),
  -- Machamp - Focus Punch - TM01
  (68, 6800, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 14),
  -- Machamp - Toxic - TM06
  (68, 6800, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Machamp - Bulk Up - TM08
  (68, 6800, 339, 6, NULL, 2, NULL, NULL, 6002008, NULL, 16),
  -- Machamp - Hidden Power - TM10
  (68, 6800, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 17),
  -- Machamp - Sunny Day - TM11
  (68, 6800, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 18),
  -- Machamp - Hyper Beam - TM15
  (68, 6800, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 19),
  -- Machamp - Protect - TM17
  (68, 6800, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 20),
  -- Machamp - Rain Dance - TM18
  (68, 6800, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 21),
  -- Machamp - Frustration - TM21
  (68, 6800, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 22),
  -- Machamp - Earthquake - TM26
  (68, 6800, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 23),
  -- Machamp - Return - TM27
  (68, 6800, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 24),
  -- Machamp - Dig - TM28
  (68, 6800, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 25),
  -- Machamp - Brick Break - TM31
  (68, 6800, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 26),
  -- Machamp - Double Team - TM32
  (68, 6800, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 27),
  -- Machamp - Flamethrower - TM35
  (68, 6800, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 28),
  -- Machamp - Fire Blast - TM38
  (68, 6800, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 29),
  -- Machamp - Rock Tomb - TM39
  (68, 6800, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 30),
  -- Machamp - Facade - TM42
  (68, 6800, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 31),
  -- Machamp - Secret Power - TM43
  (68, 6800, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 32),
  -- Machamp - Rest - TM44
  (68, 6800, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 33),
  -- Machamp - Attract - TM45
  (68, 6800, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 34),
  -- Machamp - Thief - TM46
  (68, 6800, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 35),
  -- Machamp - Strength - HM04
  (68, 6800, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 36),
  -- Machamp - Rock Smash - HM06
  (68, 6800, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 37),
  -- Machamp - Body Slam - Move Tutor
  (68, 6800, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Machamp - Counter - Move Tutor
  (68, 6800, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Machamp - Double-Edge - Move Tutor
  (68, 6800, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Machamp - Mega Kick - Move Tutor
  (68, 6800, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Machamp - Mega Punch - Move Tutor
  (68, 6800, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Machamp - Metronome - Move Tutor
  (68, 6800, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Machamp - Mimic - Move Tutor
  (68, 6800, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Machamp - Rock Slide - Move Tutor
  (68, 6800, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Machamp - Seismic Toss - Move Tutor
  (68, 6800, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Machamp - Substitute - Move Tutor
  (68, 6800, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Bellsprout - Vine Whip - Level 1
  (69, 6900, 22, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bellsprout - Growth - Level 6
  (69, 6900, 74, 6, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Bellsprout - Wrap - Level 11
  (69, 6900, 35, 6, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Bellsprout - Sleep Powder - Level 15
  (69, 6900, 79, 6, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Bellsprout - Poison Powder - Level 17
  (69, 6900, 77, 6, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Bellsprout - Stun Spore - Level 19
  (69, 6900, 78, 6, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Bellsprout - Acid - Level 23
  (69, 6900, 51, 6, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Bellsprout - Sweet Scent - Level 30
  (69, 6900, 230, 6, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Bellsprout - Razor Leaf - Level 37
  (69, 6900, 75, 6, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Bellsprout - Slam - Level 45
  (69, 6900, 21, 6, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Bellsprout - Toxic - TM06
  (69, 6900, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 11),
  -- Bellsprout - Bullet Seed - TM09
  (69, 6900, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 12),
  -- Bellsprout - Hidden Power - TM10
  (69, 6900, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Bellsprout - Sunny Day - TM11
  (69, 6900, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 14),
  -- Bellsprout - Protect - TM17
  (69, 6900, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Bellsprout - Giga Drain - TM19
  (69, 6900, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 16),
  -- Bellsprout - Frustration - TM21
  (69, 6900, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 17),
  -- Bellsprout - Solar Beam - TM22
  (69, 6900, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 18),
  -- Bellsprout - Return - TM27
  (69, 6900, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 19),
  -- Bellsprout - Double Team - TM32
  (69, 6900, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 20),
  -- Bellsprout - Sludge Bomb - TM36
  (69, 6900, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 21),
  -- Bellsprout - Facade - TM42
  (69, 6900, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 22),
  -- Bellsprout - Secret Power - TM43
  (69, 6900, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 23),
  -- Bellsprout - Rest - TM44
  (69, 6900, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 24),
  -- Bellsprout - Attract - TM45
  (69, 6900, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 25),
  -- Bellsprout - Thief - TM46
  (69, 6900, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 26),
  -- Bellsprout - Cut - HM01
  (69, 6900, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 27),
  -- Bellsprout - Flash - HM05
  (69, 6900, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 28),
  -- Bellsprout - Encore - Egg Move
  (69, 6900, 227, 6, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Bellsprout - Ingrain - Egg Move
  (69, 6900, 275, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Bellsprout - Leech Life - Egg Move
  (69, 6900, 141, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Bellsprout - Magical Leaf - Egg Move
  (69, 6900, 345, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Bellsprout - Reflect - Egg Move
  (69, 6900, 115, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Bellsprout - Swords Dance - Egg Move
  (69, 6900, 14, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Bellsprout - Synthesis - Egg Move
  (69, 6900, 235, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Bellsprout - Double-Edge - Move Tutor
  (69, 6900, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Bellsprout - Mimic - Move Tutor
  (69, 6900, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Bellsprout - Substitute - Move Tutor
  (69, 6900, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Bellsprout - Swords Dance - Move Tutor
  (69, 6900, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Weepinbell - Vine Whip - Level 1
  (70, 7000, 22, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weepinbell - Growth - Level 1
  (70, 7000, 74, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weepinbell - Wrap - Level 1
  (70, 7000, 35, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weepinbell - Growth - Level 6
  (70, 7000, 74, 6, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Weepinbell - Wrap - Level 11
  (70, 7000, 35, 6, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Weepinbell - Sleep Powder - Level 15
  (70, 7000, 79, 6, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Weepinbell - Poison Powder - Level 17
  (70, 7000, 77, 6, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Weepinbell - Stun Spore - Level 19
  (70, 7000, 78, 6, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Weepinbell - Acid - Level 24
  (70, 7000, 51, 6, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Weepinbell - Sweet Scent - Level 33
  (70, 7000, 230, 6, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Weepinbell - Razor Leaf - Level 42
  (70, 7000, 75, 6, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Weepinbell - Slam - Level 54
  (70, 7000, 21, 6, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Weepinbell - Toxic - TM06
  (70, 7000, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 13),
  -- Weepinbell - Bullet Seed - TM09
  (70, 7000, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 14),
  -- Weepinbell - Hidden Power - TM10
  (70, 7000, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Weepinbell - Sunny Day - TM11
  (70, 7000, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Weepinbell - Protect - TM17
  (70, 7000, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 17),
  -- Weepinbell - Giga Drain - TM19
  (70, 7000, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 18),
  -- Weepinbell - Frustration - TM21
  (70, 7000, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 19),
  -- Weepinbell - Solar Beam - TM22
  (70, 7000, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 20),
  -- Weepinbell - Return - TM27
  (70, 7000, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 21),
  -- Weepinbell - Double Team - TM32
  (70, 7000, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 22),
  -- Weepinbell - Sludge Bomb - TM36
  (70, 7000, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 23),
  -- Weepinbell - Facade - TM42
  (70, 7000, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 24),
  -- Weepinbell - Secret Power - TM43
  (70, 7000, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 25),
  -- Weepinbell - Rest - TM44
  (70, 7000, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 26),
  -- Weepinbell - Attract - TM45
  (70, 7000, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 27),
  -- Weepinbell - Thief - TM46
  (70, 7000, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 28),
  -- Weepinbell - Cut - HM01
  (70, 7000, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 29),
  -- Weepinbell - Flash - HM05
  (70, 7000, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 30),
  -- Weepinbell - Double-Edge - Move Tutor
  (70, 7000, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 31),
  -- Weepinbell - Mimic - Move Tutor
  (70, 7000, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Weepinbell - Substitute - Move Tutor
  (70, 7000, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Weepinbell - Swords Dance - Move Tutor
  (70, 7000, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Victreebel - Stockpile - Level 1
  (71, 7100, 254, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Victreebel - Swallow - Level 1
  (71, 7100, 256, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Victreebel - Spit Up - Level 1
  (71, 7100, 255, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Victreebel - Vine Whip - Level 1
  (71, 7100, 22, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Victreebel - Sweet Scent - Level 1
  (71, 7100, 230, 6, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Victreebel - Razor Leaf - Level 1
  (71, 7100, 75, 6, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Victreebel - Sleep Powder - Level 1
  (71, 7100, 79, 6, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Victreebel - Toxic - TM06
  (71, 7100, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 8),
  -- Victreebel - Bullet Seed - TM09
  (71, 7100, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 9),
  -- Victreebel - Hidden Power - TM10
  (71, 7100, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 10),
  -- Victreebel - Sunny Day - TM11
  (71, 7100, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 11),
  -- Victreebel - Hyper Beam - TM15
  (71, 7100, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 12),
  -- Victreebel - Protect - TM17
  (71, 7100, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 13),
  -- Victreebel - Giga Drain - TM19
  (71, 7100, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 14),
  -- Victreebel - Frustration - TM21
  (71, 7100, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 15),
  -- Victreebel - Solar Beam - TM22
  (71, 7100, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 16),
  -- Victreebel - Return - TM27
  (71, 7100, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 17),
  -- Victreebel - Double Team - TM32
  (71, 7100, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 18),
  -- Victreebel - Sludge Bomb - TM36
  (71, 7100, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 19),
  -- Victreebel - Facade - TM42
  (71, 7100, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 20),
  -- Victreebel - Secret Power - TM43
  (71, 7100, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 21),
  -- Victreebel - Rest - TM44
  (71, 7100, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 22),
  -- Victreebel - Attract - TM45
  (71, 7100, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 23),
  -- Victreebel - Thief - TM46
  (71, 7100, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 24),
  -- Victreebel - Cut - HM01
  (71, 7100, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 25),
  -- Victreebel - Flash - HM05
  (71, 7100, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 26),
  -- Victreebel - Body Slam - Move Tutor
  (71, 7100, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 27),
  -- Victreebel - Double-Edge - Move Tutor
  (71, 7100, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 28),
  -- Victreebel - Mimic - Move Tutor
  (71, 7100, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 29),
  -- Victreebel - Substitute - Move Tutor
  (71, 7100, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 30),
  -- Victreebel - Swords Dance - Move Tutor
  (71, 7100, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 31),
  -- Tentacool - Poison Sting - Level 1
  (72, 7200, 40, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacool - Supersonic - Level 6
  (72, 7200, 48, 6, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Tentacool - Constrict - Level 12
  (72, 7200, 132, 6, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Tentacool - Acid - Level 19
  (72, 7200, 51, 6, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Tentacool - Bubble Beam - Level 25
  (72, 7200, 61, 6, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Tentacool - Wrap - Level 30
  (72, 7200, 35, 6, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Tentacool - Barrier - Level 36
  (72, 7200, 112, 6, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Tentacool - Screech - Level 43
  (72, 7200, 103, 6, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Tentacool - Hydro Pump - Level 49
  (72, 7200, 56, 6, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Tentacool - Water Pulse - TM03
  (72, 7200, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 10),
  -- Tentacool - Toxic - TM06
  (72, 7200, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 11),
  -- Tentacool - Hail - TM07
  (72, 7200, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 12),
  -- Tentacool - Hidden Power - TM10
  (72, 7200, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Tentacool - Ice Beam - TM13
  (72, 7200, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 14),
  -- Tentacool - Blizzard - TM14
  (72, 7200, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 15),
  -- Tentacool - Protect - TM17
  (72, 7200, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 16),
  -- Tentacool - Rain Dance - TM18
  (72, 7200, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 17),
  -- Tentacool - Giga Drain - TM19
  (72, 7200, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 18),
  -- Tentacool - Frustration - TM21
  (72, 7200, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 19),
  -- Tentacool - Return - TM27
  (72, 7200, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 20),
  -- Tentacool - Double Team - TM32
  (72, 7200, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 21),
  -- Tentacool - Sludge Bomb - TM36
  (72, 7200, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 22),
  -- Tentacool - Facade - TM42
  (72, 7200, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 23),
  -- Tentacool - Secret Power - TM43
  (72, 7200, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 24),
  -- Tentacool - Rest - TM44
  (72, 7200, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 25),
  -- Tentacool - Attract - TM45
  (72, 7200, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 26),
  -- Tentacool - Thief - TM46
  (72, 7200, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 27),
  -- Tentacool - Cut - HM01
  (72, 7200, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 28),
  -- Tentacool - Surf - HM03
  (72, 7200, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 29),
  -- Tentacool - Waterfall - HM07
  (72, 7200, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 30),
  -- Tentacool - Aurora Beam - Egg Move
  (72, 7200, 62, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Tentacool - Confuse Ray - Egg Move
  (72, 7200, 109, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Tentacool - Haze - Egg Move
  (72, 7200, 114, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Tentacool - Mirror Coat - Egg Move
  (72, 7200, 243, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Tentacool - Rapid Spin - Egg Move
  (72, 7200, 229, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Tentacool - Safeguard - Egg Move
  (72, 7200, 219, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Tentacool - Double-Edge - Move Tutor
  (72, 7200, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Tentacool - Mimic - Move Tutor
  (72, 7200, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Tentacool - Substitute - Move Tutor
  (72, 7200, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Tentacool - Swords Dance - Move Tutor
  (72, 7200, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Tentacruel - Poison Sting - Level 1
  (73, 7300, 40, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacruel - Supersonic - Level 1
  (73, 7300, 48, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tentacruel - Constrict - Level 1
  (73, 7300, 132, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tentacruel - Supersonic - Level 6
  (73, 7300, 48, 6, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Tentacruel - Constrict - Level 12
  (73, 7300, 132, 6, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Tentacruel - Acid - Level 19
  (73, 7300, 51, 6, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Tentacruel - Bubble Beam - Level 25
  (73, 7300, 61, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tentacruel - Wrap - Level 30
  (73, 7300, 35, 6, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Tentacruel - Barrier - Level 38
  (73, 7300, 112, 6, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Tentacruel - Screech - Level 47
  (73, 7300, 103, 6, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Tentacruel - Hydro Pump - Level 55
  (73, 7300, 56, 6, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Tentacruel - Water Pulse - TM03
  (73, 7300, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 12),
  -- Tentacruel - Toxic - TM06
  (73, 7300, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 13),
  -- Tentacruel - Hail - TM07
  (73, 7300, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 14),
  -- Tentacruel - Hidden Power - TM10
  (73, 7300, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Tentacruel - Ice Beam - TM13
  (73, 7300, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 16),
  -- Tentacruel - Blizzard - TM14
  (73, 7300, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 17),
  -- Tentacruel - Hyper Beam - TM15
  (73, 7300, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 18),
  -- Tentacruel - Protect - TM17
  (73, 7300, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 19),
  -- Tentacruel - Rain Dance - TM18
  (73, 7300, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 20),
  -- Tentacruel - Giga Drain - TM19
  (73, 7300, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 21),
  -- Tentacruel - Frustration - TM21
  (73, 7300, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 22),
  -- Tentacruel - Return - TM27
  (73, 7300, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 23),
  -- Tentacruel - Double Team - TM32
  (73, 7300, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 24),
  -- Tentacruel - Sludge Bomb - TM36
  (73, 7300, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 25),
  -- Tentacruel - Facade - TM42
  (73, 7300, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 26),
  -- Tentacruel - Secret Power - TM43
  (73, 7300, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 27),
  -- Tentacruel - Rest - TM44
  (73, 7300, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 28),
  -- Tentacruel - Attract - TM45
  (73, 7300, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 29),
  -- Tentacruel - Thief - TM46
  (73, 7300, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 30),
  -- Tentacruel - Cut - HM01
  (73, 7300, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 31),
  -- Tentacruel - Surf - HM03
  (73, 7300, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 32),
  -- Tentacruel - Waterfall - HM07
  (73, 7300, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 33),
  -- Tentacruel - Double-Edge - Move Tutor
  (73, 7300, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Tentacruel - Mimic - Move Tutor
  (73, 7300, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Tentacruel - Substitute - Move Tutor
  (73, 7300, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Tentacruel - Swords Dance - Move Tutor
  (73, 7300, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Geodude - Tackle - Level 1
  (74, 7400, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Geodude - Defense Curl - Level 1
  (74, 7400, 111, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Geodude - Mud Sport - Level 6
  (74, 7400, 300, 6, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Geodude - Rock Throw - Level 11
  (74, 7400, 88, 6, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Geodude - Magnitude - Level 16
  (74, 7400, 222, 6, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Geodude - Self-Destruct - Level 21
  (74, 7400, 120, 6, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Geodude - Rollout - Level 26
  (74, 7400, 205, 6, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Geodude - Rock Blast - Level 31
  (74, 7400, 350, 6, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Geodude - Earthquake - Level 36
  (74, 7400, 89, 6, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Geodude - Explosion - Level 41
  (74, 7400, 153, 6, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Geodude - Double-Edge - Level 46
  (74, 7400, 38, 6, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Geodude - Focus Punch - TM01
  (74, 7400, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 12),
  -- Geodude - Toxic - TM06
  (74, 7400, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 13),
  -- Geodude - Hidden Power - TM10
  (74, 7400, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 14),
  -- Geodude - Sunny Day - TM11
  (74, 7400, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 15),
  -- Geodude - Protect - TM17
  (74, 7400, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 16),
  -- Geodude - Frustration - TM21
  (74, 7400, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 17),
  -- Geodude - Earthquake - TM26
  (74, 7400, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 18),
  -- Geodude - Return - TM27
  (74, 7400, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 19),
  -- Geodude - Dig - TM28
  (74, 7400, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 20),
  -- Geodude - Brick Break - TM31
  (74, 7400, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 21),
  -- Geodude - Double Team - TM32
  (74, 7400, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 22),
  -- Geodude - Flamethrower - TM35
  (74, 7400, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 23),
  -- Geodude - Sandstorm - TM37
  (74, 7400, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 24),
  -- Geodude - Fire Blast - TM38
  (74, 7400, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 25),
  -- Geodude - Rock Tomb - TM39
  (74, 7400, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 26),
  -- Geodude - Facade - TM42
  (74, 7400, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 27),
  -- Geodude - Secret Power - TM43
  (74, 7400, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 28),
  -- Geodude - Rest - TM44
  (74, 7400, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 29),
  -- Geodude - Attract - TM45
  (74, 7400, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 30),
  -- Geodude - Strength - HM04
  (74, 7400, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 31),
  -- Geodude - Rock Smash - HM06
  (74, 7400, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 32),
  -- Geodude - Block - Egg Move
  (74, 7400, 335, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Geodude - Mega Punch - Egg Move
  (74, 7400, 5, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Geodude - Rock Slide - Egg Move
  (74, 7400, 157, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Geodude - Body Slam - Move Tutor
  (74, 7400, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Geodude - Counter - Move Tutor
  (74, 7400, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Geodude - Double-Edge - Move Tutor
  (74, 7400, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Geodude - Explosion - Move Tutor
  (74, 7400, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Geodude - Mega Punch - Move Tutor
  (74, 7400, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Geodude - Metronome - Move Tutor
  (74, 7400, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Geodude - Mimic - Move Tutor
  (74, 7400, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Geodude - Rock Slide - Move Tutor
  (74, 7400, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Geodude - Seismic Toss - Move Tutor
  (74, 7400, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Geodude - Substitute - Move Tutor
  (74, 7400, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Graveler - Tackle - Level 1
  (75, 7500, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Graveler - Defense Curl - Level 1
  (75, 7500, 111, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Graveler - Mud Sport - Level 1
  (75, 7500, 300, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Graveler - Rock Throw - Level 1
  (75, 7500, 88, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Graveler - Mud Sport - Level 6
  (75, 7500, 300, 6, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Graveler - Rock Throw - Level 11
  (75, 7500, 88, 6, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Graveler - Magnitude - Level 16
  (75, 7500, 222, 6, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Graveler - Self-Destruct - Level 21
  (75, 7500, 120, 6, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Graveler - Rollout - Level 29
  (75, 7500, 205, 6, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Graveler - Rock Blast - Level 37
  (75, 7500, 350, 6, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Graveler - Earthquake - Level 45
  (75, 7500, 89, 6, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Graveler - Explosion - Level 53
  (75, 7500, 153, 6, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Graveler - Double-Edge - Level 62
  (75, 7500, 38, 6, NULL, 1, 62, NULL, NULL, NULL, 13),
  -- Graveler - Focus Punch - TM01
  (75, 7500, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 14),
  -- Graveler - Toxic - TM06
  (75, 7500, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Graveler - Hidden Power - TM10
  (75, 7500, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Graveler - Sunny Day - TM11
  (75, 7500, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 17),
  -- Graveler - Protect - TM17
  (75, 7500, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 18),
  -- Graveler - Frustration - TM21
  (75, 7500, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 19),
  -- Graveler - Earthquake - TM26
  (75, 7500, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 20),
  -- Graveler - Return - TM27
  (75, 7500, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 21),
  -- Graveler - Dig - TM28
  (75, 7500, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 22),
  -- Graveler - Brick Break - TM31
  (75, 7500, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 23),
  -- Graveler - Double Team - TM32
  (75, 7500, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 24),
  -- Graveler - Flamethrower - TM35
  (75, 7500, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 25),
  -- Graveler - Sandstorm - TM37
  (75, 7500, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 26),
  -- Graveler - Fire Blast - TM38
  (75, 7500, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 27),
  -- Graveler - Rock Tomb - TM39
  (75, 7500, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 28),
  -- Graveler - Facade - TM42
  (75, 7500, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 29),
  -- Graveler - Secret Power - TM43
  (75, 7500, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 30),
  -- Graveler - Rest - TM44
  (75, 7500, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 31),
  -- Graveler - Attract - TM45
  (75, 7500, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 32),
  -- Graveler - Strength - HM04
  (75, 7500, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 33),
  -- Graveler - Rock Smash - HM06
  (75, 7500, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 34),
  -- Graveler - Body Slam - Move Tutor
  (75, 7500, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Graveler - Counter - Move Tutor
  (75, 7500, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Graveler - Double-Edge - Move Tutor
  (75, 7500, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Graveler - Explosion - Move Tutor
  (75, 7500, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Graveler - Mega Punch - Move Tutor
  (75, 7500, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Graveler - Metronome - Move Tutor
  (75, 7500, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Graveler - Mimic - Move Tutor
  (75, 7500, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Graveler - Rock Slide - Move Tutor
  (75, 7500, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Graveler - Seismic Toss - Move Tutor
  (75, 7500, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Graveler - Substitute - Move Tutor
  (75, 7500, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Golem - Tackle - Level 1
  (76, 7600, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golem - Defense Curl - Level 1
  (76, 7600, 111, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golem - Mud Sport - Level 1
  (76, 7600, 300, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golem - Rock Throw - Level 1
  (76, 7600, 88, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golem - Mud Sport - Level 6
  (76, 7600, 300, 6, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Golem - Rock Throw - Level 11
  (76, 7600, 88, 6, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Golem - Magnitude - Level 16
  (76, 7600, 222, 6, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Golem - Self-Destruct - Level 21
  (76, 7600, 120, 6, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Golem - Rollout - Level 29
  (76, 7600, 205, 6, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Golem - Rock Blast - Level 37
  (76, 7600, 350, 6, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Golem - Earthquake - Level 45
  (76, 7600, 89, 6, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Golem - Explosion - Level 53
  (76, 7600, 153, 6, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Golem - Double-Edge - Level 62
  (76, 7600, 38, 6, NULL, 1, 62, NULL, NULL, NULL, 13),
  -- Golem - Focus Punch - TM01
  (76, 7600, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 14),
  -- Golem - Roar - TM05
  (76, 7600, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 15),
  -- Golem - Toxic - TM06
  (76, 7600, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Golem - Hidden Power - TM10
  (76, 7600, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 17),
  -- Golem - Sunny Day - TM11
  (76, 7600, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 18),
  -- Golem - Hyper Beam - TM15
  (76, 7600, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 19),
  -- Golem - Protect - TM17
  (76, 7600, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 20),
  -- Golem - Frustration - TM21
  (76, 7600, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 21),
  -- Golem - Earthquake - TM26
  (76, 7600, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 22),
  -- Golem - Return - TM27
  (76, 7600, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 23),
  -- Golem - Dig - TM28
  (76, 7600, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 24),
  -- Golem - Brick Break - TM31
  (76, 7600, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 25),
  -- Golem - Double Team - TM32
  (76, 7600, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 26),
  -- Golem - Flamethrower - TM35
  (76, 7600, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 27),
  -- Golem - Sandstorm - TM37
  (76, 7600, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 28),
  -- Golem - Fire Blast - TM38
  (76, 7600, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 29),
  -- Golem - Rock Tomb - TM39
  (76, 7600, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 30),
  -- Golem - Facade - TM42
  (76, 7600, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 31),
  -- Golem - Secret Power - TM43
  (76, 7600, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 32),
  -- Golem - Rest - TM44
  (76, 7600, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 33),
  -- Golem - Attract - TM45
  (76, 7600, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 34),
  -- Golem - Strength - HM04
  (76, 7600, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 35),
  -- Golem - Rock Smash - HM06
  (76, 7600, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 36),
  -- Golem - Body Slam - Move Tutor
  (76, 7600, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Golem - Counter - Move Tutor
  (76, 7600, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Golem - Double-Edge - Move Tutor
  (76, 7600, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Golem - Explosion - Move Tutor
  (76, 7600, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Golem - Mega Kick - Move Tutor
  (76, 7600, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Golem - Mega Punch - Move Tutor
  (76, 7600, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Golem - Metronome - Move Tutor
  (76, 7600, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Golem - Mimic - Move Tutor
  (76, 7600, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Golem - Rock Slide - Move Tutor
  (76, 7600, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Golem - Seismic Toss - Move Tutor
  (76, 7600, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Golem - Substitute - Move Tutor
  (76, 7600, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Ponyta - Quick Attack - Level 1
  (77, 7700, 98, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ponyta - Growl - Level 5
  (77, 7700, 45, 6, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Ponyta - Tail Whip - Level 9
  (77, 7700, 39, 6, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Ponyta - Ember - Level 14
  (77, 7700, 52, 6, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Ponyta - Stomp - Level 19
  (77, 7700, 23, 6, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Ponyta - Fire Spin - Level 25
  (77, 7700, 83, 6, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Ponyta - Take Down - Level 31
  (77, 7700, 36, 6, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Ponyta - Agility - Level 38
  (77, 7700, 97, 6, NULL, 1, 38, NULL, NULL, NULL, 8),
  -- Ponyta - Bounce - Level 45
  (77, 7700, 340, 6, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Ponyta - Fire Blast - Level 53
  (77, 7700, 126, 6, NULL, 1, 53, NULL, NULL, NULL, 10),
  -- Ponyta - Toxic - TM06
  (77, 7700, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 11),
  -- Ponyta - Hidden Power - TM10
  (77, 7700, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 12),
  -- Ponyta - Sunny Day - TM11
  (77, 7700, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 13),
  -- Ponyta - Protect - TM17
  (77, 7700, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 14),
  -- Ponyta - Frustration - TM21
  (77, 7700, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 15),
  -- Ponyta - Solar Beam - TM22
  (77, 7700, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 16),
  -- Ponyta - Iron Tail - TM23
  (77, 7700, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 17),
  -- Ponyta - Return - TM27
  (77, 7700, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 18),
  -- Ponyta - Double Team - TM32
  (77, 7700, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 19),
  -- Ponyta - Flamethrower - TM35
  (77, 7700, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 20),
  -- Ponyta - Fire Blast - TM38
  (77, 7700, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 21),
  -- Ponyta - Facade - TM42
  (77, 7700, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 22),
  -- Ponyta - Secret Power - TM43
  (77, 7700, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 23),
  -- Ponyta - Rest - TM44
  (77, 7700, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 24),
  -- Ponyta - Attract - TM45
  (77, 7700, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 25),
  -- Ponyta - Overheat - TM50
  (77, 7700, 315, 6, NULL, 2, NULL, NULL, 6002050, NULL, 26),
  -- Ponyta - Strength - HM04
  (77, 7700, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 27),
  -- Ponyta - Charm - Egg Move
  (77, 7700, 204, 6, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Ponyta - Double-Edge - Egg Move
  (77, 7700, 38, 6, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Ponyta - Double Kick - Egg Move
  (77, 7700, 24, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Ponyta - Flame Wheel - Egg Move
  (77, 7700, 172, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Ponyta - Hypnosis - Egg Move
  (77, 7700, 95, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Ponyta - Thrash - Egg Move
  (77, 7700, 37, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Ponyta - Body Slam - Move Tutor
  (77, 7700, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Ponyta - Double-Edge - Move Tutor
  (77, 7700, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Ponyta - Mimic - Move Tutor
  (77, 7700, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Ponyta - Substitute - Move Tutor
  (77, 7700, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Rapidash - Quick Attack - Level 1
  (78, 7800, 98, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rapidash - Growl - Level 1
  (78, 7800, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rapidash - Tail Whip - Level 1
  (78, 7800, 39, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rapidash - Ember - Level 1
  (78, 7800, 52, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rapidash - Growl - Level 5
  (78, 7800, 45, 6, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Rapidash - Tail Whip - Level 9
  (78, 7800, 39, 6, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Rapidash - Ember - Level 14
  (78, 7800, 52, 6, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Rapidash - Stomp - Level 19
  (78, 7800, 23, 6, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Rapidash - Fire Spin - Level 25
  (78, 7800, 83, 6, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Rapidash - Take Down - Level 31
  (78, 7800, 36, 6, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Rapidash - Agility - Level 38
  (78, 7800, 97, 6, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Rapidash - Fury Attack - Level 40
  (78, 7800, 31, 6, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Rapidash - Bounce - Level 50
  (78, 7800, 340, 6, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Rapidash - Fire Blast - Level 63
  (78, 7800, 126, 6, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Rapidash - Toxic - TM06
  (78, 7800, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Rapidash - Hidden Power - TM10
  (78, 7800, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Rapidash - Sunny Day - TM11
  (78, 7800, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 17),
  -- Rapidash - Hyper Beam - TM15
  (78, 7800, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 18),
  -- Rapidash - Protect - TM17
  (78, 7800, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 19),
  -- Rapidash - Frustration - TM21
  (78, 7800, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Rapidash - Solar Beam - TM22
  (78, 7800, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 21),
  -- Rapidash - Iron Tail - TM23
  (78, 7800, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 22),
  -- Rapidash - Return - TM27
  (78, 7800, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 23),
  -- Rapidash - Double Team - TM32
  (78, 7800, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 24),
  -- Rapidash - Flamethrower - TM35
  (78, 7800, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 25),
  -- Rapidash - Fire Blast - TM38
  (78, 7800, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 26),
  -- Rapidash - Facade - TM42
  (78, 7800, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 27),
  -- Rapidash - Secret Power - TM43
  (78, 7800, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 28),
  -- Rapidash - Rest - TM44
  (78, 7800, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 29),
  -- Rapidash - Attract - TM45
  (78, 7800, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 30),
  -- Rapidash - Overheat - TM50
  (78, 7800, 315, 6, NULL, 2, NULL, NULL, 6002050, NULL, 31),
  -- Rapidash - Strength - HM04
  (78, 7800, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 32),
  -- Rapidash - Body Slam - Move Tutor
  (78, 7800, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Rapidash - Double-Edge - Move Tutor
  (78, 7800, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Rapidash - Mimic - Move Tutor
  (78, 7800, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Rapidash - Substitute - Move Tutor
  (78, 7800, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Slowpoke - Curse - Level 1
  (79, 7900, 174, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowpoke - Tackle - Level 1
  (79, 7900, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowpoke - Yawn - Level 1
  (79, 7900, 281, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowpoke - Growl - Level 6
  (79, 7900, 45, 6, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Slowpoke - Water Gun - Level 13
  (79, 7900, 55, 6, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Slowpoke - Confusion - Level 17
  (79, 7900, 93, 6, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Slowpoke - Disable - Level 24
  (79, 7900, 50, 6, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Slowpoke - Headbutt - Level 29
  (79, 7900, 29, 6, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Slowpoke - Amnesia - Level 36
  (79, 7900, 133, 6, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Slowpoke - Psychic - Level 40
  (79, 7900, 94, 6, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Slowpoke - Psych Up - Level 47
  (79, 7900, 244, 6, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Slowpoke - Water Pulse - TM03
  (79, 7900, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 12),
  -- Slowpoke - Calm Mind - TM04
  (79, 7900, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 13),
  -- Slowpoke - Toxic - TM06
  (79, 7900, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Slowpoke - Hail - TM07
  (79, 7900, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 15),
  -- Slowpoke - Hidden Power - TM10
  (79, 7900, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Slowpoke - Sunny Day - TM11
  (79, 7900, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 17),
  -- Slowpoke - Ice Beam - TM13
  (79, 7900, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 18),
  -- Slowpoke - Blizzard - TM14
  (79, 7900, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 19),
  -- Slowpoke - Protect - TM17
  (79, 7900, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 20),
  -- Slowpoke - Rain Dance - TM18
  (79, 7900, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 21),
  -- Slowpoke - Safeguard - TM20
  (79, 7900, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 22),
  -- Slowpoke - Frustration - TM21
  (79, 7900, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 23),
  -- Slowpoke - Iron Tail - TM23
  (79, 7900, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 24),
  -- Slowpoke - Earthquake - TM26
  (79, 7900, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 25),
  -- Slowpoke - Return - TM27
  (79, 7900, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 26),
  -- Slowpoke - Dig - TM28
  (79, 7900, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 27),
  -- Slowpoke - Psychic - TM29
  (79, 7900, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 28),
  -- Slowpoke - Shadow Ball - TM30
  (79, 7900, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 29),
  -- Slowpoke - Double Team - TM32
  (79, 7900, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 30),
  -- Slowpoke - Flamethrower - TM35
  (79, 7900, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 31),
  -- Slowpoke - Fire Blast - TM38
  (79, 7900, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 32),
  -- Slowpoke - Facade - TM42
  (79, 7900, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 33),
  -- Slowpoke - Secret Power - TM43
  (79, 7900, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 34),
  -- Slowpoke - Rest - TM44
  (79, 7900, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 35),
  -- Slowpoke - Attract - TM45
  (79, 7900, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 36),
  -- Slowpoke - Skill Swap - TM48
  (79, 7900, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 37),
  -- Slowpoke - Surf - HM03
  (79, 7900, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 38),
  -- Slowpoke - Strength - HM04
  (79, 7900, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 39),
  -- Slowpoke - Flash - HM05
  (79, 7900, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 40),
  -- Slowpoke - Belly Drum - Egg Move
  (79, 7900, 187, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Slowpoke - Future Sight - Egg Move
  (79, 7900, 248, 6, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Slowpoke - Mud Sport - Egg Move
  (79, 7900, 300, 6, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Slowpoke - Safeguard - Egg Move
  (79, 7900, 219, 6, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Slowpoke - Sleep Talk - Egg Move
  (79, 7900, 214, 6, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Slowpoke - Snore - Egg Move
  (79, 7900, 173, 6, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Slowpoke - Stomp - Egg Move
  (79, 7900, 23, 6, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Slowpoke - Body Slam - Move Tutor
  (79, 7900, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Slowpoke - Double-Edge - Move Tutor
  (79, 7900, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Slowpoke - Dream Eater - Move Tutor
  (79, 7900, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Slowpoke - Mimic - Move Tutor
  (79, 7900, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Slowpoke - Substitute - Move Tutor
  (79, 7900, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Slowpoke - Thunder Wave - Move Tutor
  (79, 7900, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Slowbro - Curse - Level 1
  (80, 8000, 174, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowbro - Tackle - Level 1
  (80, 8000, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowbro - Yawn - Level 1
  (80, 8000, 281, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowbro - Growl - Level 1
  (80, 8000, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slowbro - Growl - Level 6
  (80, 8000, 45, 6, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Slowbro - Water Gun - Level 13
  (80, 8000, 55, 6, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Slowbro - Confusion - Level 17
  (80, 8000, 93, 6, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Slowbro - Disable - Level 24
  (80, 8000, 50, 6, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Slowbro - Headbutt - Level 29
  (80, 8000, 29, 6, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Slowbro - Withdraw - Level 37
  (80, 8000, 110, 6, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Slowbro - Amnesia - Level 36
  (80, 8000, 133, 6, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Slowbro - Psychic - Level 44
  (80, 8000, 94, 6, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Slowbro - Psych Up - Level 55
  (80, 8000, 244, 6, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Slowbro - Focus Punch - TM01
  (80, 8000, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 14),
  -- Slowbro - Water Pulse - TM03
  (80, 8000, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 15),
  -- Slowbro - Calm Mind - TM04
  (80, 8000, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 16),
  -- Slowbro - Toxic - TM06
  (80, 8000, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 17),
  -- Slowbro - Hail - TM07
  (80, 8000, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 18),
  -- Slowbro - Hidden Power - TM10
  (80, 8000, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 19),
  -- Slowbro - Sunny Day - TM11
  (80, 8000, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 20),
  -- Slowbro - Ice Beam - TM13
  (80, 8000, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 21),
  -- Slowbro - Blizzard - TM14
  (80, 8000, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 22),
  -- Slowbro - Hyper Beam - TM15
  (80, 8000, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 23),
  -- Slowbro - Protect - TM17
  (80, 8000, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 24),
  -- Slowbro - Rain Dance - TM18
  (80, 8000, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 25),
  -- Slowbro - Safeguard - TM20
  (80, 8000, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 26),
  -- Slowbro - Frustration - TM21
  (80, 8000, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 27),
  -- Slowbro - Iron Tail - TM23
  (80, 8000, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 28),
  -- Slowbro - Earthquake - TM26
  (80, 8000, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 29),
  -- Slowbro - Return - TM27
  (80, 8000, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 30),
  -- Slowbro - Dig - TM28
  (80, 8000, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 31),
  -- Slowbro - Psychic - TM29
  (80, 8000, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 32),
  -- Slowbro - Shadow Ball - TM30
  (80, 8000, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 33),
  -- Slowbro - Brick Break - TM31
  (80, 8000, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 34),
  -- Slowbro - Double Team - TM32
  (80, 8000, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 35),
  -- Slowbro - Flamethrower - TM35
  (80, 8000, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 36),
  -- Slowbro - Fire Blast - TM38
  (80, 8000, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 37),
  -- Slowbro - Facade - TM42
  (80, 8000, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 38),
  -- Slowbro - Secret Power - TM43
  (80, 8000, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 39),
  -- Slowbro - Rest - TM44
  (80, 8000, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 40),
  -- Slowbro - Attract - TM45
  (80, 8000, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 41),
  -- Slowbro - Skill Swap - TM48
  (80, 8000, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 42),
  -- Slowbro - Surf - HM03
  (80, 8000, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 43),
  -- Slowbro - Strength - HM04
  (80, 8000, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 44),
  -- Slowbro - Flash - HM05
  (80, 8000, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 45),
  -- Slowbro - Rock Smash - HM06
  (80, 8000, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 46),
  -- Slowbro - Body Slam - Move Tutor
  (80, 8000, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Slowbro - Counter - Move Tutor
  (80, 8000, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Slowbro - Double-Edge - Move Tutor
  (80, 8000, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Slowbro - Dream Eater - Move Tutor
  (80, 8000, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Slowbro - Mega Kick - Move Tutor
  (80, 8000, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Slowbro - Mega Punch - Move Tutor
  (80, 8000, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Slowbro - Mimic - Move Tutor
  (80, 8000, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Slowbro - Seismic Toss - Move Tutor
  (80, 8000, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 54),
  -- Slowbro - Substitute - Move Tutor
  (80, 8000, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 55),
  -- Slowbro - Thunder Wave - Move Tutor
  (80, 8000, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 56),
  -- Magnemite - Metal Sound - Level 1
  (81, 8100, 319, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magnemite - Tackle - Level 1
  (81, 8100, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magnemite - Thunder Shock - Level 6
  (81, 8100, 84, 6, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Magnemite - Supersonic - Level 11
  (81, 8100, 48, 6, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Magnemite - Sonic Boom - Level 16
  (81, 8100, 49, 6, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Magnemite - Thunder Wave - Level 21
  (81, 8100, 86, 6, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Magnemite - Spark - Level 26
  (81, 8100, 209, 6, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Magnemite - Lock-On - Level 32
  (81, 8100, 199, 6, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Magnemite - Swift - Level 38
  (81, 8100, 129, 6, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Magnemite - Screech - Level 44
  (81, 8100, 103, 6, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Magnemite - Zap Cannon - Level 50
  (81, 8100, 192, 6, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Magnemite - Toxic - TM06
  (81, 8100, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Magnemite - Hidden Power - TM10
  (81, 8100, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Magnemite - Sunny Day - TM11
  (81, 8100, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 14),
  -- Magnemite - Protect - TM17
  (81, 8100, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Magnemite - Rain Dance - TM18
  (81, 8100, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 16),
  -- Magnemite - Frustration - TM21
  (81, 8100, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 17),
  -- Magnemite - Thunderbolt - TM24
  (81, 8100, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 18),
  -- Magnemite - Thunder - TM25
  (81, 8100, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 19),
  -- Magnemite - Return - TM27
  (81, 8100, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 20),
  -- Magnemite - Double Team - TM32
  (81, 8100, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 21),
  -- Magnemite - Reflect - TM33
  (81, 8100, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 22),
  -- Magnemite - Shock Wave - TM34
  (81, 8100, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 23),
  -- Magnemite - Facade - TM42
  (81, 8100, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 24),
  -- Magnemite - Secret Power - TM43
  (81, 8100, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 25),
  -- Magnemite - Rest - TM44
  (81, 8100, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 26),
  -- Magnemite - Flash - HM05
  (81, 8100, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 27),
  -- Magnemite - Double-Edge - Move Tutor
  (81, 8100, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 28),
  -- Magnemite - Mimic - Move Tutor
  (81, 8100, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 29),
  -- Magnemite - Substitute - Move Tutor
  (81, 8100, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 30),
  -- Magnemite - Thunder Wave - Move Tutor
  (81, 8100, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 31),
  -- Magneton - Tackle - Level 1
  (82, 8200, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magneton - Metal Sound - Level 1
  (82, 8200, 319, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magneton - Thunder Shock - Level 1
  (82, 8200, 84, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magneton - Supersonic - Level 1
  (82, 8200, 48, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magneton - Thunder Shock - Level 6
  (82, 8200, 84, 6, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Magneton - Supersonic - Level 11
  (82, 8200, 48, 6, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Magneton - Sonic Boom - Level 16
  (82, 8200, 49, 6, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Magneton - Thunder Wave - Level 21
  (82, 8200, 86, 6, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Magneton - Spark - Level 26
  (82, 8200, 209, 6, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Magneton - Lock-On - Level 35
  (82, 8200, 199, 6, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Magneton - Tri Attack - Level 44
  (82, 8200, 161, 6, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Magneton - Screech - Level 53
  (82, 8200, 103, 6, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Magneton - Zap Cannon - Level 62
  (82, 8200, 192, 6, NULL, 1, 62, NULL, NULL, NULL, 13),
  -- Magneton - Toxic - TM06
  (82, 8200, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Magneton - Hidden Power - TM10
  (82, 8200, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Magneton - Sunny Day - TM11
  (82, 8200, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Magneton - Hyper Beam - TM15
  (82, 8200, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 17),
  -- Magneton - Protect - TM17
  (82, 8200, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 18),
  -- Magneton - Rain Dance - TM18
  (82, 8200, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 19),
  -- Magneton - Frustration - TM21
  (82, 8200, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Magneton - Thunderbolt - TM24
  (82, 8200, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 21),
  -- Magneton - Thunder - TM25
  (82, 8200, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 22),
  -- Magneton - Return - TM27
  (82, 8200, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 23),
  -- Magneton - Double Team - TM32
  (82, 8200, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 24),
  -- Magneton - Reflect - TM33
  (82, 8200, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 25),
  -- Magneton - Shock Wave - TM34
  (82, 8200, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 26),
  -- Magneton - Facade - TM42
  (82, 8200, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 27),
  -- Magneton - Secret Power - TM43
  (82, 8200, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 28),
  -- Magneton - Rest - TM44
  (82, 8200, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 29),
  -- Magneton - Flash - HM05
  (82, 8200, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 30),
  -- Magneton - Double-Edge - Move Tutor
  (82, 8200, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 31),
  -- Magneton - Mimic - Move Tutor
  (82, 8200, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Magneton - Substitute - Move Tutor
  (82, 8200, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Magneton - Thunder Wave - Move Tutor
  (82, 8200, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Farfetch'd - Peck - Level 1
  (83, 8300, 64, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Farfetch'd - Sand Attack - Level 6
  (83, 8300, 28, 6, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Farfetch'd - Leer - Level 11
  (83, 8300, 43, 6, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Farfetch'd - Fury Attack - Level 16
  (83, 8300, 31, 6, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Farfetch'd - Knock Off - Level 21
  (83, 8300, 282, 6, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Farfetch'd - Fury Cutter - Level 26
  (83, 8300, 210, 6, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Farfetch'd - Swords Dance - Level 31
  (83, 8300, 14, 6, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Farfetch'd - Agility - Level 36
  (83, 8300, 97, 6, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Farfetch'd - Slash - Level 41
  (83, 8300, 163, 6, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Farfetch'd - False Swipe - Level 46
  (83, 8300, 206, 6, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Farfetch'd - Toxic - TM06
  (83, 8300, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 11),
  -- Farfetch'd - Hidden Power - TM10
  (83, 8300, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 12),
  -- Farfetch'd - Sunny Day - TM11
  (83, 8300, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 13),
  -- Farfetch'd - Protect - TM17
  (83, 8300, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 14),
  -- Farfetch'd - Frustration - TM21
  (83, 8300, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 15),
  -- Farfetch'd - Iron Tail - TM23
  (83, 8300, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 16),
  -- Farfetch'd - Return - TM27
  (83, 8300, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 17),
  -- Farfetch'd - Double Team - TM32
  (83, 8300, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 18),
  -- Farfetch'd - Aerial Ace - TM40
  (83, 8300, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 19),
  -- Farfetch'd - Facade - TM42
  (83, 8300, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 20),
  -- Farfetch'd - Secret Power - TM43
  (83, 8300, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 21),
  -- Farfetch'd - Rest - TM44
  (83, 8300, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 22),
  -- Farfetch'd - Attract - TM45
  (83, 8300, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 23),
  -- Farfetch'd - Thief - TM46
  (83, 8300, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 24),
  -- Farfetch'd - Steel Wing - TM47
  (83, 8300, 211, 6, NULL, 2, NULL, NULL, 6002047, NULL, 25),
  -- Farfetch'd - Cut - HM01
  (83, 8300, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 26),
  -- Farfetch'd - Fly - HM02
  (83, 8300, 19, 6, NULL, 3, NULL, NULL, 6003002, NULL, 27),
  -- Farfetch'd - Curse - Egg Move
  (83, 8300, 174, 6, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Farfetch'd - Feather Dance - Egg Move
  (83, 8300, 297, 6, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Farfetch'd - Flail - Egg Move
  (83, 8300, 175, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Farfetch'd - Foresight - Egg Move
  (83, 8300, 193, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Farfetch'd - Gust - Egg Move
  (83, 8300, 16, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Farfetch'd - Mirror Move - Egg Move
  (83, 8300, 119, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Farfetch'd - Quick Attack - Egg Move
  (83, 8300, 98, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Farfetch'd - Steel Wing - Egg Move
  (83, 8300, 211, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Farfetch'd - Body Slam - Move Tutor
  (83, 8300, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Farfetch'd - Double-Edge - Move Tutor
  (83, 8300, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Farfetch'd - Mimic - Move Tutor
  (83, 8300, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Farfetch'd - Substitute - Move Tutor
  (83, 8300, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Farfetch'd - Swords Dance - Move Tutor
  (83, 8300, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Doduo - Peck - Level 1
  (84, 8400, 64, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Doduo - Growl - Level 1
  (84, 8400, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Doduo - Pursuit - Level 9
  (84, 8400, 228, 6, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Doduo - Fury Attack - Level 13
  (84, 8400, 31, 6, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Doduo - Tri Attack - Level 21
  (84, 8400, 161, 6, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Doduo - Rage - Level 25
  (84, 8400, 99, 6, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Doduo - Uproar - Level 33
  (84, 8400, 253, 6, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Doduo - Drill Peck - Level 37
  (84, 8400, 65, 6, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Doduo - Agility - Level 45
  (84, 8400, 97, 6, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Doduo - Toxic - TM06
  (84, 8400, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 10),
  -- Doduo - Hidden Power - TM10
  (84, 8400, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 11),
  -- Doduo - Sunny Day - TM11
  (84, 8400, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 12),
  -- Doduo - Protect - TM17
  (84, 8400, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 13),
  -- Doduo - Frustration - TM21
  (84, 8400, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 14),
  -- Doduo - Return - TM27
  (84, 8400, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 15),
  -- Doduo - Double Team - TM32
  (84, 8400, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 16),
  -- Doduo - Aerial Ace - TM40
  (84, 8400, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 17),
  -- Doduo - Facade - TM42
  (84, 8400, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 18),
  -- Doduo - Secret Power - TM43
  (84, 8400, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 19),
  -- Doduo - Rest - TM44
  (84, 8400, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 20),
  -- Doduo - Attract - TM45
  (84, 8400, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 21),
  -- Doduo - Thief - TM46
  (84, 8400, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 22),
  -- Doduo - Steel Wing - TM47
  (84, 8400, 211, 6, NULL, 2, NULL, NULL, 6002047, NULL, 23),
  -- Doduo - Fly - HM02
  (84, 8400, 19, 6, NULL, 3, NULL, NULL, 6003002, NULL, 24),
  -- Doduo - Endeavor - Egg Move
  (84, 8400, 283, 6, NULL, 5, NULL, NULL, NULL, NULL, 25),
  -- Doduo - Feint Attack - Egg Move
  (84, 8400, 185, 6, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Doduo - Flail - Egg Move
  (84, 8400, 175, 6, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Doduo - Haze - Egg Move
  (84, 8400, 114, 6, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Doduo - Quick Attack - Egg Move
  (84, 8400, 98, 6, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Doduo - Supersonic - Egg Move
  (84, 8400, 48, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Doduo - Body Slam - Move Tutor
  (84, 8400, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 31),
  -- Doduo - Double-Edge - Move Tutor
  (84, 8400, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Doduo - Endure - Move Tutor
  (84, 8400, 203, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Doduo - Mimic - Move Tutor
  (84, 8400, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Doduo - Mud-Slap - Move Tutor
  (84, 8400, 189, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Doduo - Sleep Talk - Move Tutor
  (84, 8400, 214, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Doduo - Snore - Move Tutor
  (84, 8400, 173, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Doduo - Substitute - Move Tutor
  (84, 8400, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Doduo - Swagger - Move Tutor
  (84, 8400, 207, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Doduo - Swift - Move Tutor
  (84, 8400, 129, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Dodrio - Peck - Level 1
  (85, 8500, 64, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dodrio - Growl - Level 1
  (85, 8500, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dodrio - Pursuit - Level 1
  (85, 8500, 228, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dodrio - Fury Attack - Level 1
  (85, 8500, 31, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dodrio - Pursuit - Level 9
  (85, 8500, 228, 6, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Dodrio - Fury Attack - Level 13
  (85, 8500, 31, 6, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Dodrio - Tri Attack - Level 21
  (85, 8500, 161, 6, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Dodrio - Rage - Level 25
  (85, 8500, 99, 6, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Dodrio - Uproar - Level 38
  (85, 8500, 253, 6, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Dodrio - Drill Peck - Level 47
  (85, 8500, 65, 6, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Dodrio - Agility - Level 60
  (85, 8500, 97, 6, NULL, 1, 60, NULL, NULL, NULL, 11),
  -- Dodrio - Toxic - TM06
  (85, 8500, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Dodrio - Hidden Power - TM10
  (85, 8500, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Dodrio - Sunny Day - TM11
  (85, 8500, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 14),
  -- Dodrio - Taunt - TM12
  (85, 8500, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 15),
  -- Dodrio - Hyper Beam - TM15
  (85, 8500, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 16),
  -- Dodrio - Protect - TM17
  (85, 8500, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 17),
  -- Dodrio - Frustration - TM21
  (85, 8500, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 18),
  -- Dodrio - Return - TM27
  (85, 8500, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 19),
  -- Dodrio - Double Team - TM32
  (85, 8500, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 20),
  -- Dodrio - Aerial Ace - TM40
  (85, 8500, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 21),
  -- Dodrio - Torment - TM41
  (85, 8500, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 22),
  -- Dodrio - Facade - TM42
  (85, 8500, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 23),
  -- Dodrio - Secret Power - TM43
  (85, 8500, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 24),
  -- Dodrio - Rest - TM44
  (85, 8500, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 25),
  -- Dodrio - Attract - TM45
  (85, 8500, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 26),
  -- Dodrio - Thief - TM46
  (85, 8500, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 27),
  -- Dodrio - Steel Wing - TM47
  (85, 8500, 211, 6, NULL, 2, NULL, NULL, 6002047, NULL, 28),
  -- Dodrio - Fly - HM02
  (85, 8500, 19, 6, NULL, 3, NULL, NULL, 6003002, NULL, 29),
  -- Dodrio - Body Slam - Move Tutor
  (85, 8500, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 30),
  -- Dodrio - Double-Edge - Move Tutor
  (85, 8500, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 31),
  -- Dodrio - Endure - Move Tutor
  (85, 8500, 203, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Dodrio - Mimic - Move Tutor
  (85, 8500, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Dodrio - Mud-Slap - Move Tutor
  (85, 8500, 189, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Dodrio - Sleep Talk - Move Tutor
  (85, 8500, 214, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Dodrio - Snore - Move Tutor
  (85, 8500, 173, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Dodrio - Substitute - Move Tutor
  (85, 8500, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Dodrio - Swagger - Move Tutor
  (85, 8500, 207, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Dodrio - Swift - Move Tutor
  (85, 8500, 129, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Seel - Headbutt - Level 1
  (86, 8600, 29, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seel - Growl - Level 9
  (86, 8600, 45, 6, NULL, 1, 9, NULL, NULL, NULL, 2),
  -- Seel - Icy Wind - Level 17
  (86, 8600, 196, 6, NULL, 1, 17, NULL, NULL, NULL, 3),
  -- Seel - Aurora Beam - Level 21
  (86, 8600, 62, 6, NULL, 1, 21, NULL, NULL, NULL, 4),
  -- Seel - Rest - Level 29
  (86, 8600, 156, 6, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Seel - Take Down - Level 37
  (86, 8600, 36, 6, NULL, 1, 37, NULL, NULL, NULL, 6),
  -- Seel - Ice Beam - Level 41
  (86, 8600, 58, 6, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Seel - Safeguard - Level 49
  (86, 8600, 219, 6, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Seel - Water Pulse - TM03
  (86, 8600, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 9),
  -- Seel - Toxic - TM06
  (86, 8600, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 10),
  -- Seel - Hail - TM07
  (86, 8600, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 11),
  -- Seel - Hidden Power - TM10
  (86, 8600, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 12),
  -- Seel - Ice Beam - TM13
  (86, 8600, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 13),
  -- Seel - Blizzard - TM14
  (86, 8600, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 14),
  -- Seel - Protect - TM17
  (86, 8600, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Seel - Rain Dance - TM18
  (86, 8600, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 16),
  -- Seel - Safeguard - TM20
  (86, 8600, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 17),
  -- Seel - Frustration - TM21
  (86, 8600, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 18),
  -- Seel - Return - TM27
  (86, 8600, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 19),
  -- Seel - Double Team - TM32
  (86, 8600, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 20),
  -- Seel - Facade - TM42
  (86, 8600, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 21),
  -- Seel - Secret Power - TM43
  (86, 8600, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 22),
  -- Seel - Rest - TM44
  (86, 8600, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 23),
  -- Seel - Attract - TM45
  (86, 8600, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 24),
  -- Seel - Thief - TM46
  (86, 8600, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 25),
  -- Seel - Surf - HM03
  (86, 8600, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 26),
  -- Seel - Waterfall - HM07
  (86, 8600, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 27),
  -- Seel - Disable - Egg Move
  (86, 8600, 50, 6, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Seel - Encore - Egg Move
  (86, 8600, 227, 6, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Seel - Fake Out - Egg Move
  (86, 8600, 252, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Seel - Horn Drill - Egg Move
  (86, 8600, 32, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Seel - Icicle Spear - Egg Move
  (86, 8600, 333, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Seel - Lick - Egg Move
  (86, 8600, 122, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Seel - Perish Song - Egg Move
  (86, 8600, 195, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Seel - Slam - Egg Move
  (86, 8600, 21, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Seel - Body Slam - Move Tutor
  (86, 8600, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Seel - Double-Edge - Move Tutor
  (86, 8600, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Seel - Mimic - Move Tutor
  (86, 8600, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Seel - Substitute - Move Tutor
  (86, 8600, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Dewgong - Signal Beam - Level 1
  (87, 8700, 324, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dewgong - Headbutt - Level 1
  (87, 8700, 29, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dewgong - Growl - Level 1
  (87, 8700, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dewgong - Icy Wind - Level 1
  (87, 8700, 196, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dewgong - Aurora Beam - Level 1
  (87, 8700, 62, 6, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dewgong - Growl - Level 9
  (87, 8700, 45, 6, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Dewgong - Icy Wind - Level 17
  (87, 8700, 196, 6, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Dewgong - Aurora Beam - Level 21
  (87, 8700, 62, 6, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Dewgong - Rest - Level 29
  (87, 8700, 156, 6, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Dewgong - Sheer Cold - Level 34
  (87, 8700, 329, 6, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Dewgong - Take Down - Level 42
  (87, 8700, 36, 6, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Dewgong - Ice Beam - Level 51
  (87, 8700, 58, 6, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Dewgong - Safeguard - Level 64
  (87, 8700, 219, 6, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Dewgong - Water Pulse - TM03
  (87, 8700, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 14),
  -- Dewgong - Toxic - TM06
  (87, 8700, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Dewgong - Hail - TM07
  (87, 8700, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 16),
  -- Dewgong - Hidden Power - TM10
  (87, 8700, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 17),
  -- Dewgong - Ice Beam - TM13
  (87, 8700, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 18),
  -- Dewgong - Blizzard - TM14
  (87, 8700, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 19),
  -- Dewgong - Hyper Beam - TM15
  (87, 8700, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 20),
  -- Dewgong - Protect - TM17
  (87, 8700, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 21),
  -- Dewgong - Rain Dance - TM18
  (87, 8700, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 22),
  -- Dewgong - Safeguard - TM20
  (87, 8700, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 23),
  -- Dewgong - Frustration - TM21
  (87, 8700, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 24),
  -- Dewgong - Return - TM27
  (87, 8700, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 25),
  -- Dewgong - Double Team - TM32
  (87, 8700, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 26),
  -- Dewgong - Facade - TM42
  (87, 8700, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 27),
  -- Dewgong - Secret Power - TM43
  (87, 8700, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 28),
  -- Dewgong - Rest - TM44
  (87, 8700, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 29),
  -- Dewgong - Attract - TM45
  (87, 8700, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 30),
  -- Dewgong - Thief - TM46
  (87, 8700, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 31),
  -- Dewgong - Surf - HM03
  (87, 8700, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 32),
  -- Dewgong - Waterfall - HM07
  (87, 8700, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 33),
  -- Dewgong - Body Slam - Move Tutor
  (87, 8700, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Dewgong - Double-Edge - Move Tutor
  (87, 8700, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Dewgong - Mimic - Move Tutor
  (87, 8700, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Dewgong - Substitute - Move Tutor
  (87, 8700, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Grimer - Poison Gas - Level 1
  (88, 8800, 139, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grimer - Pound - Level 1
  (88, 8800, 1, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grimer - Harden - Level 4
  (88, 8800, 106, 6, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Grimer - Disable - Level 8
  (88, 8800, 50, 6, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Grimer - Sludge - Level 13
  (88, 8800, 124, 6, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Grimer - Minimize - Level 19
  (88, 8800, 107, 6, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Grimer - Screech - Level 26
  (88, 8800, 103, 6, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Grimer - Acid Armor - Level 34
  (88, 8800, 151, 6, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Grimer - Sludge Bomb - Level 43
  (88, 8800, 188, 6, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Grimer - Memento - Level 53
  (88, 8800, 262, 6, NULL, 1, 53, NULL, NULL, NULL, 10),
  -- Grimer - Toxic - TM06
  (88, 8800, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 11),
  -- Grimer - Hidden Power - TM10
  (88, 8800, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 12),
  -- Grimer - Sunny Day - TM11
  (88, 8800, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 13),
  -- Grimer - Taunt - TM12
  (88, 8800, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 14),
  -- Grimer - Protect - TM17
  (88, 8800, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Grimer - Rain Dance - TM18
  (88, 8800, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 16),
  -- Grimer - Giga Drain - TM19
  (88, 8800, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 17),
  -- Grimer - Frustration - TM21
  (88, 8800, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 18),
  -- Grimer - Thunderbolt - TM24
  (88, 8800, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 19),
  -- Grimer - Thunder - TM25
  (88, 8800, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 20),
  -- Grimer - Return - TM27
  (88, 8800, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 21),
  -- Grimer - Dig - TM28
  (88, 8800, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 22),
  -- Grimer - Double Team - TM32
  (88, 8800, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 23),
  -- Grimer - Shock Wave - TM34
  (88, 8800, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 24),
  -- Grimer - Flamethrower - TM35
  (88, 8800, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 25),
  -- Grimer - Sludge Bomb - TM36
  (88, 8800, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 26),
  -- Grimer - Fire Blast - TM38
  (88, 8800, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 27),
  -- Grimer - Rock Tomb - TM39
  (88, 8800, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 28),
  -- Grimer - Torment - TM41
  (88, 8800, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 29),
  -- Grimer - Facade - TM42
  (88, 8800, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 30),
  -- Grimer - Secret Power - TM43
  (88, 8800, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 31),
  -- Grimer - Rest - TM44
  (88, 8800, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 32),
  -- Grimer - Attract - TM45
  (88, 8800, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 33),
  -- Grimer - Thief - TM46
  (88, 8800, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 34),
  -- Grimer - Curse - Egg Move
  (88, 8800, 174, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Grimer - Explosion - Egg Move
  (88, 8800, 153, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Grimer - Haze - Egg Move
  (88, 8800, 114, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Grimer - Imprison - Egg Move
  (88, 8800, 286, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Grimer - Lick - Egg Move
  (88, 8800, 122, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Grimer - Mean Look - Egg Move
  (88, 8800, 212, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Grimer - Shadow Punch - Egg Move
  (88, 8800, 325, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Grimer - Body Slam - Move Tutor
  (88, 8800, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Grimer - Explosion - Move Tutor
  (88, 8800, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Grimer - Mimic - Move Tutor
  (88, 8800, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Grimer - Substitute - Move Tutor
  (88, 8800, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Muk - Poison Gas - Level 1
  (89, 8900, 139, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Muk - Pound - Level 1
  (89, 8900, 1, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Muk - Harden - Level 1
  (89, 8900, 106, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Muk - Harden - Level 4
  (89, 8900, 106, 6, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Muk - Disable - Level 8
  (89, 8900, 50, 6, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Muk - Sludge - Level 13
  (89, 8900, 124, 6, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Muk - Minimize - Level 19
  (89, 8900, 107, 6, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Muk - Screech - Level 26
  (89, 8900, 103, 6, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Muk - Acid Armor - Level 34
  (89, 8900, 151, 6, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Muk - Sludge Bomb - Level 47
  (89, 8900, 188, 6, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Muk - Memento - Level 61
  (89, 8900, 262, 6, NULL, 1, 61, NULL, NULL, NULL, 11),
  -- Muk - Focus Punch - TM01
  (89, 8900, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 12),
  -- Muk - Toxic - TM06
  (89, 8900, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 13),
  -- Muk - Hidden Power - TM10
  (89, 8900, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 14),
  -- Muk - Sunny Day - TM11
  (89, 8900, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 15),
  -- Muk - Taunt - TM12
  (89, 8900, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 16),
  -- Muk - Hyper Beam - TM15
  (89, 8900, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 17),
  -- Muk - Protect - TM17
  (89, 8900, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 18),
  -- Muk - Rain Dance - TM18
  (89, 8900, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 19),
  -- Muk - Giga Drain - TM19
  (89, 8900, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 20),
  -- Muk - Frustration - TM21
  (89, 8900, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 21),
  -- Muk - Thunderbolt - TM24
  (89, 8900, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 22),
  -- Muk - Thunder - TM25
  (89, 8900, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 23),
  -- Muk - Return - TM27
  (89, 8900, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 24),
  -- Muk - Dig - TM28
  (89, 8900, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 25),
  -- Muk - Brick Break - TM31
  (89, 8900, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 26),
  -- Muk - Double Team - TM32
  (89, 8900, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 27),
  -- Muk - Shock Wave - TM34
  (89, 8900, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 28),
  -- Muk - Flamethrower - TM35
  (89, 8900, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 29),
  -- Muk - Sludge Bomb - TM36
  (89, 8900, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 30),
  -- Muk - Fire Blast - TM38
  (89, 8900, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 31),
  -- Muk - Rock Tomb - TM39
  (89, 8900, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 32),
  -- Muk - Torment - TM41
  (89, 8900, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 33),
  -- Muk - Facade - TM42
  (89, 8900, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 34),
  -- Muk - Secret Power - TM43
  (89, 8900, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 35),
  -- Muk - Rest - TM44
  (89, 8900, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 36),
  -- Muk - Attract - TM45
  (89, 8900, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 37),
  -- Muk - Thief - TM46
  (89, 8900, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 38),
  -- Muk - Strength - HM04
  (89, 8900, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 39),
  -- Muk - Rock Smash - HM06
  (89, 8900, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 40),
  -- Muk - Body Slam - Move Tutor
  (89, 8900, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Muk - Explosion - Move Tutor
  (89, 8900, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Muk - Mimic - Move Tutor
  (89, 8900, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Muk - Substitute - Move Tutor
  (89, 8900, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Shellder - Tackle - Level 1
  (90, 9000, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shellder - Withdraw - Level 1
  (90, 9000, 110, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shellder - Icicle Spear - Level 8
  (90, 9000, 333, 6, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Shellder - Supersonic - Level 15
  (90, 9000, 48, 6, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Shellder - Aurora Beam - Level 22
  (90, 9000, 62, 6, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Shellder - Protect - Level 29
  (90, 9000, 182, 6, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Shellder - Leer - Level 36
  (90, 9000, 43, 6, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Shellder - Clamp - Level 43
  (90, 9000, 128, 6, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Shellder - Ice Beam - Level 50
  (90, 9000, 58, 6, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Shellder - Water Pulse - TM03
  (90, 9000, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 10),
  -- Shellder - Toxic - TM06
  (90, 9000, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 11),
  -- Shellder - Hail - TM07
  (90, 9000, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 12),
  -- Shellder - Hidden Power - TM10
  (90, 9000, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Shellder - Ice Beam - TM13
  (90, 9000, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 14),
  -- Shellder - Blizzard - TM14
  (90, 9000, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 15),
  -- Shellder - Protect - TM17
  (90, 9000, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 16),
  -- Shellder - Rain Dance - TM18
  (90, 9000, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 17),
  -- Shellder - Frustration - TM21
  (90, 9000, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 18),
  -- Shellder - Return - TM27
  (90, 9000, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 19),
  -- Shellder - Double Team - TM32
  (90, 9000, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 20),
  -- Shellder - Facade - TM42
  (90, 9000, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 21),
  -- Shellder - Secret Power - TM43
  (90, 9000, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 22),
  -- Shellder - Rest - TM44
  (90, 9000, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 23),
  -- Shellder - Attract - TM45
  (90, 9000, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 24),
  -- Shellder - Surf - HM03
  (90, 9000, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 25),
  -- Shellder - Barrier - Egg Move
  (90, 9000, 112, 6, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Shellder - Bubble Beam - Egg Move
  (90, 9000, 61, 6, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Shellder - Icicle Spear - Egg Move
  (90, 9000, 333, 6, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Shellder - Rapid Spin - Egg Move
  (90, 9000, 229, 6, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Shellder - Screech - Egg Move
  (90, 9000, 103, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Shellder - Take Down - Egg Move
  (90, 9000, 36, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Shellder - Double-Edge - Move Tutor
  (90, 9000, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Shellder - Explosion - Move Tutor
  (90, 9000, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Shellder - Mimic - Move Tutor
  (90, 9000, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Shellder - Substitute - Move Tutor
  (90, 9000, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Cloyster - Withdraw - Level 1
  (91, 9100, 110, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cloyster - Supersonic - Level 1
  (91, 9100, 48, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cloyster - Aurora Beam - Level 1
  (91, 9100, 62, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cloyster - Protect - Level 1
  (91, 9100, 182, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cloyster - Spikes - Level 36
  (91, 9100, 191, 6, NULL, 1, 36, NULL, NULL, NULL, 5),
  -- Cloyster - Spike Cannon - Level 43
  (91, 9100, 131, 6, NULL, 1, 43, NULL, NULL, NULL, 6),
  -- Cloyster - Water Pulse - TM03
  (91, 9100, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 7),
  -- Cloyster - Toxic - TM06
  (91, 9100, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 8),
  -- Cloyster - Hail - TM07
  (91, 9100, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 9),
  -- Cloyster - Hidden Power - TM10
  (91, 9100, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 10),
  -- Cloyster - Ice Beam - TM13
  (91, 9100, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 11),
  -- Cloyster - Blizzard - TM14
  (91, 9100, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 12),
  -- Cloyster - Hyper Beam - TM15
  (91, 9100, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 13),
  -- Cloyster - Protect - TM17
  (91, 9100, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 14),
  -- Cloyster - Rain Dance - TM18
  (91, 9100, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 15),
  -- Cloyster - Frustration - TM21
  (91, 9100, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 16),
  -- Cloyster - Return - TM27
  (91, 9100, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 17),
  -- Cloyster - Double Team - TM32
  (91, 9100, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 18),
  -- Cloyster - Torment - TM41
  (91, 9100, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 19),
  -- Cloyster - Facade - TM42
  (91, 9100, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 20),
  -- Cloyster - Secret Power - TM43
  (91, 9100, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 21),
  -- Cloyster - Rest - TM44
  (91, 9100, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 22),
  -- Cloyster - Attract - TM45
  (91, 9100, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 23),
  -- Cloyster - Surf - HM03
  (91, 9100, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 24),
  -- Cloyster - Double-Edge - Move Tutor
  (91, 9100, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 25),
  -- Cloyster - Explosion - Move Tutor
  (91, 9100, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 26),
  -- Cloyster - Mimic - Move Tutor
  (91, 9100, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 27),
  -- Cloyster - Substitute - Move Tutor
  (91, 9100, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 28),
  -- Gastly - Hypnosis - Level 1
  (92, 9200, 95, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gastly - Lick - Level 1
  (92, 9200, 122, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gastly - Spite - Level 8
  (92, 9200, 180, 6, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Gastly - Mean Look - Level 48
  (92, 9200, 212, 6, NULL, 1, 48, NULL, NULL, NULL, 4),
  -- Gastly - Curse - Level 13
  (92, 9200, 174, 6, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Gastly - Night Shade - Level 16
  (92, 9200, 101, 6, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gastly - Confuse Ray - Level 21
  (92, 9200, 109, 6, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Gastly - Dream Eater - Level 28
  (92, 9200, 138, 6, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Gastly - Destiny Bond - Level 33
  (92, 9200, 194, 6, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Gastly - Shadow Ball - Level 36
  (92, 9200, 247, 6, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Gastly - Nightmare - Level 41
  (92, 9200, 171, 6, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Gastly - Toxic - TM06
  (92, 9200, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Gastly - Hidden Power - TM10
  (92, 9200, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Gastly - Sunny Day - TM11
  (92, 9200, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 14),
  -- Gastly - Taunt - TM12
  (92, 9200, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 15),
  -- Gastly - Protect - TM17
  (92, 9200, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 16),
  -- Gastly - Rain Dance - TM18
  (92, 9200, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 17),
  -- Gastly - Giga Drain - TM19
  (92, 9200, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 18),
  -- Gastly - Frustration - TM21
  (92, 9200, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 19),
  -- Gastly - Thunderbolt - TM24
  (92, 9200, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 20),
  -- Gastly - Return - TM27
  (92, 9200, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 21),
  -- Gastly - Psychic - TM29
  (92, 9200, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 22),
  -- Gastly - Shadow Ball - TM30
  (92, 9200, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 23),
  -- Gastly - Double Team - TM32
  (92, 9200, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 24),
  -- Gastly - Sludge Bomb - TM36
  (92, 9200, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 25),
  -- Gastly - Torment - TM41
  (92, 9200, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 26),
  -- Gastly - Facade - TM42
  (92, 9200, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 27),
  -- Gastly - Secret Power - TM43
  (92, 9200, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 28),
  -- Gastly - Rest - TM44
  (92, 9200, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 29),
  -- Gastly - Attract - TM45
  (92, 9200, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 30),
  -- Gastly - Thief - TM46
  (92, 9200, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 31),
  -- Gastly - Skill Swap - TM48
  (92, 9200, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 32),
  -- Gastly - Snatch - TM49
  (92, 9200, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 33),
  -- Gastly - Astonish - Egg Move
  (92, 9200, 310, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Gastly - Explosion - Egg Move
  (92, 9200, 153, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Gastly - Grudge - Egg Move
  (92, 9200, 288, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Gastly - Haze - Egg Move
  (92, 9200, 114, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Gastly - Perish Song - Egg Move
  (92, 9200, 195, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Gastly - Psywave - Egg Move
  (92, 9200, 149, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Gastly - Will-O-Wisp - Egg Move
  (92, 9200, 261, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Gastly - Dream Eater - Move Tutor
  (92, 9200, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Gastly - Explosion - Move Tutor
  (92, 9200, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Gastly - Mimic - Move Tutor
  (92, 9200, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Gastly - Substitute - Move Tutor
  (92, 9200, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Haunter - Hypnosis - Level 1
  (93, 9300, 95, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Haunter - Lick - Level 1
  (93, 9300, 122, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Haunter - Spite - Level 1
  (93, 9300, 180, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Haunter - Spite - Level 8
  (93, 9300, 180, 6, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Haunter - Mean Look - Level 64
  (93, 9300, 212, 6, NULL, 1, 64, NULL, NULL, NULL, 5),
  -- Haunter - Curse - Level 13
  (93, 9300, 174, 6, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Haunter - Night Shade - Level 16
  (93, 9300, 101, 6, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Haunter - Shadow Punch - Level 25
  (93, 9300, 325, 6, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Haunter - Confuse Ray - Level 21
  (93, 9300, 109, 6, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Haunter - Dream Eater - Level 31
  (93, 9300, 138, 6, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Haunter - Destiny Bond - Level 39
  (93, 9300, 194, 6, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Haunter - Shadow Ball - Level 45
  (93, 9300, 247, 6, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Haunter - Nightmare - Level 53
  (93, 9300, 171, 6, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Haunter - Toxic - TM06
  (93, 9300, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Haunter - Hidden Power - TM10
  (93, 9300, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Haunter - Sunny Day - TM11
  (93, 9300, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Haunter - Taunt - TM12
  (93, 9300, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 17),
  -- Haunter - Protect - TM17
  (93, 9300, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 18),
  -- Haunter - Rain Dance - TM18
  (93, 9300, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 19),
  -- Haunter - Giga Drain - TM19
  (93, 9300, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 20),
  -- Haunter - Frustration - TM21
  (93, 9300, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 21),
  -- Haunter - Thunderbolt - TM24
  (93, 9300, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 22),
  -- Haunter - Return - TM27
  (93, 9300, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 23),
  -- Haunter - Psychic - TM29
  (93, 9300, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 24),
  -- Haunter - Shadow Ball - TM30
  (93, 9300, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 25),
  -- Haunter - Double Team - TM32
  (93, 9300, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 26),
  -- Haunter - Sludge Bomb - TM36
  (93, 9300, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 27),
  -- Haunter - Torment - TM41
  (93, 9300, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 28),
  -- Haunter - Facade - TM42
  (93, 9300, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 29),
  -- Haunter - Secret Power - TM43
  (93, 9300, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 30),
  -- Haunter - Rest - TM44
  (93, 9300, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 31),
  -- Haunter - Attract - TM45
  (93, 9300, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 32),
  -- Haunter - Thief - TM46
  (93, 9300, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 33),
  -- Haunter - Skill Swap - TM48
  (93, 9300, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 34),
  -- Haunter - Snatch - TM49
  (93, 9300, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 35),
  -- Haunter - Dream Eater - Move Tutor
  (93, 9300, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Haunter - Explosion - Move Tutor
  (93, 9300, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Haunter - Mimic - Move Tutor
  (93, 9300, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Haunter - Substitute - Move Tutor
  (93, 9300, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Gengar - Hypnosis - Level 1
  (94, 9400, 95, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gengar - Lick - Level 1
  (94, 9400, 122, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gengar - Spite - Level 1
  (94, 9400, 180, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gengar - Spite - Level 8
  (94, 9400, 180, 6, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Gengar - Mean Look - Level 64
  (94, 9400, 212, 6, NULL, 1, 64, NULL, NULL, NULL, 5),
  -- Gengar - Curse - Level 13
  (94, 9400, 174, 6, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Gengar - Night Shade - Level 16
  (94, 9400, 101, 6, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Gengar - Shadow Punch - Level 25
  (94, 9400, 325, 6, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Gengar - Confuse Ray - Level 21
  (94, 9400, 109, 6, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Gengar - Dream Eater - Level 31
  (94, 9400, 138, 6, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Gengar - Destiny Bond - Level 39
  (94, 9400, 194, 6, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Gengar - Shadow Ball - Level 45
  (94, 9400, 247, 6, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Gengar - Nightmare - Level 53
  (94, 9400, 171, 6, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Gengar - Focus Punch - TM01
  (94, 9400, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 14),
  -- Gengar - Toxic - TM06
  (94, 9400, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Gengar - Hidden Power - TM10
  (94, 9400, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Gengar - Sunny Day - TM11
  (94, 9400, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 17),
  -- Gengar - Taunt - TM12
  (94, 9400, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 18),
  -- Gengar - Hyper Beam - TM15
  (94, 9400, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 19),
  -- Gengar - Protect - TM17
  (94, 9400, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 20),
  -- Gengar - Rain Dance - TM18
  (94, 9400, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 21),
  -- Gengar - Giga Drain - TM19
  (94, 9400, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 22),
  -- Gengar - Frustration - TM21
  (94, 9400, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 23),
  -- Gengar - Thunderbolt - TM24
  (94, 9400, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 24),
  -- Gengar - Thunder - TM25
  (94, 9400, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 25),
  -- Gengar - Return - TM27
  (94, 9400, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 26),
  -- Gengar - Psychic - TM29
  (94, 9400, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 27),
  -- Gengar - Shadow Ball - TM30
  (94, 9400, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 28),
  -- Gengar - Brick Break - TM31
  (94, 9400, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 29),
  -- Gengar - Double Team - TM32
  (94, 9400, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 30),
  -- Gengar - Sludge Bomb - TM36
  (94, 9400, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 31),
  -- Gengar - Torment - TM41
  (94, 9400, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 32),
  -- Gengar - Facade - TM42
  (94, 9400, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 33),
  -- Gengar - Secret Power - TM43
  (94, 9400, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 34),
  -- Gengar - Rest - TM44
  (94, 9400, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 35),
  -- Gengar - Attract - TM45
  (94, 9400, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 36),
  -- Gengar - Thief - TM46
  (94, 9400, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 37),
  -- Gengar - Skill Swap - TM48
  (94, 9400, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 38),
  -- Gengar - Snatch - TM49
  (94, 9400, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 39),
  -- Gengar - Strength - HM04
  (94, 9400, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 40),
  -- Gengar - Rock Smash - HM06
  (94, 9400, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 41),
  -- Gengar - Body Slam - Move Tutor
  (94, 9400, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Gengar - Counter - Move Tutor
  (94, 9400, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Gengar - Double-Edge - Move Tutor
  (94, 9400, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Gengar - Dream Eater - Move Tutor
  (94, 9400, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Gengar - Explosion - Move Tutor
  (94, 9400, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Gengar - Mega Kick - Move Tutor
  (94, 9400, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Gengar - Mega Punch - Move Tutor
  (94, 9400, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Gengar - Metronome - Move Tutor
  (94, 9400, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Gengar - Mimic - Move Tutor
  (94, 9400, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Gengar - Seismic Toss - Move Tutor
  (94, 9400, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Gengar - Substitute - Move Tutor
  (94, 9400, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Onix - Tackle - Level 1
  (95, 9500, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Onix - Screech - Level 1
  (95, 9500, 103, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Onix - Bind - Level 8
  (95, 9500, 20, 6, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Onix - Rock Throw - Level 12
  (95, 9500, 88, 6, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Onix - Harden - Level 19
  (95, 9500, 106, 6, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Onix - Rage - Level 23
  (95, 9500, 99, 6, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Onix - Dragon Breath - Level 30
  (95, 9500, 225, 6, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Onix - Sandstorm - Level 34
  (95, 9500, 201, 6, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Onix - Slam - Level 41
  (95, 9500, 21, 6, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Onix - Iron Tail - Level 45
  (95, 9500, 231, 6, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Onix - Sand Tomb - Level 52
  (95, 9500, 328, 6, NULL, 1, 52, NULL, NULL, NULL, 11),
  -- Onix - Double-Edge - Level 56
  (95, 9500, 38, 6, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Onix - Roar - TM05
  (95, 9500, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 13),
  -- Onix - Toxic - TM06
  (95, 9500, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Onix - Hidden Power - TM10
  (95, 9500, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Onix - Sunny Day - TM11
  (95, 9500, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Onix - Taunt - TM12
  (95, 9500, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 17),
  -- Onix - Protect - TM17
  (95, 9500, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 18),
  -- Onix - Frustration - TM21
  (95, 9500, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 19),
  -- Onix - Iron Tail - TM23
  (95, 9500, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 20),
  -- Onix - Earthquake - TM26
  (95, 9500, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 21),
  -- Onix - Return - TM27
  (95, 9500, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 22),
  -- Onix - Dig - TM28
  (95, 9500, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 23),
  -- Onix - Double Team - TM32
  (95, 9500, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 24),
  -- Onix - Sandstorm - TM37
  (95, 9500, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 25),
  -- Onix - Rock Tomb - TM39
  (95, 9500, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 26),
  -- Onix - Torment - TM41
  (95, 9500, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 27),
  -- Onix - Facade - TM42
  (95, 9500, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 28),
  -- Onix - Secret Power - TM43
  (95, 9500, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 29),
  -- Onix - Rest - TM44
  (95, 9500, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 30),
  -- Onix - Attract - TM45
  (95, 9500, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 31),
  -- Onix - Strength - HM04
  (95, 9500, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 32),
  -- Onix - Rock Smash - HM06
  (95, 9500, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 33),
  -- Onix - Block - Egg Move
  (95, 9500, 335, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Onix - Explosion - Egg Move
  (95, 9500, 153, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Onix - Flail - Egg Move
  (95, 9500, 175, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Onix - Rock Slide - Egg Move
  (95, 9500, 157, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Onix - Body Slam - Move Tutor
  (95, 9500, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Onix - Double-Edge - Move Tutor
  (95, 9500, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Onix - Explosion - Move Tutor
  (95, 9500, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Onix - Mimic - Move Tutor
  (95, 9500, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Onix - Rock Slide - Move Tutor
  (95, 9500, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Onix - Substitute - Move Tutor
  (95, 9500, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Drowzee - Pound - Level 1
  (96, 9600, 1, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drowzee - Hypnosis - Level 1
  (96, 9600, 95, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drowzee - Disable - Level 7
  (96, 9600, 50, 6, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Drowzee - Confusion - Level 11
  (96, 9600, 93, 6, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Drowzee - Headbutt - Level 17
  (96, 9600, 29, 6, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Drowzee - Poison Gas - Level 21
  (96, 9600, 139, 6, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Drowzee - Meditate - Level 27
  (96, 9600, 96, 6, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Drowzee - Psychic - Level 31
  (96, 9600, 94, 6, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Drowzee - Psych Up - Level 37
  (96, 9600, 244, 6, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Drowzee - Swagger - Level 41
  (96, 9600, 207, 6, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Drowzee - Future Sight - Level 47
  (96, 9600, 248, 6, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Drowzee - Focus Punch - TM01
  (96, 9600, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 12),
  -- Drowzee - Calm Mind - TM04
  (96, 9600, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 13),
  -- Drowzee - Toxic - TM06
  (96, 9600, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Drowzee - Hidden Power - TM10
  (96, 9600, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Drowzee - Sunny Day - TM11
  (96, 9600, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Drowzee - Taunt - TM12
  (96, 9600, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 17),
  -- Drowzee - Light Screen - TM16
  (96, 9600, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 18),
  -- Drowzee - Protect - TM17
  (96, 9600, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 19),
  -- Drowzee - Rain Dance - TM18
  (96, 9600, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 20),
  -- Drowzee - Safeguard - TM20
  (96, 9600, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 21),
  -- Drowzee - Frustration - TM21
  (96, 9600, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 22),
  -- Drowzee - Return - TM27
  (96, 9600, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 23),
  -- Drowzee - Psychic - TM29
  (96, 9600, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 24),
  -- Drowzee - Shadow Ball - TM30
  (96, 9600, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 25),
  -- Drowzee - Brick Break - TM31
  (96, 9600, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 26),
  -- Drowzee - Double Team - TM32
  (96, 9600, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 27),
  -- Drowzee - Reflect - TM33
  (96, 9600, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 28),
  -- Drowzee - Torment - TM41
  (96, 9600, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 29),
  -- Drowzee - Facade - TM42
  (96, 9600, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 30),
  -- Drowzee - Secret Power - TM43
  (96, 9600, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 31),
  -- Drowzee - Rest - TM44
  (96, 9600, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 32),
  -- Drowzee - Attract - TM45
  (96, 9600, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 33),
  -- Drowzee - Thief - TM46
  (96, 9600, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 34),
  -- Drowzee - Skill Swap - TM48
  (96, 9600, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 35),
  -- Drowzee - Snatch - TM49
  (96, 9600, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 36),
  -- Drowzee - Flash - HM05
  (96, 9600, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 37),
  -- Drowzee - Assist - Egg Move
  (96, 9600, 274, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Drowzee - Barrier - Egg Move
  (96, 9600, 112, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Drowzee - Fire Punch - Egg Move
  (96, 9600, 7, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Drowzee - Ice Punch - Egg Move
  (96, 9600, 8, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Drowzee - Role Play - Egg Move
  (96, 9600, 272, 6, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Drowzee - Thunder Punch - Egg Move
  (96, 9600, 9, 6, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Drowzee - Body Slam - Move Tutor
  (96, 9600, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Drowzee - Counter - Move Tutor
  (96, 9600, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Drowzee - Double-Edge - Move Tutor
  (96, 9600, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Drowzee - Dream Eater - Move Tutor
  (96, 9600, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Drowzee - Mega Kick - Move Tutor
  (96, 9600, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Drowzee - Mega Punch - Move Tutor
  (96, 9600, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Drowzee - Metronome - Move Tutor
  (96, 9600, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Drowzee - Mimic - Move Tutor
  (96, 9600, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Drowzee - Seismic Toss - Move Tutor
  (96, 9600, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Drowzee - Substitute - Move Tutor
  (96, 9600, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Drowzee - Thunder Wave - Move Tutor
  (96, 9600, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 54),
  -- Hypno - Nightmare - Level 1
  (97, 9700, 171, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hypno - Pound - Level 1
  (97, 9700, 1, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hypno - Hypnosis - Level 1
  (97, 9700, 95, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hypno - Disable - Level 1
  (97, 9700, 50, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hypno - Confusion - Level 1
  (97, 9700, 93, 6, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hypno - Disable - Level 7
  (97, 9700, 50, 6, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Hypno - Confusion - Level 11
  (97, 9700, 93, 6, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Hypno - Headbutt - Level 17
  (97, 9700, 29, 6, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Hypno - Poison Gas - Level 21
  (97, 9700, 139, 6, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Hypno - Meditate - Level 29
  (97, 9700, 96, 6, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Hypno - Psychic - Level 35
  (97, 9700, 94, 6, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Hypno - Psych Up - Level 43
  (97, 9700, 244, 6, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Hypno - Swagger - Level 49
  (97, 9700, 207, 6, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Hypno - Future Sight - Level 57
  (97, 9700, 248, 6, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Hypno - Focus Punch - TM01
  (97, 9700, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 15),
  -- Hypno - Calm Mind - TM04
  (97, 9700, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 16),
  -- Hypno - Toxic - TM06
  (97, 9700, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 17),
  -- Hypno - Hidden Power - TM10
  (97, 9700, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 18),
  -- Hypno - Sunny Day - TM11
  (97, 9700, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 19),
  -- Hypno - Taunt - TM12
  (97, 9700, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 20),
  -- Hypno - Hyper Beam - TM15
  (97, 9700, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 21),
  -- Hypno - Light Screen - TM16
  (97, 9700, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 22),
  -- Hypno - Protect - TM17
  (97, 9700, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 23),
  -- Hypno - Rain Dance - TM18
  (97, 9700, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 24),
  -- Hypno - Safeguard - TM20
  (97, 9700, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 25),
  -- Hypno - Frustration - TM21
  (97, 9700, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 26),
  -- Hypno - Return - TM27
  (97, 9700, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 27),
  -- Hypno - Psychic - TM29
  (97, 9700, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 28),
  -- Hypno - Shadow Ball - TM30
  (97, 9700, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 29),
  -- Hypno - Brick Break - TM31
  (97, 9700, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 30),
  -- Hypno - Double Team - TM32
  (97, 9700, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 31),
  -- Hypno - Reflect - TM33
  (97, 9700, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 32),
  -- Hypno - Torment - TM41
  (97, 9700, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 33),
  -- Hypno - Facade - TM42
  (97, 9700, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 34),
  -- Hypno - Secret Power - TM43
  (97, 9700, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 35),
  -- Hypno - Rest - TM44
  (97, 9700, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 36),
  -- Hypno - Attract - TM45
  (97, 9700, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 37),
  -- Hypno - Thief - TM46
  (97, 9700, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 38),
  -- Hypno - Skill Swap - TM48
  (97, 9700, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 39),
  -- Hypno - Snatch - TM49
  (97, 9700, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 40),
  -- Hypno - Flash - HM05
  (97, 9700, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 41),
  -- Hypno - Body Slam - Move Tutor
  (97, 9700, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Hypno - Counter - Move Tutor
  (97, 9700, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Hypno - Double-Edge - Move Tutor
  (97, 9700, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Hypno - Dream Eater - Move Tutor
  (97, 9700, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Hypno - Mega Kick - Move Tutor
  (97, 9700, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Hypno - Mega Punch - Move Tutor
  (97, 9700, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Hypno - Metronome - Move Tutor
  (97, 9700, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Hypno - Mimic - Move Tutor
  (97, 9700, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Hypno - Seismic Toss - Move Tutor
  (97, 9700, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Hypno - Substitute - Move Tutor
  (97, 9700, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Hypno - Thunder Wave - Move Tutor
  (97, 9700, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Krabby - Bubble - Level 1
  (98, 9800, 145, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krabby - Leer - Level 5
  (98, 9800, 43, 6, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Krabby - Vise Grip - Level 12
  (98, 9800, 11, 6, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Krabby - Harden - Level 16
  (98, 9800, 106, 6, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Krabby - Mud Shot - Level 23
  (98, 9800, 341, 6, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Krabby - Stomp - Level 27
  (98, 9800, 23, 6, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Krabby - Guillotine - Level 34
  (98, 9800, 12, 6, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Krabby - Protect - Level 38
  (98, 9800, 182, 6, NULL, 1, 38, NULL, NULL, NULL, 8),
  -- Krabby - Crabhammer - Level 45
  (98, 9800, 152, 6, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Krabby - Flail - Level 49
  (98, 9800, 175, 6, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Krabby - Water Pulse - TM03
  (98, 9800, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 11),
  -- Krabby - Toxic - TM06
  (98, 9800, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Krabby - Hail - TM07
  (98, 9800, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 13),
  -- Krabby - Hidden Power - TM10
  (98, 9800, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 14),
  -- Krabby - Ice Beam - TM13
  (98, 9800, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 15),
  -- Krabby - Blizzard - TM14
  (98, 9800, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 16),
  -- Krabby - Protect - TM17
  (98, 9800, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 17),
  -- Krabby - Rain Dance - TM18
  (98, 9800, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 18),
  -- Krabby - Frustration - TM21
  (98, 9800, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 19),
  -- Krabby - Return - TM27
  (98, 9800, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 20),
  -- Krabby - Dig - TM28
  (98, 9800, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 21),
  -- Krabby - Double Team - TM32
  (98, 9800, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 22),
  -- Krabby - Rock Tomb - TM39
  (98, 9800, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 23),
  -- Krabby - Facade - TM42
  (98, 9800, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 24),
  -- Krabby - Secret Power - TM43
  (98, 9800, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 25),
  -- Krabby - Rest - TM44
  (98, 9800, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 26),
  -- Krabby - Attract - TM45
  (98, 9800, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 27),
  -- Krabby - Thief - TM46
  (98, 9800, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 28),
  -- Krabby - Cut - HM01
  (98, 9800, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 29),
  -- Krabby - Surf - HM03
  (98, 9800, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 30),
  -- Krabby - Strength - HM04
  (98, 9800, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 31),
  -- Krabby - Rock Smash - HM06
  (98, 9800, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 32),
  -- Krabby - Amnesia - Egg Move
  (98, 9800, 133, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Krabby - Dig - Egg Move
  (98, 9800, 91, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Krabby - Flail - Egg Move
  (98, 9800, 175, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Krabby - Haze - Egg Move
  (98, 9800, 114, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Krabby - Knock Off - Egg Move
  (98, 9800, 282, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Krabby - Slam - Egg Move
  (98, 9800, 21, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Krabby - Swords Dance - Egg Move
  (98, 9800, 14, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Krabby - Body Slam - Move Tutor
  (98, 9800, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Krabby - Double-Edge - Move Tutor
  (98, 9800, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Krabby - Mimic - Move Tutor
  (98, 9800, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Krabby - Substitute - Move Tutor
  (98, 9800, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Krabby - Swords Dance - Move Tutor
  (98, 9800, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Kingler - Metal Claw - Level 1
  (99, 9900, 232, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kingler - Bubble - Level 1
  (99, 9900, 145, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kingler - Leer - Level 1
  (99, 9900, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kingler - Vise Grip - Level 1
  (99, 9900, 11, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kingler - Harden - Level 1
  (99, 9900, 106, 6, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kingler - Leer - Level 5
  (99, 9900, 43, 6, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Kingler - Vise Grip - Level 12
  (99, 9900, 11, 6, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Kingler - Harden - Level 16
  (99, 9900, 106, 6, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Kingler - Mud Shot - Level 23
  (99, 9900, 341, 6, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Kingler - Stomp - Level 27
  (99, 9900, 23, 6, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Kingler - Guillotine - Level 38
  (99, 9900, 12, 6, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Kingler - Protect - Level 42
  (99, 9900, 182, 6, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Kingler - Crabhammer - Level 57
  (99, 9900, 152, 6, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Kingler - Flail - Level 65
  (99, 9900, 175, 6, NULL, 1, 65, NULL, NULL, NULL, 14),
  -- Kingler - Water Pulse - TM03
  (99, 9900, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 15),
  -- Kingler - Toxic - TM06
  (99, 9900, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Kingler - Hail - TM07
  (99, 9900, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 17),
  -- Kingler - Hidden Power - TM10
  (99, 9900, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 18),
  -- Kingler - Ice Beam - TM13
  (99, 9900, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 19),
  -- Kingler - Blizzard - TM14
  (99, 9900, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 20),
  -- Kingler - Hyper Beam - TM15
  (99, 9900, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 21),
  -- Kingler - Protect - TM17
  (99, 9900, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 22),
  -- Kingler - Rain Dance - TM18
  (99, 9900, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 23),
  -- Kingler - Frustration - TM21
  (99, 9900, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 24),
  -- Kingler - Return - TM27
  (99, 9900, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 25),
  -- Kingler - Dig - TM28
  (99, 9900, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 26),
  -- Kingler - Double Team - TM32
  (99, 9900, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 27),
  -- Kingler - Rock Tomb - TM39
  (99, 9900, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 28),
  -- Kingler - Facade - TM42
  (99, 9900, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 29),
  -- Kingler - Secret Power - TM43
  (99, 9900, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 30),
  -- Kingler - Rest - TM44
  (99, 9900, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 31),
  -- Kingler - Attract - TM45
  (99, 9900, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 32),
  -- Kingler - Thief - TM46
  (99, 9900, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 33),
  -- Kingler - Cut - HM01
  (99, 9900, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 34),
  -- Kingler - Surf - HM03
  (99, 9900, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 35),
  -- Kingler - Strength - HM04
  (99, 9900, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 36),
  -- Kingler - Rock Smash - HM06
  (99, 9900, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 37),
  -- Kingler - Body Slam - Move Tutor
  (99, 9900, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Kingler - Double-Edge - Move Tutor
  (99, 9900, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Kingler - Mimic - Move Tutor
  (99, 9900, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Kingler - Substitute - Move Tutor
  (99, 9900, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Kingler - Swords Dance - Move Tutor
  (99, 9900, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Voltorb - Charge - Level 1
  (100, 10000, 268, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Voltorb - Tackle - Level 1
  (100, 10000, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Voltorb - Screech - Level 8
  (100, 10000, 103, 6, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Voltorb - Sonic Boom - Level 15
  (100, 10000, 49, 6, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Voltorb - Spark - Level 21
  (100, 10000, 209, 6, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Voltorb - Self-Destruct - Level 27
  (100, 10000, 120, 6, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Voltorb - Rollout - Level 32
  (100, 10000, 205, 6, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Voltorb - Light Screen - Level 37
  (100, 10000, 113, 6, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Voltorb - Swift - Level 42
  (100, 10000, 129, 6, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Voltorb - Explosion - Level 46
  (100, 10000, 153, 6, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Voltorb - Mirror Coat - Level 49
  (100, 10000, 243, 6, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Voltorb - Toxic - TM06
  (100, 10000, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Voltorb - Hidden Power - TM10
  (100, 10000, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Voltorb - Taunt - TM12
  (100, 10000, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 14),
  -- Voltorb - Light Screen - TM16
  (100, 10000, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 15),
  -- Voltorb - Protect - TM17
  (100, 10000, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 16),
  -- Voltorb - Rain Dance - TM18
  (100, 10000, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 17),
  -- Voltorb - Frustration - TM21
  (100, 10000, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 18),
  -- Voltorb - Thunderbolt - TM24
  (100, 10000, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 19),
  -- Voltorb - Thunder - TM25
  (100, 10000, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 20),
  -- Voltorb - Return - TM27
  (100, 10000, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 21),
  -- Voltorb - Double Team - TM32
  (100, 10000, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 22),
  -- Voltorb - Shock Wave - TM34
  (100, 10000, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 23),
  -- Voltorb - Torment - TM41
  (100, 10000, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 24),
  -- Voltorb - Facade - TM42
  (100, 10000, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 25),
  -- Voltorb - Secret Power - TM43
  (100, 10000, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 26),
  -- Voltorb - Rest - TM44
  (100, 10000, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 27),
  -- Voltorb - Thief - TM46
  (100, 10000, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 28),
  -- Voltorb - Flash - HM05
  (100, 10000, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 29),
  -- Voltorb - Explosion - Move Tutor
  (100, 10000, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 30),
  -- Voltorb - Mimic - Move Tutor
  (100, 10000, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 31),
  -- Voltorb - Substitute - Move Tutor
  (100, 10000, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Voltorb - Thunder Wave - Move Tutor
  (100, 10000, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33);
