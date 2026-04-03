-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (emerald, VG 6)
-- ============================================================================
WITH
    seed_data (item_vg, item_game_id, item_slug, opp_game_id, opp_slug) AS (
        VALUES
            (6, NULL::INTEGER, 'stone-badge', NULL::INTEGER, 'roxanne'),
            (6, NULL, 'knuckle-badge', NULL, 'brawly'),
            (6, NULL, 'dynamo-badge', NULL, 'wattson'),
            (6, NULL, 'heat-badge', NULL, 'flannery'),
            (6, NULL, 'balance-badge', NULL, 'norman'),
            (6, NULL, 'feather-badge', NULL, 'winona'),
            (6, NULL, 'mind-badge', NULL, 'tate-and-liza'),
            (6, NULL, 'rain-badge', NULL, 'juan'),
            (6, NULL, 'elite-four-sidney', NULL, 'sidney'),
            (6, NULL, 'elite-four-phoebe', NULL, 'phoebe'),
            (6, NULL, 'elite-four-glacia', NULL, 'glacia'),
            (6, NULL, 'elite-four-drake', NULL, 'drake'),
            (6, NULL, 'champion-wallace', NULL, 'wallace')
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
