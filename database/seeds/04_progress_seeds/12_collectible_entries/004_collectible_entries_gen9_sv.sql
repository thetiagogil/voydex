-- ============================================================================
-- Source: Bulbapedia, Serebii
-- Table: progress.collectible_entries
-- Scope: Ominous Stakes (SV, VG 23)
-- ============================================================================
-- 32 Ominous Stakes across Paldea (8 per color). Each set of 8 seals one of
-- the Treasures of Ruin behind a shrine:
--   Purple Stakes → Wo-Chien  (Grasswither Shrine)
--   Yellow Stakes → Ting-Lu   (Groundblight Shrine)
--   Green Stakes  → Chi-Yu    (Firescourge Shrine)
--   Blue Stakes   → Chien-Pao (Icerend Shrine)
-- ============================================================================
WITH
    seed_data (collectible_slug, slug, name, location_name, sub_location_name, description, sort_order) AS (
        VALUES
            -- ================================================================
            -- Purple Stakes (8) — Wo-Chien / Grasswither Shrine
            -- ================================================================
            ('purple-stakes', 'purple-stake-1', 'Purple Stake #1', 'South Province', 'Area One', NULL, 1),
            ('purple-stakes', 'purple-stake-2', 'Purple Stake #2', 'South Province', 'Area One', NULL, 2),
            ('purple-stakes', 'purple-stake-3', 'Purple Stake #3', 'South Province', 'Area Two', NULL, 3),
            ('purple-stakes', 'purple-stake-4', 'Purple Stake #4', 'South Province', 'Area Four', NULL, 4),
            ('purple-stakes', 'purple-stake-5', 'Purple Stake #5', 'South Province', 'Area Five', NULL, 5),
            ('purple-stakes', 'purple-stake-6', 'Purple Stake #6', 'West Province', 'Area One', NULL, 6),
            ('purple-stakes', 'purple-stake-7', 'Purple Stake #7', 'Tagtree Thicket', NULL, NULL, 7),
            ('purple-stakes', 'purple-stake-8', 'Purple Stake #8', 'East Province', 'Area One', NULL, 8),
            -- ================================================================
            -- Yellow Stakes (8) — Ting-Lu / Groundblight Shrine
            -- ================================================================
            ('yellow-stakes', 'yellow-stake-1', 'Yellow Stake #1', 'North Province', 'Area One', NULL, 1),
            ('yellow-stakes', 'yellow-stake-2', 'Yellow Stake #2', 'North Province', 'Area One', NULL, 2),
            ('yellow-stakes', 'yellow-stake-3', 'Yellow Stake #3', 'North Province', 'Area Two', NULL, 3),
            ('yellow-stakes', 'yellow-stake-4', 'Yellow Stake #4', 'North Province', 'Area Two', NULL, 4),
            ('yellow-stakes', 'yellow-stake-5', 'Yellow Stake #5', 'North Province', 'Area Three', NULL, 5),
            ('yellow-stakes', 'yellow-stake-6', 'Yellow Stake #6', 'Socarrat Trail', NULL, NULL, 6),
            ('yellow-stakes', 'yellow-stake-7', 'Yellow Stake #7', 'Glaseado Mountain', NULL, NULL, 7),
            ('yellow-stakes', 'yellow-stake-8', 'Yellow Stake #8', 'Casseroya Lake', NULL, NULL, 8),
            -- ================================================================
            -- Green Stakes (8) — Chi-Yu / Firescourge Shrine
            -- ================================================================
            ('green-stakes', 'green-stake-1', 'Green Stake #1', 'North Province', 'Area One', NULL, 1),
            ('green-stakes', 'green-stake-2', 'Green Stake #2', 'North Province', 'Area Two', NULL, 2),
            ('green-stakes', 'green-stake-3', 'Green Stake #3', 'West Province', 'Area Two', NULL, 3),
            ('green-stakes', 'green-stake-4', 'Green Stake #4', 'West Province', 'Area Three', NULL, 4),
            ('green-stakes', 'green-stake-5', 'Green Stake #5', 'Casseroya Lake', NULL, NULL, 5),
            ('green-stakes', 'green-stake-6', 'Green Stake #6', 'Dalizapa Passage', NULL, NULL, 6),
            ('green-stakes', 'green-stake-7', 'Green Stake #7', 'East Province', 'Area Three', NULL, 7),
            ('green-stakes', 'green-stake-8', 'Green Stake #8', 'Glaseado Mountain', NULL, NULL, 8),
            -- ================================================================
            -- Blue Stakes (8) — Chien-Pao / Icerend Shrine
            -- ================================================================
            ('blue-stakes', 'blue-stake-1', 'Blue Stake #1', 'West Province', 'Area One', NULL, 1),
            ('blue-stakes', 'blue-stake-2', 'Blue Stake #2', 'West Province', 'Area One', NULL, 2),
            ('blue-stakes', 'blue-stake-3', 'Blue Stake #3', 'West Province', 'Area Three', NULL, 3),
            ('blue-stakes', 'blue-stake-4', 'Blue Stake #4', 'South Province', 'Area Six', NULL, 4),
            ('blue-stakes', 'blue-stake-5', 'Blue Stake #5', 'Glaseado Mountain', NULL, NULL, 5),
            ('blue-stakes', 'blue-stake-6', 'Blue Stake #6', 'Glaseado Mountain', NULL, NULL, 6),
            ('blue-stakes', 'blue-stake-7', 'Blue Stake #7', 'Casseroya Lake', NULL, NULL, 7),
            ('blue-stakes', 'blue-stake-8', 'Blue Stake #8', 'Dalizapa Passage', NULL, NULL, 8)
    )
INSERT INTO
    progress.collectible_entries (collectible_id, slug, name, location_name, sub_location_name, description, sort_order)
SELECT
    c.id,
    s.slug,
    s.name,
    s.location_name,
    s.sub_location_name,
    s.description,
    s.sort_order
FROM
    seed_data s
    JOIN progress.collectibles c ON c.version_group_id = 23
    AND c.slug = s.collectible_slug;