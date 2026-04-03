-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (sm, VG 15)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 1293)
    ((SELECT id FROM progress.items WHERE version_group_id = 15 AND game_id IS NULL AND slug = 'starter-choice'), 'rowlet', 'Rowlet', 722, 72200, 1),
    ((SELECT id FROM progress.items WHERE version_group_id = 15 AND game_id IS NULL AND slug = 'starter-choice'), 'litten', 'Litten', 725, 72500, 2),
    ((SELECT id FROM progress.items WHERE version_group_id = 15 AND game_id IS NULL AND slug = 'starter-choice'), 'popplio', 'Popplio', 728, 72800, 3);