-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (lgpe, VG 17)
WITH
    seed_data (item_vg, item_game_id, item_slug, opp_game_id, opp_slug) AS (
        VALUES
            (17, NULL::INTEGER, 'boulder-badge', NULL::INTEGER, 'brock'),
            (17, NULL, 'cascade-badge', NULL, 'misty'),
            (17, NULL, 'thunder-badge', NULL, 'lt-surge'),
            (17, NULL, 'rainbow-badge', NULL, 'erika'),
            (17, NULL, 'soul-badge', NULL, 'koga'),
            (17, NULL, 'marsh-badge', NULL, 'sabrina'),
            (17, NULL, 'volcano-badge', NULL, 'blaine'),
            (17, NULL, 'earth-badge', NULL, 'giovanni'),
            (17, NULL, 'elite-four-lorelei', NULL, 'lorelei'),
            (17, NULL, 'elite-four-bruno', NULL, 'bruno'),
            (17, NULL, 'elite-four-agatha', NULL, 'agatha'),
            (17, NULL, 'elite-four-lance', NULL, 'lance'),
            (17, NULL, 'champion-rival', NULL, 'rival'),
            (17, NULL, 'blue-battle', NULL, 'blue')
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
