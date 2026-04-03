-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (oras, VG 14)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 1259)
    ((SELECT id FROM progress.items WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'starter-choice'), 'treecko', 'Treecko', 252, 25200, 1),
    ((SELECT id FROM progress.items WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'starter-choice'), 'torchic', 'Torchic', 255, 25500, 2),
    ((SELECT id FROM progress.items WHERE version_group_id = 14 AND game_id IS NULL AND slug = 'starter-choice'), 'mudkip', 'Mudkip', 258, 25800, 3);