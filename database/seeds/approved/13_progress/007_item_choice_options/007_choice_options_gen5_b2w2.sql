-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (b2w2, VG 12)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (id, progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 1224)
    (295, 1224, 'snivy', 'Snivy', 495, 49500, 1),
    (296, 1224, 'tepig', 'Tepig', 498, 49800, 2),
    (297, 1224, 'oshawott', 'Oshawott', 501, 50100, 3);