-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (rs, VG 5)
WITH
    seed_data (item_vg, item_game_id, item_slug, opp_game_id, opp_slug) AS (
        VALUES
            (5, NULL::INTEGER, 'stone-badge', NULL::INTEGER, 'roxanne'),
            (5, NULL, 'knuckle-badge', NULL, 'brawly'),
            (5, NULL, 'dynamo-badge', NULL, 'wattson'),
            (5, NULL, 'heat-badge', NULL, 'flannery'),
            (5, NULL, 'balance-badge', NULL, 'norman'),
            (5, NULL, 'feather-badge', NULL, 'winona'),
            (5, NULL, 'mind-badge', NULL, 'tate-and-liza'),
            (5, NULL, 'rain-badge', NULL, 'wallace'),
            (5, NULL, 'elite-four-sidney', NULL, 'sidney'),
            (5, NULL, 'elite-four-phoebe', NULL, 'phoebe'),
            (5, NULL, 'elite-four-glacia', NULL, 'glacia'),
            (5, NULL, 'elite-four-drake', NULL, 'drake'),
            (5, NULL, 'champion-steven', NULL, 'steven')
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
