-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_opponent_refs
-- Scope: version-group-specific (hgss, VG 10)
WITH
    seed_data (item_vg, item_game_id, item_slug, opp_game_id, opp_slug) AS (
        VALUES
            (10, NULL::INTEGER, 'zephyr-badge', NULL::INTEGER, 'falkner'),
            (10, NULL, 'hive-badge', NULL, 'bugsy'),
            (10, NULL, 'plain-badge', NULL, 'whitney'),
            (10, NULL, 'fog-badge', NULL, 'morty'),
            (10, NULL, 'storm-badge', NULL, 'chuck'),
            (10, NULL, 'mineral-badge', NULL, 'jasmine'),
            (10, NULL, 'glacier-badge', NULL, 'pryce'),
            (10, NULL, 'rising-badge', NULL, 'clair'),
            (10, NULL, 'elite-four-will', NULL, 'will'),
            (10, NULL, 'elite-four-koga', NULL, 'koga'),
            (10, NULL, 'elite-four-bruno', NULL, 'bruno'),
            (10, NULL, 'elite-four-karen', NULL, 'karen'),
            (10, NULL, 'champion-lance', NULL, 'lance'),
            (10, NULL, 'thunder-badge-kanto', NULL, 'lt-surge-kanto'),
            (10, NULL, 'marsh-badge-kanto', NULL, 'sabrina-kanto'),
            (10, NULL, 'rainbow-badge-kanto', NULL, 'erika-kanto'),
            (10, NULL, 'soul-badge-kanto', NULL, 'janine'),
            (10, NULL, 'cascade-badge-kanto', NULL, 'misty-kanto'),
            (10, NULL, 'volcano-badge-kanto', NULL, 'blaine-kanto'),
            (10, NULL, 'earth-badge-kanto', NULL, 'blue-kanto'),
            (10, NULL, 'boulder-badge-kanto', NULL, 'brock-kanto'),
            (10, NULL, 'red', NULL, 'red')
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
