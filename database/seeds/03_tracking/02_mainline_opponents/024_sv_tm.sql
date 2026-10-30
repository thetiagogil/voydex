-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Teal Mask, Kitakami, Kieran, Ogerpon, Loyal Three, and Bloodmoon Ursaluna pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- The Dreaded Den Munkidori (Lv. 30, or 70 after The Way Home) is confirmed by data-mined game data only.
-- Perrin (#115 audit): Bulbapedia.
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
  -- Ogerpon
  (24003, 24, NULL, 'ogerpon', 'Ogerpon', 'boss', 5, NULL, 'ogerpon', 2),
  -- Bloodmoon Ursaluna
  (24004, 24, NULL, 'bloodmoon-ursaluna', 'Bloodmoon Ursaluna', 'boss', 9, 1, 'bloodmoon-ursaluna', 3),
  -- Carmine (rival)
  (24005, 24, NULL, 'carmine', 'Carmine', 'rival', NULL, NULL, 'carmine', 4),
  -- Munkidori (boss)
  (24006, 24, NULL, 'munkidori', 'Munkidori', 'boss', 8, 11, 'munkidori', 5),
  -- Okidogi (titan)
  (24007, 24, NULL, 'okidogi', 'Okidogi', 'titan', 8, 7, 'okidogi', 6),
  -- Munkidori (titan)
  (24008, 24, NULL, 'munkidori-titan', 'Munkidori', 'titan', 8, 11, 'munkidori', 7),
  -- Fezandipiti (titan)
  (24009, 24, NULL, 'fezandipiti', 'Fezandipiti', 'titan', 8, 18, 'fezandipiti', 8),
  -- Okidogi (boss)
  (24010, 24, NULL, 'okidogi-boss', 'Okidogi', 'boss', 8, 7, 'okidogi', 9),
  -- Fezandipiti (boss)
  (24011, 24, NULL, 'fezandipiti-boss', 'Fezandipiti', 'boss', 8, 18, 'fezandipiti', 10),
  -- Perrin (boss)
  (24012, 24, NULL, 'perrin', 'Perrin', 'boss', NULL, NULL, 'perrin', 11);
