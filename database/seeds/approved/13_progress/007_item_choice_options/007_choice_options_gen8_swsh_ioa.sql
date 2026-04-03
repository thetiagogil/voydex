-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (swsh-ioa, VG 19)
-- ============================================================================
-- Tower choice does not involve choosing a Pokémon species.
-- It determines which form Urshifu evolves into.
INSERT INTO
    progress.item_choice_options (progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Tower Choice (item 1336)
    ((SELECT id FROM progress.items WHERE version_group_id = 19 AND game_id IS NULL AND slug = 'tower-choice'), 'tower-of-darkness', 'Tower of Darkness (Single Strike)', 892, 89200, 1),
    ((SELECT id FROM progress.items WHERE version_group_id = 19 AND game_id IS NULL AND slug = 'tower-choice'), 'tower-of-waters', 'Tower of Waters (Rapid Strike)', 892, 89201, 2);