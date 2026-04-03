-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (usum, VG 16)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (id, progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 724)
    (230, 724, 'rowlet', 'Rowlet', 722, 72200, 1),
    (231, 724, 'litten', 'Litten', 725, 72500, 2),
    (232, 724, 'popplio', 'Popplio', 728, 72800, 3);