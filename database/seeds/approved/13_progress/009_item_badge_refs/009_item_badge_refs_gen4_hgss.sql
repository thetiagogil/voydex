-- ============================================================================
-- Table: progress.item_badge_refs
-- Scope: version-group-specific (hgss, VG 10)
-- ============================================================================
INSERT INTO
    progress.item_badge_refs (progress_item_id, badge_id)
VALUES
    -- Johto
    ((SELECT id FROM progress.items WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'zephyr-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'zephyr-badge')), -- zephyr-badge → Zephyr Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'hive-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'hive-badge')), -- hive-badge → Hive Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'plain-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'plain-badge')), -- plain-badge → Plain Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'fog-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'fog-badge')), -- fog-badge → Fog Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'storm-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'storm-badge')), -- storm-badge → Storm Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'mineral-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'mineral-badge')), -- mineral-badge → Mineral Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'glacier-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'glacier-badge')), -- glacier-badge → Glacier Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'rising-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'rising-badge')), -- rising-badge → Rising Badge
    -- Kanto
    ((SELECT id FROM progress.items WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'thunder-badge-kanto'), (SELECT id FROM progress.badges WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'thunder-badge-kanto')), -- thunder-badge-kanto → Thunder Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'marsh-badge-kanto'), (SELECT id FROM progress.badges WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'marsh-badge-kanto')), -- marsh-badge-kanto → Marsh Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'rainbow-badge-kanto'), (SELECT id FROM progress.badges WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'rainbow-badge-kanto')), -- rainbow-badge-kanto → Rainbow Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'soul-badge-kanto'), (SELECT id FROM progress.badges WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'soul-badge-kanto')), -- soul-badge-kanto → Soul Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'cascade-badge-kanto'), (SELECT id FROM progress.badges WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'cascade-badge-kanto')), -- cascade-badge-kanto → Cascade Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'volcano-badge-kanto'), (SELECT id FROM progress.badges WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'volcano-badge-kanto')), -- volcano-badge-kanto → Volcano Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'earth-badge-kanto'), (SELECT id FROM progress.badges WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'earth-badge-kanto')), -- earth-badge-kanto → Earth Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'boulder-badge-kanto'), (SELECT id FROM progress.badges WHERE version_group_id = 10 AND game_id IS NULL AND slug = 'boulder-badge-kanto'));

-- boulder-badge-kanto → Boulder Badge