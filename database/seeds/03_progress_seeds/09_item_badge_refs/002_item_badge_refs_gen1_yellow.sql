-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_badge_refs
-- Scope: version-group-specific (yellow, VG 2)
WITH
    seed_data (item_vg, item_game_id, item_slug, badge_game_id, badge_slug) AS (
        VALUES
            (2, NULL::INTEGER, 'boulder-badge', NULL::INTEGER, 'boulder-badge'),
            (2, NULL, 'cascade-badge', NULL, 'cascade-badge'),
            (2, NULL, 'thunder-badge', NULL, 'thunder-badge'),
            (2, NULL, 'rainbow-badge', NULL, 'rainbow-badge'),
            (2, NULL, 'soul-badge', NULL, 'soul-badge'),
            (2, NULL, 'marsh-badge', NULL, 'marsh-badge'),
            (2, NULL, 'volcano-badge', NULL, 'volcano-badge'),
            (2, NULL, 'earth-badge', NULL, 'earth-badge')
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
