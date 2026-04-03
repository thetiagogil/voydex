-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (emerald, VG 6)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (id, progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 321)
    (170, 321, 'treecko', 'Treecko', 252, 25200, 1),
    (171, 321, 'torchic', 'Torchic', 255, 25500, 2),
    (172, 321, 'mudkip', 'Mudkip', 258, 25800, 3),
    -- Lati Choice (item 322)
    (173, 322, 'latias', 'Latias', 380, 38000, 1),
    (174, 322, 'latios', 'Latios', 381, 38100, 2);