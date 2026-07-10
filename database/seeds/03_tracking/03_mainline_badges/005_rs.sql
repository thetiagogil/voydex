-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge page.
-- Cross-check: Pokémon Ruby / Sapphire source pages.
-- Scope: Pokémon Ruby / Sapphire Hoenn badge data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide badge definitions for Ruby / Sapphire.
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
  (5001, 5, NULL, 'stone-badge', 'Stone Badge', 13, 'stone-badge', 1),
  -- Knuckle Badge
  (5002, 5, NULL, 'knuckle-badge', 'Knuckle Badge', 7, 'knuckle-badge', 2),
  -- Dynamo Badge
  (5003, 5, NULL, 'dynamo-badge', 'Dynamo Badge', 4, 'dynamo-badge', 3),
  -- Heat Badge
  (5004, 5, NULL, 'heat-badge', 'Heat Badge', 2, 'heat-badge', 4),
  -- Balance Badge
  (5005, 5, NULL, 'balance-badge', 'Balance Badge', 1, 'balance-badge', 5),
  -- Feather Badge
  (5006, 5, NULL, 'feather-badge', 'Feather Badge', 10, 'feather-badge', 6),
  -- Mind Badge
  (5007, 5, NULL, 'mind-badge', 'Mind Badge', 11, 'mind-badge', 7),
  -- Rain Badge
  (5008, 5, NULL, 'rain-badge', 'Rain Badge', 3, 'rain-badge', 8);
