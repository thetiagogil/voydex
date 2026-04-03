-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (crystal, VG 4)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (id, progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 228)
    (150, 228, 'chikorita', 'Chikorita', 152, 15200, 1),
    (151, 228, 'cyndaquil', 'Cyndaquil', 155, 15500, 2),
    (152, 228, 'totodile', 'Totodile', 158, 15800, 3);