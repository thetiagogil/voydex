-- ============================================================================
-- Table: progress.item_collectible_refs
-- Scope: version-group-specific (usum, VG 16)
-- ============================================================================
INSERT INTO
    progress.item_collectible_refs (progress_item_id, collectible_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'totem-stickers'), (SELECT id FROM progress.collectibles WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'totem-stickers'));

-- totem-stickers → Totem Stickers