-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_badge_refs
-- Scope: version-group-specific (oras, VG 14)
WITH
    seed_data (item_vg, item_game_id, item_slug, badge_game_id, badge_slug) AS (
        VALUES
            (14, NULL::INTEGER, 'stone-badge', NULL::INTEGER, 'stone-badge'),
            (14, NULL, 'knuckle-badge', NULL, 'knuckle-badge'),
            (14, NULL, 'dynamo-badge', NULL, 'dynamo-badge'),
            (14, NULL, 'heat-badge', NULL, 'heat-badge'),
            (14, NULL, 'balance-badge', NULL, 'balance-badge'),
            (14, NULL, 'feather-badge', NULL, 'feather-badge'),
            (14, NULL, 'mind-badge', NULL, 'mind-badge'),
            (14, NULL, 'rain-badge', NULL, 'rain-badge')
    )
INSERT INTO
    tracking.item_badge_refs (tracking_item_id, badge_id)
SELECT
    i.id,
    b.id
FROM
    seed_data s
    JOIN tracking.items i ON i.version_group_id = s.item_vg
        AND i.game_id IS NOT DISTINCT FROM s.item_game_id
        AND i.slug = s.item_slug
    JOIN tracking.badges b ON b.version_group_id = s.item_vg
        AND b.game_id IS NOT DISTINCT FROM s.badge_game_id
        AND b.slug = s.badge_slug;
