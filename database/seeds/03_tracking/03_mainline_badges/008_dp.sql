-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge page.
-- Cross-check: Pokémon Diamond / Pearl source page.
-- Scope: Pokémon Diamond / Pearl Sinnoh badge data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide badge definitions for Diamond / Pearl.
-- ============================================================================

INSERT INTO tracking.mainline_badges (
  id,
  version_group_id,
  game_id,
  slug,
  name,
  type_id,
  sprite_slug,
  sort_order
) VALUES
  -- Coal Badge
  (8001, 8, NULL, 'coal-badge', 'Coal Badge', 13, 'coal-badge', 1),
  -- Forest Badge
  (8002, 8, NULL, 'forest-badge', 'Forest Badge', 5, 'forest-badge', 2),
  -- Cobble Badge
  (8003, 8, NULL, 'cobble-badge', 'Cobble Badge', 7, 'cobble-badge', 3),
  -- Fen Badge
  (8004, 8, NULL, 'fen-badge', 'Fen Badge', 3, 'fen-badge', 4),
  -- Relic Badge
  (8005, 8, NULL, 'relic-badge', 'Relic Badge', 14, 'relic-badge', 5),
  -- Mine Badge
  (8006, 8, NULL, 'mine-badge', 'Mine Badge', 17, 'mine-badge', 6),
  -- Icicle Badge
  (8007, 8, NULL, 'icicle-badge', 'Icicle Badge', 6, 'icicle-badge', 7),
  -- Beacon Badge
  (8008, 8, NULL, 'beacon-badge', 'Beacon Badge', 4, 'beacon-badge', 8);
