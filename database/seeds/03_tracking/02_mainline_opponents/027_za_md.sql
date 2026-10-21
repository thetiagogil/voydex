-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Mega Dimension, Hyperspace Lumiose, Darkrai, Groudon, Kyogre, and Rayquaza pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
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
  (27004, 27, NULL, 'rayquaza', 'Rayquaza', 'boss', 15, 10, 'rayquaza', 4),
  -- Heatran (boss)
  (27005, 27, NULL, 'heatran', 'Heatran', 'boss', 2, 17, 'heatran', 5),
  -- Genesect (boss)
  (27006, 27, NULL, 'genesect', 'Genesect', 'boss', 12, 17, 'genesect', 6),
  -- Marshadow (boss)
  (27007, 27, NULL, 'marshadow', 'Marshadow', 'boss', 7, 14, 'marshadow', 7),
  -- Meltan (boss)
  (27008, 27, NULL, 'meltan', 'Meltan', 'boss', 17, NULL, 'meltan', 8),
  -- Volcanion (boss)
  (27009, 27, NULL, 'volcanion', 'Volcanion', 'boss', 2, 3, 'volcanion', 9),
  -- Hoopa (boss)
  (27010, 27, NULL, 'hoopa', 'Hoopa', 'boss', 11, 16, 'hoopa', 10);
