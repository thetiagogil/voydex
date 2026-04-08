-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_opponent_refs
-- Scope: version-group-specific (bw, VG 11)
WITH
    seed_data (item_vg, item_game_id, item_slug, opp_game_id, opp_slug) AS (
        VALUES
            (11, NULL::INTEGER, 'trio-badge', NULL::INTEGER, 'cilan-chili-cress'),
            (11, NULL, 'basic-badge', NULL, 'lenora'),
            (11, NULL, 'insect-badge', NULL, 'burgh'),
            (11, NULL, 'bolt-badge', NULL, 'elesa'),
            (11, NULL, 'quake-badge', NULL, 'clay'),
            (11, NULL, 'jet-badge', NULL, 'skyla'),
            (11, NULL, 'freeze-badge', NULL, 'brycen'),
            (11, NULL, 'legend-badge', NULL, 'drayden'),
            (11, NULL, 'elite-four-shauntal', NULL, 'shauntal'),
            (11, NULL, 'elite-four-grimsley', NULL, 'grimsley'),
            (11, NULL, 'elite-four-caitlin', NULL, 'caitlin'),
            (11, NULL, 'elite-four-marshal', NULL, 'marshal'),
            (11, NULL, 'n-battle', NULL, 'n'),
            (11, NULL, 'ghetsis-battle', NULL, 'ghetsis'),
            (11, NULL, 'champion-alder', NULL, 'alder')
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
