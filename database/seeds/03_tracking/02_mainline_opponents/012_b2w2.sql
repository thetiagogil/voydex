-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Black 2 / White 2, and First partner Pokémon pages.
-- Scope: Pokémon Black 2 / White 2 major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Black 2 / White 2 major fights. Game-specific rows are scoped where the source game changes the opponent.
-- ============================================================================

INSERT INTO tracking.mainline_opponents (
  id,
  version_group_id,
  game_id,
  slug,
  name,
  opponent_role,
  primary_type_id,
  secondary_type_id,
  sprite_slug,
  sort_order
) VALUES
  -- Cheren
  (12001, 12, NULL, 'cheren', 'Cheren', 'gym-leader', 1, NULL, 'cheren', 1),
  -- Roxie
  (12002, 12, NULL, 'roxie', 'Roxie', 'gym-leader', 8, NULL, 'roxie', 2),
  -- Burgh
  (12003, 12, NULL, 'burgh', 'Burgh', 'gym-leader', 12, NULL, 'burgh', 3),
  -- Elesa
  (12004, 12, NULL, 'elesa', 'Elesa', 'gym-leader', 4, NULL, 'elesa', 4),
  -- Clay
  (12005, 12, NULL, 'clay', 'Clay', 'gym-leader', 9, NULL, 'clay', 5),
  -- Skyla
  (12006, 12, NULL, 'skyla', 'Skyla', 'gym-leader', 10, NULL, 'skyla', 6),
  -- Drayden
  (12007, 12, NULL, 'drayden', 'Drayden', 'gym-leader', 15, NULL, 'drayden', 7),
  -- Marlon
  (12008, 12, NULL, 'marlon', 'Marlon', 'gym-leader', 3, NULL, 'marlon', 8),
  -- Colress
  (12009, 12, NULL, 'colress', 'Colress', 'boss', NULL, NULL, 'colress', 9),
  -- Ghetsis
  (12010, 12, NULL, 'ghetsis', 'Ghetsis', 'boss', NULL, NULL, 'ghetsis', 10),
  -- Shauntal
  (12011, 12, NULL, 'shauntal', 'Shauntal', 'elite-four', 14, NULL, 'shauntal', 11),
  -- Grimsley
  (12012, 12, NULL, 'grimsley', 'Grimsley', 'elite-four', 16, NULL, 'grimsley', 12),
  -- Caitlin
  (12013, 12, NULL, 'caitlin', 'Caitlin', 'elite-four', 11, NULL, 'caitlin', 13),
  -- Marshal
  (12014, 12, NULL, 'marshal', 'Marshal', 'elite-four', 7, NULL, 'marshal', 14),
  -- Iris
  (12015, 12, NULL, 'iris', 'Iris', 'champion', 15, NULL, 'iris', 15);
