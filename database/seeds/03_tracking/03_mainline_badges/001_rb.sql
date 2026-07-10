-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge page.
-- Cross-check: legacy Voydex Red / Blue tracking seeds.
-- Scope: Pokémon Red / Blue shared Kanto badge data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide badge definitions for Red / Blue.
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
  (1001, 1, NULL, 'boulder-badge', 'Boulder Badge', 13, 'boulder-badge', 1),
  -- Cascade Badge
  (1002, 1, NULL, 'cascade-badge', 'Cascade Badge', 3, 'cascade-badge', 2),
  -- Thunder Badge
  (1003, 1, NULL, 'thunder-badge', 'Thunder Badge', 4, 'thunder-badge', 3),
  -- Rainbow Badge
  (1004, 1, NULL, 'rainbow-badge', 'Rainbow Badge', 5, 'rainbow-badge', 4),
  -- Soul Badge
  (1005, 1, NULL, 'soul-badge', 'Soul Badge', 8, 'soul-badge', 5),
  -- Marsh Badge
  (1006, 1, NULL, 'marsh-badge', 'Marsh Badge', 11, 'marsh-badge', 6),
  -- Volcano Badge
  (1007, 1, NULL, 'volcano-badge', 'Volcano Badge', 2, 'volcano-badge', 7),
  -- Earth Badge
  (1008, 1, NULL, 'earth-badge', 'Earth Badge', 9, 'earth-badge', 8);
