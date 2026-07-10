-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation II TM/HM catalog for Gold / Silver.
-- Cross-check: Serebii Gold / Silver TM/HM list and PokemonDB Generation 2 move pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: Gold / Silver
-- Rows: 57
-- Scope: Gold / Silver TM and HM catalog used by machine learnset rows.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM01 Dynamic Punch
  (3002001, 223, 3, NULL, 2, 'TM01', 1),
  -- TM02 Headbutt
  (3002002, 29, 3, NULL, 2, 'TM02', 2),
  -- TM03 Curse
  (3002003, 174, 3, NULL, 2, 'TM03', 3),
  -- TM04 Rollout
  (3002004, 205, 3, NULL, 2, 'TM04', 4),
  -- TM05 Roar
  (3002005, 46, 3, NULL, 2, 'TM05', 5),
  -- TM06 Toxic
  (3002006, 92, 3, NULL, 2, 'TM06', 6),
  -- TM07 Zap Cannon
  (3002007, 192, 3, NULL, 2, 'TM07', 7),
  -- TM08 Rock Smash
  (3002008, 249, 3, NULL, 2, 'TM08', 8),
  -- TM09 Psych Up
  (3002009, 244, 3, NULL, 2, 'TM09', 9),
  -- TM10 Hidden Power
  (3002010, 237, 3, NULL, 2, 'TM10', 10),
  -- TM11 Sunny Day
  (3002011, 241, 3, NULL, 2, 'TM11', 11),
  -- TM12 Sweet Scent
  (3002012, 230, 3, NULL, 2, 'TM12', 12),
  -- TM13 Snore
  (3002013, 173, 3, NULL, 2, 'TM13', 13),
  -- TM14 Blizzard
  (3002014, 59, 3, NULL, 2, 'TM14', 14),
  -- TM15 Hyper Beam
  (3002015, 63, 3, NULL, 2, 'TM15', 15),
  -- TM16 Icy Wind
  (3002016, 196, 3, NULL, 2, 'TM16', 16),
  -- TM17 Protect
  (3002017, 182, 3, NULL, 2, 'TM17', 17),
  -- TM18 Rain Dance
  (3002018, 240, 3, NULL, 2, 'TM18', 18),
  -- TM19 Giga Drain
  (3002019, 202, 3, NULL, 2, 'TM19', 19),
  -- TM20 Endure
  (3002020, 203, 3, NULL, 2, 'TM20', 20),
  -- TM21 Frustration
  (3002021, 218, 3, NULL, 2, 'TM21', 21),
  -- TM22 Solar Beam
  (3002022, 76, 3, NULL, 2, 'TM22', 22),
  -- TM23 Iron Tail
  (3002023, 231, 3, NULL, 2, 'TM23', 23),
  -- TM24 Dragon Breath
  (3002024, 225, 3, NULL, 2, 'TM24', 24),
  -- TM25 Thunder
  (3002025, 87, 3, NULL, 2, 'TM25', 25),
  -- TM26 Earthquake
  (3002026, 89, 3, NULL, 2, 'TM26', 26),
  -- TM27 Return
  (3002027, 216, 3, NULL, 2, 'TM27', 27),
  -- TM28 Dig
  (3002028, 91, 3, NULL, 2, 'TM28', 28),
  -- TM29 Psychic
  (3002029, 94, 3, NULL, 2, 'TM29', 29),
  -- TM30 Shadow Ball
  (3002030, 247, 3, NULL, 2, 'TM30', 30),
  -- TM31 Mud-Slap
  (3002031, 189, 3, NULL, 2, 'TM31', 31),
  -- TM32 Double Team
  (3002032, 104, 3, NULL, 2, 'TM32', 32),
  -- TM33 Ice Punch
  (3002033, 8, 3, NULL, 2, 'TM33', 33),
  -- TM34 Swagger
  (3002034, 207, 3, NULL, 2, 'TM34', 34),
  -- TM35 Sleep Talk
  (3002035, 214, 3, NULL, 2, 'TM35', 35),
  -- TM36 Sludge Bomb
  (3002036, 188, 3, NULL, 2, 'TM36', 36),
  -- TM37 Sandstorm
  (3002037, 201, 3, NULL, 2, 'TM37', 37),
  -- TM38 Fire Blast
  (3002038, 126, 3, NULL, 2, 'TM38', 38),
  -- TM39 Swift
  (3002039, 129, 3, NULL, 2, 'TM39', 39),
  -- TM40 Defense Curl
  (3002040, 111, 3, NULL, 2, 'TM40', 40),
  -- TM41 Thunder Punch
  (3002041, 9, 3, NULL, 2, 'TM41', 41),
  -- TM42 Dream Eater
  (3002042, 138, 3, NULL, 2, 'TM42', 42),
  -- TM43 Detect
  (3002043, 197, 3, NULL, 2, 'TM43', 43),
  -- TM44 Rest
  (3002044, 156, 3, NULL, 2, 'TM44', 44),
  -- TM45 Attract
  (3002045, 213, 3, NULL, 2, 'TM45', 45),
  -- TM46 Thief
  (3002046, 168, 3, NULL, 2, 'TM46', 46),
  -- TM47 Steel Wing
  (3002047, 211, 3, NULL, 2, 'TM47', 47),
  -- TM48 Fire Punch
  (3002048, 7, 3, NULL, 2, 'TM48', 48),
  -- TM49 Fury Cutter
  (3002049, 210, 3, NULL, 2, 'TM49', 49),
  -- TM50 Nightmare
  (3002050, 171, 3, NULL, 2, 'TM50', 50),
  -- HM01 Cut
  (3003001, 15, 3, NULL, 3, 'HM01', 51),
  -- HM02 Fly
  (3003002, 19, 3, NULL, 3, 'HM02', 52),
  -- HM03 Surf
  (3003003, 57, 3, NULL, 3, 'HM03', 53),
  -- HM04 Strength
  (3003004, 70, 3, NULL, 3, 'HM04', 54),
  -- HM05 Flash
  (3003005, 148, 3, NULL, 3, 'HM05', 55),
  -- HM06 Whirlpool
  (3003006, 250, 3, NULL, 3, 'HM06', 56),
  -- HM07 Waterfall
  (3003007, 127, 3, NULL, 3, 'HM07', 57);
