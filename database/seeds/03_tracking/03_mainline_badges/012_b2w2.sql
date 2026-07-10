-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Black 2 / White 2, and First partner Pokémon pages.
-- Scope: Pokémon Black 2 / White 2 badge data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide badge definitions for Black 2 / White 2. Game-specific rows are scoped where the source game changes the badge.
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
  -- Basic Badge
  (12001, 12, NULL, 'basic-badge', 'Basic Badge', 1, 'basic-badge', 1),
  -- Toxic Badge
  (12002, 12, NULL, 'toxic-badge', 'Toxic Badge', 8, 'toxic-badge', 2),
  -- Insect Badge
  (12003, 12, NULL, 'insect-badge', 'Insect Badge', 12, 'insect-badge', 3),
  -- Bolt Badge
  (12004, 12, NULL, 'bolt-badge', 'Bolt Badge', 4, 'bolt-badge', 4),
  -- Quake Badge
  (12005, 12, NULL, 'quake-badge', 'Quake Badge', 9, 'quake-badge', 5),
  -- Jet Badge
  (12006, 12, NULL, 'jet-badge', 'Jet Badge', 10, 'jet-badge', 6),
  -- Legend Badge
  (12007, 12, NULL, 'legend-badge', 'Legend Badge', 15, 'legend-badge', 7),
  -- Wave Badge
  (12008, 12, NULL, 'wave-badge', 'Wave Badge', 3, 'wave-badge', 8);
