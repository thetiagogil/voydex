-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (swsh, VG 18)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 816)
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'starter-choice'), 'grookey', 'Grookey', 810, 81000, 1),
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'starter-choice'), 'scorbunny', 'Scorbunny', 813, 81300, 2),
    ((SELECT id FROM progress.items WHERE version_group_id = 18 AND game_id IS NULL AND slug = 'starter-choice'), 'sobble', 'Sobble', 816, 81600, 3);