-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge page.
-- Cross-check: Pokémon Emerald source page.
-- Scope: Pokémon Emerald Hoenn badge data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide badge definitions for Emerald.
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
  (7001, 7, NULL, 'stone-badge', 'Stone Badge', 13, 'stone-badge', 1),
  -- Knuckle Badge
  (7002, 7, NULL, 'knuckle-badge', 'Knuckle Badge', 7, 'knuckle-badge', 2),
  -- Dynamo Badge
  (7003, 7, NULL, 'dynamo-badge', 'Dynamo Badge', 4, 'dynamo-badge', 3),
  -- Heat Badge
  (7004, 7, NULL, 'heat-badge', 'Heat Badge', 2, 'heat-badge', 4),
  -- Balance Badge
  (7005, 7, NULL, 'balance-badge', 'Balance Badge', 1, 'balance-badge', 5),
  -- Feather Badge
  (7006, 7, NULL, 'feather-badge', 'Feather Badge', 10, 'feather-badge', 6),
  -- Mind Badge
  (7007, 7, NULL, 'mind-badge', 'Mind Badge', 11, 'mind-badge', 7),
  -- Rain Badge
  (7008, 7, NULL, 'rain-badge', 'Rain Badge', 3, 'rain-badge', 8);
