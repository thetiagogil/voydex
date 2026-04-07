-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_opponent_refs
-- Scope: version-group-specific (frlg, VG 7)
WITH
    seed_data (item_vg, item_game_id, item_slug, opp_game_id, opp_slug) AS (
        VALUES
            (7, NULL::INTEGER, 'boulder-badge', NULL::INTEGER, 'brock'),
            (7, NULL, 'cascade-badge', NULL, 'misty'),
            (7, NULL, 'thunder-badge', NULL, 'lt-surge'),
            (7, NULL, 'rainbow-badge', NULL, 'erika'),
            (7, NULL, 'soul-badge', NULL, 'koga'),
            (7, NULL, 'marsh-badge', NULL, 'sabrina'),
            (7, NULL, 'volcano-badge', NULL, 'blaine'),
            (7, NULL, 'earth-badge', NULL, 'giovanni'),
            (7, NULL, 'elite-four-lorelei', NULL, 'lorelei'),
            (7, NULL, 'elite-four-bruno', NULL, 'bruno'),
            (7, NULL, 'elite-four-agatha', NULL, 'agatha'),
            (7, NULL, 'elite-four-lance', NULL, 'lance'),
            (7, NULL, 'champion-blue', NULL, 'blue')
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
