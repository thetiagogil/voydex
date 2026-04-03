-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (bdsp, VG 21)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (id, progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 1391)
    (320, 1391, 'turtwig', 'Turtwig', 387, 38700, 1),
    (321, 1391, 'chimchar', 'Chimchar', 390, 39000, 2),
    (322, 1391, 'piplup', 'Piplup', 393, 39300, 3);