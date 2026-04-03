-- ============================================================================
-- Table: progress.item_badge_refs
-- Scope: version-group-specific (platinum, VG 9)
-- ============================================================================
WITH
    seed_data (item_vg, item_game_id, item_slug, badge_game_id, badge_slug) AS (
        VALUES
            (9, NULL::INTEGER, 'coal-badge', NULL::INTEGER, 'coal-badge'),
            (9, NULL, 'forest-badge', NULL, 'forest-badge'),
            (9, NULL, 'cobble-badge', NULL, 'cobble-badge'),
            (9, NULL, 'fen-badge', NULL, 'fen-badge'),
            (9, NULL, 'relic-badge', NULL, 'relic-badge'),
            (9, NULL, 'mine-badge', NULL, 'mine-badge'),
            (9, NULL, 'icicle-badge', NULL, 'icicle-badge'),
            (9, NULL, 'beacon-badge', NULL, 'beacon-badge')
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
