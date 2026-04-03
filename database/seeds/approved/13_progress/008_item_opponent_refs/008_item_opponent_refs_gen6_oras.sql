-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (oras, VG 14)
-- ============================================================================
INSERT INTO
    progress.item_opponent_refs (progress_item_id, opponent_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'stone-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'roxanne')), -- stone-badge → Roxanne
    ((SELECT id FROM progress.items WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'knuckle-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'brawly')), -- knuckle-badge → Brawly
    ((SELECT id FROM progress.items WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'dynamo-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'wattson')), -- dynamo-badge → Wattson
    ((SELECT id FROM progress.items WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'heat-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'flannery')), -- heat-badge → Flannery
    ((SELECT id FROM progress.items WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'balance-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'norman')), -- balance-badge → Norman
    ((SELECT id FROM progress.items WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'feather-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'winona')), -- feather-badge → Winona
    ((SELECT id FROM progress.items WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'mind-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'tate-and-liza')), -- mind-badge → Tate & Liza
    ((SELECT id FROM progress.items WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'rain-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'wallace')), -- rain-badge → Wallace
    ((SELECT id FROM progress.items WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'elite-four-sidney'), (SELECT id FROM progress.opponents WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'sidney')), -- elite-four-sidney → Sidney
    ((SELECT id FROM progress.items WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'elite-four-phoebe'), (SELECT id FROM progress.opponents WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'phoebe')), -- elite-four-phoebe → Phoebe
    ((SELECT id FROM progress.items WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'elite-four-glacia'), (SELECT id FROM progress.opponents WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'glacia')), -- elite-four-glacia → Glacia
    ((SELECT id FROM progress.items WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'elite-four-drake'), (SELECT id FROM progress.opponents WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'drake')), -- elite-four-drake → Drake
    ((SELECT id FROM progress.items WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'champion-steven'), (SELECT id FROM progress.opponents WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'steven'));

-- champion-steven → Steven