-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge and Platinum pages.
-- Cross-check: Pokémon Platinum source page.
-- Scope: Pokémon Platinum Sinnoh badge data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide badge definitions for Platinum.
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
  (9001, 9, NULL, 'coal-badge', 'Coal Badge', 13, 'coal-badge', 1),
  -- Forest Badge
  (9002, 9, NULL, 'forest-badge', 'Forest Badge', 5, 'forest-badge', 2),
  -- Relic Badge
  (9003, 9, NULL, 'relic-badge', 'Relic Badge', 14, 'relic-badge', 3),
  -- Cobble Badge
  (9004, 9, NULL, 'cobble-badge', 'Cobble Badge', 7, 'cobble-badge', 4),
  -- Fen Badge
  (9005, 9, NULL, 'fen-badge', 'Fen Badge', 3, 'fen-badge', 5),
  -- Mine Badge
  (9006, 9, NULL, 'mine-badge', 'Mine Badge', 17, 'mine-badge', 6),
  -- Icicle Badge
  (9007, 9, NULL, 'icicle-badge', 'Icicle Badge', 6, 'icicle-badge', 7),
  -- Beacon Badge
  (9008, 9, NULL, 'beacon-badge', 'Beacon Badge', 4, 'beacon-badge', 8);
