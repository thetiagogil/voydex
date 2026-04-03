-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (hgss, VG 10)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (id, progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 1189)
    (290, 1189, 'chikorita', 'Chikorita', 152, 15200, 1),
    (291, 1189, 'cyndaquil', 'Cyndaquil', 155, 15500, 2),
    (292, 1189, 'totodile', 'Totodile', 158, 15800, 3);