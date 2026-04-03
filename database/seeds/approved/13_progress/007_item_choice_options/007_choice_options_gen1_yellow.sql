-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (yellow, VG 2)
-- ============================================================================
-- No starter choice in Yellow (Pikachu given). Fossils and Fighting Dojo remain.
INSERT INTO
    progress.item_choice_options (id, progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Fossil Choice (item 1021)
    (260, 1021, 'helix-fossil', 'Helix Fossil (Omanyte)', 138, 13800, 1),
    (261, 1021, 'dome-fossil', 'Dome Fossil (Kabuto)', 140, 14000, 2),
    -- Fighting Dojo Choice (item 1022)
    (262, 1022, 'hitmonlee', 'Hitmonlee', 106, 10600, 1),
    (263, 1022, 'hitmonchan', 'Hitmonchan', 107, 10700, 2);