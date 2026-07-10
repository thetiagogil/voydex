-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Mega Dimension, Hyperspace Lumiose, Darkrai, Groudon, Kyogre, and Rayquaza pages.
-- Scope: Pokémon Mega Dimension major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Mega Dimension major fights. Game-specific rows are scoped where the source game changes the opponent.
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
  -- Darkrai
  (27001, 27, NULL, 'darkrai', 'Darkrai', 'boss', 16, NULL, 'darkrai', 1),
  -- Groudon
  (27002, 27, NULL, 'groudon', 'Groudon', 'boss', 9, NULL, 'groudon', 2),
  -- Kyogre
  (27003, 27, NULL, 'kyogre', 'Kyogre', 'boss', 3, NULL, 'kyogre', 3),
  -- Rayquaza
  (27004, 27, NULL, 'rayquaza', 'Rayquaza', 'boss', 15, 10, 'rayquaza', 4);
