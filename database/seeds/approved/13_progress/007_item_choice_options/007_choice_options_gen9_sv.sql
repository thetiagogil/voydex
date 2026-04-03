-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (sv, VG 23)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (id, progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 930)
    (250, 930, 'sprigatito', 'Sprigatito', 906, 90600, 1),
    (251, 930, 'fuecoco', 'Fuecoco', 909, 90900, 2),
    (252, 930, 'quaxly', 'Quaxly', 912, 91200, 3);