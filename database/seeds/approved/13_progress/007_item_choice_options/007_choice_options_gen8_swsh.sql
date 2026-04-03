-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (swsh, VG 18)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (id, progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 816)
    (240, 816, 'grookey', 'Grookey', 810, 81000, 1),
    (241, 816, 'scorbunny', 'Scorbunny', 813, 81300, 2),
    (242, 816, 'sobble', 'Sobble', 816, 81600, 3);