-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (sm, VG 15)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (id, progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 1293)
    (305, 1293, 'rowlet', 'Rowlet', 722, 72200, 1),
    (306, 1293, 'litten', 'Litten', 725, 72500, 2),
    (307, 1293, 'popplio', 'Popplio', 728, 72800, 3);