-- ============================================================================
-- Table: progress.item_badge_refs
-- Scope: version-group-specific (frlg, VG 7)
-- ============================================================================
INSERT INTO
    progress.item_badge_refs (progress_item_id, badge_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'boulder-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'boulder-badge')), -- boulder-badge → Boulder Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'cascade-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'cascade-badge')), -- cascade-badge → Cascade Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'thunder-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'thunder-badge')), -- thunder-badge → Thunder Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'rainbow-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'rainbow-badge')), -- rainbow-badge → Rainbow Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'soul-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'soul-badge')), -- soul-badge → Soul Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'marsh-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'marsh-badge')), -- marsh-badge → Marsh Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'volcano-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'volcano-badge')), -- volcano-badge → Volcano Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'earth-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'earth-badge'));

-- earth-badge → Earth Badge