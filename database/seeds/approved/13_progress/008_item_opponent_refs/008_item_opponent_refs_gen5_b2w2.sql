-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (b2w2, VG 12)
-- ============================================================================
WITH
    seed_data (item_vg, item_game_id, item_slug, opp_game_id, opp_slug) AS (
        VALUES
            (12, NULL::INTEGER, 'basic-badge', NULL::INTEGER, 'cheren'),
            (12, NULL, 'toxic-badge', NULL, 'roxie'),
            (12, NULL, 'insect-badge', NULL, 'burgh'),
            (12, NULL, 'bolt-badge', NULL, 'elesa'),
            (12, NULL, 'quake-badge', NULL, 'clay'),
            (12, NULL, 'jet-badge', NULL, 'skyla'),
            (12, NULL, 'legend-badge', NULL, 'drayden'),
            (12, NULL, 'wave-badge', NULL, 'marlon'),
            (12, NULL, 'colress-battle', NULL, 'colress'),
            (12, NULL, 'ghetsis-battle', NULL, 'ghetsis'),
            (12, NULL, 'elite-four-shauntal', NULL, 'shauntal'),
            (12, NULL, 'elite-four-grimsley', NULL, 'grimsley'),
            (12, NULL, 'elite-four-caitlin', NULL, 'caitlin'),
            (12, NULL, 'elite-four-marshal', NULL, 'marshal'),
            (12, NULL, 'champion-iris', NULL, 'iris')
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
