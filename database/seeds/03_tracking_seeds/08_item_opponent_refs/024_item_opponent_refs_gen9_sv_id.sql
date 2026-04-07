-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_opponent_refs
-- Scope: version-group-specific (sv-id, VG 25)
WITH
    seed_data (item_vg, item_game_id, item_slug, opp_game_id, opp_slug) AS (
        VALUES
            (25, NULL::INTEGER, 'bb-elite-four-crispin', NULL::INTEGER, 'crispin'),
            (25, NULL, 'bb-elite-four-amarys', NULL, 'amarys'),
            (25, NULL, 'bb-elite-four-lacey', NULL, 'lacey'),
            (25, NULL, 'bb-elite-four-drayton', NULL, 'drayton'),
            (25, NULL, 'bb-champion-kieran', NULL, 'kieran')
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
