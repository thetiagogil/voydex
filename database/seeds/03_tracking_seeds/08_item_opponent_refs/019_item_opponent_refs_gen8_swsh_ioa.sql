-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_opponent_refs
-- Scope: version-group-specific (swsh-ioa, VG 19)
WITH
    seed_data (item_vg, item_game_id, item_slug, opp_game_id, opp_slug) AS (
        VALUES
            (19, NULL::INTEGER, 'mustard-battle-1', NULL::INTEGER, 'mustard'),
            (19, NULL, 'mustard-battle-2', NULL, 'mustard')
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
