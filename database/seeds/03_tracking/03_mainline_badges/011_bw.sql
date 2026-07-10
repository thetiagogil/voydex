-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Black / White, and First partner Pokémon pages.
-- Scope: Pokémon Black / White badge data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide badge definitions for Black / White. Game-specific rows are scoped where the source game changes the badge.
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
  -- Trio Badge
  (11001, 11, NULL, 'trio-badge', 'Trio Badge', NULL, 'trio-badge', 1),
  -- Basic Badge
  (11002, 11, NULL, 'basic-badge', 'Basic Badge', 1, 'basic-badge', 2),
  -- Insect Badge
  (11003, 11, NULL, 'insect-badge', 'Insect Badge', 12, 'insect-badge', 3),
  -- Bolt Badge
  (11004, 11, NULL, 'bolt-badge', 'Bolt Badge', 4, 'bolt-badge', 4),
  -- Quake Badge
  (11005, 11, NULL, 'quake-badge', 'Quake Badge', 9, 'quake-badge', 5),
  -- Jet Badge
  (11006, 11, NULL, 'jet-badge', 'Jet Badge', 10, 'jet-badge', 6),
  -- Freeze Badge
  (11007, 11, NULL, 'freeze-badge', 'Freeze Badge', 6, 'freeze-badge', 7),
  -- Legend Badge
  (11008, 11, NULL, 'legend-badge', 'Legend Badge', 15, 'legend-badge', 8);
