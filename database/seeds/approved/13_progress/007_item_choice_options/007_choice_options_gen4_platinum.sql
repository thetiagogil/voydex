-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (platinum, VG 9)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (id, progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 421)
    (190, 421, 'turtwig', 'Turtwig', 387, 38700, 1),
    (191, 421, 'chimchar', 'Chimchar', 390, 39000, 2),
    (192, 421, 'piplup', 'Piplup', 393, 39300, 3);