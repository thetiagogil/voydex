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
-- Pokémon: not-default forms
-- Rows: 120
-- Scope: form-specific level-up, TM, HM, and Move Tutor acquisition rows.
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
  -- Deoxys (Attack) - Leer - Level 1
  (386, 38601, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Attack) - Wrap - Level 1
  (386, 38601, 35, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Attack) - Night Shade - Level 5
  (386, 38601, 101, 6, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Deoxys (Attack) - Teleport - Level 10
  (386, 38601, 100, 6, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Deoxys (Attack) - Taunt - Level 15
  (386, 38601, 269, 6, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Deoxys (Attack) - Pursuit - Level 20
  (386, 38601, 228, 6, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Deoxys (Attack) - Psychic - Level 25
  (386, 38601, 94, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Deoxys (Attack) - Superpower - Level 30
  (386, 38601, 276, 6, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Deoxys (Attack) - Cosmic Power - Level 35
  (386, 38601, 322, 6, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Deoxys (Attack) - Zap Cannon - Level 40
  (386, 38601, 192, 6, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Deoxys (Attack) - Psycho Boost - Level 45
  (386, 38601, 354, 6, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Deoxys (Attack) - Hyper Beam - Level 50
  (386, 38601, 63, 6, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Deoxys (Defense) - Leer - Level 1
  (386, 38602, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Defense) - Wrap - Level 1
  (386, 38602, 35, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Defense) - Night Shade - Level 5
  (386, 38602, 101, 6, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Deoxys (Defense) - Teleport - Level 10
  (386, 38602, 100, 6, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Deoxys (Defense) - Knock Off - Level 15
  (386, 38602, 282, 6, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Deoxys (Defense) - Spikes - Level 20
  (386, 38602, 191, 6, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Deoxys (Defense) - Psychic - Level 25
  (386, 38602, 94, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Deoxys (Defense) - Snatch - Level 30
  (386, 38602, 289, 6, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Deoxys (Defense) - Iron Defense - Level 35
  (386, 38602, 334, 6, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Deoxys (Defense) - Amnesia - Level 35
  (386, 38602, 133, 6, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Deoxys (Defense) - Recover - Level 40
  (386, 38602, 105, 6, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Deoxys (Defense) - Psycho Boost - Level 45
  (386, 38602, 354, 6, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Deoxys (Defense) - Counter - Level 50
  (386, 38602, 68, 6, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Deoxys (Defense) - Mirror Coat - Level 50
  (386, 38602, 243, 6, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Deoxys (Attack) - Focus Punch - TM01
  (386, 38601, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 13),
  -- Deoxys (Defense) - Focus Punch - TM01
  (386, 38602, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 15),
  -- Deoxys (Attack) - Water Pulse - TM03
  (386, 38601, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 14),
  -- Deoxys (Defense) - Water Pulse - TM03
  (386, 38602, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 16),
  -- Deoxys (Attack) - Calm Mind - TM04
  (386, 38601, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 15),
  -- Deoxys (Defense) - Calm Mind - TM04
  (386, 38602, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 17),
  -- Deoxys (Attack) - Toxic - TM06
  (386, 38601, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Deoxys (Defense) - Toxic - TM06
  (386, 38602, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 18),
  -- Deoxys (Attack) - Hidden Power - TM10
  (386, 38601, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 17),
  -- Deoxys (Defense) - Hidden Power - TM10
  (386, 38602, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 19),
  -- Deoxys (Attack) - Sunny Day - TM11
  (386, 38601, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 18),
  -- Deoxys (Defense) - Sunny Day - TM11
  (386, 38602, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 20),
  -- Deoxys (Attack) - Taunt - TM12
  (386, 38601, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 19),
  -- Deoxys (Defense) - Taunt - TM12
  (386, 38602, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 21),
  -- Deoxys (Attack) - Ice Beam - TM13
  (386, 38601, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 20),
  -- Deoxys (Defense) - Ice Beam - TM13
  (386, 38602, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 22),
  -- Deoxys (Attack) - Hyper Beam - TM15
  (386, 38601, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 21),
  -- Deoxys (Defense) - Hyper Beam - TM15
  (386, 38602, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 23),
  -- Deoxys (Attack) - Light Screen - TM16
  (386, 38601, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 22),
  -- Deoxys (Defense) - Light Screen - TM16
  (386, 38602, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 24),
  -- Deoxys (Attack) - Protect - TM17
  (386, 38601, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 23),
  -- Deoxys (Defense) - Protect - TM17
  (386, 38602, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 25),
  -- Deoxys (Attack) - Rain Dance - TM18
  (386, 38601, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 24),
  -- Deoxys (Defense) - Rain Dance - TM18
  (386, 38602, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 26),
  -- Deoxys (Attack) - Safeguard - TM20
  (386, 38601, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 25),
  -- Deoxys (Defense) - Safeguard - TM20
  (386, 38602, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 27),
  -- Deoxys (Attack) - Frustration - TM21
  (386, 38601, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 26),
  -- Deoxys (Defense) - Frustration - TM21
  (386, 38602, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 28),
  -- Deoxys (Attack) - Solar Beam - TM22
  (386, 38601, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 27),
  -- Deoxys (Defense) - Solar Beam - TM22
  (386, 38602, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 29),
  -- Deoxys (Attack) - Thunderbolt - TM24
  (386, 38601, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 28),
  -- Deoxys (Defense) - Thunderbolt - TM24
  (386, 38602, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 30),
  -- Deoxys (Attack) - Thunder - TM25
  (386, 38601, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 29),
  -- Deoxys (Defense) - Thunder - TM25
  (386, 38602, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 31),
  -- Deoxys (Attack) - Return - TM27
  (386, 38601, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 30),
  -- Deoxys (Defense) - Return - TM27
  (386, 38602, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 32),
  -- Deoxys (Attack) - Psychic - TM29
  (386, 38601, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 31),
  -- Deoxys (Defense) - Psychic - TM29
  (386, 38602, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 33),
  -- Deoxys (Attack) - Shadow Ball - TM30
  (386, 38601, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 32),
  -- Deoxys (Defense) - Shadow Ball - TM30
  (386, 38602, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 34),
  -- Deoxys (Attack) - Brick Break - TM31
  (386, 38601, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 33),
  -- Deoxys (Defense) - Brick Break - TM31
  (386, 38602, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 35),
  -- Deoxys (Attack) - Double Team - TM32
  (386, 38601, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 34),
  -- Deoxys (Defense) - Double Team - TM32
  (386, 38602, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 36),
  -- Deoxys (Attack) - Reflect - TM33
  (386, 38601, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 35),
  -- Deoxys (Defense) - Reflect - TM33
  (386, 38602, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 37),
  -- Deoxys (Attack) - Shock Wave - TM34
  (386, 38601, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 36),
  -- Deoxys (Defense) - Shock Wave - TM34
  (386, 38602, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 38),
  -- Deoxys (Attack) - Rock Tomb - TM39
  (386, 38601, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 37),
  -- Deoxys (Defense) - Rock Tomb - TM39
  (386, 38602, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 39),
  -- Deoxys (Attack) - Aerial Ace - TM40
  (386, 38601, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 38),
  -- Deoxys (Defense) - Aerial Ace - TM40
  (386, 38602, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 40),
  -- Deoxys (Attack) - Torment - TM41
  (386, 38601, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 39),
  -- Deoxys (Defense) - Torment - TM41
  (386, 38602, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 41),
  -- Deoxys (Attack) - Facade - TM42
  (386, 38601, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 40),
  -- Deoxys (Defense) - Facade - TM42
  (386, 38602, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 42),
  -- Deoxys (Attack) - Secret Power - TM43
  (386, 38601, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 41),
  -- Deoxys (Defense) - Secret Power - TM43
  (386, 38602, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 43),
  -- Deoxys (Attack) - Rest - TM44
  (386, 38601, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 42),
  -- Deoxys (Defense) - Rest - TM44
  (386, 38602, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 44),
  -- Deoxys (Attack) - Skill Swap - TM48
  (386, 38601, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 43),
  -- Deoxys (Defense) - Skill Swap - TM48
  (386, 38602, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 45),
  -- Deoxys (Attack) - Snatch - TM49
  (386, 38601, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 44),
  -- Deoxys (Defense) - Snatch - TM49
  (386, 38602, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 46),
  -- Deoxys (Attack) - Cut - HM01
  (386, 38601, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 45),
  -- Deoxys (Defense) - Cut - HM01
  (386, 38602, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 47),
  -- Deoxys (Attack) - Strength - HM04
  (386, 38601, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 46),
  -- Deoxys (Defense) - Strength - HM04
  (386, 38602, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 48),
  -- Deoxys (Attack) - Flash - HM05
  (386, 38601, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 47),
  -- Deoxys (Defense) - Flash - HM05
  (386, 38602, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 49),
  -- Deoxys (Attack) - Rock Smash - HM06
  (386, 38601, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 48),
  -- Deoxys (Defense) - Rock Smash - HM06
  (386, 38602, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 50),
  -- Deoxys (Attack) - Body Slam - Move Tutor
  (386, 38601, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Deoxys (Defense) - Body Slam - Move Tutor
  (386, 38602, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Deoxys (Attack) - Counter - Move Tutor
  (386, 38601, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Deoxys (Defense) - Counter - Move Tutor
  (386, 38602, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Deoxys (Attack) - Double-Edge - Move Tutor
  (386, 38601, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Deoxys (Defense) - Double-Edge - Move Tutor
  (386, 38602, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Deoxys (Attack) - Dream Eater - Move Tutor
  (386, 38601, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Deoxys (Defense) - Dream Eater - Move Tutor
  (386, 38602, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 54),
  -- Deoxys (Attack) - Mega Kick - Move Tutor
  (386, 38601, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Deoxys (Defense) - Mega Kick - Move Tutor
  (386, 38602, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 55),
  -- Deoxys (Attack) - Mega Punch - Move Tutor
  (386, 38601, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 54),
  -- Deoxys (Defense) - Mega Punch - Move Tutor
  (386, 38602, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 56),
  -- Deoxys (Attack) - Mimic - Move Tutor
  (386, 38601, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 55),
  -- Deoxys (Defense) - Mimic - Move Tutor
  (386, 38602, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 57),
  -- Deoxys (Attack) - Rock Slide - Move Tutor
  (386, 38601, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 56),
  -- Deoxys (Defense) - Rock Slide - Move Tutor
  (386, 38602, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 58),
  -- Deoxys (Attack) - Seismic Toss - Move Tutor
  (386, 38601, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 57),
  -- Deoxys (Defense) - Seismic Toss - Move Tutor
  (386, 38602, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 59),
  -- Deoxys (Attack) - Substitute - Move Tutor
  (386, 38601, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 58),
  -- Deoxys (Defense) - Substitute - Move Tutor
  (386, 38602, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 60),
  -- Deoxys (Attack) - Thunder Wave - Move Tutor
  (386, 38601, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 59),
  -- Deoxys (Defense) - Thunder Wave - Move Tutor
  (386, 38602, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 61);
