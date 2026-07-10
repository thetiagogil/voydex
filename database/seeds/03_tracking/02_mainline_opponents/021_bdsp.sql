-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Brilliant Diamond / Shining Pearl, Badge, Elite Four, Champion, and First partner Pokémon pages.
-- Scope: Pokémon Brilliant Diamond / Shining Pearl major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Brilliant Diamond / Shining Pearl major fights. Game-specific rows are scoped where the source game changes the opponent.
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
  -- Roark
  (21001, 21, NULL, 'roark', 'Roark', 'gym-leader', 13, NULL, 'roark', 1),
  -- Gardenia
  (21002, 21, NULL, 'gardenia', 'Gardenia', 'gym-leader', 5, NULL, 'gardenia', 2),
  -- Maylene
  (21003, 21, NULL, 'maylene', 'Maylene', 'gym-leader', 7, NULL, 'maylene', 3),
  -- Crasher Wake
  (21004, 21, NULL, 'crasher-wake', 'Crasher Wake', 'gym-leader', 3, NULL, 'crasher-wake', 4),
  -- Fantina
  (21005, 21, NULL, 'fantina', 'Fantina', 'gym-leader', 14, NULL, 'fantina', 5),
  -- Byron
  (21006, 21, NULL, 'byron', 'Byron', 'gym-leader', 17, NULL, 'byron', 6),
  -- Candice
  (21007, 21, NULL, 'candice', 'Candice', 'gym-leader', 6, NULL, 'candice', 7),
  -- Volkner
  (21008, 21, NULL, 'volkner', 'Volkner', 'gym-leader', 4, NULL, 'volkner', 8),
  -- Aaron
  (21009, 21, NULL, 'aaron', 'Aaron', 'elite-four', 12, NULL, 'aaron', 9),
  -- Bertha
  (21010, 21, NULL, 'bertha', 'Bertha', 'elite-four', 9, NULL, 'bertha', 10),
  -- Flint
  (21011, 21, NULL, 'flint', 'Flint', 'elite-four', 2, NULL, 'flint', 11),
  -- Lucian
  (21012, 21, NULL, 'lucian', 'Lucian', 'elite-four', 11, NULL, 'lucian', 12),
  -- Cynthia
  (21013, 21, NULL, 'cynthia', 'Cynthia', 'champion', NULL, NULL, 'cynthia', 13);
