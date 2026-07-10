-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Teal Mask, Kitakami, Kieran, Ogerpon, Loyal Three, and Bloodmoon Ursaluna pages.
-- Scope: Pokémon The Teal Mask major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for The Teal Mask major fights. Game-specific rows are scoped where the source game changes the opponent.
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
  -- Kieran
  (24001, 24, NULL, 'kieran', 'Kieran', 'rival', NULL, NULL, 'kieran', 1),
  -- The Loyal Three
  (24002, 24, NULL, 'loyal-three', 'The Loyal Three', 'boss', NULL, NULL, 'loyal-three', 2),
  -- Ogerpon
  (24003, 24, NULL, 'ogerpon', 'Ogerpon', 'boss', 5, NULL, 'ogerpon', 3),
  -- Bloodmoon Ursaluna
  (24004, 24, NULL, 'bloodmoon-ursaluna', 'Bloodmoon Ursaluna', 'boss', 9, 1, 'bloodmoon-ursaluna', 4);
