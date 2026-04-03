-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (dp, VG 8)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 1149)
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'starter-choice'), 'turtwig', 'Turtwig', 387, 38700, 1),
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'starter-choice'), 'chimchar', 'Chimchar', 390, 39000, 2),
    ((SELECT id FROM progress.items WHERE version_group_id = 8 AND game_id IS NULL AND slug = 'starter-choice'), 'piplup', 'Piplup', 393, 39300, 3);