-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_badge_refs
-- Scope: version-group-specific (xy, VG 13)
WITH
    seed_data (item_vg, item_game_id, item_slug, badge_game_id, badge_slug) AS (
        VALUES
            (13, NULL::INTEGER, 'bug-badge', NULL::INTEGER, 'bug-badge'),
            (13, NULL, 'cliff-badge', NULL, 'cliff-badge'),
            (13, NULL, 'rumble-badge', NULL, 'rumble-badge'),
            (13, NULL, 'plant-badge', NULL, 'plant-badge'),
            (13, NULL, 'voltage-badge', NULL, 'voltage-badge'),
            (13, NULL, 'fairy-badge', NULL, 'fairy-badge'),
            (13, NULL, 'psychic-badge', NULL, 'psychic-badge'),
            (13, NULL, 'iceberg-badge', NULL, 'iceberg-badge')
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
