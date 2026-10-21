-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Black / White, and First partner Pokémon pages.
-- Scope: Pokémon Black / White major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Black / White major fights. Game-specific rows are scoped where the source game changes the opponent.
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
  -- Cilan / Chili / Cress
  (11001, 11, NULL, 'cilan-chili-cress', 'Cilan / Chili / Cress', 'gym-leader', NULL, NULL, 'cilan-chili-cress', 1),
  -- Lenora
  (11002, 11, NULL, 'lenora', 'Lenora', 'gym-leader', 1, NULL, 'lenora', 2),
  -- Burgh
  (11003, 11, NULL, 'burgh', 'Burgh', 'gym-leader', 12, NULL, 'burgh', 3),
  -- Elesa
  (11004, 11, NULL, 'elesa', 'Elesa', 'gym-leader', 4, NULL, 'elesa', 4),
  -- Clay
  (11005, 11, NULL, 'clay', 'Clay', 'gym-leader', 9, NULL, 'clay', 5),
  -- Skyla
  (11006, 11, NULL, 'skyla', 'Skyla', 'gym-leader', 10, NULL, 'skyla', 6),
  -- Brycen
  (11007, 11, NULL, 'brycen', 'Brycen', 'gym-leader', 6, NULL, 'brycen', 7),
  -- Drayden / Iris
  (11008, 11, NULL, 'drayden-iris', 'Drayden / Iris', 'gym-leader', 15, NULL, 'drayden-iris', 8),
  -- Shauntal
  (11009, 11, NULL, 'shauntal', 'Shauntal', 'elite-four', 14, NULL, 'shauntal', 9),
  -- Grimsley
  (11010, 11, NULL, 'grimsley', 'Grimsley', 'elite-four', 16, NULL, 'grimsley', 10),
  -- Caitlin
  (11011, 11, NULL, 'caitlin', 'Caitlin', 'elite-four', 11, NULL, 'caitlin', 11),
  -- Marshal
  (11012, 11, NULL, 'marshal', 'Marshal', 'elite-four', 7, NULL, 'marshal', 12),
  -- N
  (11013, 11, NULL, 'n', 'N', 'boss', NULL, NULL, 'n', 13),
  -- Ghetsis
  (11014, 11, NULL, 'ghetsis', 'Ghetsis', 'boss', NULL, NULL, 'ghetsis', 14),
  -- Alder
  (11015, 11, NULL, 'alder', 'Alder', 'champion', NULL, NULL, 'alder', 15),
  -- Bianca (rival)
  (11016, 11, NULL, 'bianca', 'Bianca', 'rival', NULL, NULL, 'bianca', 16),
  -- Cheren (rival)
  (11017, 11, NULL, 'cheren', 'Cheren', 'rival', NULL, NULL, 'cheren', 17);
