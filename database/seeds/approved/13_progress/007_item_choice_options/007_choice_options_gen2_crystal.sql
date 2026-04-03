-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (crystal, VG 4)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 228)
    ((SELECT id FROM progress.items WHERE version_group_id = 4 AND game_id IS NULL AND slug = 'starter-choice'), 'chikorita', 'Chikorita', 152, 15200, 1),
    ((SELECT id FROM progress.items WHERE version_group_id = 4 AND game_id IS NULL AND slug = 'starter-choice'), 'cyndaquil', 'Cyndaquil', 155, 15500, 2),
    ((SELECT id FROM progress.items WHERE version_group_id = 4 AND game_id IS NULL AND slug = 'starter-choice'), 'totodile', 'Totodile', 158, 15800, 3);