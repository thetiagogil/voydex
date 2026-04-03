-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (yellow, VG 2)
-- ============================================================================
-- No starter choice in Yellow (Pikachu given). Fossils and Fighting Dojo remain.
INSERT INTO
    progress.item_choice_options (progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Fossil Choice (item 1021)
    ((SELECT id FROM progress.items WHERE version_group_id = 2 AND game_id IS NULL AND slug = 'fossil-choice'), 'helix-fossil', 'Helix Fossil (Omanyte)', 138, 13800, 1),
    ((SELECT id FROM progress.items WHERE version_group_id = 2 AND game_id IS NULL AND slug = 'fossil-choice'), 'dome-fossil', 'Dome Fossil (Kabuto)', 140, 14000, 2),
    -- Fighting Dojo Choice (item 1022)
    ((SELECT id FROM progress.items WHERE version_group_id = 2 AND game_id IS NULL AND slug = 'fighting-dojo-choice'), 'hitmonlee', 'Hitmonlee', 106, 10600, 1),
    ((SELECT id FROM progress.items WHERE version_group_id = 2 AND game_id IS NULL AND slug = 'fighting-dojo-choice'), 'hitmonchan', 'Hitmonchan', 107, 10700, 2);