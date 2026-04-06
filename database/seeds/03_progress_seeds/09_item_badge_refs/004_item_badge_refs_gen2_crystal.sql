-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_badge_refs
-- Scope: version-group-specific (crystal, VG 4)
WITH
    seed_data (item_vg, item_game_id, item_slug, badge_game_id, badge_slug) AS (
        VALUES
            (4, NULL::INTEGER, 'zephyr-badge', NULL::INTEGER, 'zephyr-badge'),
            (4, NULL, 'hive-badge', NULL, 'hive-badge'),
            (4, NULL, 'plain-badge', NULL, 'plain-badge'),
            (4, NULL, 'fog-badge', NULL, 'fog-badge'),
            (4, NULL, 'storm-badge', NULL, 'storm-badge'),
            (4, NULL, 'mineral-badge', NULL, 'mineral-badge'),
            (4, NULL, 'glacier-badge', NULL, 'glacier-badge'),
            (4, NULL, 'rising-badge', NULL, 'rising-badge'),
            (4, NULL, 'thunder-badge-kanto', NULL, 'thunder-badge-kanto'),
            (4, NULL, 'marsh-badge-kanto', NULL, 'marsh-badge-kanto'),
            (4, NULL, 'rainbow-badge-kanto', NULL, 'rainbow-badge-kanto'),
            (4, NULL, 'soul-badge-kanto', NULL, 'soul-badge-kanto'),
            (4, NULL, 'cascade-badge-kanto', NULL, 'cascade-badge-kanto'),
            (4, NULL, 'volcano-badge-kanto', NULL, 'volcano-badge-kanto'),
            (4, NULL, 'earth-badge-kanto', NULL, 'earth-badge-kanto'),
            (4, NULL, 'boulder-badge-kanto', NULL, 'boulder-badge-kanto')
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
