-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_badge_refs
-- Scope: version-group-specific (swsh, VG 18)
WITH
    seed_data (item_vg, item_game_id, item_slug, badge_game_id, badge_slug) AS (
        VALUES
            (18, NULL::INTEGER, 'grass-badge', NULL::INTEGER, 'grass-badge'),
            (18, NULL, 'water-badge', NULL, 'water-badge'),
            (18, NULL, 'fire-badge', NULL, 'fire-badge'),
            (18, 31, 'fighting-badge', 31, 'fighting-badge'),
            (18, 32, 'ghost-badge', 32, 'ghost-badge'),
            (18, NULL, 'fairy-badge', NULL, 'fairy-badge'),
            (18, 31, 'rock-badge', 31, 'rock-badge'),
            (18, 32, 'ice-badge', 32, 'ice-badge'),
            (18, NULL, 'dark-badge', NULL, 'dark-badge'),
            (18, NULL, 'dragon-badge', NULL, 'dragon-badge')
    )
INSERT INTO
    progress.item_badge_refs (progress_item_id, badge_id)
SELECT
    i.id,
    b.id
FROM
    seed_data s
    JOIN progress.items i ON i.version_group_id = s.item_vg
        AND i.game_id IS NOT DISTINCT FROM s.item_game_id
        AND i.slug = s.item_slug
    JOIN progress.badges b ON b.version_group_id = s.item_vg
        AND b.game_id IS NOT DISTINCT FROM s.badge_game_id
        AND b.slug = s.badge_slug;
