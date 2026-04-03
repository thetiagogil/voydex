-- ============================================================================
-- Table: progress.item_badge_refs
-- Scope: version-group-specific (b2w2, VG 12)
-- ============================================================================
WITH
    seed_data (item_vg, item_game_id, item_slug, badge_game_id, badge_slug) AS (
        VALUES
            (12, NULL::INTEGER, 'basic-badge', NULL::INTEGER, 'basic-badge'),
            (12, NULL, 'toxic-badge', NULL, 'toxic-badge'),
            (12, NULL, 'insect-badge', NULL, 'insect-badge'),
            (12, NULL, 'bolt-badge', NULL, 'bolt-badge'),
            (12, NULL, 'quake-badge', NULL, 'quake-badge'),
            (12, NULL, 'jet-badge', NULL, 'jet-badge'),
            (12, NULL, 'legend-badge', NULL, 'legend-badge'),
            (12, NULL, 'wave-badge', NULL, 'wave-badge')
    )
INSERT INTO
    progress.item_badge_refs (progress_item_id, badge_id)
SELECT
    i.id,
    b.id
FROM
    seed_data s
    JOIN progress.items i ON i.version_group_id = s.item_vg
        AND i.game_id IS NOT DISTINCT FROM s.item_game_id
        AND i.slug = s.item_slug
    JOIN progress.badges b ON b.version_group_id = s.item_vg
        AND b.game_id IS NOT DISTINCT FROM s.badge_game_id
        AND b.slug = s.badge_slug;
