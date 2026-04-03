-- ============================================================================
-- Table: progress.item_badge_refs
-- Scope: version-group-specific (xy, VG 13)
-- ============================================================================
INSERT INTO
    progress.item_badge_refs (progress_item_id, badge_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'bug-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'bug-badge')), -- bug-badge → Bug Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'cliff-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'cliff-badge')), -- cliff-badge → Cliff Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'rumble-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'rumble-badge')), -- rumble-badge → Rumble Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'plant-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'plant-badge')), -- plant-badge → Plant Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'voltage-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'voltage-badge')), -- voltage-badge → Voltage Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'fairy-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'fairy-badge')), -- fairy-badge → Fairy Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'psychic-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'psychic-badge')), -- psychic-badge → Psychic Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'iceberg-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'iceberg-badge'));

-- iceberg-badge → Iceberg Badge