-- ============================================================================
-- Table: progress.item_badge_refs
-- Scope: version-group-specific (emerald, VG 6)
-- ============================================================================
WITH
    seed_data (item_vg, item_game_id, item_slug, badge_game_id, badge_slug) AS (
        VALUES
            (6, NULL::INTEGER, 'stone-badge', NULL::INTEGER, 'stone-badge'),
            (6, NULL, 'knuckle-badge', NULL, 'knuckle-badge'),
            (6, NULL, 'dynamo-badge', NULL, 'dynamo-badge'),
            (6, NULL, 'heat-badge', NULL, 'heat-badge'),
            (6, NULL, 'balance-badge', NULL, 'balance-badge'),
            (6, NULL, 'feather-badge', NULL, 'feather-badge'),
            (6, NULL, 'mind-badge', NULL, 'mind-badge'),
            (6, NULL, 'rain-badge', NULL, 'rain-badge')
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
