-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_collectible_refs
-- Scope: version-group-specific (usum, VG 16)
-- Links progress item 'totem-stickers' → collectible 'totem-stickers' (VG 16).
WITH
    seed_data (item_vg, item_game_id, item_slug, coll_game_id, coll_slug) AS (
        VALUES
            (16, NULL, 'totem-stickers', NULL, 'totem-stickers')
    )
INSERT INTO
    progress.item_collectible_refs (progress_item_id, collectible_id)
SELECT
    i.id,
    c.id
FROM
    seed_data s
    JOIN progress.items i ON i.version_group_id = s.item_vg
    AND i.game_id IS NOT DISTINCT
FROM
    s.item_game_id
    AND i.slug = s.item_slug
    JOIN progress.collectibles c ON c.version_group_id = s.item_vg
    AND c.game_id IS NOT DISTINCT
FROM
    s.coll_game_id
    AND c.slug = s.coll_slug;