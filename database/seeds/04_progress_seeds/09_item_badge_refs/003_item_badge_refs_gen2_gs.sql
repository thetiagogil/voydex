-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_badge_refs
-- Scope: version-group-specific (gs, VG 3)
WITH
    seed_data (item_vg, item_game_id, item_slug, badge_game_id, badge_slug) AS (
        VALUES
            (3, NULL::INTEGER, 'zephyr-badge', NULL::INTEGER, 'zephyr-badge'),
            (3, NULL, 'hive-badge', NULL, 'hive-badge'),
            (3, NULL, 'plain-badge', NULL, 'plain-badge'),
            (3, NULL, 'fog-badge', NULL, 'fog-badge'),
            (3, NULL, 'storm-badge', NULL, 'storm-badge'),
            (3, NULL, 'mineral-badge', NULL, 'mineral-badge'),
            (3, NULL, 'glacier-badge', NULL, 'glacier-badge'),
            (3, NULL, 'rising-badge', NULL, 'rising-badge'),
            (3, NULL, 'thunder-badge-kanto', NULL, 'thunder-badge-kanto'),
            (3, NULL, 'marsh-badge-kanto', NULL, 'marsh-badge-kanto'),
            (3, NULL, 'rainbow-badge-kanto', NULL, 'rainbow-badge-kanto'),
            (3, NULL, 'soul-badge-kanto', NULL, 'soul-badge-kanto'),
            (3, NULL, 'cascade-badge-kanto', NULL, 'cascade-badge-kanto'),
            (3, NULL, 'volcano-badge-kanto', NULL, 'volcano-badge-kanto'),
            (3, NULL, 'earth-badge-kanto', NULL, 'earth-badge-kanto'),
            (3, NULL, 'boulder-badge-kanto', NULL, 'boulder-badge-kanto')
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
