-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Omega Ruby / Alpha Sapphire, Fossil, Delta Episode, and First partner Pokémon pages.
-- Scope: Pokémon Omega Ruby / Alpha Sapphire badge data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide badge definitions for Omega Ruby / Alpha Sapphire. Game-specific rows are scoped where the source game changes the badge.
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
  -- Stone Badge
  (14001, 14, NULL, 'stone-badge', 'Stone Badge', 13, 'stone-badge', 1),
  -- Knuckle Badge
  (14002, 14, NULL, 'knuckle-badge', 'Knuckle Badge', 7, 'knuckle-badge', 2),
  -- Dynamo Badge
  (14003, 14, NULL, 'dynamo-badge', 'Dynamo Badge', 4, 'dynamo-badge', 3),
  -- Heat Badge
  (14004, 14, NULL, 'heat-badge', 'Heat Badge', 2, 'heat-badge', 4),
  -- Balance Badge
  (14005, 14, NULL, 'balance-badge', 'Balance Badge', 1, 'balance-badge', 5),
  -- Feather Badge
  (14006, 14, NULL, 'feather-badge', 'Feather Badge', 10, 'feather-badge', 6),
  -- Mind Badge
  (14007, 14, NULL, 'mind-badge', 'Mind Badge', 11, 'mind-badge', 7),
  -- Rain Badge
  (14008, 14, NULL, 'rain-badge', 'Rain Badge', 3, 'rain-badge', 8);
