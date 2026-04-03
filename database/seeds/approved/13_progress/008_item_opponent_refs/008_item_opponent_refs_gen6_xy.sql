-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (xy, VG 13)
-- ============================================================================
WITH
    seed_data (item_vg, item_game_id, item_slug, opp_game_id, opp_slug) AS (
        VALUES
            (13, NULL::INTEGER, 'bug-badge', NULL::INTEGER, 'viola'),
            (13, NULL, 'cliff-badge', NULL, 'grant'),
            (13, NULL, 'rumble-badge', NULL, 'korrina'),
            (13, NULL, 'plant-badge', NULL, 'ramos'),
            (13, NULL, 'voltage-badge', NULL, 'clemont'),
            (13, NULL, 'fairy-badge', NULL, 'valerie'),
            (13, NULL, 'psychic-badge', NULL, 'olympia'),
            (13, NULL, 'iceberg-badge', NULL, 'wulfric'),
            (13, NULL, 'elite-four-malva', NULL, 'malva'),
            (13, NULL, 'elite-four-siebold', NULL, 'siebold'),
            (13, NULL, 'elite-four-wikstrom', NULL, 'wikstrom'),
            (13, NULL, 'elite-four-drasna', NULL, 'drasna'),
            (13, NULL, 'champion-diantha', NULL, 'diantha')
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
