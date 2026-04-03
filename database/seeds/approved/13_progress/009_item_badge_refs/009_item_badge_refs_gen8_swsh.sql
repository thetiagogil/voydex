-- ============================================================================
-- Table: progress.item_badge_refs
-- Scope: version-group-specific (swsh, VG 18)
-- ============================================================================
INSERT INTO
    progress.item_badge_refs (progress_item_id, badge_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'grass-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'grass-badge')), -- grass-badge → Grass Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'water-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'water-badge')), -- water-badge → Water Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'fire-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'fire-badge')), -- fire-badge → Fire Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id = 31 AND slug = 'fighting-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 18 AND game_id = 31 AND slug = 'fighting-badge')), -- fighting-badge → Fighting Badge (Sword)
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id = 32 AND slug = 'ghost-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 18 AND game_id = 32 AND slug = 'ghost-badge')), -- ghost-badge → Ghost Badge (Shield)
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'fairy-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'fairy-badge')), -- fairy-badge → Fairy Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id = 31 AND slug = 'rock-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 18 AND game_id = 31 AND slug = 'rock-badge')), -- rock-badge → Rock Badge (Sword)
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id = 32 AND slug = 'ice-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 18 AND game_id = 32 AND slug = 'ice-badge')), -- ice-badge → Ice Badge (Shield)
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'dark-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'dark-badge')), -- dark-badge → Dark Badge
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'dragon-badge'), (SELECT id FROM progress.badges WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'dragon-badge'));

-- dragon-badge → Dragon Badge