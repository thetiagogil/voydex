-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation III TM/HM catalog for FireRed / LeafGreen.
-- Cross-check: Serebii FireRed / LeafGreen TM/HM list and PokemonDB Generation 3 move pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: FireRed / LeafGreen
-- Rows: 57
-- Scope: FireRed / LeafGreen legitimate TM and HM catalog used by machine learnset rows.
-- Note: HM08 Dive exists in game data but is not legitimately obtainable in FRLG, so it is excluded.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM01 Focus Punch
  (6002001, 264, 6, NULL, 2, 'TM01', 1),
  -- TM02 Dragon Claw
  (6002002, 337, 6, NULL, 2, 'TM02', 2),
  -- TM03 Water Pulse
  (6002003, 352, 6, NULL, 2, 'TM03', 3),
  -- TM04 Calm Mind
  (6002004, 347, 6, NULL, 2, 'TM04', 4),
  -- TM05 Roar
  (6002005, 46, 6, NULL, 2, 'TM05', 5),
  -- TM06 Toxic
  (6002006, 92, 6, NULL, 2, 'TM06', 6),
  -- TM07 Hail
  (6002007, 258, 6, NULL, 2, 'TM07', 7),
  -- TM08 Bulk Up
  (6002008, 339, 6, NULL, 2, 'TM08', 8),
  -- TM09 Bullet Seed
  (6002009, 331, 6, NULL, 2, 'TM09', 9),
  -- TM10 Hidden Power
  (6002010, 237, 6, NULL, 2, 'TM10', 10),
  -- TM11 Sunny Day
  (6002011, 241, 6, NULL, 2, 'TM11', 11),
  -- TM12 Taunt
  (6002012, 269, 6, NULL, 2, 'TM12', 12),
  -- TM13 Ice Beam
  (6002013, 58, 6, NULL, 2, 'TM13', 13),
  -- TM14 Blizzard
  (6002014, 59, 6, NULL, 2, 'TM14', 14),
  -- TM15 Hyper Beam
  (6002015, 63, 6, NULL, 2, 'TM15', 15),
  -- TM16 Light Screen
  (6002016, 113, 6, NULL, 2, 'TM16', 16),
  -- TM17 Protect
  (6002017, 182, 6, NULL, 2, 'TM17', 17),
  -- TM18 Rain Dance
  (6002018, 240, 6, NULL, 2, 'TM18', 18),
  -- TM19 Giga Drain
  (6002019, 202, 6, NULL, 2, 'TM19', 19),
  -- TM20 Safeguard
  (6002020, 219, 6, NULL, 2, 'TM20', 20),
  -- TM21 Frustration
  (6002021, 218, 6, NULL, 2, 'TM21', 21),
  -- TM22 Solar Beam
  (6002022, 76, 6, NULL, 2, 'TM22', 22),
  -- TM23 Iron Tail
  (6002023, 231, 6, NULL, 2, 'TM23', 23),
  -- TM24 Thunderbolt
  (6002024, 85, 6, NULL, 2, 'TM24', 24),
  -- TM25 Thunder
  (6002025, 87, 6, NULL, 2, 'TM25', 25),
  -- TM26 Earthquake
  (6002026, 89, 6, NULL, 2, 'TM26', 26),
  -- TM27 Return
  (6002027, 216, 6, NULL, 2, 'TM27', 27),
  -- TM28 Dig
  (6002028, 91, 6, NULL, 2, 'TM28', 28),
  -- TM29 Psychic
  (6002029, 94, 6, NULL, 2, 'TM29', 29),
  -- TM30 Shadow Ball
  (6002030, 247, 6, NULL, 2, 'TM30', 30),
  -- TM31 Brick Break
  (6002031, 280, 6, NULL, 2, 'TM31', 31),
  -- TM32 Double Team
  (6002032, 104, 6, NULL, 2, 'TM32', 32),
  -- TM33 Reflect
  (6002033, 115, 6, NULL, 2, 'TM33', 33),
  -- TM34 Shock Wave
  (6002034, 351, 6, NULL, 2, 'TM34', 34),
  -- TM35 Flamethrower
  (6002035, 53, 6, NULL, 2, 'TM35', 35),
  -- TM36 Sludge Bomb
  (6002036, 188, 6, NULL, 2, 'TM36', 36),
  -- TM37 Sandstorm
  (6002037, 201, 6, NULL, 2, 'TM37', 37),
  -- TM38 Fire Blast
  (6002038, 126, 6, NULL, 2, 'TM38', 38),
  -- TM39 Rock Tomb
  (6002039, 317, 6, NULL, 2, 'TM39', 39),
  -- TM40 Aerial Ace
  (6002040, 332, 6, NULL, 2, 'TM40', 40),
  -- TM41 Torment
  (6002041, 259, 6, NULL, 2, 'TM41', 41),
  -- TM42 Facade
  (6002042, 263, 6, NULL, 2, 'TM42', 42),
  -- TM43 Secret Power
  (6002043, 290, 6, NULL, 2, 'TM43', 43),
  -- TM44 Rest
  (6002044, 156, 6, NULL, 2, 'TM44', 44),
  -- TM45 Attract
  (6002045, 213, 6, NULL, 2, 'TM45', 45),
  -- TM46 Thief
  (6002046, 168, 6, NULL, 2, 'TM46', 46),
  -- TM47 Steel Wing
  (6002047, 211, 6, NULL, 2, 'TM47', 47),
  -- TM48 Skill Swap
  (6002048, 285, 6, NULL, 2, 'TM48', 48),
  -- TM49 Snatch
  (6002049, 289, 6, NULL, 2, 'TM49', 49),
  -- TM50 Overheat
  (6002050, 315, 6, NULL, 2, 'TM50', 50),
  -- HM01 Cut
  (6003001, 15, 6, NULL, 3, 'HM01', 51),
  -- HM02 Fly
  (6003002, 19, 6, NULL, 3, 'HM02', 52),
  -- HM03 Surf
  (6003003, 57, 6, NULL, 3, 'HM03', 53),
  -- HM04 Strength
  (6003004, 70, 6, NULL, 3, 'HM04', 54),
  -- HM05 Flash
  (6003005, 148, 6, NULL, 3, 'HM05', 55),
  -- HM06 Rock Smash
  (6003006, 249, 6, NULL, 3, 'HM06', 56),
  -- HM07 Waterfall
  (6003007, 127, 6, NULL, 3, 'HM07', 57);
