-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (sv, VG 23)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 930)
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'starter-choice'), 'sprigatito', 'Sprigatito', 906, 90600, 1),
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'starter-choice'), 'fuecoco', 'Fuecoco', 909, 90900, 2),
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'starter-choice'), 'quaxly', 'Quaxly', 912, 91200, 3);