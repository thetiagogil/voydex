-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (dp, VG 8)
-- ============================================================================
WITH
    seed_data (item_vg, item_game_id, item_slug, opp_game_id, opp_slug) AS (
        VALUES
            (8, NULL::INTEGER, 'coal-badge', NULL::INTEGER, 'roark'),
            (8, NULL, 'forest-badge', NULL, 'gardenia'),
            (8, NULL, 'relic-badge', NULL, 'fantina'),
            (8, NULL, 'cobble-badge', NULL, 'maylene'),
            (8, NULL, 'fen-badge', NULL, 'crasher-wake'),
            (8, NULL, 'mine-badge', NULL, 'byron'),
            (8, NULL, 'icicle-badge', NULL, 'candice'),
            (8, NULL, 'beacon-badge', NULL, 'volkner'),
            (8, NULL, 'elite-four-aaron', NULL, 'aaron'),
            (8, NULL, 'elite-four-bertha', NULL, 'bertha'),
            (8, NULL, 'elite-four-flint', NULL, 'flint'),
            (8, NULL, 'elite-four-lucian', NULL, 'lucian'),
            (8, NULL, 'champion-cynthia', NULL, 'cynthia')
    )
INSERT INTO
    progress.item_opponent_refs (progress_item_id, opponent_id)
SELECT
    i.id,
    o.id
FROM
    seed_data s
    JOIN progress.items i ON i.version_group_id = s.item_vg
        AND i.game_id IS NOT DISTINCT FROM s.item_game_id
        AND i.slug = s.item_slug
    JOIN progress.opponents o ON o.version_group_id = s.item_vg
        AND o.game_id IS NOT DISTINCT FROM s.opp_game_id
        AND o.slug = s.opp_slug;
