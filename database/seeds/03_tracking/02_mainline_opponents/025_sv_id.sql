-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Indigo Disk, Blueberry League, Kieran, Terapagos, and Mochi Mayhem pages.
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
  sort_order
) VALUES
  -- Crispin
  (25001, 25, NULL, 'crispin', 'Crispin', 'elite-four', 2, NULL, 'crispin', 1),
  -- Amarys
  (25002, 25, NULL, 'amarys', 'Amarys', 'elite-four', 17, NULL, 'amarys', 2),
  -- Lacey
  (25003, 25, NULL, 'lacey', 'Lacey', 'elite-four', 18, NULL, 'lacey', 3),
  -- Drayton
  (25004, 25, NULL, 'drayton', 'Drayton', 'elite-four', 15, NULL, 'drayton', 4),
  -- Kieran
  (25005, 25, NULL, 'kieran', 'Kieran', 'champion', NULL, NULL, 'kieran', 5),
  -- Terapagos
  (25006, 25, NULL, 'terapagos', 'Terapagos', 'boss', 1, NULL, 'terapagos', 6),
  -- Pecharunt
  (25007, 25, NULL, 'pecharunt', 'Pecharunt', 'boss', 8, 14, 'pecharunt', 7),
  -- Carmine (rival)
  (25008, 25, NULL, 'carmine', 'Carmine', 'rival', NULL, NULL, 'carmine', 8),
  -- Kieran (rival)
  (25009, 25, NULL, 'kieran-rival', 'Kieran', 'rival', NULL, NULL, 'kieran', 9),
  -- Arven & Penny (rival)
  (25010, 25, NULL, 'arven-penny', 'Arven & Penny', 'rival', NULL, NULL, 'arven', 10),
  -- Nemona (rival)
  (25011, 25, NULL, 'nemona', 'Nemona', 'rival', NULL, NULL, 'nemona', 11);
