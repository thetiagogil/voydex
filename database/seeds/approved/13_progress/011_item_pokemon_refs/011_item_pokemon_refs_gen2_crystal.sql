-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (crystal, VG 4)
-- ============================================================================
INSERT INTO
    progress.item_pokemon_refs (progress_item_id, species_id, form_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 4 AND game_id IS NULL AND slug = 'suicune'), 245, 24500), -- suicune → Suicune
    ((SELECT id FROM progress.items WHERE version_group_id = 4 AND game_id IS NULL AND slug = 'ho-oh'), 250, 25000), -- ho-oh → Ho-Oh
    ((SELECT id FROM progress.items WHERE version_group_id = 4 AND game_id IS NULL AND slug = 'lugia'), 249, 24900), -- lugia → Lugia
    ((SELECT id FROM progress.items WHERE version_group_id = 4 AND game_id IS NULL AND slug = 'raikou'), 243, 24300), -- raikou → Raikou
    ((SELECT id FROM progress.items WHERE version_group_id = 4 AND game_id IS NULL AND slug = 'entei'), 244, 24400);

-- entei → Entei