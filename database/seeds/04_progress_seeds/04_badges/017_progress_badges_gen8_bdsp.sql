-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.badges
-- Scope: version-group-specific (bdsp, VG 21)
-- BDSP: Same badges as DP. Faithful remake.
INSERT INTO
    progress.badges (version_group_id, game_id, slug, name, sprite_url, sort_order)
VALUES
    (21, NULL, 'coal-badge', 'Coal Badge', NULL, 1),
    (21, NULL, 'forest-badge', 'Forest Badge', NULL, 2),
    (21, NULL, 'relic-badge', 'Relic Badge', NULL, 3),
    (21, NULL, 'cobble-badge', 'Cobble Badge', NULL, 4),
    (21, NULL, 'fen-badge', 'Fen Badge', NULL, 5),
    (21, NULL, 'mine-badge', 'Mine Badge', NULL, 6),
    (21, NULL, 'icicle-badge', 'Icicle Badge', NULL, 7),
    (21, NULL, 'beacon-badge', 'Beacon Badge', NULL, 8);