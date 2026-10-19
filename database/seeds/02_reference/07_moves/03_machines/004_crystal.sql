-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation II TM/HM catalog for Crystal.
-- Cross-check: Serebii Crystal TM/HM list and PokemonDB Generation 2 move pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: Crystal
-- Rows: 57
-- Scope: Crystal TM and HM catalog used by machine learnset rows.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM01 Dynamic Punch
  (4002001, 223, 4, NULL, 2, 'TM01', 1),
  -- TM02 Headbutt
  (4002002, 29, 4, NULL, 2, 'TM02', 2),
  -- TM03 Curse
  (4002003, 174, 4, NULL, 2, 'TM03', 3),
  -- TM04 Rollout
  (4002004, 205, 4, NULL, 2, 'TM04', 4),
  -- TM05 Roar
  (4002005, 46, 4, NULL, 2, 'TM05', 5),
  -- TM06 Toxic
  (4002006, 92, 4, NULL, 2, 'TM06', 6),
  -- TM07 Zap Cannon
  (4002007, 192, 4, NULL, 2, 'TM07', 7),
  -- TM08 Rock Smash
  (4002008, 249, 4, NULL, 2, 'TM08', 8),
  -- TM09 Psych Up
  (4002009, 244, 4, NULL, 2, 'TM09', 9),
  -- TM10 Hidden Power
  (4002010, 237, 4, NULL, 2, 'TM10', 10),
  -- TM11 Sunny Day
  (4002011, 241, 4, NULL, 2, 'TM11', 11),
  -- TM12 Sweet Scent
  (4002012, 230, 4, NULL, 2, 'TM12', 12),
  -- TM13 Snore
  (4002013, 173, 4, NULL, 2, 'TM13', 13),
  -- TM14 Blizzard
  (4002014, 59, 4, NULL, 2, 'TM14', 14),
  -- TM15 Hyper Beam
  (4002015, 63, 4, NULL, 2, 'TM15', 15),
  -- TM16 Icy Wind
  (4002016, 196, 4, NULL, 2, 'TM16', 16),
  -- TM17 Protect
  (4002017, 182, 4, NULL, 2, 'TM17', 17),
  -- TM18 Rain Dance
  (4002018, 240, 4, NULL, 2, 'TM18', 18),
  -- TM19 Giga Drain
  (4002019, 202, 4, NULL, 2, 'TM19', 19),
  -- TM20 Endure
  (4002020, 203, 4, NULL, 2, 'TM20', 20),
  -- TM21 Frustration
  (4002021, 218, 4, NULL, 2, 'TM21', 21),
  -- TM22 Solar Beam
  (4002022, 76, 4, NULL, 2, 'TM22', 22),
  -- TM23 Iron Tail
  (4002023, 231, 4, NULL, 2, 'TM23', 23),
  -- TM24 Dragon Breath
  (4002024, 225, 4, NULL, 2, 'TM24', 24),
  -- TM25 Thunder
  (4002025, 87, 4, NULL, 2, 'TM25', 25),
  -- TM26 Earthquake
  (4002026, 89, 4, NULL, 2, 'TM26', 26),
  -- TM27 Return
  (4002027, 216, 4, NULL, 2, 'TM27', 27),
  -- TM28 Dig
  (4002028, 91, 4, NULL, 2, 'TM28', 28),
  -- TM29 Psychic
  (4002029, 94, 4, NULL, 2, 'TM29', 29),
  -- TM30 Shadow Ball
  (4002030, 247, 4, NULL, 2, 'TM30', 30),
  -- TM31 Mud-Slap
  (4002031, 189, 4, NULL, 2, 'TM31', 31),
  -- TM32 Double Team
  (4002032, 104, 4, NULL, 2, 'TM32', 32),
  -- TM33 Ice Punch
  (4002033, 8, 4, NULL, 2, 'TM33', 33),
  -- TM34 Swagger
  (4002034, 207, 4, NULL, 2, 'TM34', 34),
  -- TM35 Sleep Talk
  (4002035, 214, 4, NULL, 2, 'TM35', 35),
  -- TM36 Sludge Bomb
  (4002036, 188, 4, NULL, 2, 'TM36', 36),
  -- TM37 Sandstorm
  (4002037, 201, 4, NULL, 2, 'TM37', 37),
  -- TM38 Fire Blast
  (4002038, 126, 4, NULL, 2, 'TM38', 38),
  -- TM39 Swift
  (4002039, 129, 4, NULL, 2, 'TM39', 39),
  -- TM40 Defense Curl
  (4002040, 111, 4, NULL, 2, 'TM40', 40),
  -- TM41 Thunder Punch
  (4002041, 9, 4, NULL, 2, 'TM41', 41),
  -- TM42 Dream Eater
  (4002042, 138, 4, NULL, 2, 'TM42', 42),
  -- TM43 Detect
  (4002043, 197, 4, NULL, 2, 'TM43', 43),
  -- TM44 Rest
  (4002044, 156, 4, NULL, 2, 'TM44', 44),
  -- TM45 Attract
  (4002045, 213, 4, NULL, 2, 'TM45', 45),
  -- TM46 Thief
  (4002046, 168, 4, NULL, 2, 'TM46', 46),
  -- TM47 Steel Wing
  (4002047, 211, 4, NULL, 2, 'TM47', 47),
  -- TM48 Fire Punch
  (4002048, 7, 4, NULL, 2, 'TM48', 48),
  -- TM49 Fury Cutter
  (4002049, 210, 4, NULL, 2, 'TM49', 49),
  -- TM50 Nightmare
  (4002050, 171, 4, NULL, 2, 'TM50', 50),
  -- HM01 Cut
  (4003001, 15, 4, NULL, 3, 'HM01', 51),
  -- HM02 Fly
  (4003002, 19, 4, NULL, 3, 'HM02', 52),
  -- HM03 Surf
  (4003003, 57, 4, NULL, 3, 'HM03', 53),
  -- HM04 Strength
  (4003004, 70, 4, NULL, 3, 'HM04', 54),
  -- HM05 Flash
  (4003005, 148, 4, NULL, 3, 'HM05', 55),
  -- HM06 Whirlpool
  (4003006, 250, 4, NULL, 3, 'HM06', 56),
  -- HM07 Waterfall
  (4003007, 127, 4, NULL, 3, 'HM07', 57);
