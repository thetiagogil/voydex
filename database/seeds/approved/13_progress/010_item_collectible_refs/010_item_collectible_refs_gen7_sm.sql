-- ============================================================================
-- Table: progress.item_collectible_refs
-- Scope: version-group-specific (sm, VG 15)
-- ============================================================================
INSERT INTO
    progress.item_collectible_refs (progress_item_id, collectible_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 15 AND game_id IS NULL AND slug = 'zygarde-cells'), (SELECT id FROM progress.collectibles WHERE version_group_id = 15 AND game_id IS NULL AND slug = 'zygarde-cells'));

-- zygarde-cells → Zygarde Cells