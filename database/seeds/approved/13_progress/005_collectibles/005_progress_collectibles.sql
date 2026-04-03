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
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Most games have no major collectible tracking systems.
-- USUM: Totem Stickers (100 total).
-- SM: Zygarde Cells (100 total).
INSERT INTO
    progress.collectibles (id, version_group_id, game_id, slug, name, collectible_type, total_count, sprite_url)
VALUES
    (100, 16, NULL, 'totem-stickers', 'Totem Stickers', 'sticker', 100, NULL),
    (101, 15, NULL, 'zygarde-cells', 'Zygarde Cells', 'cell', 100, NULL);