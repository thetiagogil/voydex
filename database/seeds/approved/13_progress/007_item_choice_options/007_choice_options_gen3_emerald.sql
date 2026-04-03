-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (emerald, VG 6)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 321)
    ((SELECT id FROM progress.items WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'starter-choice'), 'treecko', 'Treecko', 252, 25200, 1),
    ((SELECT id FROM progress.items WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'starter-choice'), 'torchic', 'Torchic', 255, 25500, 2),
    ((SELECT id FROM progress.items WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'starter-choice'), 'mudkip', 'Mudkip', 258, 25800, 3),
    -- Lati Choice (item 322)
    ((SELECT id FROM progress.items WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'lati-choice'), 'latias', 'Latias', 380, 38000, 1),
    ((SELECT id FROM progress.items WHERE version_group_id = 6 AND game_id IS NULL AND slug = 'lati-choice'), 'latios', 'Latios', 381, 38100, 2);