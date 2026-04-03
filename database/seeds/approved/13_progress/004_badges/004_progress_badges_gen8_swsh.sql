-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.badges
-- Scope: version-group-specific (swsh, VG 18)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version-exclusive: Bea/Gordie (Sword, game 31) vs Allister/Melony (Shield, game 32).
INSERT INTO
    progress.badges (id, version_group_id, game_id, slug, name, sprite_url, sort_order)
VALUES
    (230, 18, NULL, 'grass-badge', 'Grass Badge', NULL, 1),
    (231, 18, NULL, 'water-badge', 'Water Badge', NULL, 2),
    (232, 18, NULL, 'fire-badge', 'Fire Badge', NULL, 3),
    (233, 18, 31, 'fighting-badge', 'Fighting Badge', NULL, 4),
    (234, 18, NULL, 'fairy-badge', 'Fairy Badge', NULL, 5),
    (235, 18, 31, 'rock-badge', 'Rock Badge', NULL, 6),
    (236, 18, NULL, 'dark-badge', 'Dark Badge', NULL, 7),
    (237, 18, NULL, 'dragon-badge', 'Dragon Badge', NULL, 8),
    (238, 18, 32, 'ghost-badge', 'Ghost Badge', NULL, 4),
    (239, 18, 32, 'ice-badge', 'Ice Badge', NULL, 6);