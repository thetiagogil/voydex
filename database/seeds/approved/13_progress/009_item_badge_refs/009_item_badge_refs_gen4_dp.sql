-- ============================================================================
-- Table: progress.item_badge_refs
-- Scope: version-group-specific (dp, VG 8)
-- ============================================================================
INSERT INTO
    progress.item_badge_refs (progress_item_id, badge_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'coal-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'coal-badge')), -- coal-badge → Coal Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'forest-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'forest-badge')), -- forest-badge → Forest Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'relic-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'relic-badge')), -- relic-badge → Relic Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'cobble-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'cobble-badge')), -- cobble-badge → Cobble Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'fen-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'fen-badge')), -- fen-badge → Fen Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'mine-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'mine-badge')), -- mine-badge → Mine Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'icicle-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'icicle-badge')), -- icicle-badge → Icicle Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'beacon-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'beacon-badge'));

-- beacon-badge → Beacon Badge