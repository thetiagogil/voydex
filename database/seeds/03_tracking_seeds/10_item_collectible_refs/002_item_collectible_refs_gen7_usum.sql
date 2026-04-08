-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_collectible_refs
-- Scope: version-group-specific (usum, VG 16)
-- Links tracking item 'totem-stickers' → collectible 'totem-stickers' (VG 16).
WITH
    seed_data (item_vg, item_game_id, item_slug, coll_game_id, coll_slug) AS (
        VALUES
            (16, NULL::INTEGER, 'totem-stickers', NULL::INTEGER, 'totem-stickers')
    )
INSERT INTO
    tracking.item_collectible_refs (tracking_item_id, collectible_id)
SELECT
    i.id,
    c.id
FROM
    seed_data s
    JOIN tracking.items i ON i.version_group_id = s.item_vg
    AND i.game_id IS NOT DISTINCT FROM
    s.item_game_id
    AND i.slug = s.item_slug
    JOIN tracking.collectibles c ON c.version_group_id = s.item_vg
    AND c.game_id IS NOT DISTINCT FROM
    s.coll_game_id
    AND c.slug = s.coll_slug;