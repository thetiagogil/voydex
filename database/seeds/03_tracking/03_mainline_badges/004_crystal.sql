-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge page.
-- Cross-check: Pokémon Crystal source page.
-- Scope: Pokémon Crystal Johto and Kanto badge data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide badge definitions for Crystal.
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
  (4001, 4, NULL, 'zephyr-badge', 'Zephyr Badge', 10, 'zephyr-badge', 1),
  -- Hive Badge
  (4002, 4, NULL, 'hive-badge', 'Hive Badge', 12, 'hive-badge', 2),
  -- Plain Badge
  (4003, 4, NULL, 'plain-badge', 'Plain Badge', 1, 'plain-badge', 3),
  -- Fog Badge
  (4004, 4, NULL, 'fog-badge', 'Fog Badge', 14, 'fog-badge', 4),
  -- Storm Badge
  (4005, 4, NULL, 'storm-badge', 'Storm Badge', 7, 'storm-badge', 5),
  -- Mineral Badge
  (4006, 4, NULL, 'mineral-badge', 'Mineral Badge', 17, 'mineral-badge', 6),
  -- Glacier Badge
  (4007, 4, NULL, 'glacier-badge', 'Glacier Badge', 6, 'glacier-badge', 7),
  -- Rising Badge
  (4008, 4, NULL, 'rising-badge', 'Rising Badge', 15, 'rising-badge', 8),
  -- Boulder Badge
  (4009, 4, NULL, 'boulder-badge', 'Boulder Badge', 13, 'boulder-badge', 9),
  -- Cascade Badge
  (4010, 4, NULL, 'cascade-badge', 'Cascade Badge', 3, 'cascade-badge', 10),
  -- Thunder Badge
  (4011, 4, NULL, 'thunder-badge', 'Thunder Badge', 4, 'thunder-badge', 11),
  -- Rainbow Badge
  (4012, 4, NULL, 'rainbow-badge', 'Rainbow Badge', 5, 'rainbow-badge', 12),
  -- Soul Badge
  (4013, 4, NULL, 'soul-badge', 'Soul Badge', 8, 'soul-badge', 13),
  -- Marsh Badge
  (4014, 4, NULL, 'marsh-badge', 'Marsh Badge', 11, 'marsh-badge', 14),
  -- Volcano Badge
  (4015, 4, NULL, 'volcano-badge', 'Volcano Badge', 2, 'volcano-badge', 15),
  -- Earth Badge
  (4016, 4, NULL, 'earth-badge', 'Earth Badge', 9, 'earth-badge', 16);
