-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (crystal, VG 4)
WITH
    seed_data (item_vg, item_game_id, item_slug, opp_game_id, opp_slug) AS (
        VALUES
            (4, NULL::INTEGER, 'zephyr-badge', NULL::INTEGER, 'falkner'),
            (4, NULL, 'hive-badge', NULL, 'bugsy'),
            (4, NULL, 'plain-badge', NULL, 'whitney'),
            (4, NULL, 'fog-badge', NULL, 'morty'),
            (4, NULL, 'storm-badge', NULL, 'chuck'),
            (4, NULL, 'mineral-badge', NULL, 'jasmine'),
            (4, NULL, 'glacier-badge', NULL, 'pryce'),
            (4, NULL, 'rising-badge', NULL, 'clair'),
            (4, NULL, 'elite-four-will', NULL, 'will'),
            (4, NULL, 'elite-four-koga', NULL, 'koga'),
            (4, NULL, 'elite-four-bruno', NULL, 'bruno'),
            (4, NULL, 'elite-four-karen', NULL, 'karen'),
            (4, NULL, 'champion-lance', NULL, 'lance'),
            (4, NULL, 'marsh-badge-kanto', NULL, 'lt-surge-kanto'),
            (4, NULL, 'rainbow-badge-kanto', NULL, 'sabrina-kanto'),
            (4, NULL, 'soul-badge-kanto', NULL, 'erika-kanto'),
            (4, NULL, 'cascade-badge-kanto', NULL, 'janine'),
            (4, NULL, 'volcano-badge-kanto', NULL, 'misty-kanto'),
            (4, NULL, 'earth-badge-kanto', NULL, 'blaine-kanto'),
            (4, NULL, 'boulder-badge-kanto', NULL, 'blue-kanto'),
            (4, NULL, 'red', NULL, 'brock-kanto'),
            (4, NULL, 'suicune', NULL, 'red')
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
