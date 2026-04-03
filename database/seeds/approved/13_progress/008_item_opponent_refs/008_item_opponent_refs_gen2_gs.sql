-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (gs, VG 3)
-- ============================================================================
INSERT INTO
    progress.item_opponent_refs (progress_item_id, opponent_id)
VALUES
    -- Johto gyms
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'zephyr-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'falkner')), -- zephyr-badge → Falkner
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'hive-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'bugsy')), -- hive-badge → Bugsy
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'plain-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'whitney')), -- plain-badge → Whitney
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'fog-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'morty')), -- fog-badge → Morty
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'storm-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'chuck')), -- storm-badge → Chuck
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'mineral-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'jasmine')), -- mineral-badge → Jasmine
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'glacier-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'pryce')), -- glacier-badge → Pryce
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'rising-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'clair')), -- rising-badge → Clair
    -- E4 + Champion
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'elite-four-will'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'will')), -- elite-four-will → Will
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'elite-four-koga'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'koga')), -- elite-four-koga → Koga
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'elite-four-bruno'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'bruno')), -- elite-four-bruno → Bruno
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'elite-four-karen'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'karen')), -- elite-four-karen → Karen
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'champion-lance'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'lance')), -- champion-lance → Lance
    -- Kanto gyms (post-game)
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'thunder-badge-kanto'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'lt-surge-kanto')), -- thunder-badge-kanto → Lt. Surge
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'marsh-badge-kanto'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'sabrina-kanto')), -- marsh-badge-kanto → Sabrina
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'rainbow-badge-kanto'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'erika-kanto')), -- rainbow-badge-kanto → Erika
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'soul-badge-kanto'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'janine')), -- soul-badge-kanto → Janine
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'cascade-badge-kanto'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'misty-kanto')), -- cascade-badge-kanto → Misty
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'volcano-badge-kanto'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'blaine-kanto')), -- volcano-badge-kanto → Blaine
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'earth-badge-kanto'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'blue-kanto')), -- earth-badge-kanto → Blue
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'boulder-badge-kanto'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'brock-kanto')), -- boulder-badge-kanto → Brock
    ((SELECT id FROM progress.items WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'red'), (SELECT id FROM progress.opponents WHERE version_group_id = 3 AND game_id IS NULL AND slug = 'red'));

-- red → Red