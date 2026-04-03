-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (bw, VG 11)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (id, progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 522)
    (200, 522, 'snivy', 'Snivy', 495, 49500, 1),
    (201, 522, 'tepig', 'Tepig', 498, 49800, 2),
    (202, 522, 'oshawott', 'Oshawott', 501, 50100, 3);