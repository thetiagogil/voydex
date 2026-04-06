-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_badge_refs
-- Scope: version-group-specific (sv, VG 23)
WITH
    seed_data (item_vg, item_game_id, item_slug, badge_game_id, badge_slug) AS (
        VALUES
            (23, NULL::INTEGER, 'bug-badge', NULL::INTEGER, 'bug-badge'),
            (23, NULL, 'grass-badge', NULL, 'grass-badge'),
            (23, NULL, 'electric-badge', NULL, 'electric-badge'),
            (23, NULL, 'water-badge', NULL, 'water-badge'),
            (23, NULL, 'normal-badge', NULL, 'normal-badge'),
            (23, NULL, 'ghost-badge', NULL, 'ghost-badge'),
            (23, NULL, 'psychic-badge', NULL, 'psychic-badge'),
            (23, NULL, 'ice-badge', NULL, 'ice-badge')
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
