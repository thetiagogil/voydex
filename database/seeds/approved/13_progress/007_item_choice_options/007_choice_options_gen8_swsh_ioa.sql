-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (swsh-ioa, VG 19)
-- ============================================================================
-- Tower choice does not involve choosing a Pokémon species.
-- It determines which form Urshifu evolves into.
INSERT INTO
    progress.item_choice_options (id, progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Tower Choice (item 1336)
    (310, 1336, 'tower-of-darkness', 'Tower of Darkness (Single Strike)', 892, 89200, 1),
    (311, 1336, 'tower-of-waters', 'Tower of Waters (Rapid Strike)', 892, 89201, 2);