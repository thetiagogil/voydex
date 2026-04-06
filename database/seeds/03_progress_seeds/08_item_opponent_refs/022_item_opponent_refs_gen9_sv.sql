-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (sv, VG 23)
WITH
    seed_data (item_vg, item_game_id, item_slug, opp_game_id, opp_slug) AS (
        VALUES
            (23, NULL::INTEGER, 'bug-badge', NULL::INTEGER, 'katy'),
            (23, NULL, 'grass-badge', NULL, 'brassius'),
            (23, NULL, 'electric-badge', NULL, 'iono'),
            (23, NULL, 'water-badge', NULL, 'kofu'),
            (23, NULL, 'normal-badge', NULL, 'larry'),
            (23, NULL, 'ghost-badge', NULL, 'ryme'),
            (23, NULL, 'psychic-badge', NULL, 'tulip'),
            (23, NULL, 'ice-badge', NULL, 'grusha'),
            (23, NULL, 'dark-star', NULL, 'giacomo'),
            (23, NULL, 'fire-star', NULL, 'mela'),
            (23, NULL, 'poison-star', NULL, 'atticus'),
            (23, NULL, 'fairy-star', NULL, 'ortega'),
            (23, NULL, 'fighting-star', NULL, 'eri'),
            (23, NULL, 'elite-four-rika', NULL, 'rika'),
            (23, NULL, 'elite-four-poppy', NULL, 'poppy'),
            (23, NULL, 'elite-four-larry', NULL, 'larry-e4'),
            (23, NULL, 'elite-four-hassel', NULL, 'hassel'),
            (23, NULL, 'top-champion-geeta', NULL, 'geeta'),
            (23, NULL, 'champion-nemona', NULL, 'nemona'),
            (23, NULL, 'professor-ai', NULL, 'professor-ai')
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
