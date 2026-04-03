-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (oras, VG 14)
-- ============================================================================
WITH
    seed_data (item_vg, item_game_id, item_slug, opp_game_id, opp_slug) AS (
        VALUES
            (14, NULL::INTEGER, 'stone-badge', NULL::INTEGER, 'roxanne'),
            (14, NULL, 'knuckle-badge', NULL, 'brawly'),
            (14, NULL, 'dynamo-badge', NULL, 'wattson'),
            (14, NULL, 'heat-badge', NULL, 'flannery'),
            (14, NULL, 'balance-badge', NULL, 'norman'),
            (14, NULL, 'feather-badge', NULL, 'winona'),
            (14, NULL, 'mind-badge', NULL, 'tate-and-liza'),
            (14, NULL, 'rain-badge', NULL, 'wallace'),
            (14, NULL, 'elite-four-sidney', NULL, 'sidney'),
            (14, NULL, 'elite-four-phoebe', NULL, 'phoebe'),
            (14, NULL, 'elite-four-glacia', NULL, 'glacia'),
            (14, NULL, 'elite-four-drake', NULL, 'drake'),
            (14, NULL, 'champion-steven', NULL, 'steven')
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
