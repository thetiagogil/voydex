-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (platinum, VG 9)
WITH
    seed_data (item_vg, item_game_id, item_slug, opp_game_id, opp_slug) AS (
        VALUES
            (9, NULL::INTEGER, 'coal-badge', NULL::INTEGER, 'roark'),
            (9, NULL, 'forest-badge', NULL, 'gardenia'),
            (9, NULL, 'cobble-badge', NULL, 'maylene'),
            (9, NULL, 'fen-badge', NULL, 'crasher-wake'),
            (9, NULL, 'relic-badge', NULL, 'fantina'),
            (9, NULL, 'mine-badge', NULL, 'byron'),
            (9, NULL, 'icicle-badge', NULL, 'candice'),
            (9, NULL, 'beacon-badge', NULL, 'volkner'),
            (9, NULL, 'elite-four-aaron', NULL, 'aaron'),
            (9, NULL, 'elite-four-bertha', NULL, 'bertha'),
            (9, NULL, 'elite-four-flint', NULL, 'flint'),
            (9, NULL, 'elite-four-lucian', NULL, 'lucian'),
            (9, NULL, 'champion-cynthia', NULL, 'cynthia')
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
