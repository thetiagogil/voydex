-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (yellow, VG 2)
WITH
    seed_data (item_vg, item_game_id, item_slug, opp_game_id, opp_slug) AS (
        VALUES
            (2, NULL::INTEGER, 'boulder-badge', NULL::INTEGER, 'brock'),
            (2, NULL, 'cascade-badge', NULL, 'misty'),
            (2, NULL, 'thunder-badge', NULL, 'lt-surge'),
            (2, NULL, 'rainbow-badge', NULL, 'erika'),
            (2, NULL, 'soul-badge', NULL, 'koga'),
            (2, NULL, 'marsh-badge', NULL, 'sabrina'),
            (2, NULL, 'volcano-badge', NULL, 'blaine'),
            (2, NULL, 'earth-badge', NULL, 'giovanni'),
            (2, NULL, 'elite-four-lorelei', NULL, 'lorelei'),
            (2, NULL, 'elite-four-bruno', NULL, 'bruno'),
            (2, NULL, 'elite-four-agatha', NULL, 'agatha'),
            (2, NULL, 'elite-four-lance', NULL, 'lance'),
            (2, NULL, 'champion-blue', NULL, 'blue')
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
