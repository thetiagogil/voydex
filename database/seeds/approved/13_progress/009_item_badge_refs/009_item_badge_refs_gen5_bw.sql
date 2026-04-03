-- ============================================================================
-- Table: progress.item_badge_refs
-- Scope: version-group-specific (bw, VG 11)
-- ============================================================================
INSERT INTO
    progress.item_badge_refs (progress_item_id, badge_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'trio-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'trio-badge')), -- trio-badge → Trio Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'basic-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'basic-badge')), -- basic-badge → Basic Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'insect-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'insect-badge')), -- insect-badge → Insect Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'bolt-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'bolt-badge')), -- bolt-badge → Bolt Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'quake-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'quake-badge')), -- quake-badge → Quake Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'jet-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'jet-badge')), -- jet-badge → Jet Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'freeze-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'freeze-badge')), -- freeze-badge → Freeze Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'legend-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'legend-badge'));

-- legend-badge → Legend Badge