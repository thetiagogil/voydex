-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (dp, VG 8)
-- ============================================================================
INSERT INTO
    progress.item_opponent_refs (progress_item_id, opponent_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'coal-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'roark')), -- coal-badge → Roark
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'forest-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'gardenia')), -- forest-badge → Gardenia
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'relic-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'fantina')), -- relic-badge → Fantina
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'cobble-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'maylene')), -- cobble-badge → Maylene
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'fen-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'crasher-wake')), -- fen-badge → Crasher Wake
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'mine-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'byron')), -- mine-badge → Byron
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'icicle-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'candice')), -- icicle-badge → Candice
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'beacon-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'volkner')), -- beacon-badge → Volkner
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'elite-four-aaron'), (SELECT id FROM progress.opponents WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'aaron')), -- elite-four-aaron → Aaron
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'elite-four-bertha'), (SELECT id FROM progress.opponents WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'bertha')), -- elite-four-bertha → Bertha
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'elite-four-flint'), (SELECT id FROM progress.opponents WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'flint')), -- elite-four-flint → Flint
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'elite-four-lucian'), (SELECT id FROM progress.opponents WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'lucian')), -- elite-four-lucian → Lucian
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'champion-cynthia'), (SELECT id FROM progress.opponents WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'cynthia'));

-- champion-cynthia → Cynthia