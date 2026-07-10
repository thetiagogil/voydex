-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge and HeartGold / SoulSilver pages.
-- Cross-check: Pokémon HeartGold / SoulSilver source page.
-- Scope: Pokémon HeartGold / SoulSilver badge data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide Johto and Kanto badge definitions for HeartGold / SoulSilver.
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
  (10001, 10, NULL, 'zephyr-badge', 'Zephyr Badge', 10, 'zephyr-badge', 1),
  -- Hive Badge
  (10002, 10, NULL, 'hive-badge', 'Hive Badge', 12, 'hive-badge', 2),
  -- Plain Badge
  (10003, 10, NULL, 'plain-badge', 'Plain Badge', 1, 'plain-badge', 3),
  -- Fog Badge
  (10004, 10, NULL, 'fog-badge', 'Fog Badge', 14, 'fog-badge', 4),
  -- Storm Badge
  (10005, 10, NULL, 'storm-badge', 'Storm Badge', 7, 'storm-badge', 5),
  -- Mineral Badge
  (10006, 10, NULL, 'mineral-badge', 'Mineral Badge', 17, 'mineral-badge', 6),
  -- Glacier Badge
  (10007, 10, NULL, 'glacier-badge', 'Glacier Badge', 6, 'glacier-badge', 7),
  -- Rising Badge
  (10008, 10, NULL, 'rising-badge', 'Rising Badge', 15, 'rising-badge', 8),
  -- Boulder Badge
  (10009, 10, NULL, 'boulder-badge', 'Boulder Badge', 13, 'boulder-badge', 9),
  -- Cascade Badge
  (10010, 10, NULL, 'cascade-badge', 'Cascade Badge', 3, 'cascade-badge', 10),
  -- Thunder Badge
  (10011, 10, NULL, 'thunder-badge', 'Thunder Badge', 4, 'thunder-badge', 11),
  -- Rainbow Badge
  (10012, 10, NULL, 'rainbow-badge', 'Rainbow Badge', 5, 'rainbow-badge', 12),
  -- Soul Badge
  (10013, 10, NULL, 'soul-badge', 'Soul Badge', 8, 'soul-badge', 13),
  -- Marsh Badge
  (10014, 10, NULL, 'marsh-badge', 'Marsh Badge', 11, 'marsh-badge', 14),
  -- Volcano Badge
  (10015, 10, NULL, 'volcano-badge', 'Volcano Badge', 2, 'volcano-badge', 15),
  -- Earth Badge
  (10016, 10, NULL, 'earth-badge', 'Earth Badge', 9, 'earth-badge', 16);
