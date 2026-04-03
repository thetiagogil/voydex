-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (frlg, VG 7)
-- ============================================================================
INSERT INTO
    progress.item_opponent_refs (progress_item_id, opponent_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'boulder-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'brock')), -- boulder-badge → Brock
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'cascade-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'misty')), -- cascade-badge → Misty
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'thunder-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'lt-surge')), -- thunder-badge → Lt. Surge
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'rainbow-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'erika')), -- rainbow-badge → Erika
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'soul-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'koga')), -- soul-badge → Koga
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'marsh-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'sabrina')), -- marsh-badge → Sabrina
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'volcano-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'blaine')), -- volcano-badge → Blaine
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'earth-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'giovanni')), -- earth-badge → Giovanni
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'elite-four-lorelei'), (SELECT id FROM progress.opponents WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'lorelei')), -- elite-four-lorelei → Lorelei
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'elite-four-bruno'), (SELECT id FROM progress.opponents WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'bruno')), -- elite-four-bruno → Bruno
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'elite-four-agatha'), (SELECT id FROM progress.opponents WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'agatha')), -- elite-four-agatha → Agatha
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'elite-four-lance'), (SELECT id FROM progress.opponents WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'lance')), -- elite-four-lance → Lance
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'champion-blue'), (SELECT id FROM progress.opponents WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'blue'));

-- champion-blue → Blue