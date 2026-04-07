-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_opponent_refs
-- Scope: version-group-specific (gs, VG 3)
WITH
    seed_data (item_vg, item_game_id, item_slug, opp_game_id, opp_slug) AS (
        VALUES
            (3, NULL::INTEGER, 'zephyr-badge', NULL::INTEGER, 'falkner'),
            (3, NULL, 'hive-badge', NULL, 'bugsy'),
            (3, NULL, 'plain-badge', NULL, 'whitney'),
            (3, NULL, 'fog-badge', NULL, 'morty'),
            (3, NULL, 'storm-badge', NULL, 'chuck'),
            (3, NULL, 'mineral-badge', NULL, 'jasmine'),
            (3, NULL, 'glacier-badge', NULL, 'pryce'),
            (3, NULL, 'rising-badge', NULL, 'clair'),
            (3, NULL, 'elite-four-will', NULL, 'will'),
            (3, NULL, 'elite-four-koga', NULL, 'koga'),
            (3, NULL, 'elite-four-bruno', NULL, 'bruno'),
            (3, NULL, 'elite-four-karen', NULL, 'karen'),
            (3, NULL, 'champion-lance', NULL, 'lance'),
            (3, NULL, 'thunder-badge-kanto', NULL, 'lt-surge-kanto'),
            (3, NULL, 'marsh-badge-kanto', NULL, 'sabrina-kanto'),
            (3, NULL, 'rainbow-badge-kanto', NULL, 'erika-kanto'),
            (3, NULL, 'soul-badge-kanto', NULL, 'janine'),
            (3, NULL, 'cascade-badge-kanto', NULL, 'misty-kanto'),
            (3, NULL, 'volcano-badge-kanto', NULL, 'blaine-kanto'),
            (3, NULL, 'earth-badge-kanto', NULL, 'blue-kanto'),
            (3, NULL, 'boulder-badge-kanto', NULL, 'brock-kanto'),
            (3, NULL, 'red', NULL, 'red')
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
