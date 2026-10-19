-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation III TM/HM catalog for Ruby / Sapphire.
-- Cross-check: Serebii Ruby / Sapphire TM/HM list and PokemonDB Generation 3 move pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: Ruby / Sapphire
-- Rows: 58
-- Scope: Ruby / Sapphire TM and HM catalog used by machine learnset rows.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM01 Focus Punch
  (5002001, 264, 5, NULL, 2, 'TM01', 1),
  -- TM02 Dragon Claw
  (5002002, 337, 5, NULL, 2, 'TM02', 2),
  -- TM03 Water Pulse
  (5002003, 352, 5, NULL, 2, 'TM03', 3),
  -- TM04 Calm Mind
  (5002004, 347, 5, NULL, 2, 'TM04', 4),
  -- TM05 Roar
  (5002005, 46, 5, NULL, 2, 'TM05', 5),
  -- TM06 Toxic
  (5002006, 92, 5, NULL, 2, 'TM06', 6),
  -- TM07 Hail
  (5002007, 258, 5, NULL, 2, 'TM07', 7),
  -- TM08 Bulk Up
  (5002008, 339, 5, NULL, 2, 'TM08', 8),
  -- TM09 Bullet Seed
  (5002009, 331, 5, NULL, 2, 'TM09', 9),
  -- TM10 Hidden Power
  (5002010, 237, 5, NULL, 2, 'TM10', 10),
  -- TM11 Sunny Day
  (5002011, 241, 5, NULL, 2, 'TM11', 11),
  -- TM12 Taunt
  (5002012, 269, 5, NULL, 2, 'TM12', 12),
  -- TM13 Ice Beam
  (5002013, 58, 5, NULL, 2, 'TM13', 13),
  -- TM14 Blizzard
  (5002014, 59, 5, NULL, 2, 'TM14', 14),
  -- TM15 Hyper Beam
  (5002015, 63, 5, NULL, 2, 'TM15', 15),
  -- TM16 Light Screen
  (5002016, 113, 5, NULL, 2, 'TM16', 16),
  -- TM17 Protect
  (5002017, 182, 5, NULL, 2, 'TM17', 17),
  -- TM18 Rain Dance
  (5002018, 240, 5, NULL, 2, 'TM18', 18),
  -- TM19 Giga Drain
  (5002019, 202, 5, NULL, 2, 'TM19', 19),
  -- TM20 Safeguard
  (5002020, 219, 5, NULL, 2, 'TM20', 20),
  -- TM21 Frustration
  (5002021, 218, 5, NULL, 2, 'TM21', 21),
  -- TM22 Solar Beam
  (5002022, 76, 5, NULL, 2, 'TM22', 22),
  -- TM23 Iron Tail
  (5002023, 231, 5, NULL, 2, 'TM23', 23),
  -- TM24 Thunderbolt
  (5002024, 85, 5, NULL, 2, 'TM24', 24),
  -- TM25 Thunder
  (5002025, 87, 5, NULL, 2, 'TM25', 25),
  -- TM26 Earthquake
  (5002026, 89, 5, NULL, 2, 'TM26', 26),
  -- TM27 Return
  (5002027, 216, 5, NULL, 2, 'TM27', 27),
  -- TM28 Dig
  (5002028, 91, 5, NULL, 2, 'TM28', 28),
  -- TM29 Psychic
  (5002029, 94, 5, NULL, 2, 'TM29', 29),
  -- TM30 Shadow Ball
  (5002030, 247, 5, NULL, 2, 'TM30', 30),
  -- TM31 Brick Break
  (5002031, 280, 5, NULL, 2, 'TM31', 31),
  -- TM32 Double Team
  (5002032, 104, 5, NULL, 2, 'TM32', 32),
  -- TM33 Reflect
  (5002033, 115, 5, NULL, 2, 'TM33', 33),
  -- TM34 Shock Wave
  (5002034, 351, 5, NULL, 2, 'TM34', 34),
  -- TM35 Flamethrower
  (5002035, 53, 5, NULL, 2, 'TM35', 35),
  -- TM36 Sludge Bomb
  (5002036, 188, 5, NULL, 2, 'TM36', 36),
  -- TM37 Sandstorm
  (5002037, 201, 5, NULL, 2, 'TM37', 37),
  -- TM38 Fire Blast
  (5002038, 126, 5, NULL, 2, 'TM38', 38),
  -- TM39 Rock Tomb
  (5002039, 317, 5, NULL, 2, 'TM39', 39),
  -- TM40 Aerial Ace
  (5002040, 332, 5, NULL, 2, 'TM40', 40),
  -- TM41 Torment
  (5002041, 259, 5, NULL, 2, 'TM41', 41),
  -- TM42 Facade
  (5002042, 263, 5, NULL, 2, 'TM42', 42),
  -- TM43 Secret Power
  (5002043, 290, 5, NULL, 2, 'TM43', 43),
  -- TM44 Rest
  (5002044, 156, 5, NULL, 2, 'TM44', 44),
  -- TM45 Attract
  (5002045, 213, 5, NULL, 2, 'TM45', 45),
  -- TM46 Thief
  (5002046, 168, 5, NULL, 2, 'TM46', 46),
  -- TM47 Steel Wing
  (5002047, 211, 5, NULL, 2, 'TM47', 47),
  -- TM48 Skill Swap
  (5002048, 285, 5, NULL, 2, 'TM48', 48),
  -- TM49 Snatch
  (5002049, 289, 5, NULL, 2, 'TM49', 49),
  -- TM50 Overheat
  (5002050, 315, 5, NULL, 2, 'TM50', 50),
  -- HM01 Cut
  (5003001, 15, 5, NULL, 3, 'HM01', 51),
  -- HM02 Fly
  (5003002, 19, 5, NULL, 3, 'HM02', 52),
  -- HM03 Surf
  (5003003, 57, 5, NULL, 3, 'HM03', 53),
  -- HM04 Strength
  (5003004, 70, 5, NULL, 3, 'HM04', 54),
  -- HM05 Flash
  (5003005, 148, 5, NULL, 3, 'HM05', 55),
  -- HM06 Rock Smash
  (5003006, 249, 5, NULL, 3, 'HM06', 56),
  -- HM07 Waterfall
  (5003007, 127, 5, NULL, 3, 'HM07', 57),
  -- HM08 Dive
  (5003008, 291, 5, NULL, 3, 'HM08', 58);
