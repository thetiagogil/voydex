-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_badge_refs
-- Scope: version-group-specific (frlg, VG 7)
WITH
    seed_data (item_vg, item_game_id, item_slug, badge_game_id, badge_slug) AS (
        VALUES
            (7, NULL::INTEGER, 'boulder-badge', NULL::INTEGER, 'boulder-badge'),
            (7, NULL, 'cascade-badge', NULL, 'cascade-badge'),
            (7, NULL, 'thunder-badge', NULL, 'thunder-badge'),
            (7, NULL, 'rainbow-badge', NULL, 'rainbow-badge'),
            (7, NULL, 'soul-badge', NULL, 'soul-badge'),
            (7, NULL, 'marsh-badge', NULL, 'marsh-badge'),
            (7, NULL, 'volcano-badge', NULL, 'volcano-badge'),
            (7, NULL, 'earth-badge', NULL, 'earth-badge')
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
