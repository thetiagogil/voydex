-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation III TM/HM catalog for Emerald.
-- Cross-check: Serebii Emerald TM/HM list and PokemonDB Generation 3 move pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: Emerald
-- Rows: 58
-- Scope: Emerald TM and HM catalog used by machine learnset rows.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM01 Focus Punch
  (7002001, 264, 7, NULL, 2, 'TM01', 1),
  -- TM02 Dragon Claw
  (7002002, 337, 7, NULL, 2, 'TM02', 2),
  -- TM03 Water Pulse
  (7002003, 352, 7, NULL, 2, 'TM03', 3),
  -- TM04 Calm Mind
  (7002004, 347, 7, NULL, 2, 'TM04', 4),
  -- TM05 Roar
  (7002005, 46, 7, NULL, 2, 'TM05', 5),
  -- TM06 Toxic
  (7002006, 92, 7, NULL, 2, 'TM06', 6),
  -- TM07 Hail
  (7002007, 258, 7, NULL, 2, 'TM07', 7),
  -- TM08 Bulk Up
  (7002008, 339, 7, NULL, 2, 'TM08', 8),
  -- TM09 Bullet Seed
  (7002009, 331, 7, NULL, 2, 'TM09', 9),
  -- TM10 Hidden Power
  (7002010, 237, 7, NULL, 2, 'TM10', 10),
  -- TM11 Sunny Day
  (7002011, 241, 7, NULL, 2, 'TM11', 11),
  -- TM12 Taunt
  (7002012, 269, 7, NULL, 2, 'TM12', 12),
  -- TM13 Ice Beam
  (7002013, 58, 7, NULL, 2, 'TM13', 13),
  -- TM14 Blizzard
  (7002014, 59, 7, NULL, 2, 'TM14', 14),
  -- TM15 Hyper Beam
  (7002015, 63, 7, NULL, 2, 'TM15', 15),
  -- TM16 Light Screen
  (7002016, 113, 7, NULL, 2, 'TM16', 16),
  -- TM17 Protect
  (7002017, 182, 7, NULL, 2, 'TM17', 17),
  -- TM18 Rain Dance
  (7002018, 240, 7, NULL, 2, 'TM18', 18),
  -- TM19 Giga Drain
  (7002019, 202, 7, NULL, 2, 'TM19', 19),
  -- TM20 Safeguard
  (7002020, 219, 7, NULL, 2, 'TM20', 20),
  -- TM21 Frustration
  (7002021, 218, 7, NULL, 2, 'TM21', 21),
  -- TM22 Solar Beam
  (7002022, 76, 7, NULL, 2, 'TM22', 22),
  -- TM23 Iron Tail
  (7002023, 231, 7, NULL, 2, 'TM23', 23),
  -- TM24 Thunderbolt
  (7002024, 85, 7, NULL, 2, 'TM24', 24),
  -- TM25 Thunder
  (7002025, 87, 7, NULL, 2, 'TM25', 25),
  -- TM26 Earthquake
  (7002026, 89, 7, NULL, 2, 'TM26', 26),
  -- TM27 Return
  (7002027, 216, 7, NULL, 2, 'TM27', 27),
  -- TM28 Dig
  (7002028, 91, 7, NULL, 2, 'TM28', 28),
  -- TM29 Psychic
  (7002029, 94, 7, NULL, 2, 'TM29', 29),
  -- TM30 Shadow Ball
  (7002030, 247, 7, NULL, 2, 'TM30', 30),
  -- TM31 Brick Break
  (7002031, 280, 7, NULL, 2, 'TM31', 31),
  -- TM32 Double Team
  (7002032, 104, 7, NULL, 2, 'TM32', 32),
  -- TM33 Reflect
  (7002033, 115, 7, NULL, 2, 'TM33', 33),
  -- TM34 Shock Wave
  (7002034, 351, 7, NULL, 2, 'TM34', 34),
  -- TM35 Flamethrower
  (7002035, 53, 7, NULL, 2, 'TM35', 35),
  -- TM36 Sludge Bomb
  (7002036, 188, 7, NULL, 2, 'TM36', 36),
  -- TM37 Sandstorm
  (7002037, 201, 7, NULL, 2, 'TM37', 37),
  -- TM38 Fire Blast
  (7002038, 126, 7, NULL, 2, 'TM38', 38),
  -- TM39 Rock Tomb
  (7002039, 317, 7, NULL, 2, 'TM39', 39),
  -- TM40 Aerial Ace
  (7002040, 332, 7, NULL, 2, 'TM40', 40),
  -- TM41 Torment
  (7002041, 259, 7, NULL, 2, 'TM41', 41),
  -- TM42 Facade
  (7002042, 263, 7, NULL, 2, 'TM42', 42),
  -- TM43 Secret Power
  (7002043, 290, 7, NULL, 2, 'TM43', 43),
  -- TM44 Rest
  (7002044, 156, 7, NULL, 2, 'TM44', 44),
  -- TM45 Attract
  (7002045, 213, 7, NULL, 2, 'TM45', 45),
  -- TM46 Thief
  (7002046, 168, 7, NULL, 2, 'TM46', 46),
  -- TM47 Steel Wing
  (7002047, 211, 7, NULL, 2, 'TM47', 47),
  -- TM48 Skill Swap
  (7002048, 285, 7, NULL, 2, 'TM48', 48),
  -- TM49 Snatch
  (7002049, 289, 7, NULL, 2, 'TM49', 49),
  -- TM50 Overheat
  (7002050, 315, 7, NULL, 2, 'TM50', 50),
  -- HM01 Cut
  (7003001, 15, 7, NULL, 3, 'HM01', 51),
  -- HM02 Fly
  (7003002, 19, 7, NULL, 3, 'HM02', 52),
  -- HM03 Surf
  (7003003, 57, 7, NULL, 3, 'HM03', 53),
  -- HM04 Strength
  (7003004, 70, 7, NULL, 3, 'HM04', 54),
  -- HM05 Flash
  (7003005, 148, 7, NULL, 3, 'HM05', 55),
  -- HM06 Rock Smash
  (7003006, 249, 7, NULL, 3, 'HM06', 56),
  -- HM07 Waterfall
  (7003007, 127, 7, NULL, 3, 'HM07', 57),
  -- HM08 Dive
  (7003008, 291, 7, NULL, 3, 'HM08', 58);
