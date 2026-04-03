-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (swsh, VG 18)
-- ============================================================================
INSERT INTO
    progress.item_opponent_refs (progress_item_id, opponent_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'grass-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'milo')), -- grass-badge → Milo
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'water-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'nessa')), -- water-badge → Nessa
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'fire-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'kabu')), -- fire-badge → Kabu
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id = 31 AND slug = 'fighting-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 18 AND game_id = 31 AND slug = 'bea')), -- fighting-badge → Bea (Sword)
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id = 32 AND slug = 'ghost-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 18 AND game_id = 32 AND slug = 'allister')), -- ghost-badge → Allister (Shield)
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'fairy-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'opal')), -- fairy-badge → Opal
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id = 31 AND slug = 'rock-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 18 AND game_id = 31 AND slug = 'gordie')), -- rock-badge → Gordie (Sword)
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id = 32 AND slug = 'ice-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 18 AND game_id = 32 AND slug = 'melony')), -- ice-badge → Melony (Shield)
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'dark-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'piers')), -- dark-badge → Piers
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'dragon-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'raihan')), -- dragon-badge → Raihan
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'champion-leon'), (SELECT id FROM progress.opponents WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'leon'));

-- champion-leon → Leon