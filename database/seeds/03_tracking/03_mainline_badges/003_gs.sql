-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge page.
-- Cross-check: Pokémon Gold / Silver source pages.
-- Scope: Pokémon Gold / Silver Johto and Kanto badge data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide badge definitions for Gold / Silver.
-- Badge order follows Johto badges first, then Kanto badge display order.
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
  -- Zephyr Badge
  (3001, 3, NULL, 'zephyr-badge', 'Zephyr Badge', 10, 'zephyr-badge', 1),
  -- Hive Badge
  (3002, 3, NULL, 'hive-badge', 'Hive Badge', 12, 'hive-badge', 2),
  -- Plain Badge
  (3003, 3, NULL, 'plain-badge', 'Plain Badge', 1, 'plain-badge', 3),
  -- Fog Badge
  (3004, 3, NULL, 'fog-badge', 'Fog Badge', 14, 'fog-badge', 4),
  -- Storm Badge
  (3005, 3, NULL, 'storm-badge', 'Storm Badge', 7, 'storm-badge', 5),
  -- Mineral Badge
  (3006, 3, NULL, 'mineral-badge', 'Mineral Badge', 17, 'mineral-badge', 6),
  -- Glacier Badge
  (3007, 3, NULL, 'glacier-badge', 'Glacier Badge', 6, 'glacier-badge', 7),
  -- Rising Badge
  (3008, 3, NULL, 'rising-badge', 'Rising Badge', 15, 'rising-badge', 8),
  -- Boulder Badge
  (3009, 3, NULL, 'boulder-badge', 'Boulder Badge', 13, 'boulder-badge', 9),
  -- Cascade Badge
  (3010, 3, NULL, 'cascade-badge', 'Cascade Badge', 3, 'cascade-badge', 10),
  -- Thunder Badge
  (3011, 3, NULL, 'thunder-badge', 'Thunder Badge', 4, 'thunder-badge', 11),
  -- Rainbow Badge
  (3012, 3, NULL, 'rainbow-badge', 'Rainbow Badge', 5, 'rainbow-badge', 12),
  -- Soul Badge
  (3013, 3, NULL, 'soul-badge', 'Soul Badge', 8, 'soul-badge', 13),
  -- Marsh Badge
  (3014, 3, NULL, 'marsh-badge', 'Marsh Badge', 11, 'marsh-badge', 14),
  -- Volcano Badge
  (3015, 3, NULL, 'volcano-badge', 'Volcano Badge', 2, 'volcano-badge', 15),
  -- Earth Badge
  (3016, 3, NULL, 'earth-badge', 'Earth Badge', 9, 'earth-badge', 16);
