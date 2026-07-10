-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge page.
-- Cross-check: Red / Blue tracking seed structure.
-- Scope: Pokémon Yellow Kanto badge data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide badge definitions for Yellow.
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
  (2001, 2, NULL, 'boulder-badge', 'Boulder Badge', 13, 'boulder-badge', 1),
  -- Cascade Badge
  (2002, 2, NULL, 'cascade-badge', 'Cascade Badge', 3, 'cascade-badge', 2),
  -- Thunder Badge
  (2003, 2, NULL, 'thunder-badge', 'Thunder Badge', 4, 'thunder-badge', 3),
  -- Rainbow Badge
  (2004, 2, NULL, 'rainbow-badge', 'Rainbow Badge', 5, 'rainbow-badge', 4),
  -- Soul Badge
  (2005, 2, NULL, 'soul-badge', 'Soul Badge', 8, 'soul-badge', 5),
  -- Marsh Badge
  (2006, 2, NULL, 'marsh-badge', 'Marsh Badge', 11, 'marsh-badge', 6),
  -- Volcano Badge
  (2007, 2, NULL, 'volcano-badge', 'Volcano Badge', 2, 'volcano-badge', 7),
  -- Earth Badge
  (2008, 2, NULL, 'earth-badge', 'Earth Badge', 9, 'earth-badge', 8);
