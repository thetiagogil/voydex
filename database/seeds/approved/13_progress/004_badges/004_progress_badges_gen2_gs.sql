-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.badges
-- Scope: version-group-specific (gs, VG 3)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- 16 badges: 8 Johto + 8 Kanto (post-game).
INSERT INTO
    progress.badges (id, version_group_id, game_id, slug, name, sprite_url, sort_order)
VALUES
    -- Johto badges
    (260, 3, NULL, 'zephyr-badge', 'Zephyr Badge', NULL, 1),
    (261, 3, NULL, 'hive-badge', 'Hive Badge', NULL, 2),
    (262, 3, NULL, 'plain-badge', 'Plain Badge', NULL, 3),
    (263, 3, NULL, 'fog-badge', 'Fog Badge', NULL, 4),
    (264, 3, NULL, 'storm-badge', 'Storm Badge', NULL, 5),
    (265, 3, NULL, 'mineral-badge', 'Mineral Badge', NULL, 6),
    (266, 3, NULL, 'glacier-badge', 'Glacier Badge', NULL, 7),
    (267, 3, NULL, 'rising-badge', 'Rising Badge', NULL, 8),
    -- Kanto badges (post-game)
    (268, 3, NULL, 'boulder-badge-kanto', 'Boulder Badge', NULL, 9),
    (269, 3, NULL, 'cascade-badge-kanto', 'Cascade Badge', NULL, 10),
    (270, 3, NULL, 'thunder-badge-kanto', 'Thunder Badge', NULL, 11),
    (271, 3, NULL, 'rainbow-badge-kanto', 'Rainbow Badge', NULL, 12),
    (272, 3, NULL, 'soul-badge-kanto', 'Soul Badge', NULL, 13),
    (273, 3, NULL, 'marsh-badge-kanto', 'Marsh Badge', NULL, 14),
    (274, 3, NULL, 'volcano-badge-kanto', 'Volcano Badge', NULL, 15),
    (275, 3, NULL, 'earth-badge-kanto', 'Earth Badge', NULL, 16);