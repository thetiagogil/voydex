-- ============================================================================
-- Table: progress.item_badge_refs
-- Scope: version-group-specific (emerald, VG 6)
-- ============================================================================
INSERT INTO
    progress.item_badge_refs (progress_item_id, badge_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'stone-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'stone-badge')), -- stone-badge → Stone Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'knuckle-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'knuckle-badge')), -- knuckle-badge → Knuckle Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'dynamo-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'dynamo-badge')), -- dynamo-badge → Dynamo Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'heat-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'heat-badge')), -- heat-badge → Heat Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'balance-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'balance-badge')), -- balance-badge → Balance Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'feather-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'feather-badge')), -- feather-badge → Feather Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'mind-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'mind-badge')), -- mind-badge → Mind Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'rain-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'rain-badge'));

-- rain-badge → Rain Badge