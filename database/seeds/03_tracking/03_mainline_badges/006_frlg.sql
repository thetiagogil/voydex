-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge page.
-- Cross-check: Pokémon FireRed / LeafGreen source pages.
-- Scope: Pokémon FireRed / LeafGreen Kanto badge data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide badge definitions for FireRed / LeafGreen.
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
  -- Boulder Badge
  (6001, 6, NULL, 'boulder-badge', 'Boulder Badge', 13, 'boulder-badge', 1),
  -- Cascade Badge
  (6002, 6, NULL, 'cascade-badge', 'Cascade Badge', 3, 'cascade-badge', 2),
  -- Thunder Badge
  (6003, 6, NULL, 'thunder-badge', 'Thunder Badge', 4, 'thunder-badge', 3),
  -- Rainbow Badge
  (6004, 6, NULL, 'rainbow-badge', 'Rainbow Badge', 5, 'rainbow-badge', 4),
  -- Soul Badge
  (6005, 6, NULL, 'soul-badge', 'Soul Badge', 8, 'soul-badge', 5),
  -- Marsh Badge
  (6006, 6, NULL, 'marsh-badge', 'Marsh Badge', 11, 'marsh-badge', 6),
  -- Volcano Badge
  (6007, 6, NULL, 'volcano-badge', 'Volcano Badge', 2, 'volcano-badge', 7),
  -- Earth Badge
  (6008, 6, NULL, 'earth-badge', 'Earth Badge', 9, 'earth-badge', 8);
