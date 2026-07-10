-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Let's Go, Pikachu! / Let's Go, Eevee!, Badge, Elite Four, and Gift Pokémon pages.
-- Scope: Pokémon Let's Go, Pikachu! / Let's Go, Eevee! badge data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide badge definitions for Let's Go, Pikachu! / Let's Go, Eevee!. Game-specific rows are scoped where the source game changes the badge.
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
  (17001, 17, NULL, 'boulder-badge', 'Boulder Badge', 13, 'boulder-badge', 1),
  -- Cascade Badge
  (17002, 17, NULL, 'cascade-badge', 'Cascade Badge', 3, 'cascade-badge', 2),
  -- Thunder Badge
  (17003, 17, NULL, 'thunder-badge', 'Thunder Badge', 4, 'thunder-badge', 3),
  -- Rainbow Badge
  (17004, 17, NULL, 'rainbow-badge', 'Rainbow Badge', 5, 'rainbow-badge', 4),
  -- Soul Badge
  (17005, 17, NULL, 'soul-badge', 'Soul Badge', 8, 'soul-badge', 5),
  -- Marsh Badge
  (17006, 17, NULL, 'marsh-badge', 'Marsh Badge', 11, 'marsh-badge', 6),
  -- Volcano Badge
  (17007, 17, NULL, 'volcano-badge', 'Volcano Badge', 2, 'volcano-badge', 7),
  -- Earth Badge
  (17008, 17, NULL, 'earth-badge', 'Earth Badge', 9, 'earth-badge', 8);
