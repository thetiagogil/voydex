-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (xy, VG 13)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 619)
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'starter-choice'), 'chespin', 'Chespin', 650, 65000, 1),
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'starter-choice'), 'fennekin', 'Fennekin', 653, 65300, 2),
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'starter-choice'), 'froakie', 'Froakie', 656, 65600, 3),
    -- Kanto Starter Choice (item 620)
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'kanto-starter-choice'), 'bulbasaur', 'Bulbasaur', 1, 100, 1),
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'kanto-starter-choice'), 'charmander', 'Charmander', 4, 400, 2),
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'kanto-starter-choice'), 'squirtle', 'Squirtle', 7, 700, 3),
    -- Fossil Choice (item 621)
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'fossil-choice'), 'jaw-fossil', 'Jaw Fossil (Tyrunt)', 696, 69600, 1),
    ((SELECT id FROM progress.items WHERE version_group_id = 13 AND game_id IS NULL AND slug = 'fossil-choice'), 'sail-fossil', 'Sail Fossil (Amaura)', 698, 69800, 2);