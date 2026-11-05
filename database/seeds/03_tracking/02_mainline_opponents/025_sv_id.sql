-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Indigo Disk, Blueberry League, Kieran, Terapagos, and Mochi Mayhem pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon The Indigo Disk major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for The Indigo Disk major fights. Game-specific rows are scoped where the source game changes the opponent.
-- ============================================================================

INSERT INTO tracking.mainline_opponents (
  id,
  version_group_id,
  game_id,
  slug,
  name,
  opponent_role,
  primary_type_id,
  secondary_type_id,
  sprite_slug,
  place,
  sort_order
) VALUES
  -- Crispin
  (25001, 25, NULL, 'crispin', 'Crispin', 'elite-four', 2, NULL, 'crispin', NULL, 1),
  -- Amarys
  (25002, 25, NULL, 'amarys', 'Amarys', 'elite-four', 17, NULL, 'amarys', NULL, 2),
  -- Lacey
  (25003, 25, NULL, 'lacey', 'Lacey', 'elite-four', 18, NULL, 'lacey', NULL, 3),
  -- Drayton
  (25004, 25, NULL, 'drayton', 'Drayton', 'elite-four', 15, NULL, 'drayton', NULL, 4),
  -- Kieran
  (25005, 25, NULL, 'kieran', 'Kieran', 'champion', NULL, NULL, 'kieran', 'Blueberry Academy', 5),
  -- Terapagos
  (25006, 25, NULL, 'terapagos', 'Terapagos', 'boss', 1, NULL, NULL, NULL, 6),
  -- Pecharunt
  (25007, 25, NULL, 'pecharunt', 'Pecharunt', 'boss', 8, 14, NULL, NULL, 7),
  -- Carmine (rival)
  (25008, 25, NULL, 'carmine', 'Carmine', 'rival', NULL, NULL, 'carmine', NULL, 8),
  -- Kieran (rival)
  (25009, 25, NULL, 'kieran-rival', 'Kieran', 'rival', NULL, NULL, 'kieran', NULL, 9),
  -- Arven & Penny (rival)
  (25010, 25, NULL, 'arven-penny', 'Arven & Penny', 'rival', NULL, NULL, 'arven-penny', NULL, 10),
  -- Nemona (rival)
  (25011, 25, NULL, 'nemona', 'Nemona', 'rival', NULL, NULL, 'nemona', NULL, 11),
  -- Meloetta (boss)
  (25012, 25, NULL, 'meloetta', 'Meloetta', 'boss', 1, 11, NULL, NULL, 12),
  -- Gouging Fire (boss, scarlet)
  (25013, 25, 36, 'gouging-fire', 'Gouging Fire', 'boss', 2, 15, NULL, NULL, 1),
  -- Raging Bolt (boss, scarlet)
  (25014, 25, 36, 'raging-bolt', 'Raging Bolt', 'boss', 4, 15, NULL, NULL, 2),
  -- Iron Crown (boss, violet)
  (25015, 25, 37, 'iron-crown', 'Iron Crown', 'boss', 17, 11, NULL, NULL, 1),
  -- Iron Boulder (boss, violet)
  (25016, 25, 37, 'iron-boulder', 'Iron Boulder', 'boss', 13, 11, NULL, NULL, 2),
  -- Articuno (boss)
  (25017, 25, NULL, 'articuno', 'Articuno', 'boss', 6, 10, NULL, NULL, 13),
  -- Zapdos (boss)
  (25018, 25, NULL, 'zapdos', 'Zapdos', 'boss', 4, 10, NULL, NULL, 14),
  -- Moltres (boss)
  (25019, 25, NULL, 'moltres', 'Moltres', 'boss', 2, 10, NULL, NULL, 15),
  -- Raikou (boss)
  (25020, 25, NULL, 'raikou', 'Raikou', 'boss', 4, NULL, NULL, NULL, 16),
  -- Entei (boss)
  (25021, 25, NULL, 'entei', 'Entei', 'boss', 2, NULL, NULL, NULL, 17),
  -- Suicune (boss)
  (25022, 25, NULL, 'suicune', 'Suicune', 'boss', 3, NULL, NULL, NULL, 18),
  -- Ho-Oh (boss)
  (25023, 25, NULL, 'ho-oh', 'Ho-Oh', 'boss', 2, 10, NULL, NULL, 19),
  -- Latios (boss)
  (25024, 25, NULL, 'latios', 'Latios', 'boss', 15, 11, NULL, NULL, 20),
  -- Groudon (boss)
  (25025, 25, NULL, 'groudon', 'Groudon', 'boss', 9, NULL, NULL, NULL, 21),
  -- Reshiram (boss)
  (25026, 25, NULL, 'reshiram', 'Reshiram', 'boss', 15, 2, NULL, NULL, 22),
  -- Solgaleo (boss)
  (25027, 25, NULL, 'solgaleo', 'Solgaleo', 'boss', 11, 17, NULL, NULL, 23),
  -- Glastrier (boss)
  (25028, 25, NULL, 'glastrier', 'Glastrier', 'boss', 6, NULL, NULL, NULL, 24),
  -- Lugia (boss)
  (25029, 25, NULL, 'lugia', 'Lugia', 'boss', 11, 10, NULL, NULL, 25),
  -- Latias (boss)
  (25030, 25, NULL, 'latias', 'Latias', 'boss', 15, 11, NULL, NULL, 26),
  -- Kyogre (boss)
  (25031, 25, NULL, 'kyogre', 'Kyogre', 'boss', 3, NULL, NULL, NULL, 27),
  -- Cobalion (boss)
  (25032, 25, NULL, 'cobalion', 'Cobalion', 'boss', 17, 7, NULL, NULL, 28),
  -- Terrakion (boss)
  (25033, 25, NULL, 'terrakion', 'Terrakion', 'boss', 13, 7, NULL, NULL, 29),
  -- Virizion (boss)
  (25034, 25, NULL, 'virizion', 'Virizion', 'boss', 5, 7, NULL, NULL, 30),
  -- Zekrom (boss)
  (25035, 25, NULL, 'zekrom', 'Zekrom', 'boss', 15, 4, NULL, NULL, 31),
  -- Lunala (boss)
  (25036, 25, NULL, 'lunala', 'Lunala', 'boss', 11, 14, NULL, NULL, 32),
  -- Spectrier (boss)
  (25037, 25, NULL, 'spectrier', 'Spectrier', 'boss', 14, NULL, NULL, NULL, 33),
  -- Rayquaza (boss)
  (25038, 25, NULL, 'rayquaza', 'Rayquaza', 'boss', 15, 10, NULL, NULL, 34),
  -- Kyurem (boss)
  (25039, 25, NULL, 'kyurem', 'Kyurem', 'boss', 15, 6, NULL, NULL, 35),
  -- Necrozma (boss)
  (25040, 25, NULL, 'necrozma', 'Necrozma', 'boss', 11, NULL, NULL, NULL, 36),
  -- Kubfu (boss)
  (25041, 25, NULL, 'kubfu', 'Kubfu', 'boss', 7, NULL, NULL, NULL, 37);
