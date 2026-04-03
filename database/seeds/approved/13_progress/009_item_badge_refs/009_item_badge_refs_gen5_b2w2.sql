-- ============================================================================
-- Table: progress.item_badge_refs
-- Scope: version-group-specific (b2w2, VG 12)
-- ============================================================================
INSERT INTO
    progress.item_badge_refs (progress_item_id, badge_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'basic-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'basic-badge')), -- basic-badge → Basic Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'toxic-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'toxic-badge')), -- toxic-badge → Toxic Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'insect-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'insect-badge')), -- insect-badge → Insect Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'bolt-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'bolt-badge')), -- bolt-badge → Bolt Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'quake-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'quake-badge')), -- quake-badge → Quake Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'jet-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'jet-badge')), -- jet-badge → Jet Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'legend-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'legend-badge')), -- legend-badge → Legend Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'wave-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 12 AND game_id IS NULL AND slug = 'wave-badge'));

-- wave-badge → Wave Badge