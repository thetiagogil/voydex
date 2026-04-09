-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_collectible_refs
-- Scope: version-group-specific (swsh-ioa, VG 19)
-- Links tracking item 'alolan-diglett' → collectible 'alolan-diglett' (VG 19).
WITH
    seed_data (item_slug, coll_slug) AS (
        VALUES
            ('alolan-diglett', 'alolan-diglett')
    )
INSERT INTO
    tracking.item_collectible_refs (tracking_item_id, collectible_id)
SELECT
    i.id,
    c.id
FROM
    seed_data s
    JOIN tracking.items i ON i.version_group_id = 19
    AND i.game_id IS NULL
    AND i.slug = s.item_slug
    JOIN tracking.collectibles c ON c.version_group_id = 19
    AND c.game_id IS NULL
    AND c.slug = s.coll_slug;