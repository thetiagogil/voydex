-- ============================================================================
-- Source: Bulbapedia, Serebii
-- Table: progress.item_collectible_refs
-- Scope: version-group-specific (sv, VG 23)
-- ============================================================================
-- Links 4 stake progress items → 4 stake collectible systems (VG 23).
-- ============================================================================
WITH
    seed_data (item_slug, coll_slug) AS (
        VALUES
            ('purple-stakes', 'purple-stakes'),
            ('yellow-stakes', 'yellow-stakes'),
            ('green-stakes', 'green-stakes'),
            ('blue-stakes', 'blue-stakes')
    )
INSERT INTO
    progress.item_collectible_refs (progress_item_id, collectible_id)
SELECT
    i.id,
    c.id
FROM
    seed_data s
    JOIN progress.items i ON i.version_group_id = 23
    AND i.game_id IS NULL
    AND i.slug = s.item_slug
    JOIN progress.collectibles c ON c.version_group_id = 23
    AND c.game_id IS NULL
    AND c.slug = s.coll_slug;