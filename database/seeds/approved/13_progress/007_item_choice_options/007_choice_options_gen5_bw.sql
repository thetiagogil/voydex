-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (bw, VG 11)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 522)
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'starter-choice'), 'snivy', 'Snivy', 495, 49500, 1),
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'starter-choice'), 'tepig', 'Tepig', 498, 49800, 2),
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'starter-choice'), 'oshawott', 'Oshawott', 501, 50100, 3);