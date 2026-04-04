-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_badge_refs
-- Scope: version-group-specific (bw, VG 11)
WITH
    seed_data (item_vg, item_game_id, item_slug, badge_game_id, badge_slug) AS (
        VALUES
            (11, NULL::INTEGER, 'trio-badge', NULL::INTEGER, 'trio-badge'),
            (11, NULL, 'basic-badge', NULL, 'basic-badge'),
            (11, NULL, 'insect-badge', NULL, 'insect-badge'),
            (11, NULL, 'bolt-badge', NULL, 'bolt-badge'),
            (11, NULL, 'quake-badge', NULL, 'quake-badge'),
            (11, NULL, 'jet-badge', NULL, 'jet-badge'),
            (11, NULL, 'freeze-badge', NULL, 'freeze-badge'),
            (11, NULL, 'legend-badge', NULL, 'legend-badge')
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
