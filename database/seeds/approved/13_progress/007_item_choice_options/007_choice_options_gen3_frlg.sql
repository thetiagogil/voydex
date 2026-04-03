-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (frlg, VG 7)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 1121)
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'starter-choice'), 'bulbasaur', 'Bulbasaur', 1, 100, 1),
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'starter-choice'), 'charmander', 'Charmander', 4, 400, 2),
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'starter-choice'), 'squirtle', 'Squirtle', 7, 700, 3),
    -- Fossil Choice (item 1122)
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'fossil-choice'), 'helix-fossil', 'Helix Fossil (Omanyte)', 138, 13800, 1),
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'fossil-choice'), 'dome-fossil', 'Dome Fossil (Kabuto)', 140, 14000, 2),
    -- Fighting Dojo Choice (item 1123)
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'fighting-dojo-choice'), 'hitmonlee', 'Hitmonlee', 106, 10600, 1),
    ((SELECT id FROM progress.items WHERE version_group_id = 7 AND game_id IS NULL AND slug = 'fighting-dojo-choice'), 'hitmonchan', 'Hitmonchan', 107, 10700, 2);