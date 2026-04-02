-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.collectibles
-- Scope: all seeded version groups
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Most base games in scope have no major collectible systems.
-- USUM has Totem Stickers (100 total).
INSERT INTO
    progress.collectibles (id, version_group_id, game_id, slug, name, collectible_type, total_count, sprite_url)
VALUES
    -- Gen 7 — Ultra Sun / Ultra Moon (VG 16)
    (100, 16, NULL, 'totem-stickers', 'Totem Stickers', 'sticker', 100, NULL);