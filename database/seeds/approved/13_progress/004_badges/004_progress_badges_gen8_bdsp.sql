-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.badges
-- Scope: version-group-specific (bdsp, VG 21)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- BDSP: Same badges as DP. Faithful remake.
INSERT INTO
    progress.badges (id, version_group_id, game_id, slug, name, sprite_url, sort_order)
VALUES
    (330, 21, NULL, 'coal-badge', 'Coal Badge', NULL, 1),
    (331, 21, NULL, 'forest-badge', 'Forest Badge', NULL, 2),
    (332, 21, NULL, 'relic-badge', 'Relic Badge', NULL, 3),
    (333, 21, NULL, 'cobble-badge', 'Cobble Badge', NULL, 4),
    (334, 21, NULL, 'fen-badge', 'Fen Badge', NULL, 5),
    (335, 21, NULL, 'mine-badge', 'Mine Badge', NULL, 6),
    (336, 21, NULL, 'icicle-badge', 'Icicle Badge', NULL, 7),
    (337, 21, NULL, 'beacon-badge', 'Beacon Badge', NULL, 8);