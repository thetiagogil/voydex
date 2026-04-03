-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (swsh-ct, VG 20)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Steed Choice (item 1360)
    ((SELECT id FROM progress.items WHERE version_group_id = 20 AND game_id IS NULL AND slug = 'steed-choice'), 'glastrier', 'Glastrier', 896, 89600, 1),
    ((SELECT id FROM progress.items WHERE version_group_id = 20 AND game_id IS NULL AND slug = 'steed-choice'), 'spectrier', 'Spectrier', 897, 89700, 2),
    -- Regi Choice (item 1361)
    ((SELECT id FROM progress.items WHERE version_group_id = 20 AND game_id IS NULL AND slug = 'regi-choice'), 'regieleki', 'Regieleki', 894, 89400, 1),
    ((SELECT id FROM progress.items WHERE version_group_id = 20 AND game_id IS NULL AND slug = 'regi-choice'), 'regidrago', 'Regidrago', 895, 89500, 2);