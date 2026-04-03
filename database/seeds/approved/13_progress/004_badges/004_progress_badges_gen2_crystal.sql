-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.badges
-- Scope: version-group-specific (crystal, VG 4)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- 16 badges: 8 Johto + 8 Kanto (post-game).
INSERT INTO
    progress.badges (id, version_group_id, game_id, slug, name, sprite_url, sort_order)
VALUES
    -- Johto badges
    (120, 4, NULL, 'zephyr-badge', 'Zephyr Badge', NULL, 1),
    (121, 4, NULL, 'hive-badge', 'Hive Badge', NULL, 2),
    (122, 4, NULL, 'plain-badge', 'Plain Badge', NULL, 3),
    (123, 4, NULL, 'fog-badge', 'Fog Badge', NULL, 4),
    (124, 4, NULL, 'storm-badge', 'Storm Badge', NULL, 5),
    (125, 4, NULL, 'mineral-badge', 'Mineral Badge', NULL, 6),
    (126, 4, NULL, 'glacier-badge', 'Glacier Badge', NULL, 7),
    (127, 4, NULL, 'rising-badge', 'Rising Badge', NULL, 8),
    -- Kanto badges (post-game)
    (128, 4, NULL, 'boulder-badge-kanto', 'Boulder Badge', NULL, 9),
    (129, 4, NULL, 'cascade-badge-kanto', 'Cascade Badge', NULL, 10),
    (130, 4, NULL, 'thunder-badge-kanto', 'Thunder Badge', NULL, 11),
    (131, 4, NULL, 'rainbow-badge-kanto', 'Rainbow Badge', NULL, 12),
    (132, 4, NULL, 'soul-badge-kanto', 'Soul Badge', NULL, 13),
    (133, 4, NULL, 'marsh-badge-kanto', 'Marsh Badge', NULL, 14),
    (134, 4, NULL, 'volcano-badge-kanto', 'Volcano Badge', NULL, 15),
    (135, 4, NULL, 'earth-badge-kanto', 'Earth Badge', NULL, 16);