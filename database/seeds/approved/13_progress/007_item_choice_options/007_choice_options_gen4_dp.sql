-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (dp, VG 8)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (id, progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 1149)
    (285, 1149, 'turtwig', 'Turtwig', 387, 38700, 1),
    (286, 1149, 'chimchar', 'Chimchar', 390, 39000, 2),
    (287, 1149, 'piplup', 'Piplup', 393, 39300, 3);