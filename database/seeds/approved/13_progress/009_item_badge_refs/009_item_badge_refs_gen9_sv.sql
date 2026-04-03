-- ============================================================================
-- Table: progress.item_badge_refs
-- Scope: version-group-specific (sv, VG 23)
-- ============================================================================
INSERT INTO
    progress.item_badge_refs (progress_item_id, badge_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'bug-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'bug-badge')), -- bug-badge → Bug Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'grass-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'grass-badge')), -- grass-badge → Grass Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'electric-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'electric-badge')), -- electric-badge → Electric Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'water-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'water-badge')), -- water-badge → Water Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'normal-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'normal-badge')), -- normal-badge → Normal Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'ghost-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'ghost-badge')), -- ghost-badge → Ghost Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'psychic-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'psychic-badge')), -- psychic-badge → Psychic Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'ice-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'ice-badge'));

-- ice-badge → Ice Badge