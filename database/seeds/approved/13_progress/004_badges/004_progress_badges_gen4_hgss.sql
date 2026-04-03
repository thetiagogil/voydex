-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.badges
-- Scope: version-group-specific (hgss, VG 10)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- 16 badges: 8 Johto + 8 Kanto (post-game).
INSERT INTO
    progress.badges (id, version_group_id, game_id, slug, name, sprite_url, sort_order)
VALUES
    -- Johto badges
    (290, 10, NULL, 'zephyr-badge', 'Zephyr Badge', NULL, 1),
    (291, 10, NULL, 'hive-badge', 'Hive Badge', NULL, 2),
    (292, 10, NULL, 'plain-badge', 'Plain Badge', NULL, 3),
    (293, 10, NULL, 'fog-badge', 'Fog Badge', NULL, 4),
    (294, 10, NULL, 'storm-badge', 'Storm Badge', NULL, 5),
    (295, 10, NULL, 'mineral-badge', 'Mineral Badge', NULL, 6),
    (296, 10, NULL, 'glacier-badge', 'Glacier Badge', NULL, 7),
    (297, 10, NULL, 'rising-badge', 'Rising Badge', NULL, 8),
    -- Kanto badges (post-game)
    (298, 10, NULL, 'boulder-badge-kanto', 'Boulder Badge', NULL, 9),
    (299, 10, NULL, 'cascade-badge-kanto', 'Cascade Badge', NULL, 10),
    (300, 10, NULL, 'thunder-badge-kanto', 'Thunder Badge', NULL, 11),
    (301, 10, NULL, 'rainbow-badge-kanto', 'Rainbow Badge', NULL, 12),
    (302, 10, NULL, 'soul-badge-kanto', 'Soul Badge', NULL, 13),
    (303, 10, NULL, 'marsh-badge-kanto', 'Marsh Badge', NULL, 14),
    (304, 10, NULL, 'volcano-badge-kanto', 'Volcano Badge', NULL, 15),
    (305, 10, NULL, 'earth-badge-kanto', 'Earth Badge', NULL, 16);