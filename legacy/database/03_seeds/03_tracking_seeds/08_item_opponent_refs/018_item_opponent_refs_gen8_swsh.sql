-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_opponent_refs
-- Scope: version-group-specific (swsh, VG 18)
WITH
    seed_data (item_vg, item_game_id, item_slug, opp_game_id, opp_slug) AS (
        VALUES
            (18, NULL::INTEGER, 'grass-badge', NULL::INTEGER, 'milo'),
            (18, NULL, 'water-badge', NULL, 'nessa'),
            (18, NULL, 'fire-badge', NULL, 'kabu'),
            (18, 31, 'fighting-badge', 31, 'bea'),
            (18, 32, 'ghost-badge', 32, 'allister'),
            (18, NULL, 'fairy-badge', NULL, 'opal'),
            (18, 31, 'rock-badge', 31, 'gordie'),
            (18, 32, 'ice-badge', 32, 'melony'),
            (18, NULL, 'dark-badge', NULL, 'piers'),
            (18, NULL, 'dragon-badge', NULL, 'raihan'),
            (18, NULL, 'champion-leon', NULL, 'leon')
    )
INSERT INTO
    tracking.item_opponent_refs (tracking_item_id, opponent_id)
SELECT
    i.id,
    o.id
FROM
    seed_data s
    JOIN tracking.items i ON i.version_group_id = s.item_vg
        AND i.game_id IS NOT DISTINCT FROM s.item_game_id
        AND i.slug = s.item_slug
    JOIN tracking.opponents o ON o.version_group_id = s.item_vg
        AND o.game_id IS NOT DISTINCT FROM s.opp_game_id
        AND o.slug = s.opp_slug;
