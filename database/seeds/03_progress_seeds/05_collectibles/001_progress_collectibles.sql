-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.collectibles
-- Scope: all version groups with collectible systems
-- SM (VG 15): 100 Zygarde Cells / Cores across Alola.
-- USUM (VG 16): 100 Totem Stickers across Alola.
-- SwSh IoA (VG 19): 150 Alolan Diglett across the Isle of Armor.
-- SV (VG 23): 32 Ominous Stakes (4 sets of 8) sealing the Treasures of Ruin.
INSERT INTO
    progress.collectibles (version_group_id, game_id, slug, name, collectible_type, total_count, sprite_url)
VALUES
    -- Gen 7
    (15, NULL, 'zygarde-cells', 'Zygarde Cells', 'cell', 100, NULL),
    (16, NULL, 'totem-stickers', 'Totem Stickers', 'sticker', 100, NULL),
    -- Gen 8
    (19, NULL, 'alolan-diglett', 'Alolan Diglett', 'diglett', 150, NULL),
    -- Gen 9
    (23, NULL, 'purple-stakes', 'Purple Ominous Stakes', 'stake', 8, NULL),
    (23, NULL, 'yellow-stakes', 'Yellow Ominous Stakes', 'stake', 8, NULL),
    (23, NULL, 'green-stakes', 'Green Ominous Stakes', 'stake', 8, NULL),
    (23, NULL, 'blue-stakes', 'Blue Ominous Stakes', 'stake', 8, NULL);