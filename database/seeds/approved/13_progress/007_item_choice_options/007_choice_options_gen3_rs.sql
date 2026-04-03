-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (rs, VG 5)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (id, progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 1090)
    (270, 1090, 'treecko', 'Treecko', 252, 25200, 1),
    (271, 1090, 'torchic', 'Torchic', 255, 25500, 2),
    (272, 1090, 'mudkip', 'Mudkip', 258, 25800, 3);