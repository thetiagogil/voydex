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
-- Pokémon: #301-#386
-- Rows: 3685
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
  -- Delcatty - Growl - Level 1
  (301, 30100, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Delcatty - Attract - Level 1
  (301, 30100, 213, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Delcatty - Sing - Level 1
  (301, 30100, 47, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Delcatty - Double Slap - Level 1
  (301, 30100, 3, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Delcatty - Water Pulse - TM03
  (301, 30100, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 5),
  -- Delcatty - Calm Mind - TM04
  (301, 30100, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 6),
  -- Delcatty - Toxic - TM06
  (301, 30100, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 7),
  -- Delcatty - Hidden Power - TM10
  (301, 30100, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 8),
  -- Delcatty - Sunny Day - TM11
  (301, 30100, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 9),
  -- Delcatty - Ice Beam - TM13
  (301, 30100, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 10),
  -- Delcatty - Blizzard - TM14
  (301, 30100, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 11),
  -- Delcatty - Hyper Beam - TM15
  (301, 30100, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 12),
  -- Delcatty - Protect - TM17
  (301, 30100, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 13),
  -- Delcatty - Rain Dance - TM18
  (301, 30100, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 14),
  -- Delcatty - Safeguard - TM20
  (301, 30100, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 15),
  -- Delcatty - Frustration - TM21
  (301, 30100, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 16),
  -- Delcatty - Solar Beam - TM22
  (301, 30100, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 17),
  -- Delcatty - Iron Tail - TM23
  (301, 30100, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 18),
  -- Delcatty - Thunderbolt - TM24
  (301, 30100, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 19),
  -- Delcatty - Thunder - TM25
  (301, 30100, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 20),
  -- Delcatty - Return - TM27
  (301, 30100, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 21),
  -- Delcatty - Dig - TM28
  (301, 30100, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 22),
  -- Delcatty - Shadow Ball - TM30
  (301, 30100, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 23),
  -- Delcatty - Double Team - TM32
  (301, 30100, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 24),
  -- Delcatty - Shock Wave - TM34
  (301, 30100, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 25),
  -- Delcatty - Facade - TM42
  (301, 30100, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 26),
  -- Delcatty - Secret Power - TM43
  (301, 30100, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 27),
  -- Delcatty - Rest - TM44
  (301, 30100, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 28),
  -- Delcatty - Attract - TM45
  (301, 30100, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 29),
  -- Delcatty - Strength - HM04
  (301, 30100, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 30),
  -- Delcatty - Flash - HM05
  (301, 30100, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 31),
  -- Delcatty - Rock Smash - HM06
  (301, 30100, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 32),
  -- Delcatty - Body Slam - Move Tutor
  (301, 30100, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Delcatty - Double-Edge - Move Tutor
  (301, 30100, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Delcatty - Dream Eater - Move Tutor
  (301, 30100, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Delcatty - Mimic - Move Tutor
  (301, 30100, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Delcatty - Substitute - Move Tutor
  (301, 30100, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Delcatty - Thunder Wave - Move Tutor
  (301, 30100, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Sableye - Scratch - Level 1
  (302, 30200, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sableye - Leer - Level 1
  (302, 30200, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sableye - Foresight - Level 5
  (302, 30200, 193, 6, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Sableye - Night Shade - Level 9
  (302, 30200, 101, 6, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Sableye - Astonish - Level 13
  (302, 30200, 310, 6, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Sableye - Fury Swipes - Level 17
  (302, 30200, 154, 6, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Sableye - Fake Out - Level 21
  (302, 30200, 252, 6, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Sableye - Detect - Level 25
  (302, 30200, 197, 6, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Sableye - Feint Attack - Level 29
  (302, 30200, 185, 6, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Sableye - Knock Off - Level 33
  (302, 30200, 282, 6, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Sableye - Confuse Ray - Level 37
  (302, 30200, 109, 6, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Sableye - Shadow Ball - Level 41
  (302, 30200, 247, 6, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Sableye - Mean Look - Level 45
  (302, 30200, 212, 6, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Sableye - Focus Punch - TM01
  (302, 30200, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 14),
  -- Sableye - Water Pulse - TM03
  (302, 30200, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 15),
  -- Sableye - Calm Mind - TM04
  (302, 30200, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 16),
  -- Sableye - Toxic - TM06
  (302, 30200, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 17),
  -- Sableye - Hidden Power - TM10
  (302, 30200, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 18),
  -- Sableye - Sunny Day - TM11
  (302, 30200, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 19),
  -- Sableye - Taunt - TM12
  (302, 30200, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 20),
  -- Sableye - Protect - TM17
  (302, 30200, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 21),
  -- Sableye - Rain Dance - TM18
  (302, 30200, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 22),
  -- Sableye - Frustration - TM21
  (302, 30200, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 23),
  -- Sableye - Return - TM27
  (302, 30200, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 24),
  -- Sableye - Dig - TM28
  (302, 30200, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 25),
  -- Sableye - Psychic - TM29
  (302, 30200, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 26),
  -- Sableye - Shadow Ball - TM30
  (302, 30200, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 27),
  -- Sableye - Brick Break - TM31
  (302, 30200, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 28),
  -- Sableye - Double Team - TM32
  (302, 30200, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 29),
  -- Sableye - Shock Wave - TM34
  (302, 30200, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 30),
  -- Sableye - Rock Tomb - TM39
  (302, 30200, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 31),
  -- Sableye - Aerial Ace - TM40
  (302, 30200, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 32),
  -- Sableye - Torment - TM41
  (302, 30200, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 33),
  -- Sableye - Facade - TM42
  (302, 30200, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 34),
  -- Sableye - Secret Power - TM43
  (302, 30200, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 35),
  -- Sableye - Rest - TM44
  (302, 30200, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 36),
  -- Sableye - Attract - TM45
  (302, 30200, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 37),
  -- Sableye - Thief - TM46
  (302, 30200, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 38),
  -- Sableye - Snatch - TM49
  (302, 30200, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 39),
  -- Sableye - Cut - HM01
  (302, 30200, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 40),
  -- Sableye - Flash - HM05
  (302, 30200, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 41),
  -- Sableye - Rock Smash - HM06
  (302, 30200, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 42),
  -- Sableye - Moonlight - Egg Move
  (302, 30200, 236, 6, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Sableye - Psych Up - Egg Move
  (302, 30200, 244, 6, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Sableye - Recover - Egg Move
  (302, 30200, 105, 6, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Sableye - Body Slam - Move Tutor
  (302, 30200, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Sableye - Counter - Move Tutor
  (302, 30200, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Sableye - Double-Edge - Move Tutor
  (302, 30200, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Sableye - Dream Eater - Move Tutor
  (302, 30200, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Sableye - Mega Kick - Move Tutor
  (302, 30200, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Sableye - Mega Punch - Move Tutor
  (302, 30200, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Sableye - Metronome - Move Tutor
  (302, 30200, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Sableye - Mimic - Move Tutor
  (302, 30200, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Sableye - Seismic Toss - Move Tutor
  (302, 30200, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 54),
  -- Sableye - Substitute - Move Tutor
  (302, 30200, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 55),
  -- Mawile - Astonish - Level 1
  (303, 30300, 310, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mawile - Fake Tears - Level 6
  (303, 30300, 313, 6, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Mawile - Bite - Level 11
  (303, 30300, 44, 6, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Mawile - Sweet Scent - Level 16
  (303, 30300, 230, 6, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Mawile - Vise Grip - Level 21
  (303, 30300, 11, 6, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Mawile - Feint Attack - Level 26
  (303, 30300, 185, 6, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Mawile - Baton Pass - Level 31
  (303, 30300, 226, 6, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Mawile - Crunch - Level 36
  (303, 30300, 242, 6, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Mawile - Iron Defense - Level 41
  (303, 30300, 334, 6, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Mawile - Stockpile - Level 46
  (303, 30300, 254, 6, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Mawile - Swallow - Level 46
  (303, 30300, 256, 6, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Mawile - Spit Up - Level 46
  (303, 30300, 255, 6, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Mawile - Focus Punch - TM01
  (303, 30300, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 13),
  -- Mawile - Toxic - TM06
  (303, 30300, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Mawile - Hidden Power - TM10
  (303, 30300, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Mawile - Sunny Day - TM11
  (303, 30300, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Mawile - Taunt - TM12
  (303, 30300, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 17),
  -- Mawile - Ice Beam - TM13
  (303, 30300, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 18),
  -- Mawile - Hyper Beam - TM15
  (303, 30300, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 19),
  -- Mawile - Protect - TM17
  (303, 30300, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 20),
  -- Mawile - Rain Dance - TM18
  (303, 30300, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 21),
  -- Mawile - Frustration - TM21
  (303, 30300, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 22),
  -- Mawile - Solar Beam - TM22
  (303, 30300, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 23),
  -- Mawile - Return - TM27
  (303, 30300, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 24),
  -- Mawile - Brick Break - TM31
  (303, 30300, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 25),
  -- Mawile - Double Team - TM32
  (303, 30300, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 26),
  -- Mawile - Flamethrower - TM35
  (303, 30300, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 27),
  -- Mawile - Sludge Bomb - TM36
  (303, 30300, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 28),
  -- Mawile - Sandstorm - TM37
  (303, 30300, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 29),
  -- Mawile - Fire Blast - TM38
  (303, 30300, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 30),
  -- Mawile - Rock Tomb - TM39
  (303, 30300, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 31),
  -- Mawile - Torment - TM41
  (303, 30300, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 32),
  -- Mawile - Facade - TM42
  (303, 30300, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 33),
  -- Mawile - Secret Power - TM43
  (303, 30300, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 34),
  -- Mawile - Rest - TM44
  (303, 30300, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 35),
  -- Mawile - Attract - TM45
  (303, 30300, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 36),
  -- Mawile - Strength - HM04
  (303, 30300, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 37),
  -- Mawile - Rock Smash - HM06
  (303, 30300, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 38),
  -- Mawile - Ancient Power - Egg Move
  (303, 30300, 246, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Mawile - False Swipe - Egg Move
  (303, 30300, 206, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Mawile - Poison Fang - Egg Move
  (303, 30300, 305, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Mawile - Psych Up - Egg Move
  (303, 30300, 244, 6, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mawile - Swords Dance - Egg Move
  (303, 30300, 14, 6, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mawile - Tickle - Egg Move
  (303, 30300, 321, 6, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mawile - Body Slam - Move Tutor
  (303, 30300, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Mawile - Counter - Move Tutor
  (303, 30300, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Mawile - Double-Edge - Move Tutor
  (303, 30300, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Mawile - Mega Kick - Move Tutor
  (303, 30300, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Mawile - Mega Punch - Move Tutor
  (303, 30300, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Mawile - Mimic - Move Tutor
  (303, 30300, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Mawile - Rock Slide - Move Tutor
  (303, 30300, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Mawile - Seismic Toss - Move Tutor
  (303, 30300, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Mawile - Substitute - Move Tutor
  (303, 30300, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Mawile - Swords Dance - Move Tutor
  (303, 30300, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 54),
  -- Aron - Tackle - Level 1
  (304, 30400, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aron - Harden - Level 4
  (304, 30400, 106, 6, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Aron - Mud-Slap - Level 7
  (304, 30400, 189, 6, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Aron - Headbutt - Level 10
  (304, 30400, 29, 6, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Aron - Metal Claw - Level 13
  (304, 30400, 232, 6, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Aron - Iron Defense - Level 17
  (304, 30400, 334, 6, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Aron - Roar - Level 21
  (304, 30400, 46, 6, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Aron - Take Down - Level 25
  (304, 30400, 36, 6, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Aron - Iron Tail - Level 29
  (304, 30400, 231, 6, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Aron - Protect - Level 34
  (304, 30400, 182, 6, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Aron - Metal Sound - Level 39
  (304, 30400, 319, 6, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Aron - Double-Edge - Level 44
  (304, 30400, 38, 6, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Aron - Water Pulse - TM03
  (304, 30400, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 13),
  -- Aron - Roar - TM05
  (304, 30400, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 14),
  -- Aron - Toxic - TM06
  (304, 30400, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Aron - Hidden Power - TM10
  (304, 30400, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Aron - Sunny Day - TM11
  (304, 30400, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 17),
  -- Aron - Protect - TM17
  (304, 30400, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 18),
  -- Aron - Rain Dance - TM18
  (304, 30400, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 19),
  -- Aron - Frustration - TM21
  (304, 30400, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Aron - Iron Tail - TM23
  (304, 30400, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 21),
  -- Aron - Earthquake - TM26
  (304, 30400, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 22),
  -- Aron - Return - TM27
  (304, 30400, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 23),
  -- Aron - Dig - TM28
  (304, 30400, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 24),
  -- Aron - Double Team - TM32
  (304, 30400, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Aron - Shock Wave - TM34
  (304, 30400, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 26),
  -- Aron - Sandstorm - TM37
  (304, 30400, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 27),
  -- Aron - Rock Tomb - TM39
  (304, 30400, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 28),
  -- Aron - Aerial Ace - TM40
  (304, 30400, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 29),
  -- Aron - Facade - TM42
  (304, 30400, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 30),
  -- Aron - Secret Power - TM43
  (304, 30400, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 31),
  -- Aron - Rest - TM44
  (304, 30400, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 32),
  -- Aron - Attract - TM45
  (304, 30400, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 33),
  -- Aron - Cut - HM01
  (304, 30400, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 34),
  -- Aron - Strength - HM04
  (304, 30400, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 35),
  -- Aron - Rock Smash - HM06
  (304, 30400, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 36),
  -- Aron - Body Slam - Egg Move
  (304, 30400, 34, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Aron - Endeavor - Egg Move
  (304, 30400, 283, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Aron - Smelling Salts - Egg Move
  (304, 30400, 265, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Aron - Stomp - Egg Move
  (304, 30400, 23, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Aron - Body Slam - Move Tutor
  (304, 30400, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Aron - Double-Edge - Move Tutor
  (304, 30400, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Aron - Mimic - Move Tutor
  (304, 30400, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Aron - Rock Slide - Move Tutor
  (304, 30400, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Aron - Substitute - Move Tutor
  (304, 30400, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Lairon - Tackle - Level 1
  (305, 30500, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lairon - Harden - Level 1
  (305, 30500, 106, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lairon - Mud-Slap - Level 1
  (305, 30500, 189, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lairon - Headbutt - Level 1
  (305, 30500, 29, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lairon - Harden - Level 4
  (305, 30500, 106, 6, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Lairon - Mud-Slap - Level 7
  (305, 30500, 189, 6, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Lairon - Headbutt - Level 10
  (305, 30500, 29, 6, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Lairon - Metal Claw - Level 13
  (305, 30500, 232, 6, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Lairon - Iron Defense - Level 17
  (305, 30500, 334, 6, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Lairon - Roar - Level 21
  (305, 30500, 46, 6, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Lairon - Take Down - Level 25
  (305, 30500, 36, 6, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Lairon - Iron Tail - Level 29
  (305, 30500, 231, 6, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Lairon - Protect - Level 37
  (305, 30500, 182, 6, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Lairon - Metal Sound - Level 45
  (305, 30500, 319, 6, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Lairon - Double-Edge - Level 53
  (305, 30500, 38, 6, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Lairon - Water Pulse - TM03
  (305, 30500, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 16),
  -- Lairon - Roar - TM05
  (305, 30500, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 17),
  -- Lairon - Toxic - TM06
  (305, 30500, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 18),
  -- Lairon - Hidden Power - TM10
  (305, 30500, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 19),
  -- Lairon - Sunny Day - TM11
  (305, 30500, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 20),
  -- Lairon - Protect - TM17
  (305, 30500, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 21),
  -- Lairon - Rain Dance - TM18
  (305, 30500, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 22),
  -- Lairon - Frustration - TM21
  (305, 30500, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 23),
  -- Lairon - Iron Tail - TM23
  (305, 30500, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 24),
  -- Lairon - Earthquake - TM26
  (305, 30500, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 25),
  -- Lairon - Return - TM27
  (305, 30500, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 26),
  -- Lairon - Dig - TM28
  (305, 30500, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 27),
  -- Lairon - Double Team - TM32
  (305, 30500, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 28),
  -- Lairon - Shock Wave - TM34
  (305, 30500, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 29),
  -- Lairon - Sandstorm - TM37
  (305, 30500, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 30),
  -- Lairon - Rock Tomb - TM39
  (305, 30500, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 31),
  -- Lairon - Aerial Ace - TM40
  (305, 30500, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 32),
  -- Lairon - Facade - TM42
  (305, 30500, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 33),
  -- Lairon - Secret Power - TM43
  (305, 30500, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 34),
  -- Lairon - Rest - TM44
  (305, 30500, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 35),
  -- Lairon - Attract - TM45
  (305, 30500, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 36),
  -- Lairon - Cut - HM01
  (305, 30500, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 37),
  -- Lairon - Strength - HM04
  (305, 30500, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 38),
  -- Lairon - Rock Smash - HM06
  (305, 30500, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 39),
  -- Lairon - Body Slam - Move Tutor
  (305, 30500, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Lairon - Double-Edge - Move Tutor
  (305, 30500, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Lairon - Mimic - Move Tutor
  (305, 30500, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Lairon - Rock Slide - Move Tutor
  (305, 30500, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Lairon - Substitute - Move Tutor
  (305, 30500, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Aggron - Tackle - Level 1
  (306, 30600, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aggron - Harden - Level 1
  (306, 30600, 106, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aggron - Mud-Slap - Level 1
  (306, 30600, 189, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Aggron - Headbutt - Level 1
  (306, 30600, 29, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Aggron - Harden - Level 4
  (306, 30600, 106, 6, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Aggron - Mud-Slap - Level 7
  (306, 30600, 189, 6, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Aggron - Headbutt - Level 10
  (306, 30600, 29, 6, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Aggron - Metal Claw - Level 13
  (306, 30600, 232, 6, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Aggron - Iron Defense - Level 17
  (306, 30600, 334, 6, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Aggron - Roar - Level 21
  (306, 30600, 46, 6, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Aggron - Take Down - Level 25
  (306, 30600, 36, 6, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Aggron - Iron Tail - Level 29
  (306, 30600, 231, 6, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Aggron - Protect - Level 37
  (306, 30600, 182, 6, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Aggron - Metal Sound - Level 50
  (306, 30600, 319, 6, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Aggron - Double-Edge - Level 63
  (306, 30600, 38, 6, NULL, 1, 63, NULL, NULL, NULL, 15),
  -- Aggron - Focus Punch - TM01
  (306, 30600, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 16),
  -- Aggron - Dragon Claw - TM02
  (306, 30600, 337, 6, NULL, 2, NULL, NULL, 6002002, NULL, 17),
  -- Aggron - Water Pulse - TM03
  (306, 30600, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 18),
  -- Aggron - Roar - TM05
  (306, 30600, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 19),
  -- Aggron - Toxic - TM06
  (306, 30600, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 20),
  -- Aggron - Hidden Power - TM10
  (306, 30600, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 21),
  -- Aggron - Sunny Day - TM11
  (306, 30600, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 22),
  -- Aggron - Taunt - TM12
  (306, 30600, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 23),
  -- Aggron - Ice Beam - TM13
  (306, 30600, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 24),
  -- Aggron - Blizzard - TM14
  (306, 30600, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 25),
  -- Aggron - Hyper Beam - TM15
  (306, 30600, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 26),
  -- Aggron - Protect - TM17
  (306, 30600, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 27),
  -- Aggron - Rain Dance - TM18
  (306, 30600, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 28),
  -- Aggron - Frustration - TM21
  (306, 30600, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 29),
  -- Aggron - Solar Beam - TM22
  (306, 30600, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 30),
  -- Aggron - Iron Tail - TM23
  (306, 30600, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 31),
  -- Aggron - Thunderbolt - TM24
  (306, 30600, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 32),
  -- Aggron - Thunder - TM25
  (306, 30600, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 33),
  -- Aggron - Earthquake - TM26
  (306, 30600, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 34),
  -- Aggron - Return - TM27
  (306, 30600, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 35),
  -- Aggron - Dig - TM28
  (306, 30600, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 36),
  -- Aggron - Brick Break - TM31
  (306, 30600, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 37),
  -- Aggron - Double Team - TM32
  (306, 30600, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 38),
  -- Aggron - Shock Wave - TM34
  (306, 30600, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 39),
  -- Aggron - Flamethrower - TM35
  (306, 30600, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 40),
  -- Aggron - Sandstorm - TM37
  (306, 30600, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 41),
  -- Aggron - Fire Blast - TM38
  (306, 30600, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 42),
  -- Aggron - Rock Tomb - TM39
  (306, 30600, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 43),
  -- Aggron - Aerial Ace - TM40
  (306, 30600, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 44),
  -- Aggron - Facade - TM42
  (306, 30600, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 45),
  -- Aggron - Secret Power - TM43
  (306, 30600, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 46),
  -- Aggron - Rest - TM44
  (306, 30600, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 47),
  -- Aggron - Attract - TM45
  (306, 30600, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 48),
  -- Aggron - Cut - HM01
  (306, 30600, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 49),
  -- Aggron - Surf - HM03
  (306, 30600, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 50),
  -- Aggron - Strength - HM04
  (306, 30600, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 51),
  -- Aggron - Rock Smash - HM06
  (306, 30600, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 52),
  -- Aggron - Body Slam - Move Tutor
  (306, 30600, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Aggron - Counter - Move Tutor
  (306, 30600, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 54),
  -- Aggron - Double-Edge - Move Tutor
  (306, 30600, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 55),
  -- Aggron - Mega Kick - Move Tutor
  (306, 30600, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 56),
  -- Aggron - Mega Punch - Move Tutor
  (306, 30600, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 57),
  -- Aggron - Mimic - Move Tutor
  (306, 30600, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 58),
  -- Aggron - Rock Slide - Move Tutor
  (306, 30600, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 59),
  -- Aggron - Seismic Toss - Move Tutor
  (306, 30600, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 60),
  -- Aggron - Substitute - Move Tutor
  (306, 30600, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 61),
  -- Aggron - Thunder Wave - Move Tutor
  (306, 30600, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 62),
  -- Meditite - Bide - Level 1
  (307, 30700, 117, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meditite - Meditate - Level 4
  (307, 30700, 96, 6, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Meditite - Confusion - Level 9
  (307, 30700, 93, 6, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Meditite - Detect - Level 12
  (307, 30700, 197, 6, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Meditite - Hidden Power - Level 17
  (307, 30700, 237, 6, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Meditite - Swagger - Level 20
  (307, 30700, 207, 6, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Meditite - Mind Reader - Level 25
  (307, 30700, 170, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Meditite - Calm Mind - Level 28
  (307, 30700, 347, 6, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Meditite - High Jump Kick - Level 33
  (307, 30700, 136, 6, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Meditite - Psych Up - Level 36
  (307, 30700, 244, 6, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Meditite - Reversal - Level 41
  (307, 30700, 179, 6, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Meditite - Recover - Level 44
  (307, 30700, 105, 6, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Meditite - Focus Punch - TM01
  (307, 30700, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 13),
  -- Meditite - Calm Mind - TM04
  (307, 30700, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 14),
  -- Meditite - Toxic - TM06
  (307, 30700, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Meditite - Bulk Up - TM08
  (307, 30700, 339, 6, NULL, 2, NULL, NULL, 6002008, NULL, 16),
  -- Meditite - Hidden Power - TM10
  (307, 30700, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 17),
  -- Meditite - Sunny Day - TM11
  (307, 30700, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 18),
  -- Meditite - Light Screen - TM16
  (307, 30700, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 19),
  -- Meditite - Protect - TM17
  (307, 30700, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 20),
  -- Meditite - Rain Dance - TM18
  (307, 30700, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 21),
  -- Meditite - Frustration - TM21
  (307, 30700, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 22),
  -- Meditite - Return - TM27
  (307, 30700, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 23),
  -- Meditite - Psychic - TM29
  (307, 30700, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 24),
  -- Meditite - Shadow Ball - TM30
  (307, 30700, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 25),
  -- Meditite - Brick Break - TM31
  (307, 30700, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 26),
  -- Meditite - Double Team - TM32
  (307, 30700, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 27),
  -- Meditite - Reflect - TM33
  (307, 30700, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 28),
  -- Meditite - Rock Tomb - TM39
  (307, 30700, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 29),
  -- Meditite - Facade - TM42
  (307, 30700, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 30),
  -- Meditite - Secret Power - TM43
  (307, 30700, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 31),
  -- Meditite - Rest - TM44
  (307, 30700, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 32),
  -- Meditite - Attract - TM45
  (307, 30700, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 33),
  -- Meditite - Strength - HM04
  (307, 30700, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 34),
  -- Meditite - Flash - HM05
  (307, 30700, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 35),
  -- Meditite - Rock Smash - HM06
  (307, 30700, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 36),
  -- Meditite - Baton Pass - Egg Move
  (307, 30700, 226, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Meditite - Dynamic Punch - Egg Move
  (307, 30700, 223, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Meditite - Fake Out - Egg Move
  (307, 30700, 252, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Meditite - Fire Punch - Egg Move
  (307, 30700, 7, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Meditite - Foresight - Egg Move
  (307, 30700, 193, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Meditite - Ice Punch - Egg Move
  (307, 30700, 8, 6, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Meditite - Thunder Punch - Egg Move
  (307, 30700, 9, 6, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Meditite - Body Slam - Move Tutor
  (307, 30700, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Meditite - Counter - Move Tutor
  (307, 30700, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Meditite - Double-Edge - Move Tutor
  (307, 30700, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Meditite - Dream Eater - Move Tutor
  (307, 30700, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Meditite - Mega Kick - Move Tutor
  (307, 30700, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Meditite - Mega Punch - Move Tutor
  (307, 30700, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Meditite - Metronome - Move Tutor
  (307, 30700, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Meditite - Mimic - Move Tutor
  (307, 30700, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Meditite - Seismic Toss - Move Tutor
  (307, 30700, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Meditite - Substitute - Move Tutor
  (307, 30700, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Medicham - Fire Punch - Level 1
  (308, 30800, 7, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Medicham - Ice Punch - Level 1
  (308, 30800, 8, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Medicham - Thunder Punch - Level 1
  (308, 30800, 9, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Medicham - Bide - Level 1
  (308, 30800, 117, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Medicham - Meditate - Level 1
  (308, 30800, 96, 6, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Medicham - Confusion - Level 1
  (308, 30800, 93, 6, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Medicham - Detect - Level 1
  (308, 30800, 197, 6, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Medicham - Meditate - Level 4
  (308, 30800, 96, 6, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Medicham - Confusion - Level 9
  (308, 30800, 93, 6, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Medicham - Detect - Level 12
  (308, 30800, 197, 6, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Medicham - Hidden Power - Level 17
  (308, 30800, 237, 6, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Medicham - Swagger - Level 20
  (308, 30800, 207, 6, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Medicham - Mind Reader - Level 25
  (308, 30800, 170, 6, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Medicham - Calm Mind - Level 28
  (308, 30800, 347, 6, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Medicham - High Jump Kick - Level 33
  (308, 30800, 136, 6, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Medicham - Psych Up - Level 36
  (308, 30800, 244, 6, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Medicham - Reversal - Level 47
  (308, 30800, 179, 6, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Medicham - Recover - Level 56
  (308, 30800, 105, 6, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Medicham - Focus Punch - TM01
  (308, 30800, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 19),
  -- Medicham - Calm Mind - TM04
  (308, 30800, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 20),
  -- Medicham - Toxic - TM06
  (308, 30800, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 21),
  -- Medicham - Bulk Up - TM08
  (308, 30800, 339, 6, NULL, 2, NULL, NULL, 6002008, NULL, 22),
  -- Medicham - Hidden Power - TM10
  (308, 30800, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 23),
  -- Medicham - Sunny Day - TM11
  (308, 30800, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 24),
  -- Medicham - Hyper Beam - TM15
  (308, 30800, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 25),
  -- Medicham - Light Screen - TM16
  (308, 30800, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 26),
  -- Medicham - Protect - TM17
  (308, 30800, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 27),
  -- Medicham - Rain Dance - TM18
  (308, 30800, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 28),
  -- Medicham - Frustration - TM21
  (308, 30800, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 29),
  -- Medicham - Return - TM27
  (308, 30800, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 30),
  -- Medicham - Psychic - TM29
  (308, 30800, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 31),
  -- Medicham - Shadow Ball - TM30
  (308, 30800, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 32),
  -- Medicham - Brick Break - TM31
  (308, 30800, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 33),
  -- Medicham - Double Team - TM32
  (308, 30800, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 34),
  -- Medicham - Reflect - TM33
  (308, 30800, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 35),
  -- Medicham - Rock Tomb - TM39
  (308, 30800, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 36),
  -- Medicham - Facade - TM42
  (308, 30800, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 37),
  -- Medicham - Secret Power - TM43
  (308, 30800, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 38),
  -- Medicham - Rest - TM44
  (308, 30800, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 39),
  -- Medicham - Attract - TM45
  (308, 30800, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 40),
  -- Medicham - Strength - HM04
  (308, 30800, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 41),
  -- Medicham - Flash - HM05
  (308, 30800, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 42),
  -- Medicham - Rock Smash - HM06
  (308, 30800, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 43),
  -- Medicham - Body Slam - Move Tutor
  (308, 30800, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Medicham - Counter - Move Tutor
  (308, 30800, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Medicham - Double-Edge - Move Tutor
  (308, 30800, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Medicham - Dream Eater - Move Tutor
  (308, 30800, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Medicham - Mega Kick - Move Tutor
  (308, 30800, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Medicham - Mega Punch - Move Tutor
  (308, 30800, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Medicham - Metronome - Move Tutor
  (308, 30800, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Medicham - Mimic - Move Tutor
  (308, 30800, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Medicham - Rock Slide - Move Tutor
  (308, 30800, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Medicham - Seismic Toss - Move Tutor
  (308, 30800, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Medicham - Substitute - Move Tutor
  (308, 30800, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 54),
  -- Electrike - Tackle - Level 1
  (309, 30900, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electrike - Thunder Wave - Level 4
  (309, 30900, 86, 6, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Electrike - Leer - Level 9
  (309, 30900, 43, 6, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Electrike - Howl - Level 12
  (309, 30900, 336, 6, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Electrike - Quick Attack - Level 17
  (309, 30900, 98, 6, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Electrike - Spark - Level 20
  (309, 30900, 209, 6, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Electrike - Odor Sleuth - Level 25
  (309, 30900, 316, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Electrike - Roar - Level 28
  (309, 30900, 46, 6, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Electrike - Bite - Level 33
  (309, 30900, 44, 6, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Electrike - Thunder - Level 36
  (309, 30900, 87, 6, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Electrike - Charge - Level 41
  (309, 30900, 268, 6, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Electrike - Roar - TM05
  (309, 30900, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 12),
  -- Electrike - Toxic - TM06
  (309, 30900, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 13),
  -- Electrike - Hidden Power - TM10
  (309, 30900, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 14),
  -- Electrike - Protect - TM17
  (309, 30900, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Electrike - Rain Dance - TM18
  (309, 30900, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 16),
  -- Electrike - Frustration - TM21
  (309, 30900, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 17),
  -- Electrike - Iron Tail - TM23
  (309, 30900, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 18),
  -- Electrike - Thunderbolt - TM24
  (309, 30900, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 19),
  -- Electrike - Thunder - TM25
  (309, 30900, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 20),
  -- Electrike - Return - TM27
  (309, 30900, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 21),
  -- Electrike - Double Team - TM32
  (309, 30900, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 22),
  -- Electrike - Shock Wave - TM34
  (309, 30900, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 23),
  -- Electrike - Facade - TM42
  (309, 30900, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 24),
  -- Electrike - Secret Power - TM43
  (309, 30900, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 25),
  -- Electrike - Rest - TM44
  (309, 30900, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 26),
  -- Electrike - Attract - TM45
  (309, 30900, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 27),
  -- Electrike - Thief - TM46
  (309, 30900, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 28),
  -- Electrike - Strength - HM04
  (309, 30900, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 29),
  -- Electrike - Flash - HM05
  (309, 30900, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 30),
  -- Electrike - Crunch - Egg Move
  (309, 30900, 242, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Electrike - Curse - Egg Move
  (309, 30900, 174, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Electrike - Headbutt - Egg Move
  (309, 30900, 29, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Electrike - Swift - Egg Move
  (309, 30900, 129, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Electrike - Uproar - Egg Move
  (309, 30900, 253, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Electrike - Body Slam - Move Tutor
  (309, 30900, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Electrike - Double-Edge - Move Tutor
  (309, 30900, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Electrike - Mimic - Move Tutor
  (309, 30900, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Electrike - Substitute - Move Tutor
  (309, 30900, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Electrike - Thunder Wave - Move Tutor
  (309, 30900, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Manectric - Tackle - Level 1
  (310, 31000, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Manectric - Thunder Wave - Level 1
  (310, 31000, 86, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Manectric - Leer - Level 1
  (310, 31000, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Manectric - Howl - Level 1
  (310, 31000, 336, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Manectric - Thunder Wave - Level 4
  (310, 31000, 86, 6, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Manectric - Leer - Level 9
  (310, 31000, 43, 6, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Manectric - Howl - Level 12
  (310, 31000, 336, 6, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Manectric - Quick Attack - Level 17
  (310, 31000, 98, 6, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Manectric - Spark - Level 20
  (310, 31000, 209, 6, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Manectric - Odor Sleuth - Level 25
  (310, 31000, 316, 6, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Manectric - Roar - Level 31
  (310, 31000, 46, 6, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Manectric - Bite - Level 39
  (310, 31000, 44, 6, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Manectric - Thunder - Level 45
  (310, 31000, 87, 6, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Manectric - Charge - Level 53
  (310, 31000, 268, 6, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Manectric - Roar - TM05
  (310, 31000, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 15),
  -- Manectric - Toxic - TM06
  (310, 31000, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Manectric - Hidden Power - TM10
  (310, 31000, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 17),
  -- Manectric - Hyper Beam - TM15
  (310, 31000, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 18),
  -- Manectric - Protect - TM17
  (310, 31000, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 19),
  -- Manectric - Rain Dance - TM18
  (310, 31000, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 20),
  -- Manectric - Frustration - TM21
  (310, 31000, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 21),
  -- Manectric - Iron Tail - TM23
  (310, 31000, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 22),
  -- Manectric - Thunderbolt - TM24
  (310, 31000, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 23),
  -- Manectric - Thunder - TM25
  (310, 31000, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 24),
  -- Manectric - Return - TM27
  (310, 31000, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 25),
  -- Manectric - Double Team - TM32
  (310, 31000, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 26),
  -- Manectric - Shock Wave - TM34
  (310, 31000, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 27),
  -- Manectric - Facade - TM42
  (310, 31000, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 28),
  -- Manectric - Secret Power - TM43
  (310, 31000, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 29),
  -- Manectric - Rest - TM44
  (310, 31000, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 30),
  -- Manectric - Attract - TM45
  (310, 31000, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 31),
  -- Manectric - Thief - TM46
  (310, 31000, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 32),
  -- Manectric - Strength - HM04
  (310, 31000, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 33),
  -- Manectric - Flash - HM05
  (310, 31000, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 34),
  -- Manectric - Body Slam - Move Tutor
  (310, 31000, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Manectric - Double-Edge - Move Tutor
  (310, 31000, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Manectric - Mimic - Move Tutor
  (310, 31000, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Manectric - Substitute - Move Tutor
  (310, 31000, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Manectric - Thunder Wave - Move Tutor
  (310, 31000, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Plusle - Growl - Level 1
  (311, 31100, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Plusle - Thunder Wave - Level 4
  (311, 31100, 86, 6, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Plusle - Quick Attack - Level 10
  (311, 31100, 98, 6, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Plusle - Helping Hand - Level 13
  (311, 31100, 270, 6, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Plusle - Spark - Level 19
  (311, 31100, 209, 6, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Plusle - Encore - Level 22
  (311, 31100, 227, 6, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Plusle - Fake Tears - Level 28
  (311, 31100, 313, 6, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Plusle - Charge - Level 31
  (311, 31100, 268, 6, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Plusle - Thunder - Level 37
  (311, 31100, 87, 6, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Plusle - Baton Pass - Level 40
  (311, 31100, 226, 6, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Plusle - Agility - Level 47
  (311, 31100, 97, 6, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Plusle - Toxic - TM06
  (311, 31100, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Plusle - Hidden Power - TM10
  (311, 31100, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Plusle - Light Screen - TM16
  (311, 31100, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 14),
  -- Plusle - Protect - TM17
  (311, 31100, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Plusle - Rain Dance - TM18
  (311, 31100, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 16),
  -- Plusle - Frustration - TM21
  (311, 31100, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 17),
  -- Plusle - Iron Tail - TM23
  (311, 31100, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 18),
  -- Plusle - Thunderbolt - TM24
  (311, 31100, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 19),
  -- Plusle - Thunder - TM25
  (311, 31100, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 20),
  -- Plusle - Return - TM27
  (311, 31100, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 21),
  -- Plusle - Double Team - TM32
  (311, 31100, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 22),
  -- Plusle - Shock Wave - TM34
  (311, 31100, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 23),
  -- Plusle - Facade - TM42
  (311, 31100, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 24),
  -- Plusle - Secret Power - TM43
  (311, 31100, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 25),
  -- Plusle - Rest - TM44
  (311, 31100, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 26),
  -- Plusle - Attract - TM45
  (311, 31100, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 27),
  -- Plusle - Flash - HM05
  (311, 31100, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 28),
  -- Plusle - Substitute - Egg Move
  (311, 31100, 164, 6, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Plusle - Wish - Egg Move
  (311, 31100, 273, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Plusle - Body Slam - Move Tutor
  (311, 31100, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 31),
  -- Plusle - Counter - Move Tutor
  (311, 31100, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Plusle - Double-Edge - Move Tutor
  (311, 31100, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Plusle - Mega Kick - Move Tutor
  (311, 31100, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Plusle - Mega Punch - Move Tutor
  (311, 31100, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Plusle - Metronome - Move Tutor
  (311, 31100, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Plusle - Mimic - Move Tutor
  (311, 31100, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Plusle - Seismic Toss - Move Tutor
  (311, 31100, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Plusle - Substitute - Move Tutor
  (311, 31100, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Plusle - Thunder Wave - Move Tutor
  (311, 31100, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Minun - Growl - Level 1
  (312, 31200, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Minun - Thunder Wave - Level 4
  (312, 31200, 86, 6, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Minun - Quick Attack - Level 10
  (312, 31200, 98, 6, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Minun - Helping Hand - Level 13
  (312, 31200, 270, 6, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Minun - Spark - Level 19
  (312, 31200, 209, 6, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Minun - Encore - Level 22
  (312, 31200, 227, 6, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Minun - Charm - Level 28
  (312, 31200, 204, 6, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Minun - Charge - Level 31
  (312, 31200, 268, 6, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Minun - Thunder - Level 37
  (312, 31200, 87, 6, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Minun - Baton Pass - Level 40
  (312, 31200, 226, 6, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Minun - Agility - Level 47
  (312, 31200, 97, 6, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Minun - Toxic - TM06
  (312, 31200, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Minun - Hidden Power - TM10
  (312, 31200, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Minun - Light Screen - TM16
  (312, 31200, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 14),
  -- Minun - Protect - TM17
  (312, 31200, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Minun - Rain Dance - TM18
  (312, 31200, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 16),
  -- Minun - Frustration - TM21
  (312, 31200, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 17),
  -- Minun - Iron Tail - TM23
  (312, 31200, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 18),
  -- Minun - Thunderbolt - TM24
  (312, 31200, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 19),
  -- Minun - Thunder - TM25
  (312, 31200, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 20),
  -- Minun - Return - TM27
  (312, 31200, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 21),
  -- Minun - Double Team - TM32
  (312, 31200, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 22),
  -- Minun - Shock Wave - TM34
  (312, 31200, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 23),
  -- Minun - Facade - TM42
  (312, 31200, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 24),
  -- Minun - Secret Power - TM43
  (312, 31200, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 25),
  -- Minun - Rest - TM44
  (312, 31200, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 26),
  -- Minun - Attract - TM45
  (312, 31200, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 27),
  -- Minun - Flash - HM05
  (312, 31200, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 28),
  -- Minun - Substitute - Egg Move
  (312, 31200, 164, 6, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Minun - Wish - Egg Move
  (312, 31200, 273, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Minun - Body Slam - Move Tutor
  (312, 31200, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 31),
  -- Minun - Counter - Move Tutor
  (312, 31200, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Minun - Double-Edge - Move Tutor
  (312, 31200, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Minun - Mega Kick - Move Tutor
  (312, 31200, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Minun - Mega Punch - Move Tutor
  (312, 31200, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Minun - Metronome - Move Tutor
  (312, 31200, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Minun - Mimic - Move Tutor
  (312, 31200, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Minun - Seismic Toss - Move Tutor
  (312, 31200, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Minun - Substitute - Move Tutor
  (312, 31200, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Minun - Thunder Wave - Move Tutor
  (312, 31200, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Volbeat - Tackle - Level 1
  (313, 31300, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Volbeat - Confuse Ray - Level 5
  (313, 31300, 109, 6, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Volbeat - Double Team - Level 9
  (313, 31300, 104, 6, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Volbeat - Moonlight - Level 13
  (313, 31300, 236, 6, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Volbeat - Quick Attack - Level 17
  (313, 31300, 98, 6, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Volbeat - Tail Glow - Level 21
  (313, 31300, 294, 6, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Volbeat - Signal Beam - Level 25
  (313, 31300, 324, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Volbeat - Protect - Level 29
  (313, 31300, 182, 6, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Volbeat - Helping Hand - Level 33
  (313, 31300, 270, 6, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Volbeat - Double-Edge - Level 37
  (313, 31300, 38, 6, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Volbeat - Focus Punch - TM01
  (313, 31300, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 11),
  -- Volbeat - Water Pulse - TM03
  (313, 31300, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 12),
  -- Volbeat - Toxic - TM06
  (313, 31300, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 13),
  -- Volbeat - Hidden Power - TM10
  (313, 31300, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 14),
  -- Volbeat - Sunny Day - TM11
  (313, 31300, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 15),
  -- Volbeat - Light Screen - TM16
  (313, 31300, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 16),
  -- Volbeat - Protect - TM17
  (313, 31300, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 17),
  -- Volbeat - Rain Dance - TM18
  (313, 31300, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 18),
  -- Volbeat - Giga Drain - TM19
  (313, 31300, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 19),
  -- Volbeat - Frustration - TM21
  (313, 31300, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Volbeat - Solar Beam - TM22
  (313, 31300, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 21),
  -- Volbeat - Thunderbolt - TM24
  (313, 31300, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 22),
  -- Volbeat - Thunder - TM25
  (313, 31300, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 23),
  -- Volbeat - Return - TM27
  (313, 31300, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 24),
  -- Volbeat - Shadow Ball - TM30
  (313, 31300, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 25),
  -- Volbeat - Brick Break - TM31
  (313, 31300, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 26),
  -- Volbeat - Double Team - TM32
  (313, 31300, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 27),
  -- Volbeat - Shock Wave - TM34
  (313, 31300, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 28),
  -- Volbeat - Aerial Ace - TM40
  (313, 31300, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 29),
  -- Volbeat - Facade - TM42
  (313, 31300, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 30),
  -- Volbeat - Secret Power - TM43
  (313, 31300, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 31),
  -- Volbeat - Rest - TM44
  (313, 31300, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 32),
  -- Volbeat - Attract - TM45
  (313, 31300, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 33),
  -- Volbeat - Thief - TM46
  (313, 31300, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 34),
  -- Volbeat - Flash - HM05
  (313, 31300, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 35),
  -- Volbeat - Baton Pass - Egg Move
  (313, 31300, 226, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Volbeat - Silver Wind - Egg Move
  (313, 31300, 318, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Volbeat - Trick - Egg Move
  (313, 31300, 271, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Volbeat - Body Slam - Move Tutor
  (313, 31300, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Volbeat - Counter - Move Tutor
  (313, 31300, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Volbeat - Double-Edge - Move Tutor
  (313, 31300, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Volbeat - Mega Kick - Move Tutor
  (313, 31300, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Volbeat - Mega Punch - Move Tutor
  (313, 31300, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Volbeat - Metronome - Move Tutor
  (313, 31300, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Volbeat - Mimic - Move Tutor
  (313, 31300, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Volbeat - Seismic Toss - Move Tutor
  (313, 31300, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Volbeat - Substitute - Move Tutor
  (313, 31300, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Volbeat - Thunder Wave - Move Tutor
  (313, 31300, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Illumise - Tackle - Level 1
  (314, 31400, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Illumise - Sweet Scent - Level 5
  (314, 31400, 230, 6, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Illumise - Charm - Level 9
  (314, 31400, 204, 6, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Illumise - Moonlight - Level 13
  (314, 31400, 236, 6, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Illumise - Quick Attack - Level 17
  (314, 31400, 98, 6, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Illumise - Wish - Level 21
  (314, 31400, 273, 6, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Illumise - Encore - Level 25
  (314, 31400, 227, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Illumise - Flatter - Level 29
  (314, 31400, 260, 6, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Illumise - Helping Hand - Level 33
  (314, 31400, 270, 6, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Illumise - Covet - Level 37
  (314, 31400, 343, 6, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Illumise - Focus Punch - TM01
  (314, 31400, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 11),
  -- Illumise - Water Pulse - TM03
  (314, 31400, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 12),
  -- Illumise - Toxic - TM06
  (314, 31400, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 13),
  -- Illumise - Hidden Power - TM10
  (314, 31400, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 14),
  -- Illumise - Sunny Day - TM11
  (314, 31400, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 15),
  -- Illumise - Light Screen - TM16
  (314, 31400, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 16),
  -- Illumise - Protect - TM17
  (314, 31400, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 17),
  -- Illumise - Rain Dance - TM18
  (314, 31400, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 18),
  -- Illumise - Giga Drain - TM19
  (314, 31400, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 19),
  -- Illumise - Frustration - TM21
  (314, 31400, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Illumise - Solar Beam - TM22
  (314, 31400, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 21),
  -- Illumise - Thunderbolt - TM24
  (314, 31400, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 22),
  -- Illumise - Thunder - TM25
  (314, 31400, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 23),
  -- Illumise - Return - TM27
  (314, 31400, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 24),
  -- Illumise - Shadow Ball - TM30
  (314, 31400, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 25),
  -- Illumise - Brick Break - TM31
  (314, 31400, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 26),
  -- Illumise - Double Team - TM32
  (314, 31400, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 27),
  -- Illumise - Shock Wave - TM34
  (314, 31400, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 28),
  -- Illumise - Aerial Ace - TM40
  (314, 31400, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 29),
  -- Illumise - Facade - TM42
  (314, 31400, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 30),
  -- Illumise - Secret Power - TM43
  (314, 31400, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 31),
  -- Illumise - Rest - TM44
  (314, 31400, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 32),
  -- Illumise - Attract - TM45
  (314, 31400, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 33),
  -- Illumise - Thief - TM46
  (314, 31400, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 34),
  -- Illumise - Flash - HM05
  (314, 31400, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 35),
  -- Illumise - Baton Pass - Egg Move
  (314, 31400, 226, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Illumise - Growth - Egg Move
  (314, 31400, 74, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Illumise - Silver Wind - Egg Move
  (314, 31400, 318, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Illumise - Body Slam - Move Tutor
  (314, 31400, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Illumise - Counter - Move Tutor
  (314, 31400, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Illumise - Double-Edge - Move Tutor
  (314, 31400, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Illumise - Mega Kick - Move Tutor
  (314, 31400, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Illumise - Mega Punch - Move Tutor
  (314, 31400, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Illumise - Metronome - Move Tutor
  (314, 31400, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Illumise - Mimic - Move Tutor
  (314, 31400, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Illumise - Seismic Toss - Move Tutor
  (314, 31400, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Illumise - Substitute - Move Tutor
  (314, 31400, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Illumise - Thunder Wave - Move Tutor
  (314, 31400, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Roselia - Absorb - Level 1
  (315, 31500, 71, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Roselia - Growth - Level 5
  (315, 31500, 74, 6, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Roselia - Poison Sting - Level 9
  (315, 31500, 40, 6, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Roselia - Stun Spore - Level 13
  (315, 31500, 78, 6, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Roselia - Mega Drain - Level 17
  (315, 31500, 72, 6, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Roselia - Leech Seed - Level 21
  (315, 31500, 73, 6, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Roselia - Magical Leaf - Level 25
  (315, 31500, 345, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Roselia - Grass Whistle - Level 29
  (315, 31500, 320, 6, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Roselia - Giga Drain - Level 33
  (315, 31500, 202, 6, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Roselia - Sweet Scent - Level 37
  (315, 31500, 230, 6, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Roselia - Ingrain - Level 41
  (315, 31500, 275, 6, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Roselia - Toxic - Level 45
  (315, 31500, 92, 6, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Roselia - Petal Dance - Level 49
  (315, 31500, 80, 6, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Roselia - Aromatherapy - Level 53
  (315, 31500, 312, 6, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Roselia - Synthesis - Level 57
  (315, 31500, 235, 6, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Roselia - Toxic - TM06
  (315, 31500, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Roselia - Bullet Seed - TM09
  (315, 31500, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 17),
  -- Roselia - Hidden Power - TM10
  (315, 31500, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 18),
  -- Roselia - Sunny Day - TM11
  (315, 31500, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 19),
  -- Roselia - Protect - TM17
  (315, 31500, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 20),
  -- Roselia - Giga Drain - TM19
  (315, 31500, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 21),
  -- Roselia - Frustration - TM21
  (315, 31500, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 22),
  -- Roselia - Solar Beam - TM22
  (315, 31500, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 23),
  -- Roselia - Return - TM27
  (315, 31500, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 24),
  -- Roselia - Shadow Ball - TM30
  (315, 31500, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 25),
  -- Roselia - Double Team - TM32
  (315, 31500, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 26),
  -- Roselia - Sludge Bomb - TM36
  (315, 31500, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 27),
  -- Roselia - Facade - TM42
  (315, 31500, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 28),
  -- Roselia - Secret Power - TM43
  (315, 31500, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 29),
  -- Roselia - Rest - TM44
  (315, 31500, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 30),
  -- Roselia - Attract - TM45
  (315, 31500, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 31),
  -- Roselia - Cut - HM01
  (315, 31500, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 32),
  -- Roselia - Flash - HM05
  (315, 31500, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 33),
  -- Roselia - Cotton Spore - Egg Move
  (315, 31500, 178, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Roselia - Pin Missile - Egg Move
  (315, 31500, 42, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Roselia - Spikes - Egg Move
  (315, 31500, 191, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Roselia - Synthesis - Egg Move
  (315, 31500, 235, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Roselia - Body Slam - Move Tutor
  (315, 31500, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Roselia - Double-Edge - Move Tutor
  (315, 31500, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Roselia - Mimic - Move Tutor
  (315, 31500, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Roselia - Substitute - Move Tutor
  (315, 31500, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Roselia - Swords Dance - Move Tutor
  (315, 31500, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Gulpin - Pound - Level 1
  (316, 31600, 1, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gulpin - Yawn - Level 6
  (316, 31600, 281, 6, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Gulpin - Poison Gas - Level 9
  (316, 31600, 139, 6, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Gulpin - Sludge - Level 14
  (316, 31600, 124, 6, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Gulpin - Amnesia - Level 17
  (316, 31600, 133, 6, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Gulpin - Encore - Level 23
  (316, 31600, 227, 6, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Gulpin - Toxic - Level 28
  (316, 31600, 92, 6, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Gulpin - Stockpile - Level 34
  (316, 31600, 254, 6, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Gulpin - Spit Up - Level 34
  (316, 31600, 255, 6, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Gulpin - Swallow - Level 34
  (316, 31600, 256, 6, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Gulpin - Sludge Bomb - Level 39
  (316, 31600, 188, 6, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Gulpin - Water Pulse - TM03
  (316, 31600, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 12),
  -- Gulpin - Toxic - TM06
  (316, 31600, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 13),
  -- Gulpin - Bullet Seed - TM09
  (316, 31600, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 14),
  -- Gulpin - Hidden Power - TM10
  (316, 31600, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Gulpin - Sunny Day - TM11
  (316, 31600, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Gulpin - Ice Beam - TM13
  (316, 31600, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 17),
  -- Gulpin - Protect - TM17
  (316, 31600, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 18),
  -- Gulpin - Rain Dance - TM18
  (316, 31600, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 19),
  -- Gulpin - Giga Drain - TM19
  (316, 31600, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 20),
  -- Gulpin - Frustration - TM21
  (316, 31600, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 21),
  -- Gulpin - Solar Beam - TM22
  (316, 31600, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 22),
  -- Gulpin - Return - TM27
  (316, 31600, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 23),
  -- Gulpin - Shadow Ball - TM30
  (316, 31600, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 24),
  -- Gulpin - Double Team - TM32
  (316, 31600, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Gulpin - Shock Wave - TM34
  (316, 31600, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 26),
  -- Gulpin - Sludge Bomb - TM36
  (316, 31600, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 27),
  -- Gulpin - Facade - TM42
  (316, 31600, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 28),
  -- Gulpin - Secret Power - TM43
  (316, 31600, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 29),
  -- Gulpin - Rest - TM44
  (316, 31600, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 30),
  -- Gulpin - Attract - TM45
  (316, 31600, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 31),
  -- Gulpin - Snatch - TM49
  (316, 31600, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 32),
  -- Gulpin - Strength - HM04
  (316, 31600, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 33),
  -- Gulpin - Rock Smash - HM06
  (316, 31600, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 34),
  -- Gulpin - Acid Armor - Egg Move
  (316, 31600, 151, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Gulpin - Dream Eater - Egg Move
  (316, 31600, 138, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Gulpin - Pain Split - Egg Move
  (316, 31600, 220, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Gulpin - Smog - Egg Move
  (316, 31600, 123, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Gulpin - Body Slam - Move Tutor
  (316, 31600, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Gulpin - Counter - Move Tutor
  (316, 31600, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Gulpin - Double-Edge - Move Tutor
  (316, 31600, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Gulpin - Dream Eater - Move Tutor
  (316, 31600, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Gulpin - Explosion - Move Tutor
  (316, 31600, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Gulpin - Mimic - Move Tutor
  (316, 31600, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Gulpin - Substitute - Move Tutor
  (316, 31600, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Swalot - Pound - Level 1
  (317, 31700, 1, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swalot - Yawn - Level 1
  (317, 31700, 281, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swalot - Poison Gas - Level 1
  (317, 31700, 139, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swalot - Sludge - Level 1
  (317, 31700, 124, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swalot - Yawn - Level 6
  (317, 31700, 281, 6, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Swalot - Poison Gas - Level 9
  (317, 31700, 139, 6, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Swalot - Sludge - Level 14
  (317, 31700, 124, 6, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Swalot - Amnesia - Level 17
  (317, 31700, 133, 6, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Swalot - Encore - Level 23
  (317, 31700, 227, 6, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Swalot - Body Slam - Level 26
  (317, 31700, 34, 6, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Swalot - Toxic - Level 31
  (317, 31700, 92, 6, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Swalot - Stockpile - Level 40
  (317, 31700, 254, 6, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Swalot - Spit Up - Level 40
  (317, 31700, 255, 6, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Swalot - Swallow - Level 40
  (317, 31700, 256, 6, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Swalot - Sludge Bomb - Level 48
  (317, 31700, 188, 6, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Swalot - Water Pulse - TM03
  (317, 31700, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 16),
  -- Swalot - Toxic - TM06
  (317, 31700, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 17),
  -- Swalot - Bullet Seed - TM09
  (317, 31700, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 18),
  -- Swalot - Hidden Power - TM10
  (317, 31700, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 19),
  -- Swalot - Sunny Day - TM11
  (317, 31700, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 20),
  -- Swalot - Ice Beam - TM13
  (317, 31700, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 21),
  -- Swalot - Hyper Beam - TM15
  (317, 31700, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 22),
  -- Swalot - Protect - TM17
  (317, 31700, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 23),
  -- Swalot - Rain Dance - TM18
  (317, 31700, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 24),
  -- Swalot - Giga Drain - TM19
  (317, 31700, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 25),
  -- Swalot - Frustration - TM21
  (317, 31700, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 26),
  -- Swalot - Solar Beam - TM22
  (317, 31700, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 27),
  -- Swalot - Return - TM27
  (317, 31700, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 28),
  -- Swalot - Shadow Ball - TM30
  (317, 31700, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 29),
  -- Swalot - Double Team - TM32
  (317, 31700, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 30),
  -- Swalot - Shock Wave - TM34
  (317, 31700, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 31),
  -- Swalot - Sludge Bomb - TM36
  (317, 31700, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 32),
  -- Swalot - Facade - TM42
  (317, 31700, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 33),
  -- Swalot - Secret Power - TM43
  (317, 31700, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 34),
  -- Swalot - Rest - TM44
  (317, 31700, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 35),
  -- Swalot - Attract - TM45
  (317, 31700, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 36),
  -- Swalot - Snatch - TM49
  (317, 31700, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 37),
  -- Swalot - Strength - HM04
  (317, 31700, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 38),
  -- Swalot - Rock Smash - HM06
  (317, 31700, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 39),
  -- Swalot - Body Slam - Move Tutor
  (317, 31700, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Swalot - Counter - Move Tutor
  (317, 31700, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Swalot - Double-Edge - Move Tutor
  (317, 31700, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Swalot - Dream Eater - Move Tutor
  (317, 31700, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Swalot - Explosion - Move Tutor
  (317, 31700, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Swalot - Mimic - Move Tutor
  (317, 31700, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Swalot - Substitute - Move Tutor
  (317, 31700, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Carvanha - Bite - Level 1
  (318, 31800, 44, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carvanha - Leer - Level 1
  (318, 31800, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carvanha - Rage - Level 7
  (318, 31800, 99, 6, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Carvanha - Focus Energy - Level 13
  (318, 31800, 116, 6, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Carvanha - Scary Face - Level 16
  (318, 31800, 184, 6, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Carvanha - Crunch - Level 22
  (318, 31800, 242, 6, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Carvanha - Screech - Level 28
  (318, 31800, 103, 6, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Carvanha - Take Down - Level 31
  (318, 31800, 36, 6, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Carvanha - Swagger - Level 37
  (318, 31800, 207, 6, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Carvanha - Agility - Level 43
  (318, 31800, 97, 6, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Carvanha - Water Pulse - TM03
  (318, 31800, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 11),
  -- Carvanha - Toxic - TM06
  (318, 31800, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Carvanha - Hail - TM07
  (318, 31800, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 13),
  -- Carvanha - Hidden Power - TM10
  (318, 31800, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 14),
  -- Carvanha - Taunt - TM12
  (318, 31800, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 15),
  -- Carvanha - Ice Beam - TM13
  (318, 31800, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 16),
  -- Carvanha - Blizzard - TM14
  (318, 31800, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 17),
  -- Carvanha - Protect - TM17
  (318, 31800, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 18),
  -- Carvanha - Rain Dance - TM18
  (318, 31800, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 19),
  -- Carvanha - Frustration - TM21
  (318, 31800, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Carvanha - Return - TM27
  (318, 31800, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 21),
  -- Carvanha - Double Team - TM32
  (318, 31800, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 22),
  -- Carvanha - Torment - TM41
  (318, 31800, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 23),
  -- Carvanha - Facade - TM42
  (318, 31800, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 24),
  -- Carvanha - Secret Power - TM43
  (318, 31800, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 25),
  -- Carvanha - Rest - TM44
  (318, 31800, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 26),
  -- Carvanha - Attract - TM45
  (318, 31800, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 27),
  -- Carvanha - Thief - TM46
  (318, 31800, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 28),
  -- Carvanha - Surf - HM03
  (318, 31800, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 29),
  -- Carvanha - Waterfall - HM07
  (318, 31800, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 30),
  -- Carvanha - Double-Edge - Egg Move
  (318, 31800, 38, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Carvanha - Hydro Pump - Egg Move
  (318, 31800, 56, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Carvanha - Thrash - Egg Move
  (318, 31800, 37, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Carvanha - Double-Edge - Move Tutor
  (318, 31800, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Carvanha - Mimic - Move Tutor
  (318, 31800, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Carvanha - Substitute - Move Tutor
  (318, 31800, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Sharpedo - Bite - Level 1
  (319, 31900, 44, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sharpedo - Leer - Level 1
  (319, 31900, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sharpedo - Rage - Level 1
  (319, 31900, 99, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sharpedo - Focus Energy - Level 1
  (319, 31900, 116, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sharpedo - Rage - Level 7
  (319, 31900, 99, 6, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Sharpedo - Focus Energy - Level 13
  (319, 31900, 116, 6, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Sharpedo - Scary Face - Level 16
  (319, 31900, 184, 6, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Sharpedo - Crunch - Level 22
  (319, 31900, 242, 6, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Sharpedo - Screech - Level 28
  (319, 31900, 103, 6, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Sharpedo - Slash - Level 33
  (319, 31900, 163, 6, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Sharpedo - Taunt - Level 38
  (319, 31900, 269, 6, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Sharpedo - Swagger - Level 43
  (319, 31900, 207, 6, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Sharpedo - Skull Bash - Level 48
  (319, 31900, 130, 6, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Sharpedo - Agility - Level 53
  (319, 31900, 97, 6, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Sharpedo - Water Pulse - TM03
  (319, 31900, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 15),
  -- Sharpedo - Roar - TM05
  (319, 31900, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 16),
  -- Sharpedo - Toxic - TM06
  (319, 31900, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 17),
  -- Sharpedo - Hail - TM07
  (319, 31900, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 18),
  -- Sharpedo - Hidden Power - TM10
  (319, 31900, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 19),
  -- Sharpedo - Taunt - TM12
  (319, 31900, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 20),
  -- Sharpedo - Ice Beam - TM13
  (319, 31900, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 21),
  -- Sharpedo - Blizzard - TM14
  (319, 31900, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 22),
  -- Sharpedo - Hyper Beam - TM15
  (319, 31900, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 23),
  -- Sharpedo - Protect - TM17
  (319, 31900, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 24),
  -- Sharpedo - Rain Dance - TM18
  (319, 31900, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 25),
  -- Sharpedo - Frustration - TM21
  (319, 31900, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 26),
  -- Sharpedo - Earthquake - TM26
  (319, 31900, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 27),
  -- Sharpedo - Return - TM27
  (319, 31900, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 28),
  -- Sharpedo - Double Team - TM32
  (319, 31900, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 29),
  -- Sharpedo - Rock Tomb - TM39
  (319, 31900, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 30),
  -- Sharpedo - Torment - TM41
  (319, 31900, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 31),
  -- Sharpedo - Facade - TM42
  (319, 31900, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 32),
  -- Sharpedo - Secret Power - TM43
  (319, 31900, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 33),
  -- Sharpedo - Rest - TM44
  (319, 31900, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 34),
  -- Sharpedo - Attract - TM45
  (319, 31900, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 35),
  -- Sharpedo - Thief - TM46
  (319, 31900, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 36),
  -- Sharpedo - Surf - HM03
  (319, 31900, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 37),
  -- Sharpedo - Strength - HM04
  (319, 31900, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 38),
  -- Sharpedo - Rock Smash - HM06
  (319, 31900, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 39),
  -- Sharpedo - Waterfall - HM07
  (319, 31900, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 40),
  -- Sharpedo - Double-Edge - Move Tutor
  (319, 31900, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Sharpedo - Mimic - Move Tutor
  (319, 31900, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Sharpedo - Substitute - Move Tutor
  (319, 31900, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Wailmer - Splash - Level 1
  (320, 32000, 150, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wailmer - Growl - Level 5
  (320, 32000, 45, 6, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Wailmer - Water Gun - Level 10
  (320, 32000, 55, 6, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Wailmer - Rollout - Level 14
  (320, 32000, 205, 6, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Wailmer - Whirlpool - Level 19
  (320, 32000, 250, 6, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Wailmer - Astonish - Level 23
  (320, 32000, 310, 6, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Wailmer - Water Pulse - Level 28
  (320, 32000, 352, 6, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Wailmer - Mist - Level 32
  (320, 32000, 54, 6, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Wailmer - Rest - Level 37
  (320, 32000, 156, 6, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Wailmer - Water Spout - Level 41
  (320, 32000, 323, 6, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Wailmer - Amnesia - Level 46
  (320, 32000, 133, 6, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Wailmer - Hydro Pump - Level 50
  (320, 32000, 56, 6, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Wailmer - Water Pulse - TM03
  (320, 32000, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 13),
  -- Wailmer - Roar - TM05
  (320, 32000, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 14),
  -- Wailmer - Toxic - TM06
  (320, 32000, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Wailmer - Hail - TM07
  (320, 32000, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 16),
  -- Wailmer - Hidden Power - TM10
  (320, 32000, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 17),
  -- Wailmer - Ice Beam - TM13
  (320, 32000, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 18),
  -- Wailmer - Blizzard - TM14
  (320, 32000, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 19),
  -- Wailmer - Protect - TM17
  (320, 32000, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 20),
  -- Wailmer - Rain Dance - TM18
  (320, 32000, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 21),
  -- Wailmer - Frustration - TM21
  (320, 32000, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 22),
  -- Wailmer - Earthquake - TM26
  (320, 32000, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 23),
  -- Wailmer - Return - TM27
  (320, 32000, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 24),
  -- Wailmer - Double Team - TM32
  (320, 32000, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Wailmer - Rock Tomb - TM39
  (320, 32000, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 26),
  -- Wailmer - Facade - TM42
  (320, 32000, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 27),
  -- Wailmer - Secret Power - TM43
  (320, 32000, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 28),
  -- Wailmer - Rest - TM44
  (320, 32000, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 29),
  -- Wailmer - Attract - TM45
  (320, 32000, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 30),
  -- Wailmer - Surf - HM03
  (320, 32000, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 31),
  -- Wailmer - Strength - HM04
  (320, 32000, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 32),
  -- Wailmer - Rock Smash - HM06
  (320, 32000, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 33),
  -- Wailmer - Waterfall - HM07
  (320, 32000, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 34),
  -- Wailmer - Curse - Egg Move
  (320, 32000, 174, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Wailmer - Double-Edge - Egg Move
  (320, 32000, 38, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Wailmer - Fissure - Egg Move
  (320, 32000, 90, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Wailmer - Sleep Talk - Egg Move
  (320, 32000, 214, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Wailmer - Snore - Egg Move
  (320, 32000, 173, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Wailmer - Swagger - Egg Move
  (320, 32000, 207, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Wailmer - Thrash - Egg Move
  (320, 32000, 37, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Wailmer - Tickle - Egg Move
  (320, 32000, 321, 6, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Wailmer - Body Slam - Move Tutor
  (320, 32000, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Wailmer - Double-Edge - Move Tutor
  (320, 32000, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Wailmer - Mimic - Move Tutor
  (320, 32000, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Wailmer - Substitute - Move Tutor
  (320, 32000, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Wailord - Splash - Level 1
  (321, 32100, 150, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wailord - Growl - Level 1
  (321, 32100, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wailord - Water Gun - Level 1
  (321, 32100, 55, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wailord - Rollout - Level 1
  (321, 32100, 205, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wailord - Growl - Level 5
  (321, 32100, 45, 6, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Wailord - Water Gun - Level 10
  (321, 32100, 55, 6, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Wailord - Rollout - Level 14
  (321, 32100, 205, 6, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Wailord - Whirlpool - Level 19
  (321, 32100, 250, 6, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Wailord - Astonish - Level 23
  (321, 32100, 310, 6, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Wailord - Water Pulse - Level 28
  (321, 32100, 352, 6, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Wailord - Mist - Level 32
  (321, 32100, 54, 6, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Wailord - Rest - Level 37
  (321, 32100, 156, 6, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Wailord - Water Spout - Level 44
  (321, 32100, 323, 6, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Wailord - Amnesia - Level 52
  (321, 32100, 133, 6, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Wailord - Hydro Pump - Level 59
  (321, 32100, 56, 6, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Wailord - Water Pulse - TM03
  (321, 32100, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 16),
  -- Wailord - Roar - TM05
  (321, 32100, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 17),
  -- Wailord - Toxic - TM06
  (321, 32100, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 18),
  -- Wailord - Hail - TM07
  (321, 32100, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 19),
  -- Wailord - Hidden Power - TM10
  (321, 32100, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 20),
  -- Wailord - Ice Beam - TM13
  (321, 32100, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 21),
  -- Wailord - Blizzard - TM14
  (321, 32100, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 22),
  -- Wailord - Hyper Beam - TM15
  (321, 32100, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 23),
  -- Wailord - Protect - TM17
  (321, 32100, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 24),
  -- Wailord - Rain Dance - TM18
  (321, 32100, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 25),
  -- Wailord - Frustration - TM21
  (321, 32100, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 26),
  -- Wailord - Earthquake - TM26
  (321, 32100, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 27),
  -- Wailord - Return - TM27
  (321, 32100, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 28),
  -- Wailord - Double Team - TM32
  (321, 32100, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 29),
  -- Wailord - Rock Tomb - TM39
  (321, 32100, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 30),
  -- Wailord - Facade - TM42
  (321, 32100, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 31),
  -- Wailord - Secret Power - TM43
  (321, 32100, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 32),
  -- Wailord - Rest - TM44
  (321, 32100, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 33),
  -- Wailord - Attract - TM45
  (321, 32100, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 34),
  -- Wailord - Surf - HM03
  (321, 32100, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 35),
  -- Wailord - Strength - HM04
  (321, 32100, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 36),
  -- Wailord - Rock Smash - HM06
  (321, 32100, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 37),
  -- Wailord - Waterfall - HM07
  (321, 32100, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 38),
  -- Wailord - Body Slam - Move Tutor
  (321, 32100, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Wailord - Double-Edge - Move Tutor
  (321, 32100, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Wailord - Mimic - Move Tutor
  (321, 32100, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Wailord - Substitute - Move Tutor
  (321, 32100, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Numel - Growl - Level 1
  (322, 32200, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Numel - Tackle - Level 1
  (322, 32200, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Numel - Ember - Level 11
  (322, 32200, 52, 6, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Numel - Magnitude - Level 19
  (322, 32200, 222, 6, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Numel - Focus Energy - Level 25
  (322, 32200, 116, 6, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Numel - Take Down - Level 29
  (322, 32200, 36, 6, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Numel - Amnesia - Level 31
  (322, 32200, 133, 6, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Numel - Earthquake - Level 35
  (322, 32200, 89, 6, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Numel - Flamethrower - Level 41
  (322, 32200, 53, 6, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Numel - Double-Edge - Level 49
  (322, 32200, 38, 6, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Numel - Toxic - TM06
  (322, 32200, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 11),
  -- Numel - Hidden Power - TM10
  (322, 32200, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 12),
  -- Numel - Sunny Day - TM11
  (322, 32200, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 13),
  -- Numel - Protect - TM17
  (322, 32200, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 14),
  -- Numel - Frustration - TM21
  (322, 32200, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 15),
  -- Numel - Earthquake - TM26
  (322, 32200, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 16),
  -- Numel - Return - TM27
  (322, 32200, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 17),
  -- Numel - Dig - TM28
  (322, 32200, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 18),
  -- Numel - Double Team - TM32
  (322, 32200, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 19),
  -- Numel - Flamethrower - TM35
  (322, 32200, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 20),
  -- Numel - Sandstorm - TM37
  (322, 32200, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 21),
  -- Numel - Fire Blast - TM38
  (322, 32200, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 22),
  -- Numel - Rock Tomb - TM39
  (322, 32200, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 23),
  -- Numel - Facade - TM42
  (322, 32200, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 24),
  -- Numel - Secret Power - TM43
  (322, 32200, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 25),
  -- Numel - Rest - TM44
  (322, 32200, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 26),
  -- Numel - Attract - TM45
  (322, 32200, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 27),
  -- Numel - Overheat - TM50
  (322, 32200, 315, 6, NULL, 2, NULL, NULL, 6002050, NULL, 28),
  -- Numel - Strength - HM04
  (322, 32200, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 29),
  -- Numel - Rock Smash - HM06
  (322, 32200, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 30),
  -- Numel - Body Slam - Egg Move
  (322, 32200, 34, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Numel - Defense Curl - Egg Move
  (322, 32200, 111, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Numel - Howl - Egg Move
  (322, 32200, 336, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Numel - Rollout - Egg Move
  (322, 32200, 205, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Numel - Scary Face - Egg Move
  (322, 32200, 184, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Numel - Stomp - Egg Move
  (322, 32200, 23, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Numel - Body Slam - Move Tutor
  (322, 32200, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Numel - Double-Edge - Move Tutor
  (322, 32200, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Numel - Mimic - Move Tutor
  (322, 32200, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Numel - Rock Slide - Move Tutor
  (322, 32200, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Numel - Substitute - Move Tutor
  (322, 32200, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Camerupt - Growl - Level 1
  (323, 32300, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Camerupt - Tackle - Level 1
  (323, 32300, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Camerupt - Ember - Level 1
  (323, 32300, 52, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Camerupt - Magnitude - Level 1
  (323, 32300, 222, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Camerupt - Ember - Level 11
  (323, 32300, 52, 6, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Camerupt - Magnitude - Level 19
  (323, 32300, 222, 6, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Camerupt - Focus Energy - Level 25
  (323, 32300, 116, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Camerupt - Take Down - Level 29
  (323, 32300, 36, 6, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Camerupt - Amnesia - Level 31
  (323, 32300, 133, 6, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Camerupt - Rock Slide - Level 33
  (323, 32300, 157, 6, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Camerupt - Earthquake - Level 37
  (323, 32300, 89, 6, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Camerupt - Eruption - Level 45
  (323, 32300, 284, 6, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Camerupt - Fissure - Level 55
  (323, 32300, 90, 6, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Camerupt - Roar - TM05
  (323, 32300, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 14),
  -- Camerupt - Toxic - TM06
  (323, 32300, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Camerupt - Hidden Power - TM10
  (323, 32300, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Camerupt - Sunny Day - TM11
  (323, 32300, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 17),
  -- Camerupt - Hyper Beam - TM15
  (323, 32300, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 18),
  -- Camerupt - Protect - TM17
  (323, 32300, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 19),
  -- Camerupt - Frustration - TM21
  (323, 32300, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Camerupt - Earthquake - TM26
  (323, 32300, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 21),
  -- Camerupt - Return - TM27
  (323, 32300, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 22),
  -- Camerupt - Dig - TM28
  (323, 32300, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 23),
  -- Camerupt - Double Team - TM32
  (323, 32300, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 24),
  -- Camerupt - Flamethrower - TM35
  (323, 32300, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 25),
  -- Camerupt - Sandstorm - TM37
  (323, 32300, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 26),
  -- Camerupt - Fire Blast - TM38
  (323, 32300, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 27),
  -- Camerupt - Rock Tomb - TM39
  (323, 32300, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 28),
  -- Camerupt - Facade - TM42
  (323, 32300, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 29),
  -- Camerupt - Secret Power - TM43
  (323, 32300, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 30),
  -- Camerupt - Rest - TM44
  (323, 32300, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 31),
  -- Camerupt - Attract - TM45
  (323, 32300, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 32),
  -- Camerupt - Overheat - TM50
  (323, 32300, 315, 6, NULL, 2, NULL, NULL, 6002050, NULL, 33),
  -- Camerupt - Strength - HM04
  (323, 32300, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 34),
  -- Camerupt - Rock Smash - HM06
  (323, 32300, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 35),
  -- Camerupt - Body Slam - Move Tutor
  (323, 32300, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Camerupt - Double-Edge - Move Tutor
  (323, 32300, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Camerupt - Explosion - Move Tutor
  (323, 32300, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Camerupt - Mimic - Move Tutor
  (323, 32300, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Camerupt - Rock Slide - Move Tutor
  (323, 32300, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Camerupt - Substitute - Move Tutor
  (323, 32300, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Torkoal - Ember - Level 1
  (324, 32400, 52, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torkoal - Smog - Level 4
  (324, 32400, 123, 6, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Torkoal - Curse - Level 7
  (324, 32400, 174, 6, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Torkoal - Smokescreen - Level 14
  (324, 32400, 108, 6, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Torkoal - Fire Spin - Level 17
  (324, 32400, 83, 6, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Torkoal - Body Slam - Level 20
  (324, 32400, 34, 6, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Torkoal - Protect - Level 27
  (324, 32400, 182, 6, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Torkoal - Flamethrower - Level 30
  (324, 32400, 53, 6, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Torkoal - Iron Defense - Level 33
  (324, 32400, 334, 6, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Torkoal - Amnesia - Level 40
  (324, 32400, 133, 6, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Torkoal - Flail - Level 43
  (324, 32400, 175, 6, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Torkoal - Heat Wave - Level 46
  (324, 32400, 257, 6, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Torkoal - Toxic - TM06
  (324, 32400, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 13),
  -- Torkoal - Hidden Power - TM10
  (324, 32400, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 14),
  -- Torkoal - Sunny Day - TM11
  (324, 32400, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 15),
  -- Torkoal - Protect - TM17
  (324, 32400, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 16),
  -- Torkoal - Frustration - TM21
  (324, 32400, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 17),
  -- Torkoal - Iron Tail - TM23
  (324, 32400, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 18),
  -- Torkoal - Return - TM27
  (324, 32400, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 19),
  -- Torkoal - Double Team - TM32
  (324, 32400, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 20),
  -- Torkoal - Flamethrower - TM35
  (324, 32400, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 21),
  -- Torkoal - Sludge Bomb - TM36
  (324, 32400, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 22),
  -- Torkoal - Fire Blast - TM38
  (324, 32400, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 23),
  -- Torkoal - Facade - TM42
  (324, 32400, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 24),
  -- Torkoal - Secret Power - TM43
  (324, 32400, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 25),
  -- Torkoal - Rest - TM44
  (324, 32400, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 26),
  -- Torkoal - Attract - TM45
  (324, 32400, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 27),
  -- Torkoal - Overheat - TM50
  (324, 32400, 315, 6, NULL, 2, NULL, NULL, 6002050, NULL, 28),
  -- Torkoal - Strength - HM04
  (324, 32400, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 29),
  -- Torkoal - Rock Smash - HM06
  (324, 32400, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 30),
  -- Torkoal - Endure - Egg Move
  (324, 32400, 203, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Torkoal - Eruption - Egg Move
  (324, 32400, 284, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Torkoal - Sleep Talk - Egg Move
  (324, 32400, 214, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Torkoal - Yawn - Egg Move
  (324, 32400, 281, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Torkoal - Body Slam - Move Tutor
  (324, 32400, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Torkoal - Double-Edge - Move Tutor
  (324, 32400, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Torkoal - Explosion - Move Tutor
  (324, 32400, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Torkoal - Mimic - Move Tutor
  (324, 32400, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Torkoal - Rock Slide - Move Tutor
  (324, 32400, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Torkoal - Substitute - Move Tutor
  (324, 32400, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Spoink - Splash - Level 1
  (325, 32500, 150, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spoink - Psywave - Level 7
  (325, 32500, 149, 6, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Spoink - Odor Sleuth - Level 10
  (325, 32500, 316, 6, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Spoink - Psybeam - Level 16
  (325, 32500, 60, 6, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Spoink - Psych Up - Level 19
  (325, 32500, 244, 6, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Spoink - Confuse Ray - Level 25
  (325, 32500, 109, 6, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Spoink - Magic Coat - Level 28
  (325, 32500, 277, 6, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Spoink - Psychic - Level 34
  (325, 32500, 94, 6, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Spoink - Rest - Level 37
  (325, 32500, 156, 6, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Spoink - Snore - Level 37
  (325, 32500, 173, 6, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Spoink - Bounce - Level 43
  (325, 32500, 340, 6, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Spoink - Calm Mind - TM04
  (325, 32500, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 12),
  -- Spoink - Toxic - TM06
  (325, 32500, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 13),
  -- Spoink - Hidden Power - TM10
  (325, 32500, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 14),
  -- Spoink - Sunny Day - TM11
  (325, 32500, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 15),
  -- Spoink - Taunt - TM12
  (325, 32500, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 16),
  -- Spoink - Light Screen - TM16
  (325, 32500, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 17),
  -- Spoink - Protect - TM17
  (325, 32500, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 18),
  -- Spoink - Rain Dance - TM18
  (325, 32500, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 19),
  -- Spoink - Frustration - TM21
  (325, 32500, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Spoink - Iron Tail - TM23
  (325, 32500, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 21),
  -- Spoink - Return - TM27
  (325, 32500, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 22),
  -- Spoink - Psychic - TM29
  (325, 32500, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 23),
  -- Spoink - Shadow Ball - TM30
  (325, 32500, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 24),
  -- Spoink - Double Team - TM32
  (325, 32500, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Spoink - Reflect - TM33
  (325, 32500, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 26),
  -- Spoink - Shock Wave - TM34
  (325, 32500, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 27),
  -- Spoink - Torment - TM41
  (325, 32500, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 28),
  -- Spoink - Facade - TM42
  (325, 32500, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 29),
  -- Spoink - Secret Power - TM43
  (325, 32500, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 30),
  -- Spoink - Rest - TM44
  (325, 32500, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 31),
  -- Spoink - Attract - TM45
  (325, 32500, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 32),
  -- Spoink - Thief - TM46
  (325, 32500, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 33),
  -- Spoink - Skill Swap - TM48
  (325, 32500, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 34),
  -- Spoink - Snatch - TM49
  (325, 32500, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 35),
  -- Spoink - Flash - HM05
  (325, 32500, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 36),
  -- Spoink - Extrasensory - Egg Move
  (325, 32500, 326, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Spoink - Future Sight - Egg Move
  (325, 32500, 248, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Spoink - Substitute - Egg Move
  (325, 32500, 164, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Spoink - Trick - Egg Move
  (325, 32500, 271, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Spoink - Body Slam - Move Tutor
  (325, 32500, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Spoink - Double-Edge - Move Tutor
  (325, 32500, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Spoink - Dream Eater - Move Tutor
  (325, 32500, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Spoink - Mimic - Move Tutor
  (325, 32500, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Spoink - Substitute - Move Tutor
  (325, 32500, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Grumpig - Splash - Level 1
  (326, 32600, 150, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grumpig - Psywave - Level 1
  (326, 32600, 149, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grumpig - Odor Sleuth - Level 1
  (326, 32600, 316, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Grumpig - Psybeam - Level 1
  (326, 32600, 60, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Grumpig - Psywave - Level 7
  (326, 32600, 149, 6, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Grumpig - Odor Sleuth - Level 10
  (326, 32600, 316, 6, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Grumpig - Psybeam - Level 16
  (326, 32600, 60, 6, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Grumpig - Psych Up - Level 19
  (326, 32600, 244, 6, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Grumpig - Confuse Ray - Level 25
  (326, 32600, 109, 6, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Grumpig - Magic Coat - Level 28
  (326, 32600, 277, 6, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Grumpig - Psychic - Level 37
  (326, 32600, 94, 6, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Grumpig - Rest - Level 43
  (326, 32600, 156, 6, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Grumpig - Snore - Level 43
  (326, 32600, 173, 6, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Grumpig - Bounce - Level 55
  (326, 32600, 340, 6, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Grumpig - Focus Punch - TM01
  (326, 32600, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 15),
  -- Grumpig - Calm Mind - TM04
  (326, 32600, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 16),
  -- Grumpig - Toxic - TM06
  (326, 32600, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 17),
  -- Grumpig - Hidden Power - TM10
  (326, 32600, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 18),
  -- Grumpig - Sunny Day - TM11
  (326, 32600, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 19),
  -- Grumpig - Taunt - TM12
  (326, 32600, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 20),
  -- Grumpig - Hyper Beam - TM15
  (326, 32600, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 21),
  -- Grumpig - Light Screen - TM16
  (326, 32600, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 22),
  -- Grumpig - Protect - TM17
  (326, 32600, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 23),
  -- Grumpig - Rain Dance - TM18
  (326, 32600, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 24),
  -- Grumpig - Frustration - TM21
  (326, 32600, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 25),
  -- Grumpig - Iron Tail - TM23
  (326, 32600, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 26),
  -- Grumpig - Return - TM27
  (326, 32600, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 27),
  -- Grumpig - Psychic - TM29
  (326, 32600, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 28),
  -- Grumpig - Shadow Ball - TM30
  (326, 32600, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 29),
  -- Grumpig - Double Team - TM32
  (326, 32600, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 30),
  -- Grumpig - Reflect - TM33
  (326, 32600, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 31),
  -- Grumpig - Shock Wave - TM34
  (326, 32600, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 32),
  -- Grumpig - Torment - TM41
  (326, 32600, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 33),
  -- Grumpig - Facade - TM42
  (326, 32600, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 34),
  -- Grumpig - Secret Power - TM43
  (326, 32600, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 35),
  -- Grumpig - Rest - TM44
  (326, 32600, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 36),
  -- Grumpig - Attract - TM45
  (326, 32600, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 37),
  -- Grumpig - Thief - TM46
  (326, 32600, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 38),
  -- Grumpig - Skill Swap - TM48
  (326, 32600, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 39),
  -- Grumpig - Snatch - TM49
  (326, 32600, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 40),
  -- Grumpig - Flash - HM05
  (326, 32600, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 41),
  -- Grumpig - Body Slam - Move Tutor
  (326, 32600, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Grumpig - Counter - Move Tutor
  (326, 32600, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Grumpig - Double-Edge - Move Tutor
  (326, 32600, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Grumpig - Dream Eater - Move Tutor
  (326, 32600, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Grumpig - Mega Kick - Move Tutor
  (326, 32600, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Grumpig - Mega Punch - Move Tutor
  (326, 32600, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Grumpig - Mimic - Move Tutor
  (326, 32600, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Grumpig - Seismic Toss - Move Tutor
  (326, 32600, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Grumpig - Substitute - Move Tutor
  (326, 32600, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Spinda - Tackle - Level 1
  (327, 32700, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spinda - Uproar - Level 5
  (327, 32700, 253, 6, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Spinda - Feint Attack - Level 12
  (327, 32700, 185, 6, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Spinda - Psybeam - Level 16
  (327, 32700, 60, 6, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Spinda - Hypnosis - Level 23
  (327, 32700, 95, 6, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Spinda - Dizzy Punch - Level 27
  (327, 32700, 146, 6, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Spinda - Teeter Dance - Level 34
  (327, 32700, 298, 6, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Spinda - Psych Up - Level 38
  (327, 32700, 244, 6, NULL, 1, 38, NULL, NULL, NULL, 8),
  -- Spinda - Double-Edge - Level 45
  (327, 32700, 38, 6, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Spinda - Flail - Level 49
  (327, 32700, 175, 6, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Spinda - Thrash - Level 56
  (327, 32700, 37, 6, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Spinda - Focus Punch - TM01
  (327, 32700, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 12),
  -- Spinda - Water Pulse - TM03
  (327, 32700, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 13),
  -- Spinda - Calm Mind - TM04
  (327, 32700, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 14),
  -- Spinda - Toxic - TM06
  (327, 32700, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Spinda - Hidden Power - TM10
  (327, 32700, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Spinda - Sunny Day - TM11
  (327, 32700, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 17),
  -- Spinda - Protect - TM17
  (327, 32700, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 18),
  -- Spinda - Rain Dance - TM18
  (327, 32700, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 19),
  -- Spinda - Safeguard - TM20
  (327, 32700, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 20),
  -- Spinda - Frustration - TM21
  (327, 32700, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 21),
  -- Spinda - Return - TM27
  (327, 32700, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 22),
  -- Spinda - Dig - TM28
  (327, 32700, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 23),
  -- Spinda - Psychic - TM29
  (327, 32700, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 24),
  -- Spinda - Shadow Ball - TM30
  (327, 32700, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 25),
  -- Spinda - Brick Break - TM31
  (327, 32700, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 26),
  -- Spinda - Double Team - TM32
  (327, 32700, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 27),
  -- Spinda - Shock Wave - TM34
  (327, 32700, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 28),
  -- Spinda - Rock Tomb - TM39
  (327, 32700, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 29),
  -- Spinda - Facade - TM42
  (327, 32700, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 30),
  -- Spinda - Secret Power - TM43
  (327, 32700, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 31),
  -- Spinda - Rest - TM44
  (327, 32700, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 32),
  -- Spinda - Attract - TM45
  (327, 32700, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 33),
  -- Spinda - Thief - TM46
  (327, 32700, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 34),
  -- Spinda - Skill Swap - TM48
  (327, 32700, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 35),
  -- Spinda - Snatch - TM49
  (327, 32700, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 36),
  -- Spinda - Strength - HM04
  (327, 32700, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 37),
  -- Spinda - Flash - HM05
  (327, 32700, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 38),
  -- Spinda - Rock Smash - HM06
  (327, 32700, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 39),
  -- Spinda - Assist - Egg Move
  (327, 32700, 274, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Spinda - Baton Pass - Egg Move
  (327, 32700, 226, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Spinda - Disable - Egg Move
  (327, 32700, 50, 6, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Spinda - Encore - Egg Move
  (327, 32700, 227, 6, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Spinda - Rock Slide - Egg Move
  (327, 32700, 157, 6, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Spinda - Smelling Salts - Egg Move
  (327, 32700, 265, 6, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Spinda - Trick - Egg Move
  (327, 32700, 271, 6, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Spinda - Wish - Egg Move
  (327, 32700, 273, 6, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Spinda - Body Slam - Move Tutor
  (327, 32700, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Spinda - Counter - Move Tutor
  (327, 32700, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Spinda - Double-Edge - Move Tutor
  (327, 32700, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Spinda - Dream Eater - Move Tutor
  (327, 32700, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Spinda - Mega Kick - Move Tutor
  (327, 32700, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Spinda - Mega Punch - Move Tutor
  (327, 32700, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Spinda - Metronome - Move Tutor
  (327, 32700, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 54),
  -- Spinda - Mimic - Move Tutor
  (327, 32700, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 55),
  -- Spinda - Rock Slide - Move Tutor
  (327, 32700, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 56),
  -- Spinda - Seismic Toss - Move Tutor
  (327, 32700, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 57),
  -- Spinda - Substitute - Move Tutor
  (327, 32700, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 58),
  -- Trapinch - Bite - Level 1
  (328, 32800, 44, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Trapinch - Sand Attack - Level 9
  (328, 32800, 28, 6, NULL, 1, 9, NULL, NULL, NULL, 2),
  -- Trapinch - Feint Attack - Level 17
  (328, 32800, 185, 6, NULL, 1, 17, NULL, NULL, NULL, 3),
  -- Trapinch - Sand Tomb - Level 25
  (328, 32800, 328, 6, NULL, 1, 25, NULL, NULL, NULL, 4),
  -- Trapinch - Crunch - Level 33
  (328, 32800, 242, 6, NULL, 1, 33, NULL, NULL, NULL, 5),
  -- Trapinch - Dig - Level 41
  (328, 32800, 91, 6, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Trapinch - Sandstorm - Level 49
  (328, 32800, 201, 6, NULL, 1, 49, NULL, NULL, NULL, 7),
  -- Trapinch - Hyper Beam - Level 57
  (328, 32800, 63, 6, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Trapinch - Toxic - TM06
  (328, 32800, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 9),
  -- Trapinch - Hidden Power - TM10
  (328, 32800, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 10),
  -- Trapinch - Sunny Day - TM11
  (328, 32800, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 11),
  -- Trapinch - Hyper Beam - TM15
  (328, 32800, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 12),
  -- Trapinch - Protect - TM17
  (328, 32800, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 13),
  -- Trapinch - Giga Drain - TM19
  (328, 32800, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 14),
  -- Trapinch - Frustration - TM21
  (328, 32800, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 15),
  -- Trapinch - Solar Beam - TM22
  (328, 32800, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 16),
  -- Trapinch - Earthquake - TM26
  (328, 32800, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 17),
  -- Trapinch - Return - TM27
  (328, 32800, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 18),
  -- Trapinch - Dig - TM28
  (328, 32800, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 19),
  -- Trapinch - Double Team - TM32
  (328, 32800, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 20),
  -- Trapinch - Sandstorm - TM37
  (328, 32800, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 21),
  -- Trapinch - Rock Tomb - TM39
  (328, 32800, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 22),
  -- Trapinch - Facade - TM42
  (328, 32800, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 23),
  -- Trapinch - Secret Power - TM43
  (328, 32800, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 24),
  -- Trapinch - Rest - TM44
  (328, 32800, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 25),
  -- Trapinch - Attract - TM45
  (328, 32800, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 26),
  -- Trapinch - Strength - HM04
  (328, 32800, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 27),
  -- Trapinch - Rock Smash - HM06
  (328, 32800, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 28),
  -- Trapinch - Focus Energy - Egg Move
  (328, 32800, 116, 6, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Trapinch - Gust - Egg Move
  (328, 32800, 16, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Trapinch - Quick Attack - Egg Move
  (328, 32800, 98, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Trapinch - Body Slam - Move Tutor
  (328, 32800, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Trapinch - Double-Edge - Move Tutor
  (328, 32800, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Trapinch - Mimic - Move Tutor
  (328, 32800, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Trapinch - Rock Slide - Move Tutor
  (328, 32800, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Trapinch - Substitute - Move Tutor
  (328, 32800, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Vibrava - Bite - Level 1
  (329, 32900, 44, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vibrava - Sand Attack - Level 1
  (329, 32900, 28, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vibrava - Feint Attack - Level 1
  (329, 32900, 185, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vibrava - Sand Tomb - Level 1
  (329, 32900, 328, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vibrava - Sand Attack - Level 9
  (329, 32900, 28, 6, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Vibrava - Feint Attack - Level 17
  (329, 32900, 185, 6, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Vibrava - Sand Tomb - Level 25
  (329, 32900, 328, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Vibrava - Crunch - Level 33
  (329, 32900, 242, 6, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Vibrava - Dragon Breath - Level 35
  (329, 32900, 225, 6, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Vibrava - Screech - Level 41
  (329, 32900, 103, 6, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Vibrava - Sandstorm - Level 49
  (329, 32900, 201, 6, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Vibrava - Hyper Beam - Level 57
  (329, 32900, 63, 6, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Vibrava - Toxic - TM06
  (329, 32900, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 13),
  -- Vibrava - Hidden Power - TM10
  (329, 32900, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 14),
  -- Vibrava - Sunny Day - TM11
  (329, 32900, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 15),
  -- Vibrava - Hyper Beam - TM15
  (329, 32900, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 16),
  -- Vibrava - Protect - TM17
  (329, 32900, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 17),
  -- Vibrava - Giga Drain - TM19
  (329, 32900, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 18),
  -- Vibrava - Frustration - TM21
  (329, 32900, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 19),
  -- Vibrava - Solar Beam - TM22
  (329, 32900, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 20),
  -- Vibrava - Earthquake - TM26
  (329, 32900, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 21),
  -- Vibrava - Return - TM27
  (329, 32900, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 22),
  -- Vibrava - Dig - TM28
  (329, 32900, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 23),
  -- Vibrava - Double Team - TM32
  (329, 32900, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 24),
  -- Vibrava - Sandstorm - TM37
  (329, 32900, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 25),
  -- Vibrava - Rock Tomb - TM39
  (329, 32900, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 26),
  -- Vibrava - Facade - TM42
  (329, 32900, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 27),
  -- Vibrava - Secret Power - TM43
  (329, 32900, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 28),
  -- Vibrava - Rest - TM44
  (329, 32900, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 29),
  -- Vibrava - Attract - TM45
  (329, 32900, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 30),
  -- Vibrava - Steel Wing - TM47
  (329, 32900, 211, 6, NULL, 2, NULL, NULL, 6002047, NULL, 31),
  -- Vibrava - Fly - HM02
  (329, 32900, 19, 6, NULL, 3, NULL, NULL, 6003002, NULL, 32),
  -- Vibrava - Strength - HM04
  (329, 32900, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 33),
  -- Vibrava - Rock Smash - HM06
  (329, 32900, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 34),
  -- Vibrava - Body Slam - Move Tutor
  (329, 32900, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Vibrava - Double-Edge - Move Tutor
  (329, 32900, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Vibrava - Mimic - Move Tutor
  (329, 32900, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Vibrava - Rock Slide - Move Tutor
  (329, 32900, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Vibrava - Substitute - Move Tutor
  (329, 32900, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Flygon - Bite - Level 1
  (330, 33000, 44, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flygon - Sand Attack - Level 1
  (330, 33000, 28, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flygon - Feint Attack - Level 1
  (330, 33000, 185, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flygon - Sand Tomb - Level 1
  (330, 33000, 328, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Flygon - Sand Attack - Level 9
  (330, 33000, 28, 6, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Flygon - Feint Attack - Level 17
  (330, 33000, 185, 6, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Flygon - Sand Tomb - Level 25
  (330, 33000, 328, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Flygon - Crunch - Level 33
  (330, 33000, 242, 6, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Flygon - Dragon Breath - Level 35
  (330, 33000, 225, 6, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Flygon - Screech - Level 41
  (330, 33000, 103, 6, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Flygon - Sandstorm - Level 53
  (330, 33000, 201, 6, NULL, 1, 53, NULL, NULL, NULL, 11),
  -- Flygon - Hyper Beam - Level 65
  (330, 33000, 63, 6, NULL, 1, 65, NULL, NULL, NULL, 12),
  -- Flygon - Dragon Claw - TM02
  (330, 33000, 337, 6, NULL, 2, NULL, NULL, 6002002, NULL, 13),
  -- Flygon - Toxic - TM06
  (330, 33000, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Flygon - Hidden Power - TM10
  (330, 33000, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Flygon - Sunny Day - TM11
  (330, 33000, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Flygon - Hyper Beam - TM15
  (330, 33000, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 17),
  -- Flygon - Protect - TM17
  (330, 33000, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 18),
  -- Flygon - Giga Drain - TM19
  (330, 33000, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 19),
  -- Flygon - Frustration - TM21
  (330, 33000, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Flygon - Solar Beam - TM22
  (330, 33000, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 21),
  -- Flygon - Iron Tail - TM23
  (330, 33000, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 22),
  -- Flygon - Earthquake - TM26
  (330, 33000, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 23),
  -- Flygon - Return - TM27
  (330, 33000, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 24),
  -- Flygon - Dig - TM28
  (330, 33000, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 25),
  -- Flygon - Double Team - TM32
  (330, 33000, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 26),
  -- Flygon - Flamethrower - TM35
  (330, 33000, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 27),
  -- Flygon - Sandstorm - TM37
  (330, 33000, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 28),
  -- Flygon - Fire Blast - TM38
  (330, 33000, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 29),
  -- Flygon - Rock Tomb - TM39
  (330, 33000, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 30),
  -- Flygon - Facade - TM42
  (330, 33000, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 31),
  -- Flygon - Secret Power - TM43
  (330, 33000, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 32),
  -- Flygon - Rest - TM44
  (330, 33000, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 33),
  -- Flygon - Attract - TM45
  (330, 33000, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 34),
  -- Flygon - Steel Wing - TM47
  (330, 33000, 211, 6, NULL, 2, NULL, NULL, 6002047, NULL, 35),
  -- Flygon - Fly - HM02
  (330, 33000, 19, 6, NULL, 3, NULL, NULL, 6003002, NULL, 36),
  -- Flygon - Strength - HM04
  (330, 33000, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 37),
  -- Flygon - Rock Smash - HM06
  (330, 33000, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 38),
  -- Flygon - Body Slam - Move Tutor
  (330, 33000, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Flygon - Double-Edge - Move Tutor
  (330, 33000, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Flygon - Mimic - Move Tutor
  (330, 33000, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Flygon - Rock Slide - Move Tutor
  (330, 33000, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Flygon - Substitute - Move Tutor
  (330, 33000, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Cacnea - Poison Sting - Level 1
  (331, 33100, 40, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cacnea - Leer - Level 1
  (331, 33100, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cacnea - Absorb - Level 5
  (331, 33100, 71, 6, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Cacnea - Growth - Level 9
  (331, 33100, 74, 6, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Cacnea - Leech Seed - Level 13
  (331, 33100, 73, 6, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Cacnea - Sand Attack - Level 17
  (331, 33100, 28, 6, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Cacnea - Pin Missile - Level 21
  (331, 33100, 42, 6, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Cacnea - Ingrain - Level 25
  (331, 33100, 275, 6, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Cacnea - Feint Attack - Level 29
  (331, 33100, 185, 6, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Cacnea - Spikes - Level 33
  (331, 33100, 191, 6, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Cacnea - Needle Arm - Level 37
  (331, 33100, 302, 6, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Cacnea - Cotton Spore - Level 41
  (331, 33100, 178, 6, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Cacnea - Sandstorm - Level 45
  (331, 33100, 201, 6, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Cacnea - Destiny Bond - Level 49
  (331, 33100, 194, 6, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Cacnea - Focus Punch - TM01
  (331, 33100, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 15),
  -- Cacnea - Toxic - TM06
  (331, 33100, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Cacnea - Bullet Seed - TM09
  (331, 33100, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 17),
  -- Cacnea - Hidden Power - TM10
  (331, 33100, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 18),
  -- Cacnea - Sunny Day - TM11
  (331, 33100, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 19),
  -- Cacnea - Protect - TM17
  (331, 33100, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 20),
  -- Cacnea - Giga Drain - TM19
  (331, 33100, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 21),
  -- Cacnea - Frustration - TM21
  (331, 33100, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 22),
  -- Cacnea - Solar Beam - TM22
  (331, 33100, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 23),
  -- Cacnea - Return - TM27
  (331, 33100, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 24),
  -- Cacnea - Double Team - TM32
  (331, 33100, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Cacnea - Sandstorm - TM37
  (331, 33100, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 26),
  -- Cacnea - Facade - TM42
  (331, 33100, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 27),
  -- Cacnea - Secret Power - TM43
  (331, 33100, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 28),
  -- Cacnea - Rest - TM44
  (331, 33100, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 29),
  -- Cacnea - Attract - TM45
  (331, 33100, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 30),
  -- Cacnea - Cut - HM01
  (331, 33100, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 31),
  -- Cacnea - Flash - HM05
  (331, 33100, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 32),
  -- Cacnea - Acid - Egg Move
  (331, 33100, 51, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Cacnea - Counter - Egg Move
  (331, 33100, 68, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Cacnea - Dynamic Punch - Egg Move
  (331, 33100, 223, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Cacnea - Grass Whistle - Egg Move
  (331, 33100, 320, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Cacnea - Teeter Dance - Egg Move
  (331, 33100, 298, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Cacnea - Body Slam - Move Tutor
  (331, 33100, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Cacnea - Counter - Move Tutor
  (331, 33100, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Cacnea - Double-Edge - Move Tutor
  (331, 33100, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Cacnea - Mega Punch - Move Tutor
  (331, 33100, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Cacnea - Mimic - Move Tutor
  (331, 33100, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Cacnea - Seismic Toss - Move Tutor
  (331, 33100, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Cacnea - Substitute - Move Tutor
  (331, 33100, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Cacnea - Swords Dance - Move Tutor
  (331, 33100, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Cacturne - Revenge - Level 1
  (332, 33200, 279, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cacturne - Poison Sting - Level 1
  (332, 33200, 40, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cacturne - Leer - Level 1
  (332, 33200, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cacturne - Absorb - Level 1
  (332, 33200, 71, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cacturne - Growth - Level 1
  (332, 33200, 74, 6, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cacturne - Absorb - Level 5
  (332, 33200, 71, 6, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Cacturne - Growth - Level 9
  (332, 33200, 74, 6, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Cacturne - Leech Seed - Level 13
  (332, 33200, 73, 6, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Cacturne - Sand Attack - Level 17
  (332, 33200, 28, 6, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Cacturne - Pin Missile - Level 21
  (332, 33200, 42, 6, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Cacturne - Ingrain - Level 25
  (332, 33200, 275, 6, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Cacturne - Feint Attack - Level 29
  (332, 33200, 185, 6, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Cacturne - Spikes - Level 35
  (332, 33200, 191, 6, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Cacturne - Needle Arm - Level 41
  (332, 33200, 302, 6, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Cacturne - Cotton Spore - Level 47
  (332, 33200, 178, 6, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Cacturne - Sandstorm - Level 53
  (332, 33200, 201, 6, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Cacturne - Destiny Bond - Level 59
  (332, 33200, 194, 6, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Cacturne - Focus Punch - TM01
  (332, 33200, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 18),
  -- Cacturne - Toxic - TM06
  (332, 33200, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 19),
  -- Cacturne - Bullet Seed - TM09
  (332, 33200, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 20),
  -- Cacturne - Hidden Power - TM10
  (332, 33200, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 21),
  -- Cacturne - Sunny Day - TM11
  (332, 33200, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 22),
  -- Cacturne - Hyper Beam - TM15
  (332, 33200, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 23),
  -- Cacturne - Protect - TM17
  (332, 33200, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 24),
  -- Cacturne - Giga Drain - TM19
  (332, 33200, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 25),
  -- Cacturne - Frustration - TM21
  (332, 33200, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 26),
  -- Cacturne - Solar Beam - TM22
  (332, 33200, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 27),
  -- Cacturne - Return - TM27
  (332, 33200, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 28),
  -- Cacturne - Double Team - TM32
  (332, 33200, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 29),
  -- Cacturne - Sandstorm - TM37
  (332, 33200, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 30),
  -- Cacturne - Facade - TM42
  (332, 33200, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 31),
  -- Cacturne - Secret Power - TM43
  (332, 33200, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 32),
  -- Cacturne - Rest - TM44
  (332, 33200, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 33),
  -- Cacturne - Attract - TM45
  (332, 33200, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 34),
  -- Cacturne - Cut - HM01
  (332, 33200, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 35),
  -- Cacturne - Strength - HM04
  (332, 33200, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 36),
  -- Cacturne - Flash - HM05
  (332, 33200, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 37),
  -- Cacturne - Body Slam - Move Tutor
  (332, 33200, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Cacturne - Counter - Move Tutor
  (332, 33200, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Cacturne - Double-Edge - Move Tutor
  (332, 33200, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Cacturne - Mega Kick - Move Tutor
  (332, 33200, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Cacturne - Mega Punch - Move Tutor
  (332, 33200, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Cacturne - Mimic - Move Tutor
  (332, 33200, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Cacturne - Seismic Toss - Move Tutor
  (332, 33200, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Cacturne - Substitute - Move Tutor
  (332, 33200, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Cacturne - Swords Dance - Move Tutor
  (332, 33200, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Swablu - Peck - Level 1
  (333, 33300, 64, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swablu - Growl - Level 1
  (333, 33300, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swablu - Astonish - Level 8
  (333, 33300, 310, 6, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Swablu - Sing - Level 11
  (333, 33300, 47, 6, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Swablu - Fury Attack - Level 18
  (333, 33300, 31, 6, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Swablu - Safeguard - Level 21
  (333, 33300, 219, 6, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Swablu - Mist - Level 28
  (333, 33300, 54, 6, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Swablu - Take Down - Level 31
  (333, 33300, 36, 6, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Swablu - Mirror Move - Level 38
  (333, 33300, 119, 6, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Swablu - Refresh - Level 41
  (333, 33300, 287, 6, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Swablu - Perish Song - Level 48
  (333, 33300, 195, 6, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Swablu - Toxic - TM06
  (333, 33300, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Swablu - Hidden Power - TM10
  (333, 33300, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Swablu - Sunny Day - TM11
  (333, 33300, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 14),
  -- Swablu - Ice Beam - TM13
  (333, 33300, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 15),
  -- Swablu - Protect - TM17
  (333, 33300, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 16),
  -- Swablu - Rain Dance - TM18
  (333, 33300, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 17),
  -- Swablu - Safeguard - TM20
  (333, 33300, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 18),
  -- Swablu - Frustration - TM21
  (333, 33300, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 19),
  -- Swablu - Solar Beam - TM22
  (333, 33300, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 20),
  -- Swablu - Return - TM27
  (333, 33300, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 21),
  -- Swablu - Double Team - TM32
  (333, 33300, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 22),
  -- Swablu - Aerial Ace - TM40
  (333, 33300, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 23),
  -- Swablu - Facade - TM42
  (333, 33300, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 24),
  -- Swablu - Secret Power - TM43
  (333, 33300, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 25),
  -- Swablu - Rest - TM44
  (333, 33300, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 26),
  -- Swablu - Attract - TM45
  (333, 33300, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 27),
  -- Swablu - Thief - TM46
  (333, 33300, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 28),
  -- Swablu - Steel Wing - TM47
  (333, 33300, 211, 6, NULL, 2, NULL, NULL, 6002047, NULL, 29),
  -- Swablu - Fly - HM02
  (333, 33300, 19, 6, NULL, 3, NULL, NULL, 6003002, NULL, 30),
  -- Swablu - Agility - Egg Move
  (333, 33300, 97, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Swablu - Haze - Egg Move
  (333, 33300, 114, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Swablu - Pursuit - Egg Move
  (333, 33300, 228, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Swablu - Rage - Egg Move
  (333, 33300, 99, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Swablu - Body Slam - Move Tutor
  (333, 33300, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Swablu - Double-Edge - Move Tutor
  (333, 33300, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Swablu - Dream Eater - Move Tutor
  (333, 33300, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Swablu - Mimic - Move Tutor
  (333, 33300, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Swablu - Substitute - Move Tutor
  (333, 33300, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Altaria - Peck - Level 1
  (334, 33400, 64, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Altaria - Growl - Level 1
  (334, 33400, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Altaria - Astonish - Level 1
  (334, 33400, 310, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Altaria - Sing - Level 1
  (334, 33400, 47, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Altaria - Astonish - Level 8
  (334, 33400, 310, 6, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Altaria - Sing - Level 11
  (334, 33400, 47, 6, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Altaria - Fury Attack - Level 18
  (334, 33400, 31, 6, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Altaria - Safeguard - Level 21
  (334, 33400, 219, 6, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Altaria - Mist - Level 28
  (334, 33400, 54, 6, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Altaria - Take Down - Level 31
  (334, 33400, 36, 6, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Altaria - Dragon Breath - Level 35
  (334, 33400, 225, 6, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Altaria - Dragon Dance - Level 40
  (334, 33400, 349, 6, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Altaria - Refresh - Level 45
  (334, 33400, 287, 6, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Altaria - Perish Song - Level 54
  (334, 33400, 195, 6, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Altaria - Sky Attack - Level 59
  (334, 33400, 143, 6, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Altaria - Dragon Claw - TM02
  (334, 33400, 337, 6, NULL, 2, NULL, NULL, 6002002, NULL, 16),
  -- Altaria - Roar - TM05
  (334, 33400, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 17),
  -- Altaria - Toxic - TM06
  (334, 33400, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 18),
  -- Altaria - Hidden Power - TM10
  (334, 33400, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 19),
  -- Altaria - Sunny Day - TM11
  (334, 33400, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 20),
  -- Altaria - Ice Beam - TM13
  (334, 33400, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 21),
  -- Altaria - Hyper Beam - TM15
  (334, 33400, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 22),
  -- Altaria - Protect - TM17
  (334, 33400, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 23),
  -- Altaria - Rain Dance - TM18
  (334, 33400, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 24),
  -- Altaria - Safeguard - TM20
  (334, 33400, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 25),
  -- Altaria - Frustration - TM21
  (334, 33400, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 26),
  -- Altaria - Solar Beam - TM22
  (334, 33400, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 27),
  -- Altaria - Iron Tail - TM23
  (334, 33400, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 28),
  -- Altaria - Earthquake - TM26
  (334, 33400, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 29),
  -- Altaria - Return - TM27
  (334, 33400, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 30),
  -- Altaria - Double Team - TM32
  (334, 33400, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 31),
  -- Altaria - Flamethrower - TM35
  (334, 33400, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 32),
  -- Altaria - Fire Blast - TM38
  (334, 33400, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 33),
  -- Altaria - Aerial Ace - TM40
  (334, 33400, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 34),
  -- Altaria - Facade - TM42
  (334, 33400, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 35),
  -- Altaria - Secret Power - TM43
  (334, 33400, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 36),
  -- Altaria - Rest - TM44
  (334, 33400, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 37),
  -- Altaria - Attract - TM45
  (334, 33400, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 38),
  -- Altaria - Thief - TM46
  (334, 33400, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 39),
  -- Altaria - Steel Wing - TM47
  (334, 33400, 211, 6, NULL, 2, NULL, NULL, 6002047, NULL, 40),
  -- Altaria - Fly - HM02
  (334, 33400, 19, 6, NULL, 3, NULL, NULL, 6003002, NULL, 41),
  -- Altaria - Rock Smash - HM06
  (334, 33400, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 42),
  -- Altaria - Body Slam - Move Tutor
  (334, 33400, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Altaria - Double-Edge - Move Tutor
  (334, 33400, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Altaria - Dream Eater - Move Tutor
  (334, 33400, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Altaria - Mimic - Move Tutor
  (334, 33400, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Altaria - Substitute - Move Tutor
  (334, 33400, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Zangoose - Scratch - Level 1
  (335, 33500, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zangoose - Leer - Level 4
  (335, 33500, 43, 6, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Zangoose - Quick Attack - Level 7
  (335, 33500, 98, 6, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Zangoose - Swords Dance - Level 10
  (335, 33500, 14, 6, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Zangoose - Fury Cutter - Level 13
  (335, 33500, 210, 6, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Zangoose - Slash - Level 19
  (335, 33500, 163, 6, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Zangoose - Pursuit - Level 25
  (335, 33500, 228, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Zangoose - Crush Claw - Level 31
  (335, 33500, 306, 6, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Zangoose - Taunt - Level 37
  (335, 33500, 269, 6, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Zangoose - Detect - Level 46
  (335, 33500, 197, 6, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Zangoose - False Swipe - Level 55
  (335, 33500, 206, 6, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Zangoose - Focus Punch - TM01
  (335, 33500, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 12),
  -- Zangoose - Water Pulse - TM03
  (335, 33500, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 13),
  -- Zangoose - Roar - TM05
  (335, 33500, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 14),
  -- Zangoose - Toxic - TM06
  (335, 33500, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Zangoose - Hidden Power - TM10
  (335, 33500, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Zangoose - Sunny Day - TM11
  (335, 33500, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 17),
  -- Zangoose - Taunt - TM12
  (335, 33500, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 18),
  -- Zangoose - Ice Beam - TM13
  (335, 33500, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 19),
  -- Zangoose - Blizzard - TM14
  (335, 33500, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 20),
  -- Zangoose - Protect - TM17
  (335, 33500, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 21),
  -- Zangoose - Rain Dance - TM18
  (335, 33500, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 22),
  -- Zangoose - Giga Drain - TM19
  (335, 33500, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 23),
  -- Zangoose - Frustration - TM21
  (335, 33500, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 24),
  -- Zangoose - Solar Beam - TM22
  (335, 33500, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 25),
  -- Zangoose - Iron Tail - TM23
  (335, 33500, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 26),
  -- Zangoose - Thunderbolt - TM24
  (335, 33500, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 27),
  -- Zangoose - Thunder - TM25
  (335, 33500, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 28),
  -- Zangoose - Return - TM27
  (335, 33500, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 29),
  -- Zangoose - Dig - TM28
  (335, 33500, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 30),
  -- Zangoose - Shadow Ball - TM30
  (335, 33500, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 31),
  -- Zangoose - Brick Break - TM31
  (335, 33500, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 32),
  -- Zangoose - Double Team - TM32
  (335, 33500, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 33),
  -- Zangoose - Shock Wave - TM34
  (335, 33500, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 34),
  -- Zangoose - Flamethrower - TM35
  (335, 33500, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 35),
  -- Zangoose - Fire Blast - TM38
  (335, 33500, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 36),
  -- Zangoose - Aerial Ace - TM40
  (335, 33500, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 37),
  -- Zangoose - Facade - TM42
  (335, 33500, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 38),
  -- Zangoose - Secret Power - TM43
  (335, 33500, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 39),
  -- Zangoose - Rest - TM44
  (335, 33500, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 40),
  -- Zangoose - Attract - TM45
  (335, 33500, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 41),
  -- Zangoose - Thief - TM46
  (335, 33500, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 42),
  -- Zangoose - Strength - HM04
  (335, 33500, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 43),
  -- Zangoose - Rock Smash - HM06
  (335, 33500, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 44),
  -- Zangoose - Counter - Egg Move
  (335, 33500, 68, 6, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Zangoose - Curse - Egg Move
  (335, 33500, 174, 6, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Zangoose - Double Kick - Egg Move
  (335, 33500, 24, 6, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Zangoose - Flail - Egg Move
  (335, 33500, 175, 6, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Zangoose - Razor Wind - Egg Move
  (335, 33500, 13, 6, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Zangoose - Roar - Egg Move
  (335, 33500, 46, 6, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Zangoose - Body Slam - Move Tutor
  (335, 33500, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Zangoose - Counter - Move Tutor
  (335, 33500, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Zangoose - Double-Edge - Move Tutor
  (335, 33500, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Zangoose - Mega Kick - Move Tutor
  (335, 33500, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 54),
  -- Zangoose - Mega Punch - Move Tutor
  (335, 33500, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 55),
  -- Zangoose - Mimic - Move Tutor
  (335, 33500, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 56),
  -- Zangoose - Rock Slide - Move Tutor
  (335, 33500, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 57),
  -- Zangoose - Seismic Toss - Move Tutor
  (335, 33500, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 58),
  -- Zangoose - Substitute - Move Tutor
  (335, 33500, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 59),
  -- Zangoose - Swords Dance - Move Tutor
  (335, 33500, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 60),
  -- Zangoose - Thunder Wave - Move Tutor
  (335, 33500, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 61),
  -- Seviper - Wrap - Level 1
  (336, 33600, 35, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seviper - Lick - Level 7
  (336, 33600, 122, 6, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Seviper - Bite - Level 10
  (336, 33600, 44, 6, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Seviper - Poison Tail - Level 16
  (336, 33600, 342, 6, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Seviper - Screech - Level 19
  (336, 33600, 103, 6, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Seviper - Glare - Level 25
  (336, 33600, 137, 6, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Seviper - Crunch - Level 28
  (336, 33600, 242, 6, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Seviper - Poison Fang - Level 34
  (336, 33600, 305, 6, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Seviper - Swagger - Level 37
  (336, 33600, 207, 6, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Seviper - Haze - Level 43
  (336, 33600, 114, 6, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Seviper - Toxic - TM06
  (336, 33600, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 11),
  -- Seviper - Hidden Power - TM10
  (336, 33600, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 12),
  -- Seviper - Sunny Day - TM11
  (336, 33600, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 13),
  -- Seviper - Taunt - TM12
  (336, 33600, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 14),
  -- Seviper - Protect - TM17
  (336, 33600, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Seviper - Rain Dance - TM18
  (336, 33600, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 16),
  -- Seviper - Giga Drain - TM19
  (336, 33600, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 17),
  -- Seviper - Frustration - TM21
  (336, 33600, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 18),
  -- Seviper - Iron Tail - TM23
  (336, 33600, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 19),
  -- Seviper - Earthquake - TM26
  (336, 33600, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 20),
  -- Seviper - Return - TM27
  (336, 33600, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 21),
  -- Seviper - Dig - TM28
  (336, 33600, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 22),
  -- Seviper - Double Team - TM32
  (336, 33600, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 23),
  -- Seviper - Flamethrower - TM35
  (336, 33600, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 24),
  -- Seviper - Sludge Bomb - TM36
  (336, 33600, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 25),
  -- Seviper - Facade - TM42
  (336, 33600, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 26),
  -- Seviper - Secret Power - TM43
  (336, 33600, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 27),
  -- Seviper - Rest - TM44
  (336, 33600, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 28),
  -- Seviper - Attract - TM45
  (336, 33600, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 29),
  -- Seviper - Thief - TM46
  (336, 33600, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 30),
  -- Seviper - Snatch - TM49
  (336, 33600, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 31),
  -- Seviper - Strength - HM04
  (336, 33600, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 32),
  -- Seviper - Rock Smash - HM06
  (336, 33600, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 33),
  -- Seviper - Body Slam - Egg Move
  (336, 33600, 34, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Seviper - Spit Up - Egg Move
  (336, 33600, 255, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Seviper - Stockpile - Egg Move
  (336, 33600, 254, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Seviper - Swallow - Egg Move
  (336, 33600, 256, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Seviper - Body Slam - Move Tutor
  (336, 33600, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Seviper - Double-Edge - Move Tutor
  (336, 33600, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Seviper - Mimic - Move Tutor
  (336, 33600, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Seviper - Substitute - Move Tutor
  (336, 33600, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Lunatone - Tackle - Level 1
  (337, 33700, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lunatone - Harden - Level 1
  (337, 33700, 106, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lunatone - Confusion - Level 7
  (337, 33700, 93, 6, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Lunatone - Rock Throw - Level 13
  (337, 33700, 88, 6, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Lunatone - Hypnosis - Level 19
  (337, 33700, 95, 6, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Lunatone - Psywave - Level 25
  (337, 33700, 149, 6, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Lunatone - Cosmic Power - Level 31
  (337, 33700, 322, 6, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Lunatone - Psychic - Level 37
  (337, 33700, 94, 6, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Lunatone - Future Sight - Level 43
  (337, 33700, 248, 6, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Lunatone - Explosion - Level 49
  (337, 33700, 153, 6, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Lunatone - Calm Mind - TM04
  (337, 33700, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 11),
  -- Lunatone - Toxic - TM06
  (337, 33700, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Lunatone - Hidden Power - TM10
  (337, 33700, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Lunatone - Ice Beam - TM13
  (337, 33700, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 14),
  -- Lunatone - Hyper Beam - TM15
  (337, 33700, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 15),
  -- Lunatone - Light Screen - TM16
  (337, 33700, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 16),
  -- Lunatone - Protect - TM17
  (337, 33700, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 17),
  -- Lunatone - Rain Dance - TM18
  (337, 33700, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 18),
  -- Lunatone - Safeguard - TM20
  (337, 33700, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 19),
  -- Lunatone - Frustration - TM21
  (337, 33700, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Lunatone - Earthquake - TM26
  (337, 33700, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 21),
  -- Lunatone - Return - TM27
  (337, 33700, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 22),
  -- Lunatone - Psychic - TM29
  (337, 33700, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 23),
  -- Lunatone - Shadow Ball - TM30
  (337, 33700, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 24),
  -- Lunatone - Double Team - TM32
  (337, 33700, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Lunatone - Reflect - TM33
  (337, 33700, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 26),
  -- Lunatone - Sandstorm - TM37
  (337, 33700, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 27),
  -- Lunatone - Rock Tomb - TM39
  (337, 33700, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 28),
  -- Lunatone - Facade - TM42
  (337, 33700, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 29),
  -- Lunatone - Secret Power - TM43
  (337, 33700, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 30),
  -- Lunatone - Rest - TM44
  (337, 33700, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 31),
  -- Lunatone - Skill Swap - TM48
  (337, 33700, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 32),
  -- Lunatone - Flash - HM05
  (337, 33700, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 33),
  -- Lunatone - Body Slam - Move Tutor
  (337, 33700, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Lunatone - Double-Edge - Move Tutor
  (337, 33700, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Lunatone - Dream Eater - Move Tutor
  (337, 33700, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Lunatone - Explosion - Move Tutor
  (337, 33700, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Lunatone - Mimic - Move Tutor
  (337, 33700, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Lunatone - Rock Slide - Move Tutor
  (337, 33700, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Lunatone - Substitute - Move Tutor
  (337, 33700, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Solrock - Tackle - Level 1
  (338, 33800, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Solrock - Harden - Level 1
  (338, 33800, 106, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Solrock - Confusion - Level 7
  (338, 33800, 93, 6, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Solrock - Rock Throw - Level 13
  (338, 33800, 88, 6, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Solrock - Fire Spin - Level 19
  (338, 33800, 83, 6, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Solrock - Psywave - Level 25
  (338, 33800, 149, 6, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Solrock - Cosmic Power - Level 31
  (338, 33800, 322, 6, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Solrock - Rock Slide - Level 37
  (338, 33800, 157, 6, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Solrock - Solar Beam - Level 43
  (338, 33800, 76, 6, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Solrock - Explosion - Level 49
  (338, 33800, 153, 6, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Solrock - Calm Mind - TM04
  (338, 33800, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 11),
  -- Solrock - Toxic - TM06
  (338, 33800, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Solrock - Hidden Power - TM10
  (338, 33800, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Solrock - Sunny Day - TM11
  (338, 33800, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 14),
  -- Solrock - Hyper Beam - TM15
  (338, 33800, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 15),
  -- Solrock - Light Screen - TM16
  (338, 33800, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 16),
  -- Solrock - Protect - TM17
  (338, 33800, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 17),
  -- Solrock - Safeguard - TM20
  (338, 33800, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 18),
  -- Solrock - Frustration - TM21
  (338, 33800, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 19),
  -- Solrock - Solar Beam - TM22
  (338, 33800, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 20),
  -- Solrock - Earthquake - TM26
  (338, 33800, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 21),
  -- Solrock - Return - TM27
  (338, 33800, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 22),
  -- Solrock - Psychic - TM29
  (338, 33800, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 23),
  -- Solrock - Shadow Ball - TM30
  (338, 33800, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 24),
  -- Solrock - Double Team - TM32
  (338, 33800, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Solrock - Reflect - TM33
  (338, 33800, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 26),
  -- Solrock - Flamethrower - TM35
  (338, 33800, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 27),
  -- Solrock - Sandstorm - TM37
  (338, 33800, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 28),
  -- Solrock - Fire Blast - TM38
  (338, 33800, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 29),
  -- Solrock - Rock Tomb - TM39
  (338, 33800, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 30),
  -- Solrock - Facade - TM42
  (338, 33800, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 31),
  -- Solrock - Secret Power - TM43
  (338, 33800, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 32),
  -- Solrock - Rest - TM44
  (338, 33800, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 33),
  -- Solrock - Skill Swap - TM48
  (338, 33800, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 34),
  -- Solrock - Overheat - TM50
  (338, 33800, 315, 6, NULL, 2, NULL, NULL, 6002050, NULL, 35),
  -- Solrock - Flash - HM05
  (338, 33800, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 36),
  -- Solrock - Body Slam - Move Tutor
  (338, 33800, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Solrock - Double-Edge - Move Tutor
  (338, 33800, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Solrock - Dream Eater - Move Tutor
  (338, 33800, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Solrock - Explosion - Move Tutor
  (338, 33800, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Solrock - Mimic - Move Tutor
  (338, 33800, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Solrock - Rock Slide - Move Tutor
  (338, 33800, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Solrock - Substitute - Move Tutor
  (338, 33800, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Barboach - Mud-Slap - Level 1
  (339, 33900, 189, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Barboach - Mud Sport - Level 6
  (339, 33900, 300, 6, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Barboach - Water Sport - Level 6
  (339, 33900, 346, 6, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Barboach - Water Gun - Level 11
  (339, 33900, 55, 6, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Barboach - Magnitude - Level 16
  (339, 33900, 222, 6, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Barboach - Amnesia - Level 21
  (339, 33900, 133, 6, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Barboach - Rest - Level 26
  (339, 33900, 156, 6, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Barboach - Snore - Level 26
  (339, 33900, 173, 6, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Barboach - Earthquake - Level 31
  (339, 33900, 89, 6, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Barboach - Future Sight - Level 36
  (339, 33900, 248, 6, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Barboach - Fissure - Level 41
  (339, 33900, 90, 6, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Barboach - Water Pulse - TM03
  (339, 33900, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 12),
  -- Barboach - Toxic - TM06
  (339, 33900, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 13),
  -- Barboach - Hail - TM07
  (339, 33900, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 14),
  -- Barboach - Hidden Power - TM10
  (339, 33900, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Barboach - Ice Beam - TM13
  (339, 33900, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 16),
  -- Barboach - Blizzard - TM14
  (339, 33900, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 17),
  -- Barboach - Protect - TM17
  (339, 33900, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 18),
  -- Barboach - Rain Dance - TM18
  (339, 33900, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 19),
  -- Barboach - Frustration - TM21
  (339, 33900, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Barboach - Earthquake - TM26
  (339, 33900, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 21),
  -- Barboach - Return - TM27
  (339, 33900, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 22),
  -- Barboach - Double Team - TM32
  (339, 33900, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 23),
  -- Barboach - Sandstorm - TM37
  (339, 33900, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 24),
  -- Barboach - Rock Tomb - TM39
  (339, 33900, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 25),
  -- Barboach - Facade - TM42
  (339, 33900, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 26),
  -- Barboach - Secret Power - TM43
  (339, 33900, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 27),
  -- Barboach - Rest - TM44
  (339, 33900, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 28),
  -- Barboach - Attract - TM45
  (339, 33900, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 29),
  -- Barboach - Surf - HM03
  (339, 33900, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 30),
  -- Barboach - Waterfall - HM07
  (339, 33900, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 31),
  -- Barboach - Spark - Egg Move
  (339, 33900, 209, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Barboach - Thrash - Egg Move
  (339, 33900, 37, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Barboach - Whirlpool - Egg Move
  (339, 33900, 250, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Barboach - Double-Edge - Move Tutor
  (339, 33900, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Barboach - Mimic - Move Tutor
  (339, 33900, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Barboach - Substitute - Move Tutor
  (339, 33900, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Whiscash - Tickle - Level 1
  (340, 34000, 321, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whiscash - Mud-Slap - Level 1
  (340, 34000, 189, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Whiscash - Mud Sport - Level 1
  (340, 34000, 300, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Whiscash - Water Sport - Level 1
  (340, 34000, 346, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Whiscash - Mud Sport - Level 6
  (340, 34000, 300, 6, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Whiscash - Water Sport - Level 6
  (340, 34000, 346, 6, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Whiscash - Water Gun - Level 11
  (340, 34000, 55, 6, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Whiscash - Magnitude - Level 16
  (340, 34000, 222, 6, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Whiscash - Amnesia - Level 21
  (340, 34000, 133, 6, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Whiscash - Rest - Level 26
  (340, 34000, 156, 6, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Whiscash - Snore - Level 26
  (340, 34000, 173, 6, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Whiscash - Earthquake - Level 36
  (340, 34000, 89, 6, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Whiscash - Future Sight - Level 46
  (340, 34000, 248, 6, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Whiscash - Fissure - Level 56
  (340, 34000, 90, 6, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Whiscash - Water Pulse - TM03
  (340, 34000, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 15),
  -- Whiscash - Toxic - TM06
  (340, 34000, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Whiscash - Hail - TM07
  (340, 34000, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 17),
  -- Whiscash - Hidden Power - TM10
  (340, 34000, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 18),
  -- Whiscash - Ice Beam - TM13
  (340, 34000, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 19),
  -- Whiscash - Blizzard - TM14
  (340, 34000, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 20),
  -- Whiscash - Hyper Beam - TM15
  (340, 34000, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 21),
  -- Whiscash - Protect - TM17
  (340, 34000, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 22),
  -- Whiscash - Rain Dance - TM18
  (340, 34000, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 23),
  -- Whiscash - Frustration - TM21
  (340, 34000, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 24),
  -- Whiscash - Earthquake - TM26
  (340, 34000, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 25),
  -- Whiscash - Return - TM27
  (340, 34000, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 26),
  -- Whiscash - Double Team - TM32
  (340, 34000, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 27),
  -- Whiscash - Sandstorm - TM37
  (340, 34000, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 28),
  -- Whiscash - Rock Tomb - TM39
  (340, 34000, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 29),
  -- Whiscash - Facade - TM42
  (340, 34000, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 30),
  -- Whiscash - Secret Power - TM43
  (340, 34000, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 31),
  -- Whiscash - Rest - TM44
  (340, 34000, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 32),
  -- Whiscash - Attract - TM45
  (340, 34000, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 33),
  -- Whiscash - Surf - HM03
  (340, 34000, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 34),
  -- Whiscash - Strength - HM04
  (340, 34000, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 35),
  -- Whiscash - Rock Smash - HM06
  (340, 34000, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 36),
  -- Whiscash - Waterfall - HM07
  (340, 34000, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 37),
  -- Whiscash - Double-Edge - Move Tutor
  (340, 34000, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Whiscash - Mimic - Move Tutor
  (340, 34000, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Whiscash - Rock Slide - Move Tutor
  (340, 34000, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Whiscash - Substitute - Move Tutor
  (340, 34000, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Corphish - Bubble - Level 1
  (341, 34100, 145, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Corphish - Harden - Level 7
  (341, 34100, 106, 6, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Corphish - Vise Grip - Level 10
  (341, 34100, 11, 6, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Corphish - Leer - Level 13
  (341, 34100, 43, 6, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Corphish - Bubble Beam - Level 19
  (341, 34100, 61, 6, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Corphish - Protect - Level 22
  (341, 34100, 182, 6, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Corphish - Knock Off - Level 25
  (341, 34100, 282, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Corphish - Taunt - Level 31
  (341, 34100, 269, 6, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Corphish - Crabhammer - Level 34
  (341, 34100, 152, 6, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Corphish - Swords Dance - Level 37
  (341, 34100, 14, 6, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Corphish - Crunch - Level 43
  (341, 34100, 242, 6, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Corphish - Guillotine - Level 46
  (341, 34100, 12, 6, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Corphish - Water Pulse - TM03
  (341, 34100, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 13),
  -- Corphish - Toxic - TM06
  (341, 34100, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Corphish - Hail - TM07
  (341, 34100, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 15),
  -- Corphish - Hidden Power - TM10
  (341, 34100, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Corphish - Taunt - TM12
  (341, 34100, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 17),
  -- Corphish - Ice Beam - TM13
  (341, 34100, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 18),
  -- Corphish - Blizzard - TM14
  (341, 34100, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 19),
  -- Corphish - Protect - TM17
  (341, 34100, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 20),
  -- Corphish - Rain Dance - TM18
  (341, 34100, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 21),
  -- Corphish - Frustration - TM21
  (341, 34100, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 22),
  -- Corphish - Return - TM27
  (341, 34100, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 23),
  -- Corphish - Dig - TM28
  (341, 34100, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 24),
  -- Corphish - Brick Break - TM31
  (341, 34100, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 25),
  -- Corphish - Double Team - TM32
  (341, 34100, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 26),
  -- Corphish - Sludge Bomb - TM36
  (341, 34100, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 27),
  -- Corphish - Rock Tomb - TM39
  (341, 34100, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 28),
  -- Corphish - Aerial Ace - TM40
  (341, 34100, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 29),
  -- Corphish - Facade - TM42
  (341, 34100, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 30),
  -- Corphish - Secret Power - TM43
  (341, 34100, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 31),
  -- Corphish - Rest - TM44
  (341, 34100, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 32),
  -- Corphish - Attract - TM45
  (341, 34100, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 33),
  -- Corphish - Cut - HM01
  (341, 34100, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 34),
  -- Corphish - Surf - HM03
  (341, 34100, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 35),
  -- Corphish - Strength - HM04
  (341, 34100, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 36),
  -- Corphish - Rock Smash - HM06
  (341, 34100, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 37),
  -- Corphish - Waterfall - HM07
  (341, 34100, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 38),
  -- Corphish - Ancient Power - Egg Move
  (341, 34100, 246, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Corphish - Body Slam - Egg Move
  (341, 34100, 34, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Corphish - Endeavor - Egg Move
  (341, 34100, 283, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Corphish - Mud Sport - Egg Move
  (341, 34100, 300, 6, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Corphish - Body Slam - Move Tutor
  (341, 34100, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Corphish - Counter - Move Tutor
  (341, 34100, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Corphish - Double-Edge - Move Tutor
  (341, 34100, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Corphish - Mimic - Move Tutor
  (341, 34100, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Corphish - Substitute - Move Tutor
  (341, 34100, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Corphish - Swords Dance - Move Tutor
  (341, 34100, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Crawdaunt - Bubble - Level 1
  (342, 34200, 145, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crawdaunt - Harden - Level 1
  (342, 34200, 106, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crawdaunt - Vise Grip - Level 1
  (342, 34200, 11, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crawdaunt - Leer - Level 1
  (342, 34200, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Crawdaunt - Harden - Level 7
  (342, 34200, 106, 6, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Crawdaunt - Vise Grip - Level 10
  (342, 34200, 11, 6, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Crawdaunt - Leer - Level 13
  (342, 34200, 43, 6, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Crawdaunt - Bubble Beam - Level 19
  (342, 34200, 61, 6, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Crawdaunt - Protect - Level 22
  (342, 34200, 182, 6, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Crawdaunt - Knock Off - Level 25
  (342, 34200, 282, 6, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Crawdaunt - Taunt - Level 33
  (342, 34200, 269, 6, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Crawdaunt - Crabhammer - Level 38
  (342, 34200, 152, 6, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Crawdaunt - Swords Dance - Level 43
  (342, 34200, 14, 6, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Crawdaunt - Crunch - Level 51
  (342, 34200, 242, 6, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Crawdaunt - Guillotine - Level 56
  (342, 34200, 12, 6, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Crawdaunt - Water Pulse - TM03
  (342, 34200, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 16),
  -- Crawdaunt - Toxic - TM06
  (342, 34200, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 17),
  -- Crawdaunt - Hail - TM07
  (342, 34200, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 18),
  -- Crawdaunt - Hidden Power - TM10
  (342, 34200, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 19),
  -- Crawdaunt - Taunt - TM12
  (342, 34200, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 20),
  -- Crawdaunt - Ice Beam - TM13
  (342, 34200, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 21),
  -- Crawdaunt - Blizzard - TM14
  (342, 34200, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 22),
  -- Crawdaunt - Hyper Beam - TM15
  (342, 34200, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 23),
  -- Crawdaunt - Protect - TM17
  (342, 34200, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 24),
  -- Crawdaunt - Rain Dance - TM18
  (342, 34200, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 25),
  -- Crawdaunt - Frustration - TM21
  (342, 34200, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 26),
  -- Crawdaunt - Return - TM27
  (342, 34200, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 27),
  -- Crawdaunt - Dig - TM28
  (342, 34200, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 28),
  -- Crawdaunt - Brick Break - TM31
  (342, 34200, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 29),
  -- Crawdaunt - Double Team - TM32
  (342, 34200, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 30),
  -- Crawdaunt - Sludge Bomb - TM36
  (342, 34200, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 31),
  -- Crawdaunt - Rock Tomb - TM39
  (342, 34200, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 32),
  -- Crawdaunt - Aerial Ace - TM40
  (342, 34200, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 33),
  -- Crawdaunt - Facade - TM42
  (342, 34200, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 34),
  -- Crawdaunt - Secret Power - TM43
  (342, 34200, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 35),
  -- Crawdaunt - Rest - TM44
  (342, 34200, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 36),
  -- Crawdaunt - Attract - TM45
  (342, 34200, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 37),
  -- Crawdaunt - Cut - HM01
  (342, 34200, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 38),
  -- Crawdaunt - Surf - HM03
  (342, 34200, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 39),
  -- Crawdaunt - Strength - HM04
  (342, 34200, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 40),
  -- Crawdaunt - Rock Smash - HM06
  (342, 34200, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 41),
  -- Crawdaunt - Waterfall - HM07
  (342, 34200, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 42),
  -- Crawdaunt - Body Slam - Move Tutor
  (342, 34200, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Crawdaunt - Counter - Move Tutor
  (342, 34200, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Crawdaunt - Double-Edge - Move Tutor
  (342, 34200, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Crawdaunt - Mimic - Move Tutor
  (342, 34200, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Crawdaunt - Substitute - Move Tutor
  (342, 34200, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Crawdaunt - Swords Dance - Move Tutor
  (342, 34200, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Baltoy - Confusion - Level 1
  (343, 34300, 93, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Baltoy - Harden - Level 3
  (343, 34300, 106, 6, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Baltoy - Rapid Spin - Level 5
  (343, 34300, 229, 6, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Baltoy - Mud-Slap - Level 7
  (343, 34300, 189, 6, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Baltoy - Psybeam - Level 11
  (343, 34300, 60, 6, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Baltoy - Rock Tomb - Level 15
  (343, 34300, 317, 6, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Baltoy - Self-Destruct - Level 19
  (343, 34300, 120, 6, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Baltoy - Ancient Power - Level 25
  (343, 34300, 246, 6, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Baltoy - Sandstorm - Level 31
  (343, 34300, 201, 6, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Baltoy - Cosmic Power - Level 37
  (343, 34300, 322, 6, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Baltoy - Explosion - Level 45
  (343, 34300, 153, 6, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Baltoy - Toxic - TM06
  (343, 34300, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Baltoy - Hidden Power - TM10
  (343, 34300, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Baltoy - Sunny Day - TM11
  (343, 34300, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 14),
  -- Baltoy - Ice Beam - TM13
  (343, 34300, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 15),
  -- Baltoy - Light Screen - TM16
  (343, 34300, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 16),
  -- Baltoy - Protect - TM17
  (343, 34300, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 17),
  -- Baltoy - Rain Dance - TM18
  (343, 34300, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 18),
  -- Baltoy - Frustration - TM21
  (343, 34300, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 19),
  -- Baltoy - Solar Beam - TM22
  (343, 34300, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 20),
  -- Baltoy - Earthquake - TM26
  (343, 34300, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 21),
  -- Baltoy - Return - TM27
  (343, 34300, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 22),
  -- Baltoy - Dig - TM28
  (343, 34300, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 23),
  -- Baltoy - Psychic - TM29
  (343, 34300, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 24),
  -- Baltoy - Shadow Ball - TM30
  (343, 34300, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 25),
  -- Baltoy - Double Team - TM32
  (343, 34300, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 26),
  -- Baltoy - Reflect - TM33
  (343, 34300, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 27),
  -- Baltoy - Sandstorm - TM37
  (343, 34300, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 28),
  -- Baltoy - Rock Tomb - TM39
  (343, 34300, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 29),
  -- Baltoy - Facade - TM42
  (343, 34300, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 30),
  -- Baltoy - Secret Power - TM43
  (343, 34300, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 31),
  -- Baltoy - Rest - TM44
  (343, 34300, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 32),
  -- Baltoy - Skill Swap - TM48
  (343, 34300, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 33),
  -- Baltoy - Flash - HM05
  (343, 34300, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 34),
  -- Baltoy - Double-Edge - Move Tutor
  (343, 34300, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Baltoy - Dream Eater - Move Tutor
  (343, 34300, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Baltoy - Explosion - Move Tutor
  (343, 34300, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Baltoy - Mimic - Move Tutor
  (343, 34300, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Baltoy - Rock Slide - Move Tutor
  (343, 34300, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Baltoy - Substitute - Move Tutor
  (343, 34300, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Claydol - Teleport - Level 1
  (344, 34400, 100, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Claydol - Confusion - Level 1
  (344, 34400, 93, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Claydol - Harden - Level 1
  (344, 34400, 106, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Claydol - Rapid Spin - Level 1
  (344, 34400, 229, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Claydol - Harden - Level 3
  (344, 34400, 106, 6, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Claydol - Rapid Spin - Level 5
  (344, 34400, 229, 6, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Claydol - Mud-Slap - Level 7
  (344, 34400, 189, 6, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Claydol - Psybeam - Level 11
  (344, 34400, 60, 6, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Claydol - Rock Tomb - Level 15
  (344, 34400, 317, 6, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Claydol - Self-Destruct - Level 19
  (344, 34400, 120, 6, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Claydol - Ancient Power - Level 25
  (344, 34400, 246, 6, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Claydol - Sandstorm - Level 31
  (344, 34400, 201, 6, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Claydol - Hyper Beam - Level 36
  (344, 34400, 63, 6, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Claydol - Cosmic Power - Level 42
  (344, 34400, 322, 6, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Claydol - Explosion - Level 55
  (344, 34400, 153, 6, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Claydol - Toxic - TM06
  (344, 34400, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Claydol - Hidden Power - TM10
  (344, 34400, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 17),
  -- Claydol - Sunny Day - TM11
  (344, 34400, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 18),
  -- Claydol - Ice Beam - TM13
  (344, 34400, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 19),
  -- Claydol - Hyper Beam - TM15
  (344, 34400, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 20),
  -- Claydol - Light Screen - TM16
  (344, 34400, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 21),
  -- Claydol - Protect - TM17
  (344, 34400, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 22),
  -- Claydol - Rain Dance - TM18
  (344, 34400, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 23),
  -- Claydol - Frustration - TM21
  (344, 34400, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 24),
  -- Claydol - Solar Beam - TM22
  (344, 34400, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 25),
  -- Claydol - Earthquake - TM26
  (344, 34400, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 26),
  -- Claydol - Return - TM27
  (344, 34400, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 27),
  -- Claydol - Dig - TM28
  (344, 34400, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 28),
  -- Claydol - Psychic - TM29
  (344, 34400, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 29),
  -- Claydol - Shadow Ball - TM30
  (344, 34400, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 30),
  -- Claydol - Double Team - TM32
  (344, 34400, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 31),
  -- Claydol - Reflect - TM33
  (344, 34400, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 32),
  -- Claydol - Sandstorm - TM37
  (344, 34400, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 33),
  -- Claydol - Rock Tomb - TM39
  (344, 34400, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 34),
  -- Claydol - Facade - TM42
  (344, 34400, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 35),
  -- Claydol - Secret Power - TM43
  (344, 34400, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 36),
  -- Claydol - Rest - TM44
  (344, 34400, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 37),
  -- Claydol - Skill Swap - TM48
  (344, 34400, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 38),
  -- Claydol - Strength - HM04
  (344, 34400, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 39),
  -- Claydol - Flash - HM05
  (344, 34400, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 40),
  -- Claydol - Rock Smash - HM06
  (344, 34400, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 41),
  -- Claydol - Double-Edge - Move Tutor
  (344, 34400, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Claydol - Dream Eater - Move Tutor
  (344, 34400, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Claydol - Explosion - Move Tutor
  (344, 34400, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Claydol - Mimic - Move Tutor
  (344, 34400, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Claydol - Rock Slide - Move Tutor
  (344, 34400, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Claydol - Substitute - Move Tutor
  (344, 34400, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Lileep - Astonish - Level 1
  (345, 34500, 310, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lileep - Constrict - Level 8
  (345, 34500, 132, 6, NULL, 1, 8, NULL, NULL, NULL, 2),
  -- Lileep - Acid - Level 15
  (345, 34500, 51, 6, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Lileep - Ingrain - Level 22
  (345, 34500, 275, 6, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Lileep - Confuse Ray - Level 29
  (345, 34500, 109, 6, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Lileep - Amnesia - Level 36
  (345, 34500, 133, 6, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Lileep - Ancient Power - Level 43
  (345, 34500, 246, 6, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Lileep - Stockpile - Level 50
  (345, 34500, 254, 6, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Lileep - Swallow - Level 50
  (345, 34500, 256, 6, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Lileep - Spit Up - Level 50
  (345, 34500, 255, 6, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Lileep - Toxic - TM06
  (345, 34500, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 11),
  -- Lileep - Bullet Seed - TM09
  (345, 34500, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 12),
  -- Lileep - Hidden Power - TM10
  (345, 34500, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Lileep - Sunny Day - TM11
  (345, 34500, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 14),
  -- Lileep - Protect - TM17
  (345, 34500, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Lileep - Giga Drain - TM19
  (345, 34500, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 16),
  -- Lileep - Frustration - TM21
  (345, 34500, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 17),
  -- Lileep - Solar Beam - TM22
  (345, 34500, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 18),
  -- Lileep - Return - TM27
  (345, 34500, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 19),
  -- Lileep - Double Team - TM32
  (345, 34500, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 20),
  -- Lileep - Sludge Bomb - TM36
  (345, 34500, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 21),
  -- Lileep - Sandstorm - TM37
  (345, 34500, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 22),
  -- Lileep - Facade - TM42
  (345, 34500, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 23),
  -- Lileep - Secret Power - TM43
  (345, 34500, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 24),
  -- Lileep - Rest - TM44
  (345, 34500, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 25),
  -- Lileep - Attract - TM45
  (345, 34500, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 26),
  -- Lileep - Barrier - Egg Move
  (345, 34500, 112, 6, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Lileep - Mirror Coat - Egg Move
  (345, 34500, 243, 6, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Lileep - Recover - Egg Move
  (345, 34500, 105, 6, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Lileep - Rock Slide - Egg Move
  (345, 34500, 157, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Lileep - Body Slam - Move Tutor
  (345, 34500, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 31),
  -- Lileep - Double-Edge - Move Tutor
  (345, 34500, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Lileep - Mimic - Move Tutor
  (345, 34500, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Lileep - Rock Slide - Move Tutor
  (345, 34500, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Lileep - Substitute - Move Tutor
  (345, 34500, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Cradily - Astonish - Level 1
  (346, 34600, 310, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cradily - Constrict - Level 1
  (346, 34600, 132, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cradily - Acid - Level 1
  (346, 34600, 51, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cradily - Ingrain - Level 1
  (346, 34600, 275, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cradily - Constrict - Level 8
  (346, 34600, 132, 6, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Cradily - Acid - Level 15
  (346, 34600, 51, 6, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Cradily - Ingrain - Level 22
  (346, 34600, 275, 6, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Cradily - Confuse Ray - Level 29
  (346, 34600, 109, 6, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Cradily - Amnesia - Level 36
  (346, 34600, 133, 6, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Cradily - Ancient Power - Level 48
  (346, 34600, 246, 6, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Cradily - Stockpile - Level 60
  (346, 34600, 254, 6, NULL, 1, 60, NULL, NULL, NULL, 11),
  -- Cradily - Swallow - Level 60
  (346, 34600, 256, 6, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Cradily - Spit Up - Level 60
  (346, 34600, 255, 6, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Cradily - Toxic - TM06
  (346, 34600, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Cradily - Bullet Seed - TM09
  (346, 34600, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 15),
  -- Cradily - Hidden Power - TM10
  (346, 34600, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Cradily - Sunny Day - TM11
  (346, 34600, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 17),
  -- Cradily - Hyper Beam - TM15
  (346, 34600, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 18),
  -- Cradily - Protect - TM17
  (346, 34600, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 19),
  -- Cradily - Giga Drain - TM19
  (346, 34600, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 20),
  -- Cradily - Frustration - TM21
  (346, 34600, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 21),
  -- Cradily - Solar Beam - TM22
  (346, 34600, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 22),
  -- Cradily - Earthquake - TM26
  (346, 34600, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 23),
  -- Cradily - Return - TM27
  (346, 34600, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 24),
  -- Cradily - Double Team - TM32
  (346, 34600, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Cradily - Sludge Bomb - TM36
  (346, 34600, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 26),
  -- Cradily - Sandstorm - TM37
  (346, 34600, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 27),
  -- Cradily - Rock Tomb - TM39
  (346, 34600, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 28),
  -- Cradily - Facade - TM42
  (346, 34600, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 29),
  -- Cradily - Secret Power - TM43
  (346, 34600, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 30),
  -- Cradily - Rest - TM44
  (346, 34600, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 31),
  -- Cradily - Attract - TM45
  (346, 34600, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 32),
  -- Cradily - Strength - HM04
  (346, 34600, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 33),
  -- Cradily - Rock Smash - HM06
  (346, 34600, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 34),
  -- Cradily - Body Slam - Move Tutor
  (346, 34600, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Cradily - Double-Edge - Move Tutor
  (346, 34600, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Cradily - Mimic - Move Tutor
  (346, 34600, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Cradily - Rock Slide - Move Tutor
  (346, 34600, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Cradily - Substitute - Move Tutor
  (346, 34600, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Anorith - Scratch - Level 1
  (347, 34700, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Anorith - Harden - Level 7
  (347, 34700, 106, 6, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Anorith - Mud Sport - Level 13
  (347, 34700, 300, 6, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Anorith - Water Gun - Level 19
  (347, 34700, 55, 6, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Anorith - Metal Claw - Level 25
  (347, 34700, 232, 6, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Anorith - Protect - Level 31
  (347, 34700, 182, 6, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Anorith - Ancient Power - Level 37
  (347, 34700, 246, 6, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Anorith - Fury Cutter - Level 43
  (347, 34700, 210, 6, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Anorith - Slash - Level 49
  (347, 34700, 163, 6, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Anorith - Rock Blast - Level 55
  (347, 34700, 350, 6, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Anorith - Water Pulse - TM03
  (347, 34700, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 11),
  -- Anorith - Toxic - TM06
  (347, 34700, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Anorith - Hidden Power - TM10
  (347, 34700, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Anorith - Sunny Day - TM11
  (347, 34700, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 14),
  -- Anorith - Protect - TM17
  (347, 34700, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Anorith - Frustration - TM21
  (347, 34700, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 16),
  -- Anorith - Return - TM27
  (347, 34700, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 17),
  -- Anorith - Dig - TM28
  (347, 34700, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 18),
  -- Anorith - Brick Break - TM31
  (347, 34700, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 19),
  -- Anorith - Double Team - TM32
  (347, 34700, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 20),
  -- Anorith - Sandstorm - TM37
  (347, 34700, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 21),
  -- Anorith - Rock Tomb - TM39
  (347, 34700, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 22),
  -- Anorith - Aerial Ace - TM40
  (347, 34700, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 23),
  -- Anorith - Facade - TM42
  (347, 34700, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 24),
  -- Anorith - Secret Power - TM43
  (347, 34700, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 25),
  -- Anorith - Rest - TM44
  (347, 34700, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 26),
  -- Anorith - Attract - TM45
  (347, 34700, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 27),
  -- Anorith - Cut - HM01
  (347, 34700, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 28),
  -- Anorith - Rock Smash - HM06
  (347, 34700, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 29),
  -- Anorith - Knock Off - Egg Move
  (347, 34700, 282, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Anorith - Rapid Spin - Egg Move
  (347, 34700, 229, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Anorith - Rock Slide - Egg Move
  (347, 34700, 157, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Anorith - Swords Dance - Egg Move
  (347, 34700, 14, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Anorith - Body Slam - Move Tutor
  (347, 34700, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Anorith - Double-Edge - Move Tutor
  (347, 34700, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Anorith - Mimic - Move Tutor
  (347, 34700, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Anorith - Rock Slide - Move Tutor
  (347, 34700, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Anorith - Substitute - Move Tutor
  (347, 34700, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Anorith - Swords Dance - Move Tutor
  (347, 34700, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Armaldo - Scratch - Level 1
  (348, 34800, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Armaldo - Harden - Level 1
  (348, 34800, 106, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Armaldo - Mud Sport - Level 1
  (348, 34800, 300, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Armaldo - Water Gun - Level 1
  (348, 34800, 55, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Armaldo - Harden - Level 7
  (348, 34800, 106, 6, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Armaldo - Mud Sport - Level 13
  (348, 34800, 300, 6, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Armaldo - Water Gun - Level 19
  (348, 34800, 55, 6, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Armaldo - Metal Claw - Level 25
  (348, 34800, 232, 6, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Armaldo - Protect - Level 31
  (348, 34800, 182, 6, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Armaldo - Ancient Power - Level 37
  (348, 34800, 246, 6, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Armaldo - Fury Cutter - Level 46
  (348, 34800, 210, 6, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Armaldo - Slash - Level 55
  (348, 34800, 163, 6, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Armaldo - Rock Blast - Level 64
  (348, 34800, 350, 6, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Armaldo - Water Pulse - TM03
  (348, 34800, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 14),
  -- Armaldo - Toxic - TM06
  (348, 34800, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Armaldo - Hidden Power - TM10
  (348, 34800, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Armaldo - Sunny Day - TM11
  (348, 34800, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 17),
  -- Armaldo - Hyper Beam - TM15
  (348, 34800, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 18),
  -- Armaldo - Protect - TM17
  (348, 34800, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 19),
  -- Armaldo - Frustration - TM21
  (348, 34800, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Armaldo - Iron Tail - TM23
  (348, 34800, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 21),
  -- Armaldo - Earthquake - TM26
  (348, 34800, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 22),
  -- Armaldo - Return - TM27
  (348, 34800, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 23),
  -- Armaldo - Dig - TM28
  (348, 34800, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 24),
  -- Armaldo - Brick Break - TM31
  (348, 34800, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 25),
  -- Armaldo - Double Team - TM32
  (348, 34800, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 26),
  -- Armaldo - Sandstorm - TM37
  (348, 34800, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 27),
  -- Armaldo - Rock Tomb - TM39
  (348, 34800, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 28),
  -- Armaldo - Aerial Ace - TM40
  (348, 34800, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 29),
  -- Armaldo - Facade - TM42
  (348, 34800, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 30),
  -- Armaldo - Secret Power - TM43
  (348, 34800, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 31),
  -- Armaldo - Rest - TM44
  (348, 34800, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 32),
  -- Armaldo - Attract - TM45
  (348, 34800, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 33),
  -- Armaldo - Cut - HM01
  (348, 34800, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 34),
  -- Armaldo - Strength - HM04
  (348, 34800, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 35),
  -- Armaldo - Rock Smash - HM06
  (348, 34800, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 36),
  -- Armaldo - Body Slam - Move Tutor
  (348, 34800, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Armaldo - Double-Edge - Move Tutor
  (348, 34800, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Armaldo - Mimic - Move Tutor
  (348, 34800, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Armaldo - Rock Slide - Move Tutor
  (348, 34800, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Armaldo - Seismic Toss - Move Tutor
  (348, 34800, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Armaldo - Substitute - Move Tutor
  (348, 34800, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Armaldo - Swords Dance - Move Tutor
  (348, 34800, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Feebas - Splash - Level 1
  (349, 34900, 150, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Feebas - Tackle - Level 15
  (349, 34900, 33, 6, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Feebas - Flail - Level 30
  (349, 34900, 175, 6, NULL, 1, 30, NULL, NULL, NULL, 3),
  -- Feebas - Water Pulse - TM03
  (349, 34900, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 4),
  -- Feebas - Toxic - TM06
  (349, 34900, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 5),
  -- Feebas - Hail - TM07
  (349, 34900, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 6),
  -- Feebas - Hidden Power - TM10
  (349, 34900, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 7),
  -- Feebas - Ice Beam - TM13
  (349, 34900, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 8),
  -- Feebas - Blizzard - TM14
  (349, 34900, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 9),
  -- Feebas - Protect - TM17
  (349, 34900, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 10),
  -- Feebas - Rain Dance - TM18
  (349, 34900, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 11),
  -- Feebas - Frustration - TM21
  (349, 34900, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 12),
  -- Feebas - Return - TM27
  (349, 34900, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 13),
  -- Feebas - Double Team - TM32
  (349, 34900, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 14),
  -- Feebas - Facade - TM42
  (349, 34900, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 15),
  -- Feebas - Secret Power - TM43
  (349, 34900, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 16),
  -- Feebas - Rest - TM44
  (349, 34900, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 17),
  -- Feebas - Attract - TM45
  (349, 34900, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 18),
  -- Feebas - Surf - HM03
  (349, 34900, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 19),
  -- Feebas - Waterfall - HM07
  (349, 34900, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 20),
  -- Feebas - Confuse Ray - Egg Move
  (349, 34900, 109, 6, NULL, 5, NULL, NULL, NULL, NULL, 21),
  -- Feebas - Dragon Breath - Egg Move
  (349, 34900, 225, 6, NULL, 5, NULL, NULL, NULL, NULL, 22),
  -- Feebas - Hypnosis - Egg Move
  (349, 34900, 95, 6, NULL, 5, NULL, NULL, NULL, NULL, 23),
  -- Feebas - Light Screen - Egg Move
  (349, 34900, 113, 6, NULL, 5, NULL, NULL, NULL, NULL, 24),
  -- Feebas - Mirror Coat - Egg Move
  (349, 34900, 243, 6, NULL, 5, NULL, NULL, NULL, NULL, 25),
  -- Feebas - Mud Sport - Egg Move
  (349, 34900, 300, 6, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Feebas - Double-Edge - Move Tutor
  (349, 34900, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 27),
  -- Feebas - Mimic - Move Tutor
  (349, 34900, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 28),
  -- Feebas - Substitute - Move Tutor
  (349, 34900, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 29),
  -- Milotic - Water Gun - Level 1
  (350, 35000, 55, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Milotic - Wrap - Level 5
  (350, 35000, 35, 6, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Milotic - Water Sport - Level 10
  (350, 35000, 346, 6, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Milotic - Refresh - Level 15
  (350, 35000, 287, 6, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Milotic - Water Pulse - Level 20
  (350, 35000, 352, 6, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Milotic - Twister - Level 25
  (350, 35000, 239, 6, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Milotic - Recover - Level 30
  (350, 35000, 105, 6, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Milotic - Rain Dance - Level 35
  (350, 35000, 240, 6, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Milotic - Hydro Pump - Level 40
  (350, 35000, 56, 6, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Milotic - Attract - Level 45
  (350, 35000, 213, 6, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Milotic - Safeguard - Level 50
  (350, 35000, 219, 6, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Milotic - Water Pulse - TM03
  (350, 35000, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 12),
  -- Milotic - Toxic - TM06
  (350, 35000, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 13),
  -- Milotic - Hail - TM07
  (350, 35000, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 14),
  -- Milotic - Hidden Power - TM10
  (350, 35000, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Milotic - Ice Beam - TM13
  (350, 35000, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 16),
  -- Milotic - Blizzard - TM14
  (350, 35000, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 17),
  -- Milotic - Hyper Beam - TM15
  (350, 35000, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 18),
  -- Milotic - Protect - TM17
  (350, 35000, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 19),
  -- Milotic - Rain Dance - TM18
  (350, 35000, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 20),
  -- Milotic - Safeguard - TM20
  (350, 35000, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 21),
  -- Milotic - Frustration - TM21
  (350, 35000, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 22),
  -- Milotic - Iron Tail - TM23
  (350, 35000, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 23),
  -- Milotic - Return - TM27
  (350, 35000, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 24),
  -- Milotic - Double Team - TM32
  (350, 35000, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Milotic - Facade - TM42
  (350, 35000, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 26),
  -- Milotic - Secret Power - TM43
  (350, 35000, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 27),
  -- Milotic - Rest - TM44
  (350, 35000, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 28),
  -- Milotic - Attract - TM45
  (350, 35000, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 29),
  -- Milotic - Surf - HM03
  (350, 35000, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 30),
  -- Milotic - Waterfall - HM07
  (350, 35000, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 31),
  -- Milotic - Body Slam - Move Tutor
  (350, 35000, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Milotic - Double-Edge - Move Tutor
  (350, 35000, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Milotic - Mimic - Move Tutor
  (350, 35000, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Milotic - Substitute - Move Tutor
  (350, 35000, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Castform - Tackle - Level 1
  (351, 35100, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Castform - Water Gun - Level 10
  (351, 35100, 55, 6, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Castform - Ember - Level 10
  (351, 35100, 52, 6, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Castform - Powder Snow - Level 10
  (351, 35100, 181, 6, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Castform - Rain Dance - Level 20
  (351, 35100, 240, 6, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Castform - Sunny Day - Level 20
  (351, 35100, 241, 6, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Castform - Hail - Level 20
  (351, 35100, 258, 6, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Castform - Weather Ball - Level 30
  (351, 35100, 311, 6, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Castform - Water Pulse - TM03
  (351, 35100, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 9),
  -- Castform - Toxic - TM06
  (351, 35100, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 10),
  -- Castform - Hail - TM07
  (351, 35100, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 11),
  -- Castform - Hidden Power - TM10
  (351, 35100, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 12),
  -- Castform - Sunny Day - TM11
  (351, 35100, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 13),
  -- Castform - Ice Beam - TM13
  (351, 35100, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 14),
  -- Castform - Blizzard - TM14
  (351, 35100, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 15),
  -- Castform - Protect - TM17
  (351, 35100, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 16),
  -- Castform - Rain Dance - TM18
  (351, 35100, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 17),
  -- Castform - Frustration - TM21
  (351, 35100, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 18),
  -- Castform - Solar Beam - TM22
  (351, 35100, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 19),
  -- Castform - Thunderbolt - TM24
  (351, 35100, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 20),
  -- Castform - Thunder - TM25
  (351, 35100, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 21),
  -- Castform - Return - TM27
  (351, 35100, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 22),
  -- Castform - Shadow Ball - TM30
  (351, 35100, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 23),
  -- Castform - Double Team - TM32
  (351, 35100, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 24),
  -- Castform - Shock Wave - TM34
  (351, 35100, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 25),
  -- Castform - Flamethrower - TM35
  (351, 35100, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 26),
  -- Castform - Sandstorm - TM37
  (351, 35100, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 27),
  -- Castform - Fire Blast - TM38
  (351, 35100, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 28),
  -- Castform - Facade - TM42
  (351, 35100, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 29),
  -- Castform - Secret Power - TM43
  (351, 35100, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 30),
  -- Castform - Rest - TM44
  (351, 35100, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 31),
  -- Castform - Attract - TM45
  (351, 35100, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 32),
  -- Castform - Thief - TM46
  (351, 35100, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 33),
  -- Castform - Flash - HM05
  (351, 35100, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 34),
  -- Castform - Future Sight - Egg Move
  (351, 35100, 248, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Castform - Psych Up - Egg Move
  (351, 35100, 244, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Castform - Body Slam - Move Tutor
  (351, 35100, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Castform - Double-Edge - Move Tutor
  (351, 35100, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Castform - Mimic - Move Tutor
  (351, 35100, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Castform - Substitute - Move Tutor
  (351, 35100, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Castform - Thunder Wave - Move Tutor
  (351, 35100, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Kecleon - Thief - Level 1
  (352, 35200, 168, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kecleon - Scratch - Level 1
  (352, 35200, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kecleon - Tail Whip - Level 1
  (352, 35200, 39, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kecleon - Astonish - Level 1
  (352, 35200, 310, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kecleon - Lick - Level 1
  (352, 35200, 122, 6, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kecleon - Bind - Level 4
  (352, 35200, 20, 6, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Kecleon - Feint Attack - Level 7
  (352, 35200, 185, 6, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Kecleon - Fury Swipes - Level 12
  (352, 35200, 154, 6, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Kecleon - Psybeam - Level 17
  (352, 35200, 60, 6, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Kecleon - Screech - Level 24
  (352, 35200, 103, 6, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Kecleon - Slash - Level 31
  (352, 35200, 163, 6, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Kecleon - Substitute - Level 40
  (352, 35200, 164, 6, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Kecleon - Ancient Power - Level 49
  (352, 35200, 246, 6, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Kecleon - Focus Punch - TM01
  (352, 35200, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 14),
  -- Kecleon - Water Pulse - TM03
  (352, 35200, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 15),
  -- Kecleon - Toxic - TM06
  (352, 35200, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Kecleon - Hidden Power - TM10
  (352, 35200, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 17),
  -- Kecleon - Sunny Day - TM11
  (352, 35200, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 18),
  -- Kecleon - Ice Beam - TM13
  (352, 35200, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 19),
  -- Kecleon - Blizzard - TM14
  (352, 35200, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 20),
  -- Kecleon - Protect - TM17
  (352, 35200, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 21),
  -- Kecleon - Rain Dance - TM18
  (352, 35200, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 22),
  -- Kecleon - Frustration - TM21
  (352, 35200, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 23),
  -- Kecleon - Solar Beam - TM22
  (352, 35200, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 24),
  -- Kecleon - Iron Tail - TM23
  (352, 35200, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 25),
  -- Kecleon - Thunderbolt - TM24
  (352, 35200, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 26),
  -- Kecleon - Thunder - TM25
  (352, 35200, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 27),
  -- Kecleon - Return - TM27
  (352, 35200, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 28),
  -- Kecleon - Dig - TM28
  (352, 35200, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 29),
  -- Kecleon - Shadow Ball - TM30
  (352, 35200, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 30),
  -- Kecleon - Brick Break - TM31
  (352, 35200, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 31),
  -- Kecleon - Double Team - TM32
  (352, 35200, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 32),
  -- Kecleon - Shock Wave - TM34
  (352, 35200, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 33),
  -- Kecleon - Flamethrower - TM35
  (352, 35200, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 34),
  -- Kecleon - Fire Blast - TM38
  (352, 35200, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 35),
  -- Kecleon - Rock Tomb - TM39
  (352, 35200, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 36),
  -- Kecleon - Aerial Ace - TM40
  (352, 35200, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 37),
  -- Kecleon - Facade - TM42
  (352, 35200, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 38),
  -- Kecleon - Secret Power - TM43
  (352, 35200, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 39),
  -- Kecleon - Rest - TM44
  (352, 35200, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 40),
  -- Kecleon - Attract - TM45
  (352, 35200, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 41),
  -- Kecleon - Thief - TM46
  (352, 35200, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 42),
  -- Kecleon - Skill Swap - TM48
  (352, 35200, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 43),
  -- Kecleon - Snatch - TM49
  (352, 35200, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 44),
  -- Kecleon - Cut - HM01
  (352, 35200, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 45),
  -- Kecleon - Strength - HM04
  (352, 35200, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 46),
  -- Kecleon - Flash - HM05
  (352, 35200, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 47),
  -- Kecleon - Rock Smash - HM06
  (352, 35200, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 48),
  -- Kecleon - Disable - Egg Move
  (352, 35200, 50, 6, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Kecleon - Magic Coat - Egg Move
  (352, 35200, 277, 6, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Kecleon - Trick - Egg Move
  (352, 35200, 271, 6, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Kecleon - Body Slam - Move Tutor
  (352, 35200, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Kecleon - Counter - Move Tutor
  (352, 35200, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Kecleon - Double-Edge - Move Tutor
  (352, 35200, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 54),
  -- Kecleon - Mega Kick - Move Tutor
  (352, 35200, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 55),
  -- Kecleon - Mega Punch - Move Tutor
  (352, 35200, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 56),
  -- Kecleon - Metronome - Move Tutor
  (352, 35200, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 57),
  -- Kecleon - Mimic - Move Tutor
  (352, 35200, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 58),
  -- Kecleon - Rock Slide - Move Tutor
  (352, 35200, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 59),
  -- Kecleon - Seismic Toss - Move Tutor
  (352, 35200, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 60),
  -- Kecleon - Substitute - Move Tutor
  (352, 35200, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 61),
  -- Kecleon - Thunder Wave - Move Tutor
  (352, 35200, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 62),
  -- Shuppet - Knock Off - Level 1
  (353, 35300, 282, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shuppet - Screech - Level 8
  (353, 35300, 103, 6, NULL, 1, 8, NULL, NULL, NULL, 2),
  -- Shuppet - Night Shade - Level 13
  (353, 35300, 101, 6, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Shuppet - Curse - Level 20
  (353, 35300, 174, 6, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Shuppet - Spite - Level 25
  (353, 35300, 180, 6, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Shuppet - Will-O-Wisp - Level 32
  (353, 35300, 261, 6, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Shuppet - Feint Attack - Level 37
  (353, 35300, 185, 6, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Shuppet - Shadow Ball - Level 44
  (353, 35300, 247, 6, NULL, 1, 44, NULL, NULL, NULL, 8),
  -- Shuppet - Snatch - Level 49
  (353, 35300, 289, 6, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Shuppet - Grudge - Level 56
  (353, 35300, 288, 6, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Shuppet - Calm Mind - TM04
  (353, 35300, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 11),
  -- Shuppet - Toxic - TM06
  (353, 35300, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Shuppet - Hidden Power - TM10
  (353, 35300, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Shuppet - Sunny Day - TM11
  (353, 35300, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 14),
  -- Shuppet - Taunt - TM12
  (353, 35300, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 15),
  -- Shuppet - Protect - TM17
  (353, 35300, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 16),
  -- Shuppet - Rain Dance - TM18
  (353, 35300, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 17),
  -- Shuppet - Frustration - TM21
  (353, 35300, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 18),
  -- Shuppet - Thunderbolt - TM24
  (353, 35300, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 19),
  -- Shuppet - Thunder - TM25
  (353, 35300, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 20),
  -- Shuppet - Return - TM27
  (353, 35300, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 21),
  -- Shuppet - Psychic - TM29
  (353, 35300, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 22),
  -- Shuppet - Shadow Ball - TM30
  (353, 35300, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 23),
  -- Shuppet - Double Team - TM32
  (353, 35300, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 24),
  -- Shuppet - Shock Wave - TM34
  (353, 35300, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 25),
  -- Shuppet - Torment - TM41
  (353, 35300, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 26),
  -- Shuppet - Facade - TM42
  (353, 35300, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 27),
  -- Shuppet - Secret Power - TM43
  (353, 35300, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 28),
  -- Shuppet - Rest - TM44
  (353, 35300, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 29),
  -- Shuppet - Attract - TM45
  (353, 35300, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 30),
  -- Shuppet - Thief - TM46
  (353, 35300, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 31),
  -- Shuppet - Skill Swap - TM48
  (353, 35300, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 32),
  -- Shuppet - Snatch - TM49
  (353, 35300, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 33),
  -- Shuppet - Flash - HM05
  (353, 35300, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 34),
  -- Shuppet - Astonish - Egg Move
  (353, 35300, 310, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Shuppet - Destiny Bond - Egg Move
  (353, 35300, 194, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Shuppet - Disable - Egg Move
  (353, 35300, 50, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Shuppet - Foresight - Egg Move
  (353, 35300, 193, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Shuppet - Imprison - Egg Move
  (353, 35300, 286, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Shuppet - Body Slam - Move Tutor
  (353, 35300, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Shuppet - Double-Edge - Move Tutor
  (353, 35300, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Shuppet - Dream Eater - Move Tutor
  (353, 35300, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Shuppet - Mimic - Move Tutor
  (353, 35300, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Shuppet - Substitute - Move Tutor
  (353, 35300, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Shuppet - Thunder Wave - Move Tutor
  (353, 35300, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Banette - Knock Off - Level 1
  (354, 35400, 282, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Banette - Screech - Level 1
  (354, 35400, 103, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Banette - Night Shade - Level 1
  (354, 35400, 101, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Banette - Curse - Level 1
  (354, 35400, 174, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Banette - Screech - Level 8
  (354, 35400, 103, 6, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Banette - Night Shade - Level 13
  (354, 35400, 101, 6, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Banette - Curse - Level 20
  (354, 35400, 174, 6, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Banette - Spite - Level 25
  (354, 35400, 180, 6, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Banette - Will-O-Wisp - Level 32
  (354, 35400, 261, 6, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Banette - Feint Attack - Level 39
  (354, 35400, 185, 6, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Banette - Shadow Ball - Level 48
  (354, 35400, 247, 6, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Banette - Snatch - Level 55
  (354, 35400, 289, 6, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Banette - Grudge - Level 64
  (354, 35400, 288, 6, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Banette - Calm Mind - TM04
  (354, 35400, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 14),
  -- Banette - Toxic - TM06
  (354, 35400, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Banette - Hidden Power - TM10
  (354, 35400, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Banette - Sunny Day - TM11
  (354, 35400, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 17),
  -- Banette - Taunt - TM12
  (354, 35400, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 18),
  -- Banette - Hyper Beam - TM15
  (354, 35400, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 19),
  -- Banette - Protect - TM17
  (354, 35400, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 20),
  -- Banette - Rain Dance - TM18
  (354, 35400, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 21),
  -- Banette - Frustration - TM21
  (354, 35400, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 22),
  -- Banette - Thunderbolt - TM24
  (354, 35400, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 23),
  -- Banette - Thunder - TM25
  (354, 35400, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 24),
  -- Banette - Return - TM27
  (354, 35400, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 25),
  -- Banette - Psychic - TM29
  (354, 35400, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 26),
  -- Banette - Shadow Ball - TM30
  (354, 35400, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 27),
  -- Banette - Double Team - TM32
  (354, 35400, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 28),
  -- Banette - Shock Wave - TM34
  (354, 35400, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 29),
  -- Banette - Torment - TM41
  (354, 35400, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 30),
  -- Banette - Facade - TM42
  (354, 35400, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 31),
  -- Banette - Secret Power - TM43
  (354, 35400, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 32),
  -- Banette - Rest - TM44
  (354, 35400, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 33),
  -- Banette - Attract - TM45
  (354, 35400, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 34),
  -- Banette - Thief - TM46
  (354, 35400, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 35),
  -- Banette - Skill Swap - TM48
  (354, 35400, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 36),
  -- Banette - Snatch - TM49
  (354, 35400, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 37),
  -- Banette - Flash - HM05
  (354, 35400, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 38),
  -- Banette - Body Slam - Move Tutor
  (354, 35400, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Banette - Double-Edge - Move Tutor
  (354, 35400, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Banette - Dream Eater - Move Tutor
  (354, 35400, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Banette - Metronome - Move Tutor
  (354, 35400, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Banette - Mimic - Move Tutor
  (354, 35400, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Banette - Substitute - Move Tutor
  (354, 35400, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Banette - Thunder Wave - Move Tutor
  (354, 35400, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Duskull - Leer - Level 1
  (355, 35500, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Duskull - Night Shade - Level 1
  (355, 35500, 101, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Duskull - Disable - Level 5
  (355, 35500, 50, 6, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Duskull - Foresight - Level 12
  (355, 35500, 193, 6, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Duskull - Astonish - Level 16
  (355, 35500, 310, 6, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Duskull - Confuse Ray - Level 23
  (355, 35500, 109, 6, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Duskull - Pursuit - Level 27
  (355, 35500, 228, 6, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Duskull - Curse - Level 34
  (355, 35500, 174, 6, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Duskull - Will-O-Wisp - Level 38
  (355, 35500, 261, 6, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Duskull - Mean Look - Level 45
  (355, 35500, 212, 6, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Duskull - Future Sight - Level 49
  (355, 35500, 248, 6, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Duskull - Calm Mind - TM04
  (355, 35500, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 12),
  -- Duskull - Toxic - TM06
  (355, 35500, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 13),
  -- Duskull - Hidden Power - TM10
  (355, 35500, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 14),
  -- Duskull - Sunny Day - TM11
  (355, 35500, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 15),
  -- Duskull - Taunt - TM12
  (355, 35500, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 16),
  -- Duskull - Ice Beam - TM13
  (355, 35500, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 17),
  -- Duskull - Blizzard - TM14
  (355, 35500, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 18),
  -- Duskull - Protect - TM17
  (355, 35500, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 19),
  -- Duskull - Rain Dance - TM18
  (355, 35500, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 20),
  -- Duskull - Frustration - TM21
  (355, 35500, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 21),
  -- Duskull - Return - TM27
  (355, 35500, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 22),
  -- Duskull - Psychic - TM29
  (355, 35500, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 23),
  -- Duskull - Shadow Ball - TM30
  (355, 35500, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 24),
  -- Duskull - Double Team - TM32
  (355, 35500, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Duskull - Torment - TM41
  (355, 35500, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 26),
  -- Duskull - Facade - TM42
  (355, 35500, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 27),
  -- Duskull - Secret Power - TM43
  (355, 35500, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 28),
  -- Duskull - Rest - TM44
  (355, 35500, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 29),
  -- Duskull - Attract - TM45
  (355, 35500, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 30),
  -- Duskull - Thief - TM46
  (355, 35500, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 31),
  -- Duskull - Skill Swap - TM48
  (355, 35500, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 32),
  -- Duskull - Snatch - TM49
  (355, 35500, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 33),
  -- Duskull - Flash - HM05
  (355, 35500, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 34),
  -- Duskull - Destiny Bond - Egg Move
  (355, 35500, 194, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Duskull - Feint Attack - Egg Move
  (355, 35500, 185, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Duskull - Grudge - Egg Move
  (355, 35500, 288, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Duskull - Imprison - Egg Move
  (355, 35500, 286, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Duskull - Memento - Egg Move
  (355, 35500, 262, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Duskull - Pain Split - Egg Move
  (355, 35500, 220, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Duskull - Body Slam - Move Tutor
  (355, 35500, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Duskull - Double-Edge - Move Tutor
  (355, 35500, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Duskull - Dream Eater - Move Tutor
  (355, 35500, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Duskull - Mimic - Move Tutor
  (355, 35500, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Duskull - Substitute - Move Tutor
  (355, 35500, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Dusclops - Bind - Level 1
  (356, 35600, 20, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dusclops - Leer - Level 1
  (356, 35600, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dusclops - Night Shade - Level 1
  (356, 35600, 101, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dusclops - Disable - Level 1
  (356, 35600, 50, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dusclops - Disable - Level 5
  (356, 35600, 50, 6, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Dusclops - Foresight - Level 12
  (356, 35600, 193, 6, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Dusclops - Astonish - Level 16
  (356, 35600, 310, 6, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Dusclops - Confuse Ray - Level 23
  (356, 35600, 109, 6, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Dusclops - Pursuit - Level 27
  (356, 35600, 228, 6, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Dusclops - Curse - Level 34
  (356, 35600, 174, 6, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Dusclops - Shadow Punch - Level 37
  (356, 35600, 325, 6, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Dusclops - Will-O-Wisp - Level 41
  (356, 35600, 261, 6, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Dusclops - Mean Look - Level 51
  (356, 35600, 212, 6, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Dusclops - Future Sight - Level 58
  (356, 35600, 248, 6, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Dusclops - Focus Punch - TM01
  (356, 35600, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 15),
  -- Dusclops - Calm Mind - TM04
  (356, 35600, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 16),
  -- Dusclops - Toxic - TM06
  (356, 35600, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 17),
  -- Dusclops - Hidden Power - TM10
  (356, 35600, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 18),
  -- Dusclops - Sunny Day - TM11
  (356, 35600, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 19),
  -- Dusclops - Taunt - TM12
  (356, 35600, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 20),
  -- Dusclops - Ice Beam - TM13
  (356, 35600, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 21),
  -- Dusclops - Blizzard - TM14
  (356, 35600, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 22),
  -- Dusclops - Hyper Beam - TM15
  (356, 35600, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 23),
  -- Dusclops - Protect - TM17
  (356, 35600, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 24),
  -- Dusclops - Rain Dance - TM18
  (356, 35600, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 25),
  -- Dusclops - Frustration - TM21
  (356, 35600, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 26),
  -- Dusclops - Earthquake - TM26
  (356, 35600, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 27),
  -- Dusclops - Return - TM27
  (356, 35600, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 28),
  -- Dusclops - Psychic - TM29
  (356, 35600, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 29),
  -- Dusclops - Shadow Ball - TM30
  (356, 35600, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 30),
  -- Dusclops - Double Team - TM32
  (356, 35600, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 31),
  -- Dusclops - Rock Tomb - TM39
  (356, 35600, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 32),
  -- Dusclops - Torment - TM41
  (356, 35600, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 33),
  -- Dusclops - Facade - TM42
  (356, 35600, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 34),
  -- Dusclops - Secret Power - TM43
  (356, 35600, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 35),
  -- Dusclops - Rest - TM44
  (356, 35600, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 36),
  -- Dusclops - Attract - TM45
  (356, 35600, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 37),
  -- Dusclops - Thief - TM46
  (356, 35600, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 38),
  -- Dusclops - Skill Swap - TM48
  (356, 35600, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 39),
  -- Dusclops - Snatch - TM49
  (356, 35600, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 40),
  -- Dusclops - Strength - HM04
  (356, 35600, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 41),
  -- Dusclops - Flash - HM05
  (356, 35600, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 42),
  -- Dusclops - Rock Smash - HM06
  (356, 35600, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 43),
  -- Dusclops - Body Slam - Move Tutor
  (356, 35600, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Dusclops - Counter - Move Tutor
  (356, 35600, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Dusclops - Double-Edge - Move Tutor
  (356, 35600, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Dusclops - Dream Eater - Move Tutor
  (356, 35600, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Dusclops - Mega Kick - Move Tutor
  (356, 35600, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Dusclops - Mega Punch - Move Tutor
  (356, 35600, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Dusclops - Metronome - Move Tutor
  (356, 35600, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Dusclops - Mimic - Move Tutor
  (356, 35600, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Dusclops - Rock Slide - Move Tutor
  (356, 35600, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Dusclops - Seismic Toss - Move Tutor
  (356, 35600, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Dusclops - Substitute - Move Tutor
  (356, 35600, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 54),
  -- Tropius - Leer - Level 1
  (357, 35700, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tropius - Gust - Level 1
  (357, 35700, 16, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tropius - Growth - Level 7
  (357, 35700, 74, 6, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Tropius - Razor Leaf - Level 11
  (357, 35700, 75, 6, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Tropius - Stomp - Level 17
  (357, 35700, 23, 6, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Tropius - Sweet Scent - Level 21
  (357, 35700, 230, 6, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Tropius - Whirlwind - Level 27
  (357, 35700, 18, 6, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Tropius - Magical Leaf - Level 31
  (357, 35700, 345, 6, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Tropius - Body Slam - Level 37
  (357, 35700, 34, 6, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Tropius - Solar Beam - Level 41
  (357, 35700, 76, 6, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Tropius - Synthesis - Level 47
  (357, 35700, 235, 6, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Tropius - Roar - TM05
  (357, 35700, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 12),
  -- Tropius - Toxic - TM06
  (357, 35700, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 13),
  -- Tropius - Bullet Seed - TM09
  (357, 35700, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 14),
  -- Tropius - Hidden Power - TM10
  (357, 35700, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Tropius - Sunny Day - TM11
  (357, 35700, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Tropius - Hyper Beam - TM15
  (357, 35700, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 17),
  -- Tropius - Protect - TM17
  (357, 35700, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 18),
  -- Tropius - Giga Drain - TM19
  (357, 35700, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 19),
  -- Tropius - Safeguard - TM20
  (357, 35700, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 20),
  -- Tropius - Frustration - TM21
  (357, 35700, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 21),
  -- Tropius - Solar Beam - TM22
  (357, 35700, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 22),
  -- Tropius - Earthquake - TM26
  (357, 35700, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 23),
  -- Tropius - Return - TM27
  (357, 35700, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 24),
  -- Tropius - Double Team - TM32
  (357, 35700, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Tropius - Aerial Ace - TM40
  (357, 35700, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 26),
  -- Tropius - Facade - TM42
  (357, 35700, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 27),
  -- Tropius - Secret Power - TM43
  (357, 35700, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 28),
  -- Tropius - Rest - TM44
  (357, 35700, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 29),
  -- Tropius - Attract - TM45
  (357, 35700, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 30),
  -- Tropius - Steel Wing - TM47
  (357, 35700, 211, 6, NULL, 2, NULL, NULL, 6002047, NULL, 31),
  -- Tropius - Cut - HM01
  (357, 35700, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 32),
  -- Tropius - Fly - HM02
  (357, 35700, 19, 6, NULL, 3, NULL, NULL, 6003002, NULL, 33),
  -- Tropius - Strength - HM04
  (357, 35700, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 34),
  -- Tropius - Flash - HM05
  (357, 35700, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 35),
  -- Tropius - Rock Smash - HM06
  (357, 35700, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 36),
  -- Tropius - Headbutt - Egg Move
  (357, 35700, 29, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Tropius - Leech Seed - Egg Move
  (357, 35700, 73, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Tropius - Nature Power - Egg Move
  (357, 35700, 267, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Tropius - Razor Wind - Egg Move
  (357, 35700, 13, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Tropius - Slam - Egg Move
  (357, 35700, 21, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Tropius - Body Slam - Move Tutor
  (357, 35700, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Tropius - Double-Edge - Move Tutor
  (357, 35700, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Tropius - Mimic - Move Tutor
  (357, 35700, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Tropius - Substitute - Move Tutor
  (357, 35700, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Tropius - Swords Dance - Move Tutor
  (357, 35700, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Chimecho - Wrap - Level 1
  (358, 35800, 35, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chimecho - Growl - Level 6
  (358, 35800, 45, 6, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Chimecho - Astonish - Level 9
  (358, 35800, 310, 6, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Chimecho - Confusion - Level 14
  (358, 35800, 93, 6, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Chimecho - Take Down - Level 17
  (358, 35800, 36, 6, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Chimecho - Uproar - Level 22
  (358, 35800, 253, 6, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Chimecho - Yawn - Level 25
  (358, 35800, 281, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Chimecho - Psywave - Level 30
  (358, 35800, 149, 6, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Chimecho - Double-Edge - Level 33
  (358, 35800, 38, 6, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Chimecho - Heal Bell - Level 38
  (358, 35800, 215, 6, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Chimecho - Safeguard - Level 41
  (358, 35800, 219, 6, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Chimecho - Psychic - Level 46
  (358, 35800, 94, 6, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Chimecho - Calm Mind - TM04
  (358, 35800, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 13),
  -- Chimecho - Toxic - TM06
  (358, 35800, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Chimecho - Hidden Power - TM10
  (358, 35800, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Chimecho - Sunny Day - TM11
  (358, 35800, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Chimecho - Taunt - TM12
  (358, 35800, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 17),
  -- Chimecho - Light Screen - TM16
  (358, 35800, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 18),
  -- Chimecho - Protect - TM17
  (358, 35800, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 19),
  -- Chimecho - Rain Dance - TM18
  (358, 35800, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 20),
  -- Chimecho - Safeguard - TM20
  (358, 35800, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 21),
  -- Chimecho - Frustration - TM21
  (358, 35800, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 22),
  -- Chimecho - Return - TM27
  (358, 35800, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 23),
  -- Chimecho - Psychic - TM29
  (358, 35800, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 24),
  -- Chimecho - Shadow Ball - TM30
  (358, 35800, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 25),
  -- Chimecho - Double Team - TM32
  (358, 35800, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 26),
  -- Chimecho - Reflect - TM33
  (358, 35800, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 27),
  -- Chimecho - Shock Wave - TM34
  (358, 35800, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 28),
  -- Chimecho - Torment - TM41
  (358, 35800, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 29),
  -- Chimecho - Facade - TM42
  (358, 35800, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 30),
  -- Chimecho - Secret Power - TM43
  (358, 35800, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 31),
  -- Chimecho - Rest - TM44
  (358, 35800, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 32),
  -- Chimecho - Attract - TM45
  (358, 35800, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 33),
  -- Chimecho - Skill Swap - TM48
  (358, 35800, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 34),
  -- Chimecho - Snatch - TM49
  (358, 35800, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 35),
  -- Chimecho - Flash - HM05
  (358, 35800, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 36),
  -- Chimecho - Curse - Egg Move
  (358, 35800, 174, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Chimecho - Disable - Egg Move
  (358, 35800, 50, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Chimecho - Dream Eater - Egg Move
  (358, 35800, 138, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Chimecho - Hypnosis - Egg Move
  (358, 35800, 95, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Chimecho - Double-Edge - Move Tutor
  (358, 35800, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Chimecho - Dream Eater - Move Tutor
  (358, 35800, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Chimecho - Mimic - Move Tutor
  (358, 35800, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Chimecho - Substitute - Move Tutor
  (358, 35800, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Absol - Scratch - Level 1
  (359, 35900, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Absol - Leer - Level 5
  (359, 35900, 43, 6, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Absol - Taunt - Level 9
  (359, 35900, 269, 6, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Absol - Quick Attack - Level 13
  (359, 35900, 98, 6, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Absol - Razor Wind - Level 17
  (359, 35900, 13, 6, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Absol - Bite - Level 21
  (359, 35900, 44, 6, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Absol - Swords Dance - Level 26
  (359, 35900, 14, 6, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Absol - Double Team - Level 31
  (359, 35900, 104, 6, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Absol - Slash - Level 36
  (359, 35900, 163, 6, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Absol - Future Sight - Level 41
  (359, 35900, 248, 6, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Absol - Perish Song - Level 46
  (359, 35900, 195, 6, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Absol - Water Pulse - TM03
  (359, 35900, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 12),
  -- Absol - Calm Mind - TM04
  (359, 35900, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 13),
  -- Absol - Toxic - TM06
  (359, 35900, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Absol - Hail - TM07
  (359, 35900, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 15),
  -- Absol - Hidden Power - TM10
  (359, 35900, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Absol - Sunny Day - TM11
  (359, 35900, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 17),
  -- Absol - Taunt - TM12
  (359, 35900, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 18),
  -- Absol - Ice Beam - TM13
  (359, 35900, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 19),
  -- Absol - Blizzard - TM14
  (359, 35900, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 20),
  -- Absol - Hyper Beam - TM15
  (359, 35900, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 21),
  -- Absol - Protect - TM17
  (359, 35900, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 22),
  -- Absol - Rain Dance - TM18
  (359, 35900, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 23),
  -- Absol - Frustration - TM21
  (359, 35900, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 24),
  -- Absol - Iron Tail - TM23
  (359, 35900, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 25),
  -- Absol - Thunderbolt - TM24
  (359, 35900, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 26),
  -- Absol - Thunder - TM25
  (359, 35900, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 27),
  -- Absol - Return - TM27
  (359, 35900, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 28),
  -- Absol - Shadow Ball - TM30
  (359, 35900, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 29),
  -- Absol - Double Team - TM32
  (359, 35900, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 30),
  -- Absol - Shock Wave - TM34
  (359, 35900, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 31),
  -- Absol - Flamethrower - TM35
  (359, 35900, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 32),
  -- Absol - Sandstorm - TM37
  (359, 35900, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 33),
  -- Absol - Fire Blast - TM38
  (359, 35900, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 34),
  -- Absol - Aerial Ace - TM40
  (359, 35900, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 35),
  -- Absol - Torment - TM41
  (359, 35900, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 36),
  -- Absol - Facade - TM42
  (359, 35900, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 37),
  -- Absol - Secret Power - TM43
  (359, 35900, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 38),
  -- Absol - Rest - TM44
  (359, 35900, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 39),
  -- Absol - Attract - TM45
  (359, 35900, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 40),
  -- Absol - Thief - TM46
  (359, 35900, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 41),
  -- Absol - Snatch - TM49
  (359, 35900, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 42),
  -- Absol - Cut - HM01
  (359, 35900, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 43),
  -- Absol - Strength - HM04
  (359, 35900, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 44),
  -- Absol - Flash - HM05
  (359, 35900, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 45),
  -- Absol - Rock Smash - HM06
  (359, 35900, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 46),
  -- Absol - Baton Pass - Egg Move
  (359, 35900, 226, 6, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Absol - Curse - Egg Move
  (359, 35900, 174, 6, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Absol - Double-Edge - Egg Move
  (359, 35900, 38, 6, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Absol - Feint Attack - Egg Move
  (359, 35900, 185, 6, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Absol - Magic Coat - Egg Move
  (359, 35900, 277, 6, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Absol - Substitute - Egg Move
  (359, 35900, 164, 6, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Absol - Body Slam - Move Tutor
  (359, 35900, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Absol - Counter - Move Tutor
  (359, 35900, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 54),
  -- Absol - Double-Edge - Move Tutor
  (359, 35900, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 55),
  -- Absol - Dream Eater - Move Tutor
  (359, 35900, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 56),
  -- Absol - Mimic - Move Tutor
  (359, 35900, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 57),
  -- Absol - Rock Slide - Move Tutor
  (359, 35900, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 58),
  -- Absol - Substitute - Move Tutor
  (359, 35900, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 59),
  -- Absol - Swords Dance - Move Tutor
  (359, 35900, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 60),
  -- Absol - Thunder Wave - Move Tutor
  (359, 35900, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 61),
  -- Wynaut - Splash - Level 1
  (360, 36000, 150, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wynaut - Charm - Level 1
  (360, 36000, 204, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wynaut - Encore - Level 1
  (360, 36000, 227, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wynaut - Counter - Level 15
  (360, 36000, 68, 6, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Wynaut - Mirror Coat - Level 15
  (360, 36000, 243, 6, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Wynaut - Safeguard - Level 15
  (360, 36000, 219, 6, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Wynaut - Destiny Bond - Level 15
  (360, 36000, 194, 6, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Snorunt - Powder Snow - Level 1
  (361, 36100, 181, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snorunt - Leer - Level 1
  (361, 36100, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snorunt - Double Team - Level 7
  (361, 36100, 104, 6, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Snorunt - Bite - Level 10
  (361, 36100, 44, 6, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Snorunt - Icy Wind - Level 16
  (361, 36100, 196, 6, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Snorunt - Headbutt - Level 19
  (361, 36100, 29, 6, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Snorunt - Protect - Level 25
  (361, 36100, 182, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Snorunt - Crunch - Level 28
  (361, 36100, 242, 6, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Snorunt - Ice Beam - Level 34
  (361, 36100, 58, 6, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Snorunt - Hail - Level 37
  (361, 36100, 258, 6, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Snorunt - Blizzard - Level 43
  (361, 36100, 59, 6, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Snorunt - Water Pulse - TM03
  (361, 36100, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 12),
  -- Snorunt - Toxic - TM06
  (361, 36100, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 13),
  -- Snorunt - Hail - TM07
  (361, 36100, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 14),
  -- Snorunt - Hidden Power - TM10
  (361, 36100, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Snorunt - Ice Beam - TM13
  (361, 36100, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 16),
  -- Snorunt - Blizzard - TM14
  (361, 36100, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 17),
  -- Snorunt - Light Screen - TM16
  (361, 36100, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 18),
  -- Snorunt - Protect - TM17
  (361, 36100, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 19),
  -- Snorunt - Rain Dance - TM18
  (361, 36100, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 20),
  -- Snorunt - Safeguard - TM20
  (361, 36100, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 21),
  -- Snorunt - Frustration - TM21
  (361, 36100, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 22),
  -- Snorunt - Return - TM27
  (361, 36100, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 23),
  -- Snorunt - Shadow Ball - TM30
  (361, 36100, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 24),
  -- Snorunt - Double Team - TM32
  (361, 36100, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Snorunt - Facade - TM42
  (361, 36100, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 26),
  -- Snorunt - Secret Power - TM43
  (361, 36100, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 27),
  -- Snorunt - Rest - TM44
  (361, 36100, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 28),
  -- Snorunt - Attract - TM45
  (361, 36100, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 29),
  -- Snorunt - Flash - HM05
  (361, 36100, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 30),
  -- Snorunt - Block - Egg Move
  (361, 36100, 335, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Snorunt - Spikes - Egg Move
  (361, 36100, 191, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Snorunt - Body Slam - Move Tutor
  (361, 36100, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Snorunt - Double-Edge - Move Tutor
  (361, 36100, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Snorunt - Mimic - Move Tutor
  (361, 36100, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Snorunt - Substitute - Move Tutor
  (361, 36100, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Glalie - Powder Snow - Level 1
  (362, 36200, 181, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glalie - Leer - Level 1
  (362, 36200, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glalie - Double Team - Level 1
  (362, 36200, 104, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Glalie - Bite - Level 1
  (362, 36200, 44, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Glalie - Double Team - Level 7
  (362, 36200, 104, 6, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Glalie - Bite - Level 10
  (362, 36200, 44, 6, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Glalie - Icy Wind - Level 16
  (362, 36200, 196, 6, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Glalie - Headbutt - Level 19
  (362, 36200, 29, 6, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Glalie - Protect - Level 25
  (362, 36200, 182, 6, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Glalie - Crunch - Level 28
  (362, 36200, 242, 6, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Glalie - Ice Beam - Level 34
  (362, 36200, 58, 6, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Glalie - Hail - Level 42
  (362, 36200, 258, 6, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Glalie - Blizzard - Level 53
  (362, 36200, 59, 6, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Glalie - Sheer Cold - Level 61
  (362, 36200, 329, 6, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Glalie - Water Pulse - TM03
  (362, 36200, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 15),
  -- Glalie - Toxic - TM06
  (362, 36200, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Glalie - Hail - TM07
  (362, 36200, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 17),
  -- Glalie - Hidden Power - TM10
  (362, 36200, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 18),
  -- Glalie - Taunt - TM12
  (362, 36200, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 19),
  -- Glalie - Ice Beam - TM13
  (362, 36200, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 20),
  -- Glalie - Blizzard - TM14
  (362, 36200, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 21),
  -- Glalie - Hyper Beam - TM15
  (362, 36200, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 22),
  -- Glalie - Light Screen - TM16
  (362, 36200, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 23),
  -- Glalie - Protect - TM17
  (362, 36200, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 24),
  -- Glalie - Rain Dance - TM18
  (362, 36200, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 25),
  -- Glalie - Safeguard - TM20
  (362, 36200, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 26),
  -- Glalie - Frustration - TM21
  (362, 36200, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 27),
  -- Glalie - Earthquake - TM26
  (362, 36200, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 28),
  -- Glalie - Return - TM27
  (362, 36200, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 29),
  -- Glalie - Shadow Ball - TM30
  (362, 36200, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 30),
  -- Glalie - Double Team - TM32
  (362, 36200, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 31),
  -- Glalie - Torment - TM41
  (362, 36200, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 32),
  -- Glalie - Facade - TM42
  (362, 36200, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 33),
  -- Glalie - Secret Power - TM43
  (362, 36200, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 34),
  -- Glalie - Rest - TM44
  (362, 36200, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 35),
  -- Glalie - Attract - TM45
  (362, 36200, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 36),
  -- Glalie - Flash - HM05
  (362, 36200, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 37),
  -- Glalie - Body Slam - Move Tutor
  (362, 36200, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Glalie - Double-Edge - Move Tutor
  (362, 36200, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Glalie - Explosion - Move Tutor
  (362, 36200, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Glalie - Mimic - Move Tutor
  (362, 36200, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Glalie - Substitute - Move Tutor
  (362, 36200, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Spheal - Powder Snow - Level 1
  (363, 36300, 181, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spheal - Growl - Level 1
  (363, 36300, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spheal - Water Gun - Level 1
  (363, 36300, 55, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Spheal - Defense Curl - Level 1
  (363, 36300, 111, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Spheal - Encore - Level 7
  (363, 36300, 227, 6, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Spheal - Ice Ball - Level 13
  (363, 36300, 301, 6, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Spheal - Body Slam - Level 19
  (363, 36300, 34, 6, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Spheal - Aurora Beam - Level 25
  (363, 36300, 62, 6, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Spheal - Hail - Level 31
  (363, 36300, 258, 6, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Spheal - Rest - Level 37
  (363, 36300, 156, 6, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Spheal - Snore - Level 37
  (363, 36300, 173, 6, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Spheal - Blizzard - Level 43
  (363, 36300, 59, 6, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Spheal - Sheer Cold - Level 49
  (363, 36300, 329, 6, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Spheal - Water Pulse - TM03
  (363, 36300, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 14),
  -- Spheal - Toxic - TM06
  (363, 36300, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Spheal - Hail - TM07
  (363, 36300, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 16),
  -- Spheal - Hidden Power - TM10
  (363, 36300, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 17),
  -- Spheal - Ice Beam - TM13
  (363, 36300, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 18),
  -- Spheal - Blizzard - TM14
  (363, 36300, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 19),
  -- Spheal - Protect - TM17
  (363, 36300, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 20),
  -- Spheal - Rain Dance - TM18
  (363, 36300, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 21),
  -- Spheal - Frustration - TM21
  (363, 36300, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 22),
  -- Spheal - Iron Tail - TM23
  (363, 36300, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 23),
  -- Spheal - Earthquake - TM26
  (363, 36300, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 24),
  -- Spheal - Return - TM27
  (363, 36300, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 25),
  -- Spheal - Double Team - TM32
  (363, 36300, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 26),
  -- Spheal - Rock Tomb - TM39
  (363, 36300, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 27),
  -- Spheal - Facade - TM42
  (363, 36300, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 28),
  -- Spheal - Secret Power - TM43
  (363, 36300, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 29),
  -- Spheal - Rest - TM44
  (363, 36300, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 30),
  -- Spheal - Attract - TM45
  (363, 36300, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 31),
  -- Spheal - Surf - HM03
  (363, 36300, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 32),
  -- Spheal - Strength - HM04
  (363, 36300, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 33),
  -- Spheal - Rock Smash - HM06
  (363, 36300, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 34),
  -- Spheal - Waterfall - HM07
  (363, 36300, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 35),
  -- Spheal - Curse - Egg Move
  (363, 36300, 174, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Spheal - Fissure - Egg Move
  (363, 36300, 90, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Spheal - Rock Slide - Egg Move
  (363, 36300, 157, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Spheal - Spit Up - Egg Move
  (363, 36300, 255, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Spheal - Stockpile - Egg Move
  (363, 36300, 254, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Spheal - Swallow - Egg Move
  (363, 36300, 256, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Spheal - Water Sport - Egg Move
  (363, 36300, 346, 6, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Spheal - Yawn - Egg Move
  (363, 36300, 281, 6, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Spheal - Body Slam - Move Tutor
  (363, 36300, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Spheal - Double-Edge - Move Tutor
  (363, 36300, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Spheal - Mimic - Move Tutor
  (363, 36300, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Spheal - Rock Slide - Move Tutor
  (363, 36300, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Spheal - Substitute - Move Tutor
  (363, 36300, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Sealeo - Powder Snow - Level 1
  (364, 36400, 181, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sealeo - Growl - Level 1
  (364, 36400, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sealeo - Water Gun - Level 1
  (364, 36400, 55, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sealeo - Defense Curl - Level 1
  (364, 36400, 111, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sealeo - Encore - Level 7
  (364, 36400, 227, 6, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Sealeo - Ice Ball - Level 13
  (364, 36400, 301, 6, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Sealeo - Body Slam - Level 19
  (364, 36400, 34, 6, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Sealeo - Aurora Beam - Level 25
  (364, 36400, 62, 6, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Sealeo - Hail - Level 31
  (364, 36400, 258, 6, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Sealeo - Rest - Level 39
  (364, 36400, 156, 6, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Sealeo - Snore - Level 39
  (364, 36400, 173, 6, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Sealeo - Blizzard - Level 47
  (364, 36400, 59, 6, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Sealeo - Sheer Cold - Level 55
  (364, 36400, 329, 6, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Sealeo - Water Pulse - TM03
  (364, 36400, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 14),
  -- Sealeo - Roar - TM05
  (364, 36400, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 15),
  -- Sealeo - Toxic - TM06
  (364, 36400, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Sealeo - Hail - TM07
  (364, 36400, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 17),
  -- Sealeo - Hidden Power - TM10
  (364, 36400, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 18),
  -- Sealeo - Ice Beam - TM13
  (364, 36400, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 19),
  -- Sealeo - Blizzard - TM14
  (364, 36400, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 20),
  -- Sealeo - Protect - TM17
  (364, 36400, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 21),
  -- Sealeo - Rain Dance - TM18
  (364, 36400, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 22),
  -- Sealeo - Frustration - TM21
  (364, 36400, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 23),
  -- Sealeo - Iron Tail - TM23
  (364, 36400, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 24),
  -- Sealeo - Earthquake - TM26
  (364, 36400, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 25),
  -- Sealeo - Return - TM27
  (364, 36400, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 26),
  -- Sealeo - Double Team - TM32
  (364, 36400, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 27),
  -- Sealeo - Rock Tomb - TM39
  (364, 36400, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 28),
  -- Sealeo - Facade - TM42
  (364, 36400, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 29),
  -- Sealeo - Secret Power - TM43
  (364, 36400, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 30),
  -- Sealeo - Rest - TM44
  (364, 36400, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 31),
  -- Sealeo - Attract - TM45
  (364, 36400, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 32),
  -- Sealeo - Surf - HM03
  (364, 36400, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 33),
  -- Sealeo - Strength - HM04
  (364, 36400, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 34),
  -- Sealeo - Rock Smash - HM06
  (364, 36400, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 35),
  -- Sealeo - Waterfall - HM07
  (364, 36400, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 36),
  -- Sealeo - Body Slam - Move Tutor
  (364, 36400, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Sealeo - Double-Edge - Move Tutor
  (364, 36400, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Sealeo - Mimic - Move Tutor
  (364, 36400, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Sealeo - Rock Slide - Move Tutor
  (364, 36400, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Sealeo - Substitute - Move Tutor
  (364, 36400, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Walrein - Powder Snow - Level 1
  (365, 36500, 181, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Walrein - Growl - Level 1
  (365, 36500, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Walrein - Water Gun - Level 1
  (365, 36500, 55, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Walrein - Defense Curl - Level 1
  (365, 36500, 111, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Walrein - Encore - Level 7
  (365, 36500, 227, 6, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Walrein - Ice Ball - Level 13
  (365, 36500, 301, 6, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Walrein - Body Slam - Level 19
  (365, 36500, 34, 6, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Walrein - Aurora Beam - Level 25
  (365, 36500, 62, 6, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Walrein - Hail - Level 31
  (365, 36500, 258, 6, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Walrein - Rest - Level 39
  (365, 36500, 156, 6, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Walrein - Snore - Level 39
  (365, 36500, 173, 6, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Walrein - Blizzard - Level 50
  (365, 36500, 59, 6, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Walrein - Sheer Cold - Level 61
  (365, 36500, 329, 6, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Walrein - Water Pulse - TM03
  (365, 36500, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 14),
  -- Walrein - Roar - TM05
  (365, 36500, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 15),
  -- Walrein - Toxic - TM06
  (365, 36500, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Walrein - Hail - TM07
  (365, 36500, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 17),
  -- Walrein - Hidden Power - TM10
  (365, 36500, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 18),
  -- Walrein - Ice Beam - TM13
  (365, 36500, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 19),
  -- Walrein - Blizzard - TM14
  (365, 36500, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 20),
  -- Walrein - Hyper Beam - TM15
  (365, 36500, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 21),
  -- Walrein - Protect - TM17
  (365, 36500, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 22),
  -- Walrein - Rain Dance - TM18
  (365, 36500, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 23),
  -- Walrein - Frustration - TM21
  (365, 36500, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 24),
  -- Walrein - Iron Tail - TM23
  (365, 36500, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 25),
  -- Walrein - Earthquake - TM26
  (365, 36500, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 26),
  -- Walrein - Return - TM27
  (365, 36500, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 27),
  -- Walrein - Double Team - TM32
  (365, 36500, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 28),
  -- Walrein - Rock Tomb - TM39
  (365, 36500, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 29),
  -- Walrein - Facade - TM42
  (365, 36500, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 30),
  -- Walrein - Secret Power - TM43
  (365, 36500, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 31),
  -- Walrein - Rest - TM44
  (365, 36500, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 32),
  -- Walrein - Attract - TM45
  (365, 36500, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 33),
  -- Walrein - Surf - HM03
  (365, 36500, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 34),
  -- Walrein - Strength - HM04
  (365, 36500, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 35),
  -- Walrein - Rock Smash - HM06
  (365, 36500, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 36),
  -- Walrein - Waterfall - HM07
  (365, 36500, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 37),
  -- Walrein - Body Slam - Move Tutor
  (365, 36500, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Walrein - Double-Edge - Move Tutor
  (365, 36500, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Walrein - Mimic - Move Tutor
  (365, 36500, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Walrein - Rock Slide - Move Tutor
  (365, 36500, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Walrein - Substitute - Move Tutor
  (365, 36500, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Clamperl - Clamp - Level 1
  (366, 36600, 128, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clamperl - Iron Defense - Level 1
  (366, 36600, 334, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clamperl - Water Gun - Level 1
  (366, 36600, 55, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Clamperl - Whirlpool - Level 1
  (366, 36600, 250, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Clamperl - Water Pulse - TM03
  (366, 36600, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 5),
  -- Clamperl - Toxic - TM06
  (366, 36600, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 6),
  -- Clamperl - Hail - TM07
  (366, 36600, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 7),
  -- Clamperl - Hidden Power - TM10
  (366, 36600, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 8),
  -- Clamperl - Ice Beam - TM13
  (366, 36600, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 9),
  -- Clamperl - Blizzard - TM14
  (366, 36600, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 10),
  -- Clamperl - Protect - TM17
  (366, 36600, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 11),
  -- Clamperl - Rain Dance - TM18
  (366, 36600, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 12),
  -- Clamperl - Frustration - TM21
  (366, 36600, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 13),
  -- Clamperl - Return - TM27
  (366, 36600, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 14),
  -- Clamperl - Double Team - TM32
  (366, 36600, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 15),
  -- Clamperl - Facade - TM42
  (366, 36600, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 16),
  -- Clamperl - Secret Power - TM43
  (366, 36600, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 17),
  -- Clamperl - Rest - TM44
  (366, 36600, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 18),
  -- Clamperl - Attract - TM45
  (366, 36600, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 19),
  -- Clamperl - Surf - HM03
  (366, 36600, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 20),
  -- Clamperl - Waterfall - HM07
  (366, 36600, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 21),
  -- Clamperl - Barrier - Egg Move
  (366, 36600, 112, 6, NULL, 5, NULL, NULL, NULL, NULL, 22),
  -- Clamperl - Body Slam - Egg Move
  (366, 36600, 34, 6, NULL, 5, NULL, NULL, NULL, NULL, 23),
  -- Clamperl - Confuse Ray - Egg Move
  (366, 36600, 109, 6, NULL, 5, NULL, NULL, NULL, NULL, 24),
  -- Clamperl - Mud Sport - Egg Move
  (366, 36600, 300, 6, NULL, 5, NULL, NULL, NULL, NULL, 25),
  -- Clamperl - Refresh - Egg Move
  (366, 36600, 287, 6, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Clamperl - Supersonic - Egg Move
  (366, 36600, 48, 6, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Clamperl - Body Slam - Move Tutor
  (366, 36600, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 28),
  -- Clamperl - Double-Edge - Move Tutor
  (366, 36600, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 29),
  -- Clamperl - Mimic - Move Tutor
  (366, 36600, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 30),
  -- Clamperl - Substitute - Move Tutor
  (366, 36600, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 31),
  -- Huntail - Whirlpool - Level 1
  (367, 36700, 250, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Huntail - Bite - Level 8
  (367, 36700, 44, 6, NULL, 1, 8, NULL, NULL, NULL, 2),
  -- Huntail - Screech - Level 15
  (367, 36700, 103, 6, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Huntail - Water Pulse - Level 22
  (367, 36700, 352, 6, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Huntail - Scary Face - Level 29
  (367, 36700, 184, 6, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Huntail - Crunch - Level 36
  (367, 36700, 242, 6, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Huntail - Baton Pass - Level 43
  (367, 36700, 226, 6, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Huntail - Hydro Pump - Level 50
  (367, 36700, 56, 6, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Huntail - Water Pulse - TM03
  (367, 36700, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 9),
  -- Huntail - Toxic - TM06
  (367, 36700, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 10),
  -- Huntail - Hail - TM07
  (367, 36700, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 11),
  -- Huntail - Hidden Power - TM10
  (367, 36700, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 12),
  -- Huntail - Ice Beam - TM13
  (367, 36700, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 13),
  -- Huntail - Blizzard - TM14
  (367, 36700, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 14),
  -- Huntail - Hyper Beam - TM15
  (367, 36700, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 15),
  -- Huntail - Protect - TM17
  (367, 36700, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 16),
  -- Huntail - Rain Dance - TM18
  (367, 36700, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 17),
  -- Huntail - Frustration - TM21
  (367, 36700, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 18),
  -- Huntail - Return - TM27
  (367, 36700, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 19),
  -- Huntail - Double Team - TM32
  (367, 36700, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 20),
  -- Huntail - Rock Tomb - TM39
  (367, 36700, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 21),
  -- Huntail - Facade - TM42
  (367, 36700, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 22),
  -- Huntail - Secret Power - TM43
  (367, 36700, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 23),
  -- Huntail - Rest - TM44
  (367, 36700, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 24),
  -- Huntail - Attract - TM45
  (367, 36700, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 25),
  -- Huntail - Snatch - TM49
  (367, 36700, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 26),
  -- Huntail - Surf - HM03
  (367, 36700, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 27),
  -- Huntail - Waterfall - HM07
  (367, 36700, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 28),
  -- Huntail - Body Slam - Move Tutor
  (367, 36700, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 29),
  -- Huntail - Double-Edge - Move Tutor
  (367, 36700, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 30),
  -- Huntail - Mimic - Move Tutor
  (367, 36700, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 31),
  -- Huntail - Substitute - Move Tutor
  (367, 36700, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Gorebyss - Whirlpool - Level 1
  (368, 36800, 250, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gorebyss - Confusion - Level 8
  (368, 36800, 93, 6, NULL, 1, 8, NULL, NULL, NULL, 2),
  -- Gorebyss - Agility - Level 15
  (368, 36800, 97, 6, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Gorebyss - Water Pulse - Level 22
  (368, 36800, 352, 6, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Gorebyss - Amnesia - Level 29
  (368, 36800, 133, 6, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Gorebyss - Psychic - Level 36
  (368, 36800, 94, 6, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Gorebyss - Baton Pass - Level 43
  (368, 36800, 226, 6, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Gorebyss - Hydro Pump - Level 50
  (368, 36800, 56, 6, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Gorebyss - Water Pulse - TM03
  (368, 36800, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 9),
  -- Gorebyss - Toxic - TM06
  (368, 36800, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 10),
  -- Gorebyss - Hail - TM07
  (368, 36800, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 11),
  -- Gorebyss - Hidden Power - TM10
  (368, 36800, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 12),
  -- Gorebyss - Ice Beam - TM13
  (368, 36800, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 13),
  -- Gorebyss - Blizzard - TM14
  (368, 36800, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 14),
  -- Gorebyss - Hyper Beam - TM15
  (368, 36800, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 15),
  -- Gorebyss - Protect - TM17
  (368, 36800, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 16),
  -- Gorebyss - Rain Dance - TM18
  (368, 36800, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 17),
  -- Gorebyss - Safeguard - TM20
  (368, 36800, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 18),
  -- Gorebyss - Frustration - TM21
  (368, 36800, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 19),
  -- Gorebyss - Return - TM27
  (368, 36800, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 20),
  -- Gorebyss - Psychic - TM29
  (368, 36800, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 21),
  -- Gorebyss - Shadow Ball - TM30
  (368, 36800, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 22),
  -- Gorebyss - Double Team - TM32
  (368, 36800, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 23),
  -- Gorebyss - Facade - TM42
  (368, 36800, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 24),
  -- Gorebyss - Secret Power - TM43
  (368, 36800, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 25),
  -- Gorebyss - Rest - TM44
  (368, 36800, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 26),
  -- Gorebyss - Attract - TM45
  (368, 36800, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 27),
  -- Gorebyss - Surf - HM03
  (368, 36800, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 28),
  -- Gorebyss - Waterfall - HM07
  (368, 36800, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 29),
  -- Gorebyss - Body Slam - Move Tutor
  (368, 36800, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 30),
  -- Gorebyss - Double-Edge - Move Tutor
  (368, 36800, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 31),
  -- Gorebyss - Mimic - Move Tutor
  (368, 36800, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Gorebyss - Substitute - Move Tutor
  (368, 36800, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Relicanth - Harden - Level 1
  (369, 36900, 106, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Relicanth - Tackle - Level 1
  (369, 36900, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Relicanth - Water Gun - Level 8
  (369, 36900, 55, 6, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Relicanth - Rock Tomb - Level 15
  (369, 36900, 317, 6, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Relicanth - Yawn - Level 22
  (369, 36900, 281, 6, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Relicanth - Take Down - Level 29
  (369, 36900, 36, 6, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Relicanth - Mud Sport - Level 36
  (369, 36900, 300, 6, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Relicanth - Ancient Power - Level 43
  (369, 36900, 246, 6, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Relicanth - Rest - Level 50
  (369, 36900, 156, 6, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Relicanth - Double-Edge - Level 57
  (369, 36900, 38, 6, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Relicanth - Hydro Pump - Level 64
  (369, 36900, 56, 6, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Relicanth - Water Pulse - TM03
  (369, 36900, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 12),
  -- Relicanth - Calm Mind - TM04
  (369, 36900, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 13),
  -- Relicanth - Toxic - TM06
  (369, 36900, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Relicanth - Hail - TM07
  (369, 36900, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 15),
  -- Relicanth - Hidden Power - TM10
  (369, 36900, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Relicanth - Ice Beam - TM13
  (369, 36900, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 17),
  -- Relicanth - Blizzard - TM14
  (369, 36900, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 18),
  -- Relicanth - Hyper Beam - TM15
  (369, 36900, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 19),
  -- Relicanth - Protect - TM17
  (369, 36900, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 20),
  -- Relicanth - Rain Dance - TM18
  (369, 36900, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 21),
  -- Relicanth - Safeguard - TM20
  (369, 36900, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 22),
  -- Relicanth - Frustration - TM21
  (369, 36900, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 23),
  -- Relicanth - Earthquake - TM26
  (369, 36900, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 24),
  -- Relicanth - Return - TM27
  (369, 36900, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 25),
  -- Relicanth - Double Team - TM32
  (369, 36900, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 26),
  -- Relicanth - Sandstorm - TM37
  (369, 36900, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 27),
  -- Relicanth - Rock Tomb - TM39
  (369, 36900, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 28),
  -- Relicanth - Facade - TM42
  (369, 36900, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 29),
  -- Relicanth - Secret Power - TM43
  (369, 36900, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 30),
  -- Relicanth - Rest - TM44
  (369, 36900, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 31),
  -- Relicanth - Attract - TM45
  (369, 36900, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 32),
  -- Relicanth - Surf - HM03
  (369, 36900, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 33),
  -- Relicanth - Rock Smash - HM06
  (369, 36900, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 34),
  -- Relicanth - Waterfall - HM07
  (369, 36900, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 35),
  -- Relicanth - Amnesia - Egg Move
  (369, 36900, 133, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Relicanth - Magnitude - Egg Move
  (369, 36900, 222, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Relicanth - Rock Slide - Egg Move
  (369, 36900, 157, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Relicanth - Skull Bash - Egg Move
  (369, 36900, 130, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Relicanth - Sleep Talk - Egg Move
  (369, 36900, 214, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Relicanth - Water Sport - Egg Move
  (369, 36900, 346, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Relicanth - Body Slam - Move Tutor
  (369, 36900, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Relicanth - Double-Edge - Move Tutor
  (369, 36900, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Relicanth - Mimic - Move Tutor
  (369, 36900, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Relicanth - Rock Slide - Move Tutor
  (369, 36900, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Relicanth - Substitute - Move Tutor
  (369, 36900, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Luvdisc - Tackle - Level 1
  (370, 37000, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Luvdisc - Charm - Level 4
  (370, 37000, 204, 6, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Luvdisc - Water Gun - Level 12
  (370, 37000, 55, 6, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Luvdisc - Agility - Level 16
  (370, 37000, 97, 6, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Luvdisc - Take Down - Level 24
  (370, 37000, 36, 6, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Luvdisc - Attract - Level 28
  (370, 37000, 213, 6, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Luvdisc - Sweet Kiss - Level 36
  (370, 37000, 186, 6, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Luvdisc - Flail - Level 40
  (370, 37000, 175, 6, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Luvdisc - Safeguard - Level 48
  (370, 37000, 219, 6, NULL, 1, 48, NULL, NULL, NULL, 9),
  -- Luvdisc - Water Pulse - TM03
  (370, 37000, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 10),
  -- Luvdisc - Toxic - TM06
  (370, 37000, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 11),
  -- Luvdisc - Hail - TM07
  (370, 37000, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 12),
  -- Luvdisc - Hidden Power - TM10
  (370, 37000, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Luvdisc - Ice Beam - TM13
  (370, 37000, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 14),
  -- Luvdisc - Blizzard - TM14
  (370, 37000, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 15),
  -- Luvdisc - Protect - TM17
  (370, 37000, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 16),
  -- Luvdisc - Rain Dance - TM18
  (370, 37000, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 17),
  -- Luvdisc - Safeguard - TM20
  (370, 37000, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 18),
  -- Luvdisc - Frustration - TM21
  (370, 37000, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 19),
  -- Luvdisc - Return - TM27
  (370, 37000, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 20),
  -- Luvdisc - Double Team - TM32
  (370, 37000, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 21),
  -- Luvdisc - Facade - TM42
  (370, 37000, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 22),
  -- Luvdisc - Secret Power - TM43
  (370, 37000, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 23),
  -- Luvdisc - Rest - TM44
  (370, 37000, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 24),
  -- Luvdisc - Attract - TM45
  (370, 37000, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 25),
  -- Luvdisc - Surf - HM03
  (370, 37000, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 26),
  -- Luvdisc - Waterfall - HM07
  (370, 37000, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 27),
  -- Luvdisc - Mud Sport - Egg Move
  (370, 37000, 300, 6, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Luvdisc - Splash - Egg Move
  (370, 37000, 150, 6, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Luvdisc - Supersonic - Egg Move
  (370, 37000, 48, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Luvdisc - Water Sport - Egg Move
  (370, 37000, 346, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Luvdisc - Double-Edge - Move Tutor
  (370, 37000, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Luvdisc - Mimic - Move Tutor
  (370, 37000, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Luvdisc - Substitute - Move Tutor
  (370, 37000, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Bagon - Rage - Level 1
  (371, 37100, 99, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bagon - Bite - Level 5
  (371, 37100, 44, 6, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Bagon - Leer - Level 9
  (371, 37100, 43, 6, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Bagon - Headbutt - Level 17
  (371, 37100, 29, 6, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Bagon - Focus Energy - Level 21
  (371, 37100, 116, 6, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Bagon - Ember - Level 25
  (371, 37100, 52, 6, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Bagon - Dragon Breath - Level 33
  (371, 37100, 225, 6, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Bagon - Scary Face - Level 37
  (371, 37100, 184, 6, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Bagon - Crunch - Level 41
  (371, 37100, 242, 6, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Bagon - Dragon Claw - Level 49
  (371, 37100, 337, 6, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Bagon - Double-Edge - Level 53
  (371, 37100, 38, 6, NULL, 1, 53, NULL, NULL, NULL, 11),
  -- Bagon - Dragon Claw - TM02
  (371, 37100, 337, 6, NULL, 2, NULL, NULL, 6002002, NULL, 12),
  -- Bagon - Roar - TM05
  (371, 37100, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 13),
  -- Bagon - Toxic - TM06
  (371, 37100, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Bagon - Hidden Power - TM10
  (371, 37100, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Bagon - Sunny Day - TM11
  (371, 37100, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Bagon - Protect - TM17
  (371, 37100, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 17),
  -- Bagon - Rain Dance - TM18
  (371, 37100, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 18),
  -- Bagon - Frustration - TM21
  (371, 37100, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 19),
  -- Bagon - Return - TM27
  (371, 37100, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 20),
  -- Bagon - Brick Break - TM31
  (371, 37100, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 21),
  -- Bagon - Double Team - TM32
  (371, 37100, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 22),
  -- Bagon - Flamethrower - TM35
  (371, 37100, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 23),
  -- Bagon - Fire Blast - TM38
  (371, 37100, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 24),
  -- Bagon - Rock Tomb - TM39
  (371, 37100, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 25),
  -- Bagon - Aerial Ace - TM40
  (371, 37100, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 26),
  -- Bagon - Facade - TM42
  (371, 37100, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 27),
  -- Bagon - Secret Power - TM43
  (371, 37100, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 28),
  -- Bagon - Rest - TM44
  (371, 37100, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 29),
  -- Bagon - Attract - TM45
  (371, 37100, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 30),
  -- Bagon - Cut - HM01
  (371, 37100, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 31),
  -- Bagon - Strength - HM04
  (371, 37100, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 32),
  -- Bagon - Rock Smash - HM06
  (371, 37100, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 33),
  -- Bagon - Dragon Dance - Egg Move
  (371, 37100, 349, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Bagon - Dragon Rage - Egg Move
  (371, 37100, 82, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Bagon - Hydro Pump - Egg Move
  (371, 37100, 56, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Bagon - Thrash - Egg Move
  (371, 37100, 37, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Bagon - Twister - Egg Move
  (371, 37100, 239, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Bagon - Body Slam - Move Tutor
  (371, 37100, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Bagon - Double-Edge - Move Tutor
  (371, 37100, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Bagon - Mimic - Move Tutor
  (371, 37100, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Bagon - Rock Slide - Move Tutor
  (371, 37100, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Bagon - Substitute - Move Tutor
  (371, 37100, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Shelgon - Rage - Level 1
  (372, 37200, 99, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shelgon - Bite - Level 1
  (372, 37200, 44, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shelgon - Leer - Level 1
  (372, 37200, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Shelgon - Headbutt - Level 1
  (372, 37200, 29, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Shelgon - Bite - Level 5
  (372, 37200, 44, 6, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Shelgon - Leer - Level 9
  (372, 37200, 43, 6, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Shelgon - Headbutt - Level 17
  (372, 37200, 29, 6, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Shelgon - Focus Energy - Level 21
  (372, 37200, 116, 6, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Shelgon - Ember - Level 25
  (372, 37200, 52, 6, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Shelgon - Protect - Level 30
  (372, 37200, 182, 6, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Shelgon - Dragon Breath - Level 38
  (372, 37200, 225, 6, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Shelgon - Scary Face - Level 47
  (372, 37200, 184, 6, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Shelgon - Crunch - Level 56
  (372, 37200, 242, 6, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Shelgon - Dragon Claw - Level 69
  (372, 37200, 337, 6, NULL, 1, 69, NULL, NULL, NULL, 14),
  -- Shelgon - Double-Edge - Level 78
  (372, 37200, 38, 6, NULL, 1, 78, NULL, NULL, NULL, 15),
  -- Shelgon - Dragon Claw - TM02
  (372, 37200, 337, 6, NULL, 2, NULL, NULL, 6002002, NULL, 16),
  -- Shelgon - Roar - TM05
  (372, 37200, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 17),
  -- Shelgon - Toxic - TM06
  (372, 37200, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 18),
  -- Shelgon - Hidden Power - TM10
  (372, 37200, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 19),
  -- Shelgon - Sunny Day - TM11
  (372, 37200, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 20),
  -- Shelgon - Protect - TM17
  (372, 37200, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 21),
  -- Shelgon - Rain Dance - TM18
  (372, 37200, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 22),
  -- Shelgon - Frustration - TM21
  (372, 37200, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 23),
  -- Shelgon - Return - TM27
  (372, 37200, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 24),
  -- Shelgon - Brick Break - TM31
  (372, 37200, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 25),
  -- Shelgon - Double Team - TM32
  (372, 37200, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 26),
  -- Shelgon - Flamethrower - TM35
  (372, 37200, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 27),
  -- Shelgon - Fire Blast - TM38
  (372, 37200, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 28),
  -- Shelgon - Rock Tomb - TM39
  (372, 37200, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 29),
  -- Shelgon - Aerial Ace - TM40
  (372, 37200, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 30),
  -- Shelgon - Facade - TM42
  (372, 37200, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 31),
  -- Shelgon - Secret Power - TM43
  (372, 37200, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 32),
  -- Shelgon - Rest - TM44
  (372, 37200, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 33),
  -- Shelgon - Attract - TM45
  (372, 37200, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 34),
  -- Shelgon - Cut - HM01
  (372, 37200, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 35),
  -- Shelgon - Strength - HM04
  (372, 37200, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 36),
  -- Shelgon - Rock Smash - HM06
  (372, 37200, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 37),
  -- Shelgon - Body Slam - Move Tutor
  (372, 37200, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Shelgon - Double-Edge - Move Tutor
  (372, 37200, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Shelgon - Mimic - Move Tutor
  (372, 37200, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Shelgon - Rock Slide - Move Tutor
  (372, 37200, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Shelgon - Substitute - Move Tutor
  (372, 37200, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Salamence - Rage - Level 1
  (373, 37300, 99, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Salamence - Bite - Level 1
  (373, 37300, 44, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Salamence - Leer - Level 1
  (373, 37300, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Salamence - Headbutt - Level 1
  (373, 37300, 29, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Salamence - Bite - Level 5
  (373, 37300, 44, 6, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Salamence - Leer - Level 9
  (373, 37300, 43, 6, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Salamence - Headbutt - Level 17
  (373, 37300, 29, 6, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Salamence - Focus Energy - Level 21
  (373, 37300, 116, 6, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Salamence - Ember - Level 25
  (373, 37300, 52, 6, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Salamence - Protect - Level 30
  (373, 37300, 182, 6, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Salamence - Dragon Breath - Level 38
  (373, 37300, 225, 6, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Salamence - Scary Face - Level 47
  (373, 37300, 184, 6, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Salamence - Fly - Level 50
  (373, 37300, 19, 6, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Salamence - Crunch - Level 61
  (373, 37300, 242, 6, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Salamence - Dragon Claw - Level 79
  (373, 37300, 337, 6, NULL, 1, 79, NULL, NULL, NULL, 15),
  -- Salamence - Double-Edge - Level 93
  (373, 37300, 38, 6, NULL, 1, 93, NULL, NULL, NULL, 16),
  -- Salamence - Dragon Claw - TM02
  (373, 37300, 337, 6, NULL, 2, NULL, NULL, 6002002, NULL, 17),
  -- Salamence - Roar - TM05
  (373, 37300, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 18),
  -- Salamence - Toxic - TM06
  (373, 37300, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 19),
  -- Salamence - Hidden Power - TM10
  (373, 37300, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 20),
  -- Salamence - Sunny Day - TM11
  (373, 37300, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 21),
  -- Salamence - Hyper Beam - TM15
  (373, 37300, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 22),
  -- Salamence - Protect - TM17
  (373, 37300, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 23),
  -- Salamence - Rain Dance - TM18
  (373, 37300, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 24),
  -- Salamence - Frustration - TM21
  (373, 37300, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 25),
  -- Salamence - Iron Tail - TM23
  (373, 37300, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 26),
  -- Salamence - Earthquake - TM26
  (373, 37300, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 27),
  -- Salamence - Return - TM27
  (373, 37300, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 28),
  -- Salamence - Brick Break - TM31
  (373, 37300, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 29),
  -- Salamence - Double Team - TM32
  (373, 37300, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 30),
  -- Salamence - Flamethrower - TM35
  (373, 37300, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 31),
  -- Salamence - Fire Blast - TM38
  (373, 37300, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 32),
  -- Salamence - Rock Tomb - TM39
  (373, 37300, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 33),
  -- Salamence - Aerial Ace - TM40
  (373, 37300, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 34),
  -- Salamence - Facade - TM42
  (373, 37300, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 35),
  -- Salamence - Secret Power - TM43
  (373, 37300, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 36),
  -- Salamence - Rest - TM44
  (373, 37300, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 37),
  -- Salamence - Attract - TM45
  (373, 37300, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 38),
  -- Salamence - Steel Wing - TM47
  (373, 37300, 211, 6, NULL, 2, NULL, NULL, 6002047, NULL, 39),
  -- Salamence - Cut - HM01
  (373, 37300, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 40),
  -- Salamence - Fly - HM02
  (373, 37300, 19, 6, NULL, 3, NULL, NULL, 6003002, NULL, 41),
  -- Salamence - Strength - HM04
  (373, 37300, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 42),
  -- Salamence - Rock Smash - HM06
  (373, 37300, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 43),
  -- Salamence - Body Slam - Move Tutor
  (373, 37300, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Salamence - Double-Edge - Move Tutor
  (373, 37300, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Salamence - Mimic - Move Tutor
  (373, 37300, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Salamence - Rock Slide - Move Tutor
  (373, 37300, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Salamence - Substitute - Move Tutor
  (373, 37300, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Beldum - Take Down - Level 1
  (374, 37400, 36, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metang - Take Down - Level 1
  (375, 37500, 36, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metang - Confusion - Level 20
  (375, 37500, 93, 6, NULL, 1, 20, NULL, NULL, NULL, 2),
  -- Metang - Metal Claw - Level 20
  (375, 37500, 232, 6, NULL, 1, 20, NULL, NULL, NULL, 3),
  -- Metang - Scary Face - Level 26
  (375, 37500, 184, 6, NULL, 1, 26, NULL, NULL, NULL, 4),
  -- Metang - Pursuit - Level 32
  (375, 37500, 228, 6, NULL, 1, 32, NULL, NULL, NULL, 5),
  -- Metang - Psychic - Level 38
  (375, 37500, 94, 6, NULL, 1, 38, NULL, NULL, NULL, 6),
  -- Metang - Iron Defense - Level 44
  (375, 37500, 334, 6, NULL, 1, 44, NULL, NULL, NULL, 7),
  -- Metang - Meteor Mash - Level 50
  (375, 37500, 309, 6, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Metang - Agility - Level 56
  (375, 37500, 97, 6, NULL, 1, 56, NULL, NULL, NULL, 9),
  -- Metang - Hyper Beam - Level 62
  (375, 37500, 63, 6, NULL, 1, 62, NULL, NULL, NULL, 10),
  -- Metang - Toxic - TM06
  (375, 37500, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 11),
  -- Metang - Hidden Power - TM10
  (375, 37500, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 12),
  -- Metang - Sunny Day - TM11
  (375, 37500, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 13),
  -- Metang - Hyper Beam - TM15
  (375, 37500, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 14),
  -- Metang - Light Screen - TM16
  (375, 37500, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 15),
  -- Metang - Protect - TM17
  (375, 37500, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 16),
  -- Metang - Rain Dance - TM18
  (375, 37500, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 17),
  -- Metang - Frustration - TM21
  (375, 37500, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 18),
  -- Metang - Earthquake - TM26
  (375, 37500, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 19),
  -- Metang - Return - TM27
  (375, 37500, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 20),
  -- Metang - Psychic - TM29
  (375, 37500, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 21),
  -- Metang - Shadow Ball - TM30
  (375, 37500, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 22),
  -- Metang - Brick Break - TM31
  (375, 37500, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 23),
  -- Metang - Double Team - TM32
  (375, 37500, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 24),
  -- Metang - Reflect - TM33
  (375, 37500, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 25),
  -- Metang - Sludge Bomb - TM36
  (375, 37500, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 26),
  -- Metang - Sandstorm - TM37
  (375, 37500, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 27),
  -- Metang - Rock Tomb - TM39
  (375, 37500, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 28),
  -- Metang - Aerial Ace - TM40
  (375, 37500, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 29),
  -- Metang - Facade - TM42
  (375, 37500, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 30),
  -- Metang - Secret Power - TM43
  (375, 37500, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 31),
  -- Metang - Rest - TM44
  (375, 37500, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 32),
  -- Metang - Cut - HM01
  (375, 37500, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 33),
  -- Metang - Strength - HM04
  (375, 37500, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 34),
  -- Metang - Flash - HM05
  (375, 37500, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 35),
  -- Metang - Rock Smash - HM06
  (375, 37500, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 36),
  -- Metang - Body Slam - Move Tutor
  (375, 37500, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Metang - Double-Edge - Move Tutor
  (375, 37500, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Metang - Explosion - Move Tutor
  (375, 37500, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Metang - Mimic - Move Tutor
  (375, 37500, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Metang - Rock Slide - Move Tutor
  (375, 37500, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Metang - Substitute - Move Tutor
  (375, 37500, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Metagross - Take Down - Level 1
  (376, 37600, 36, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metagross - Confusion - Level 1
  (376, 37600, 93, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Metagross - Metal Claw - Level 1
  (376, 37600, 232, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Metagross - Scary Face - Level 1
  (376, 37600, 184, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Metagross - Confusion - Level 20
  (376, 37600, 93, 6, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Metagross - Metal Claw - Level 20
  (376, 37600, 232, 6, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Metagross - Scary Face - Level 26
  (376, 37600, 184, 6, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Metagross - Pursuit - Level 32
  (376, 37600, 228, 6, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Metagross - Psychic - Level 38
  (376, 37600, 94, 6, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Metagross - Iron Defense - Level 44
  (376, 37600, 334, 6, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Metagross - Meteor Mash - Level 55
  (376, 37600, 309, 6, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Metagross - Agility - Level 66
  (376, 37600, 97, 6, NULL, 1, 66, NULL, NULL, NULL, 12),
  -- Metagross - Hyper Beam - Level 77
  (376, 37600, 63, 6, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Metagross - Toxic - TM06
  (376, 37600, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Metagross - Hidden Power - TM10
  (376, 37600, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Metagross - Sunny Day - TM11
  (376, 37600, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Metagross - Hyper Beam - TM15
  (376, 37600, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 17),
  -- Metagross - Light Screen - TM16
  (376, 37600, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 18),
  -- Metagross - Protect - TM17
  (376, 37600, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 19),
  -- Metagross - Rain Dance - TM18
  (376, 37600, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 20),
  -- Metagross - Frustration - TM21
  (376, 37600, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 21),
  -- Metagross - Earthquake - TM26
  (376, 37600, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 22),
  -- Metagross - Return - TM27
  (376, 37600, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 23),
  -- Metagross - Psychic - TM29
  (376, 37600, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 24),
  -- Metagross - Shadow Ball - TM30
  (376, 37600, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 25),
  -- Metagross - Brick Break - TM31
  (376, 37600, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 26),
  -- Metagross - Double Team - TM32
  (376, 37600, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 27),
  -- Metagross - Reflect - TM33
  (376, 37600, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 28),
  -- Metagross - Sludge Bomb - TM36
  (376, 37600, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 29),
  -- Metagross - Sandstorm - TM37
  (376, 37600, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 30),
  -- Metagross - Rock Tomb - TM39
  (376, 37600, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 31),
  -- Metagross - Aerial Ace - TM40
  (376, 37600, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 32),
  -- Metagross - Facade - TM42
  (376, 37600, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 33),
  -- Metagross - Secret Power - TM43
  (376, 37600, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 34),
  -- Metagross - Rest - TM44
  (376, 37600, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 35),
  -- Metagross - Cut - HM01
  (376, 37600, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 36),
  -- Metagross - Strength - HM04
  (376, 37600, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 37),
  -- Metagross - Flash - HM05
  (376, 37600, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 38),
  -- Metagross - Rock Smash - HM06
  (376, 37600, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 39),
  -- Metagross - Body Slam - Move Tutor
  (376, 37600, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Metagross - Double-Edge - Move Tutor
  (376, 37600, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Metagross - Explosion - Move Tutor
  (376, 37600, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Metagross - Mimic - Move Tutor
  (376, 37600, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Metagross - Rock Slide - Move Tutor
  (376, 37600, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Metagross - Substitute - Move Tutor
  (376, 37600, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Regirock - Explosion - Level 1
  (377, 37700, 153, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regirock - Rock Throw - Level 9
  (377, 37700, 88, 6, NULL, 1, 9, NULL, NULL, NULL, 2),
  -- Regirock - Curse - Level 17
  (377, 37700, 174, 6, NULL, 1, 17, NULL, NULL, NULL, 3),
  -- Regirock - Superpower - Level 25
  (377, 37700, 276, 6, NULL, 1, 25, NULL, NULL, NULL, 4),
  -- Regirock - Ancient Power - Level 33
  (377, 37700, 246, 6, NULL, 1, 33, NULL, NULL, NULL, 5),
  -- Regirock - Iron Defense - Level 41
  (377, 37700, 334, 6, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Regirock - Zap Cannon - Level 49
  (377, 37700, 192, 6, NULL, 1, 49, NULL, NULL, NULL, 7),
  -- Regirock - Lock-On - Level 57
  (377, 37700, 199, 6, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Regirock - Hyper Beam - Level 65
  (377, 37700, 63, 6, NULL, 1, 65, NULL, NULL, NULL, 9),
  -- Regirock - Focus Punch - TM01
  (377, 37700, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 10),
  -- Regirock - Toxic - TM06
  (377, 37700, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 11),
  -- Regirock - Hidden Power - TM10
  (377, 37700, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 12),
  -- Regirock - Sunny Day - TM11
  (377, 37700, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 13),
  -- Regirock - Hyper Beam - TM15
  (377, 37700, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 14),
  -- Regirock - Protect - TM17
  (377, 37700, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Regirock - Safeguard - TM20
  (377, 37700, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 16),
  -- Regirock - Frustration - TM21
  (377, 37700, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 17),
  -- Regirock - Thunderbolt - TM24
  (377, 37700, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 18),
  -- Regirock - Thunder - TM25
  (377, 37700, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 19),
  -- Regirock - Earthquake - TM26
  (377, 37700, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 20),
  -- Regirock - Return - TM27
  (377, 37700, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 21),
  -- Regirock - Dig - TM28
  (377, 37700, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 22),
  -- Regirock - Brick Break - TM31
  (377, 37700, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 23),
  -- Regirock - Double Team - TM32
  (377, 37700, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 24),
  -- Regirock - Shock Wave - TM34
  (377, 37700, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 25),
  -- Regirock - Sandstorm - TM37
  (377, 37700, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 26),
  -- Regirock - Rock Tomb - TM39
  (377, 37700, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 27),
  -- Regirock - Facade - TM42
  (377, 37700, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 28),
  -- Regirock - Secret Power - TM43
  (377, 37700, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 29),
  -- Regirock - Rest - TM44
  (377, 37700, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 30),
  -- Regirock - Strength - HM04
  (377, 37700, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 31),
  -- Regirock - Rock Smash - HM06
  (377, 37700, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 32),
  -- Regirock - Body Slam - Move Tutor
  (377, 37700, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Regirock - Counter - Move Tutor
  (377, 37700, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Regirock - Double-Edge - Move Tutor
  (377, 37700, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Regirock - Explosion - Move Tutor
  (377, 37700, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Regirock - Mega Kick - Move Tutor
  (377, 37700, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Regirock - Mega Punch - Move Tutor
  (377, 37700, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Regirock - Mimic - Move Tutor
  (377, 37700, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Regirock - Rock Slide - Move Tutor
  (377, 37700, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Regirock - Seismic Toss - Move Tutor
  (377, 37700, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Regirock - Substitute - Move Tutor
  (377, 37700, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Regirock - Thunder Wave - Move Tutor
  (377, 37700, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Regice - Explosion - Level 1
  (378, 37800, 153, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regice - Icy Wind - Level 9
  (378, 37800, 196, 6, NULL, 1, 9, NULL, NULL, NULL, 2),
  -- Regice - Curse - Level 17
  (378, 37800, 174, 6, NULL, 1, 17, NULL, NULL, NULL, 3),
  -- Regice - Superpower - Level 25
  (378, 37800, 276, 6, NULL, 1, 25, NULL, NULL, NULL, 4),
  -- Regice - Ancient Power - Level 33
  (378, 37800, 246, 6, NULL, 1, 33, NULL, NULL, NULL, 5),
  -- Regice - Amnesia - Level 41
  (378, 37800, 133, 6, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Regice - Zap Cannon - Level 49
  (378, 37800, 192, 6, NULL, 1, 49, NULL, NULL, NULL, 7),
  -- Regice - Lock-On - Level 57
  (378, 37800, 199, 6, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Regice - Hyper Beam - Level 65
  (378, 37800, 63, 6, NULL, 1, 65, NULL, NULL, NULL, 9),
  -- Regice - Focus Punch - TM01
  (378, 37800, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 10),
  -- Regice - Toxic - TM06
  (378, 37800, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 11),
  -- Regice - Hail - TM07
  (378, 37800, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 12),
  -- Regice - Hidden Power - TM10
  (378, 37800, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Regice - Ice Beam - TM13
  (378, 37800, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 14),
  -- Regice - Blizzard - TM14
  (378, 37800, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 15),
  -- Regice - Hyper Beam - TM15
  (378, 37800, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 16),
  -- Regice - Protect - TM17
  (378, 37800, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 17),
  -- Regice - Rain Dance - TM18
  (378, 37800, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 18),
  -- Regice - Safeguard - TM20
  (378, 37800, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 19),
  -- Regice - Frustration - TM21
  (378, 37800, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Regice - Thunderbolt - TM24
  (378, 37800, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 21),
  -- Regice - Thunder - TM25
  (378, 37800, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 22),
  -- Regice - Earthquake - TM26
  (378, 37800, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 23),
  -- Regice - Return - TM27
  (378, 37800, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 24),
  -- Regice - Brick Break - TM31
  (378, 37800, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 25),
  -- Regice - Double Team - TM32
  (378, 37800, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 26),
  -- Regice - Shock Wave - TM34
  (378, 37800, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 27),
  -- Regice - Facade - TM42
  (378, 37800, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 28),
  -- Regice - Secret Power - TM43
  (378, 37800, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 29),
  -- Regice - Rest - TM44
  (378, 37800, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 30),
  -- Regice - Strength - HM04
  (378, 37800, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 31),
  -- Regice - Rock Smash - HM06
  (378, 37800, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 32),
  -- Regice - Body Slam - Move Tutor
  (378, 37800, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Regice - Counter - Move Tutor
  (378, 37800, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Regice - Double-Edge - Move Tutor
  (378, 37800, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Regice - Explosion - Move Tutor
  (378, 37800, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Regice - Mega Kick - Move Tutor
  (378, 37800, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Regice - Mega Punch - Move Tutor
  (378, 37800, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Regice - Mimic - Move Tutor
  (378, 37800, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Regice - Rock Slide - Move Tutor
  (378, 37800, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Regice - Seismic Toss - Move Tutor
  (378, 37800, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Regice - Substitute - Move Tutor
  (378, 37800, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Regice - Thunder Wave - Move Tutor
  (378, 37800, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Registeel - Explosion - Level 1
  (379, 37900, 153, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Registeel - Metal Claw - Level 9
  (379, 37900, 232, 6, NULL, 1, 9, NULL, NULL, NULL, 2),
  -- Registeel - Curse - Level 17
  (379, 37900, 174, 6, NULL, 1, 17, NULL, NULL, NULL, 3),
  -- Registeel - Superpower - Level 25
  (379, 37900, 276, 6, NULL, 1, 25, NULL, NULL, NULL, 4),
  -- Registeel - Ancient Power - Level 33
  (379, 37900, 246, 6, NULL, 1, 33, NULL, NULL, NULL, 5),
  -- Registeel - Amnesia - Level 41
  (379, 37900, 133, 6, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Registeel - Iron Defense - Level 41
  (379, 37900, 334, 6, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Registeel - Zap Cannon - Level 49
  (379, 37900, 192, 6, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Registeel - Lock-On - Level 57
  (379, 37900, 199, 6, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Registeel - Hyper Beam - Level 65
  (379, 37900, 63, 6, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Registeel - Focus Punch - TM01
  (379, 37900, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 11),
  -- Registeel - Toxic - TM06
  (379, 37900, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Registeel - Hidden Power - TM10
  (379, 37900, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Registeel - Sunny Day - TM11
  (379, 37900, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 14),
  -- Registeel - Hyper Beam - TM15
  (379, 37900, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 15),
  -- Registeel - Protect - TM17
  (379, 37900, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 16),
  -- Registeel - Rain Dance - TM18
  (379, 37900, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 17),
  -- Registeel - Safeguard - TM20
  (379, 37900, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 18),
  -- Registeel - Frustration - TM21
  (379, 37900, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 19),
  -- Registeel - Thunderbolt - TM24
  (379, 37900, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 20),
  -- Registeel - Thunder - TM25
  (379, 37900, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 21),
  -- Registeel - Earthquake - TM26
  (379, 37900, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 22),
  -- Registeel - Return - TM27
  (379, 37900, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 23),
  -- Registeel - Brick Break - TM31
  (379, 37900, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 24),
  -- Registeel - Double Team - TM32
  (379, 37900, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Registeel - Shock Wave - TM34
  (379, 37900, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 26),
  -- Registeel - Sandstorm - TM37
  (379, 37900, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 27),
  -- Registeel - Rock Tomb - TM39
  (379, 37900, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 28),
  -- Registeel - Aerial Ace - TM40
  (379, 37900, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 29),
  -- Registeel - Facade - TM42
  (379, 37900, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 30),
  -- Registeel - Secret Power - TM43
  (379, 37900, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 31),
  -- Registeel - Rest - TM44
  (379, 37900, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 32),
  -- Registeel - Strength - HM04
  (379, 37900, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 33),
  -- Registeel - Rock Smash - HM06
  (379, 37900, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 34),
  -- Registeel - Body Slam - Move Tutor
  (379, 37900, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Registeel - Counter - Move Tutor
  (379, 37900, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Registeel - Double-Edge - Move Tutor
  (379, 37900, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Registeel - Explosion - Move Tutor
  (379, 37900, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Registeel - Mega Kick - Move Tutor
  (379, 37900, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Registeel - Mega Punch - Move Tutor
  (379, 37900, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Registeel - Mimic - Move Tutor
  (379, 37900, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Registeel - Rock Slide - Move Tutor
  (379, 37900, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Registeel - Seismic Toss - Move Tutor
  (379, 37900, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Registeel - Substitute - Move Tutor
  (379, 37900, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Registeel - Thunder Wave - Move Tutor
  (379, 37900, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Latias - Psywave - Level 1
  (380, 38000, 149, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Latias - Wish - Level 5
  (380, 38000, 273, 6, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Latias - Helping Hand - Level 10
  (380, 38000, 270, 6, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Latias - Safeguard - Level 15
  (380, 38000, 219, 6, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Latias - Dragon Breath - Level 20
  (380, 38000, 225, 6, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Latias - Water Sport - Level 25
  (380, 38000, 346, 6, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Latias - Refresh - Level 30
  (380, 38000, 287, 6, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Latias - Mist Ball - Level 35
  (380, 38000, 296, 6, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Latias - Psychic - Level 40
  (380, 38000, 94, 6, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Latias - Recover - Level 45
  (380, 38000, 105, 6, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Latias - Charm - Level 50
  (380, 38000, 204, 6, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Latias - Dragon Claw - TM02
  (380, 38000, 337, 6, NULL, 2, NULL, NULL, 6002002, NULL, 12),
  -- Latias - Water Pulse - TM03
  (380, 38000, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 13),
  -- Latias - Calm Mind - TM04
  (380, 38000, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 14),
  -- Latias - Roar - TM05
  (380, 38000, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 15),
  -- Latias - Toxic - TM06
  (380, 38000, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Latias - Hidden Power - TM10
  (380, 38000, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 17),
  -- Latias - Sunny Day - TM11
  (380, 38000, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 18),
  -- Latias - Ice Beam - TM13
  (380, 38000, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 19),
  -- Latias - Hyper Beam - TM15
  (380, 38000, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 20),
  -- Latias - Light Screen - TM16
  (380, 38000, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 21),
  -- Latias - Protect - TM17
  (380, 38000, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 22),
  -- Latias - Rain Dance - TM18
  (380, 38000, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 23),
  -- Latias - Safeguard - TM20
  (380, 38000, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 24),
  -- Latias - Frustration - TM21
  (380, 38000, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 25),
  -- Latias - Solar Beam - TM22
  (380, 38000, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 26),
  -- Latias - Thunderbolt - TM24
  (380, 38000, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 27),
  -- Latias - Thunder - TM25
  (380, 38000, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 28),
  -- Latias - Earthquake - TM26
  (380, 38000, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 29),
  -- Latias - Return - TM27
  (380, 38000, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 30),
  -- Latias - Psychic - TM29
  (380, 38000, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 31),
  -- Latias - Shadow Ball - TM30
  (380, 38000, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 32),
  -- Latias - Double Team - TM32
  (380, 38000, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 33),
  -- Latias - Reflect - TM33
  (380, 38000, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 34),
  -- Latias - Shock Wave - TM34
  (380, 38000, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 35),
  -- Latias - Sandstorm - TM37
  (380, 38000, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 36),
  -- Latias - Aerial Ace - TM40
  (380, 38000, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 37),
  -- Latias - Facade - TM42
  (380, 38000, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 38),
  -- Latias - Secret Power - TM43
  (380, 38000, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 39),
  -- Latias - Rest - TM44
  (380, 38000, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 40),
  -- Latias - Attract - TM45
  (380, 38000, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 41),
  -- Latias - Steel Wing - TM47
  (380, 38000, 211, 6, NULL, 2, NULL, NULL, 6002047, NULL, 42),
  -- Latias - Cut - HM01
  (380, 38000, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 43),
  -- Latias - Fly - HM02
  (380, 38000, 19, 6, NULL, 3, NULL, NULL, 6003002, NULL, 44),
  -- Latias - Surf - HM03
  (380, 38000, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 45),
  -- Latias - Flash - HM05
  (380, 38000, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 46),
  -- Latias - Waterfall - HM07
  (380, 38000, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 47),
  -- Latias - Body Slam - Move Tutor
  (380, 38000, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Latias - Double-Edge - Move Tutor
  (380, 38000, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Latias - Dream Eater - Move Tutor
  (380, 38000, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Latias - Mimic - Move Tutor
  (380, 38000, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Latias - Substitute - Move Tutor
  (380, 38000, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Latias - Thunder Wave - Move Tutor
  (380, 38000, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Latios - Psywave - Level 1
  (381, 38100, 149, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Latios - Memento - Level 5
  (381, 38100, 262, 6, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Latios - Helping Hand - Level 10
  (381, 38100, 270, 6, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Latios - Safeguard - Level 15
  (381, 38100, 219, 6, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Latios - Dragon Breath - Level 20
  (381, 38100, 225, 6, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Latios - Protect - Level 25
  (381, 38100, 182, 6, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Latios - Refresh - Level 30
  (381, 38100, 287, 6, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Latios - Luster Purge - Level 35
  (381, 38100, 295, 6, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Latios - Psychic - Level 40
  (381, 38100, 94, 6, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Latios - Recover - Level 45
  (381, 38100, 105, 6, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Latios - Dragon Dance - Level 50
  (381, 38100, 349, 6, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Latios - Dragon Claw - TM02
  (381, 38100, 337, 6, NULL, 2, NULL, NULL, 6002002, NULL, 12),
  -- Latios - Water Pulse - TM03
  (381, 38100, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 13),
  -- Latios - Calm Mind - TM04
  (381, 38100, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 14),
  -- Latios - Roar - TM05
  (381, 38100, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 15),
  -- Latios - Toxic - TM06
  (381, 38100, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Latios - Hidden Power - TM10
  (381, 38100, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 17),
  -- Latios - Sunny Day - TM11
  (381, 38100, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 18),
  -- Latios - Ice Beam - TM13
  (381, 38100, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 19),
  -- Latios - Hyper Beam - TM15
  (381, 38100, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 20),
  -- Latios - Light Screen - TM16
  (381, 38100, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 21),
  -- Latios - Protect - TM17
  (381, 38100, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 22),
  -- Latios - Rain Dance - TM18
  (381, 38100, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 23),
  -- Latios - Safeguard - TM20
  (381, 38100, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 24),
  -- Latios - Frustration - TM21
  (381, 38100, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 25),
  -- Latios - Solar Beam - TM22
  (381, 38100, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 26),
  -- Latios - Thunderbolt - TM24
  (381, 38100, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 27),
  -- Latios - Thunder - TM25
  (381, 38100, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 28),
  -- Latios - Earthquake - TM26
  (381, 38100, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 29),
  -- Latios - Return - TM27
  (381, 38100, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 30),
  -- Latios - Psychic - TM29
  (381, 38100, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 31),
  -- Latios - Shadow Ball - TM30
  (381, 38100, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 32),
  -- Latios - Double Team - TM32
  (381, 38100, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 33),
  -- Latios - Reflect - TM33
  (381, 38100, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 34),
  -- Latios - Shock Wave - TM34
  (381, 38100, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 35),
  -- Latios - Sandstorm - TM37
  (381, 38100, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 36),
  -- Latios - Aerial Ace - TM40
  (381, 38100, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 37),
  -- Latios - Facade - TM42
  (381, 38100, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 38),
  -- Latios - Secret Power - TM43
  (381, 38100, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 39),
  -- Latios - Rest - TM44
  (381, 38100, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 40),
  -- Latios - Attract - TM45
  (381, 38100, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 41),
  -- Latios - Steel Wing - TM47
  (381, 38100, 211, 6, NULL, 2, NULL, NULL, 6002047, NULL, 42),
  -- Latios - Cut - HM01
  (381, 38100, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 43),
  -- Latios - Fly - HM02
  (381, 38100, 19, 6, NULL, 3, NULL, NULL, 6003002, NULL, 44),
  -- Latios - Surf - HM03
  (381, 38100, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 45),
  -- Latios - Flash - HM05
  (381, 38100, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 46),
  -- Latios - Waterfall - HM07
  (381, 38100, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 47),
  -- Latios - Body Slam - Move Tutor
  (381, 38100, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Latios - Double-Edge - Move Tutor
  (381, 38100, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Latios - Dream Eater - Move Tutor
  (381, 38100, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Latios - Mimic - Move Tutor
  (381, 38100, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Latios - Substitute - Move Tutor
  (381, 38100, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Latios - Thunder Wave - Move Tutor
  (381, 38100, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Kyogre - Water Pulse - Level 1
  (382, 38200, 352, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyogre - Scary Face - Level 5
  (382, 38200, 184, 6, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Kyogre - Ancient Power - Level 15
  (382, 38200, 246, 6, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Kyogre - Body Slam - Level 20
  (382, 38200, 34, 6, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Kyogre - Calm Mind - Level 30
  (382, 38200, 347, 6, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Kyogre - Ice Beam - Level 35
  (382, 38200, 58, 6, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Kyogre - Hydro Pump - Level 45
  (382, 38200, 56, 6, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Kyogre - Rest - Level 50
  (382, 38200, 156, 6, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Kyogre - Sheer Cold - Level 60
  (382, 38200, 329, 6, NULL, 1, 60, NULL, NULL, NULL, 9),
  -- Kyogre - Double-Edge - Level 65
  (382, 38200, 38, 6, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Kyogre - Water Spout - Level 75
  (382, 38200, 323, 6, NULL, 1, 75, NULL, NULL, NULL, 11),
  -- Kyogre - Water Pulse - TM03
  (382, 38200, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 12),
  -- Kyogre - Calm Mind - TM04
  (382, 38200, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 13),
  -- Kyogre - Roar - TM05
  (382, 38200, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 14),
  -- Kyogre - Toxic - TM06
  (382, 38200, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Kyogre - Hail - TM07
  (382, 38200, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 16),
  -- Kyogre - Hidden Power - TM10
  (382, 38200, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 17),
  -- Kyogre - Ice Beam - TM13
  (382, 38200, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 18),
  -- Kyogre - Blizzard - TM14
  (382, 38200, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 19),
  -- Kyogre - Hyper Beam - TM15
  (382, 38200, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 20),
  -- Kyogre - Protect - TM17
  (382, 38200, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 21),
  -- Kyogre - Rain Dance - TM18
  (382, 38200, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 22),
  -- Kyogre - Safeguard - TM20
  (382, 38200, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 23),
  -- Kyogre - Frustration - TM21
  (382, 38200, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 24),
  -- Kyogre - Thunderbolt - TM24
  (382, 38200, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 25),
  -- Kyogre - Thunder - TM25
  (382, 38200, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 26),
  -- Kyogre - Earthquake - TM26
  (382, 38200, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 27),
  -- Kyogre - Return - TM27
  (382, 38200, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 28),
  -- Kyogre - Brick Break - TM31
  (382, 38200, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 29),
  -- Kyogre - Double Team - TM32
  (382, 38200, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 30),
  -- Kyogre - Shock Wave - TM34
  (382, 38200, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 31),
  -- Kyogre - Rock Tomb - TM39
  (382, 38200, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 32),
  -- Kyogre - Facade - TM42
  (382, 38200, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 33),
  -- Kyogre - Secret Power - TM43
  (382, 38200, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 34),
  -- Kyogre - Rest - TM44
  (382, 38200, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 35),
  -- Kyogre - Surf - HM03
  (382, 38200, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 36),
  -- Kyogre - Strength - HM04
  (382, 38200, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 37),
  -- Kyogre - Rock Smash - HM06
  (382, 38200, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 38),
  -- Kyogre - Waterfall - HM07
  (382, 38200, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 39),
  -- Kyogre - Body Slam - Move Tutor
  (382, 38200, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Kyogre - Double-Edge - Move Tutor
  (382, 38200, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Kyogre - Mimic - Move Tutor
  (382, 38200, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Kyogre - Rock Slide - Move Tutor
  (382, 38200, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Kyogre - Substitute - Move Tutor
  (382, 38200, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Kyogre - Thunder Wave - Move Tutor
  (382, 38200, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Groudon - Mud Shot - Level 1
  (383, 38300, 341, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Groudon - Scary Face - Level 5
  (383, 38300, 184, 6, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Groudon - Ancient Power - Level 15
  (383, 38300, 246, 6, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Groudon - Slash - Level 20
  (383, 38300, 163, 6, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Groudon - Bulk Up - Level 30
  (383, 38300, 339, 6, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Groudon - Earthquake - Level 35
  (383, 38300, 89, 6, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Groudon - Fire Blast - Level 45
  (383, 38300, 126, 6, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Groudon - Rest - Level 50
  (383, 38300, 156, 6, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Groudon - Fissure - Level 60
  (383, 38300, 90, 6, NULL, 1, 60, NULL, NULL, NULL, 9),
  -- Groudon - Solar Beam - Level 65
  (383, 38300, 76, 6, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Groudon - Eruption - Level 75
  (383, 38300, 284, 6, NULL, 1, 75, NULL, NULL, NULL, 11),
  -- Groudon - Dragon Claw - TM02
  (383, 38300, 337, 6, NULL, 2, NULL, NULL, 6002002, NULL, 12),
  -- Groudon - Roar - TM05
  (383, 38300, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 13),
  -- Groudon - Toxic - TM06
  (383, 38300, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Groudon - Bulk Up - TM08
  (383, 38300, 339, 6, NULL, 2, NULL, NULL, 6002008, NULL, 15),
  -- Groudon - Hidden Power - TM10
  (383, 38300, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Groudon - Sunny Day - TM11
  (383, 38300, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 17),
  -- Groudon - Hyper Beam - TM15
  (383, 38300, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 18),
  -- Groudon - Protect - TM17
  (383, 38300, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 19),
  -- Groudon - Safeguard - TM20
  (383, 38300, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 20),
  -- Groudon - Frustration - TM21
  (383, 38300, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 21),
  -- Groudon - Solar Beam - TM22
  (383, 38300, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 22),
  -- Groudon - Iron Tail - TM23
  (383, 38300, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 23),
  -- Groudon - Thunderbolt - TM24
  (383, 38300, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 24),
  -- Groudon - Thunder - TM25
  (383, 38300, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 25),
  -- Groudon - Earthquake - TM26
  (383, 38300, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 26),
  -- Groudon - Return - TM27
  (383, 38300, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 27),
  -- Groudon - Dig - TM28
  (383, 38300, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 28),
  -- Groudon - Brick Break - TM31
  (383, 38300, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 29),
  -- Groudon - Double Team - TM32
  (383, 38300, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 30),
  -- Groudon - Shock Wave - TM34
  (383, 38300, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 31),
  -- Groudon - Flamethrower - TM35
  (383, 38300, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 32),
  -- Groudon - Sandstorm - TM37
  (383, 38300, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 33),
  -- Groudon - Fire Blast - TM38
  (383, 38300, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 34),
  -- Groudon - Rock Tomb - TM39
  (383, 38300, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 35),
  -- Groudon - Aerial Ace - TM40
  (383, 38300, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 36),
  -- Groudon - Facade - TM42
  (383, 38300, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 37),
  -- Groudon - Secret Power - TM43
  (383, 38300, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 38),
  -- Groudon - Rest - TM44
  (383, 38300, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 39),
  -- Groudon - Overheat - TM50
  (383, 38300, 315, 6, NULL, 2, NULL, NULL, 6002050, NULL, 40),
  -- Groudon - Cut - HM01
  (383, 38300, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 41),
  -- Groudon - Strength - HM04
  (383, 38300, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 42),
  -- Groudon - Rock Smash - HM06
  (383, 38300, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 43),
  -- Groudon - Body Slam - Move Tutor
  (383, 38300, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Groudon - Counter - Move Tutor
  (383, 38300, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Groudon - Double-Edge - Move Tutor
  (383, 38300, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Groudon - Mega Kick - Move Tutor
  (383, 38300, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Groudon - Mega Punch - Move Tutor
  (383, 38300, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Groudon - Mimic - Move Tutor
  (383, 38300, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Groudon - Rock Slide - Move Tutor
  (383, 38300, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Groudon - Seismic Toss - Move Tutor
  (383, 38300, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Groudon - Substitute - Move Tutor
  (383, 38300, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Groudon - Swords Dance - Move Tutor
  (383, 38300, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Groudon - Thunder Wave - Move Tutor
  (383, 38300, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 54),
  -- Rayquaza - Twister - Level 1
  (384, 38400, 239, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rayquaza - Scary Face - Level 5
  (384, 38400, 184, 6, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Rayquaza - Ancient Power - Level 15
  (384, 38400, 246, 6, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Rayquaza - Dragon Claw - Level 20
  (384, 38400, 337, 6, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Rayquaza - Dragon Dance - Level 30
  (384, 38400, 349, 6, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Rayquaza - Crunch - Level 35
  (384, 38400, 242, 6, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Rayquaza - Fly - Level 45
  (384, 38400, 19, 6, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Rayquaza - Rest - Level 50
  (384, 38400, 156, 6, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Rayquaza - Extreme Speed - Level 60
  (384, 38400, 245, 6, NULL, 1, 60, NULL, NULL, NULL, 9),
  -- Rayquaza - Outrage - Level 65
  (384, 38400, 200, 6, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Rayquaza - Hyper Beam - Level 75
  (384, 38400, 63, 6, NULL, 1, 75, NULL, NULL, NULL, 11),
  -- Rayquaza - Dragon Claw - TM02
  (384, 38400, 337, 6, NULL, 2, NULL, NULL, 6002002, NULL, 12),
  -- Rayquaza - Water Pulse - TM03
  (384, 38400, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 13),
  -- Rayquaza - Roar - TM05
  (384, 38400, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 14),
  -- Rayquaza - Toxic - TM06
  (384, 38400, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Rayquaza - Bulk Up - TM08
  (384, 38400, 339, 6, NULL, 2, NULL, NULL, 6002008, NULL, 16),
  -- Rayquaza - Hidden Power - TM10
  (384, 38400, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 17),
  -- Rayquaza - Sunny Day - TM11
  (384, 38400, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 18),
  -- Rayquaza - Ice Beam - TM13
  (384, 38400, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 19),
  -- Rayquaza - Blizzard - TM14
  (384, 38400, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 20),
  -- Rayquaza - Hyper Beam - TM15
  (384, 38400, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 21),
  -- Rayquaza - Protect - TM17
  (384, 38400, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 22),
  -- Rayquaza - Rain Dance - TM18
  (384, 38400, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 23),
  -- Rayquaza - Frustration - TM21
  (384, 38400, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 24),
  -- Rayquaza - Solar Beam - TM22
  (384, 38400, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 25),
  -- Rayquaza - Iron Tail - TM23
  (384, 38400, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 26),
  -- Rayquaza - Thunderbolt - TM24
  (384, 38400, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 27),
  -- Rayquaza - Thunder - TM25
  (384, 38400, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 28),
  -- Rayquaza - Earthquake - TM26
  (384, 38400, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 29),
  -- Rayquaza - Return - TM27
  (384, 38400, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 30),
  -- Rayquaza - Brick Break - TM31
  (384, 38400, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 31),
  -- Rayquaza - Double Team - TM32
  (384, 38400, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 32),
  -- Rayquaza - Shock Wave - TM34
  (384, 38400, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 33),
  -- Rayquaza - Flamethrower - TM35
  (384, 38400, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 34),
  -- Rayquaza - Sandstorm - TM37
  (384, 38400, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 35),
  -- Rayquaza - Fire Blast - TM38
  (384, 38400, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 36),
  -- Rayquaza - Aerial Ace - TM40
  (384, 38400, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 37),
  -- Rayquaza - Facade - TM42
  (384, 38400, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 38),
  -- Rayquaza - Secret Power - TM43
  (384, 38400, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 39),
  -- Rayquaza - Rest - TM44
  (384, 38400, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 40),
  -- Rayquaza - Overheat - TM50
  (384, 38400, 315, 6, NULL, 2, NULL, NULL, 6002050, NULL, 41),
  -- Rayquaza - Fly - HM02
  (384, 38400, 19, 6, NULL, 3, NULL, NULL, 6003002, NULL, 42),
  -- Rayquaza - Surf - HM03
  (384, 38400, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 43),
  -- Rayquaza - Strength - HM04
  (384, 38400, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 44),
  -- Rayquaza - Rock Smash - HM06
  (384, 38400, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 45),
  -- Rayquaza - Waterfall - HM07
  (384, 38400, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 46),
  -- Rayquaza - Body Slam - Move Tutor
  (384, 38400, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Rayquaza - Double-Edge - Move Tutor
  (384, 38400, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Rayquaza - Mimic - Move Tutor
  (384, 38400, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Rayquaza - Rock Slide - Move Tutor
  (384, 38400, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Rayquaza - Substitute - Move Tutor
  (384, 38400, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Rayquaza - Thunder Wave - Move Tutor
  (384, 38400, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Jirachi - Wish - Level 1
  (385, 38500, 273, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jirachi - Confusion - Level 1
  (385, 38500, 93, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jirachi - Rest - Level 5
  (385, 38500, 156, 6, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Jirachi - Swift - Level 10
  (385, 38500, 129, 6, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Jirachi - Helping Hand - Level 15
  (385, 38500, 270, 6, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Jirachi - Psychic - Level 20
  (385, 38500, 94, 6, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Jirachi - Refresh - Level 25
  (385, 38500, 287, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Jirachi - Rest - Level 30
  (385, 38500, 156, 6, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Jirachi - Double-Edge - Level 35
  (385, 38500, 38, 6, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Jirachi - Future Sight - Level 40
  (385, 38500, 248, 6, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Jirachi - Cosmic Power - Level 45
  (385, 38500, 322, 6, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Jirachi - Doom Desire - Level 50
  (385, 38500, 353, 6, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Jirachi - Water Pulse - TM03
  (385, 38500, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 13),
  -- Jirachi - Calm Mind - TM04
  (385, 38500, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 14),
  -- Jirachi - Toxic - TM06
  (385, 38500, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Jirachi - Hidden Power - TM10
  (385, 38500, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Jirachi - Sunny Day - TM11
  (385, 38500, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 17),
  -- Jirachi - Hyper Beam - TM15
  (385, 38500, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 18),
  -- Jirachi - Light Screen - TM16
  (385, 38500, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 19),
  -- Jirachi - Protect - TM17
  (385, 38500, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 20),
  -- Jirachi - Rain Dance - TM18
  (385, 38500, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 21),
  -- Jirachi - Safeguard - TM20
  (385, 38500, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 22),
  -- Jirachi - Frustration - TM21
  (385, 38500, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 23),
  -- Jirachi - Thunderbolt - TM24
  (385, 38500, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 24),
  -- Jirachi - Thunder - TM25
  (385, 38500, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 25),
  -- Jirachi - Return - TM27
  (385, 38500, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 26),
  -- Jirachi - Psychic - TM29
  (385, 38500, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 27),
  -- Jirachi - Shadow Ball - TM30
  (385, 38500, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 28),
  -- Jirachi - Double Team - TM32
  (385, 38500, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 29),
  -- Jirachi - Reflect - TM33
  (385, 38500, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 30),
  -- Jirachi - Shock Wave - TM34
  (385, 38500, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 31),
  -- Jirachi - Sandstorm - TM37
  (385, 38500, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 32),
  -- Jirachi - Aerial Ace - TM40
  (385, 38500, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 33),
  -- Jirachi - Facade - TM42
  (385, 38500, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 34),
  -- Jirachi - Secret Power - TM43
  (385, 38500, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 35),
  -- Jirachi - Rest - TM44
  (385, 38500, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 36),
  -- Jirachi - Skill Swap - TM48
  (385, 38500, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 37),
  -- Jirachi - Flash - HM05
  (385, 38500, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 38),
  -- Jirachi - Body Slam - Move Tutor
  (385, 38500, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Jirachi - Double-Edge - Move Tutor
  (385, 38500, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Jirachi - Dream Eater - Move Tutor
  (385, 38500, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Jirachi - Metronome - Move Tutor
  (385, 38500, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Jirachi - Mimic - Move Tutor
  (385, 38500, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Jirachi - Substitute - Move Tutor
  (385, 38500, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Jirachi - Thunder Wave - Move Tutor
  (385, 38500, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45);
