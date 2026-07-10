-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Brilliant Diamond / Shining Pearl, Badge, Elite Four, Champion, and First partner Pokémon pages.
-- Scope: Pokémon Brilliant Diamond / Shining Pearl badge data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide badge definitions for Brilliant Diamond / Shining Pearl. Game-specific rows are scoped where the source game changes the badge.
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
  (21001, 21, NULL, 'coal-badge', 'Coal Badge', 13, 'coal-badge', 1),
  -- Forest Badge
  (21002, 21, NULL, 'forest-badge', 'Forest Badge', 5, 'forest-badge', 2),
  -- Cobble Badge
  (21003, 21, NULL, 'cobble-badge', 'Cobble Badge', 7, 'cobble-badge', 3),
  -- Fen Badge
  (21004, 21, NULL, 'fen-badge', 'Fen Badge', 3, 'fen-badge', 4),
  -- Relic Badge
  (21005, 21, NULL, 'relic-badge', 'Relic Badge', 14, 'relic-badge', 5),
  -- Mine Badge
  (21006, 21, NULL, 'mine-badge', 'Mine Badge', 17, 'mine-badge', 6),
  -- Icicle Badge
  (21007, 21, NULL, 'icicle-badge', 'Icicle Badge', 6, 'icicle-badge', 7),
  -- Beacon Badge
  (21008, 21, NULL, 'beacon-badge', 'Beacon Badge', 4, 'beacon-badge', 8);
