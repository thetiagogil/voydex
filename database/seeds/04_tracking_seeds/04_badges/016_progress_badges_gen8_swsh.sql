-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.badges
-- Scope: version-group-specific (swsh, VG 18)
-- Version-exclusive: Bea/Gordie (Sword, game 31) vs Allister/Melony (Shield, game 32).
INSERT INTO
    tracking.badges (version_group_id, game_id, slug, name, sprite_url, sort_order)
VALUES
    (18, NULL, 'grass-badge', 'Grass Badge', NULL, 1),
    (18, NULL, 'water-badge', 'Water Badge', NULL, 2),
    (18, NULL, 'fire-badge', 'Fire Badge', NULL, 3),
    (18, 31, 'fighting-badge', 'Fighting Badge', NULL, 4),
    (18, NULL, 'fairy-badge', 'Fairy Badge', NULL, 5),
    (18, 31, 'rock-badge', 'Rock Badge', NULL, 6),
    (18, NULL, 'dark-badge', 'Dark Badge', NULL, 7),
    (18, NULL, 'dragon-badge', 'Dragon Badge', NULL, 8),
    (18, 32, 'ghost-badge', 'Ghost Badge', NULL, 4),
    (18, 32, 'ice-badge', 'Ice Badge', NULL, 6);