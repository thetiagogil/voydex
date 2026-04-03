-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (oras, VG 14)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (id, progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 1259)
    (300, 1259, 'treecko', 'Treecko', 252, 25200, 1),
    (301, 1259, 'torchic', 'Torchic', 255, 25500, 2),
    (302, 1259, 'mudkip', 'Mudkip', 258, 25800, 3);