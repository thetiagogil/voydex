-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (xy, VG 13)
-- ============================================================================
INSERT INTO
    progress.item_opponent_refs (progress_item_id, opponent_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'bug-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'viola')), -- bug-badge → Viola
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'cliff-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'grant')), -- cliff-badge → Grant
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'rumble-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'korrina')), -- rumble-badge → Korrina
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'plant-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'ramos')), -- plant-badge → Ramos
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'voltage-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'clemont')), -- voltage-badge → Clemont
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'fairy-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'valerie')), -- fairy-badge → Valerie
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'psychic-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'olympia')), -- psychic-badge → Olympia
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'iceberg-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'wulfric')), -- iceberg-badge → Wulfric
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'elite-four-malva'), (SELECT id FROM progress.opponents WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'malva')), -- elite-four-malva → Malva
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'elite-four-siebold'), (SELECT id FROM progress.opponents WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'siebold')), -- elite-four-siebold → Siebold
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'elite-four-wikstrom'), (SELECT id FROM progress.opponents WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'wikstrom')), -- elite-four-wikstrom → Wikstrom
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'elite-four-drasna'), (SELECT id FROM progress.opponents WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'drasna')), -- elite-four-drasna → Drasna
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'champion-diantha'), (SELECT id FROM progress.opponents WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'diantha'));

-- champion-diantha → Diantha