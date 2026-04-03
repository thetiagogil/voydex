-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (frlg, VG 7)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (id, progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 1121)
    (275, 1121, 'bulbasaur', 'Bulbasaur', 1, 100, 1),
    (276, 1121, 'charmander', 'Charmander', 4, 400, 2),
    (277, 1121, 'squirtle', 'Squirtle', 7, 700, 3),
    -- Fossil Choice (item 1122)
    (278, 1122, 'helix-fossil', 'Helix Fossil (Omanyte)', 138, 13800, 1),
    (279, 1122, 'dome-fossil', 'Dome Fossil (Kabuto)', 140, 14000, 2),
    -- Fighting Dojo Choice (item 1123)
    (280, 1123, 'hitmonlee', 'Hitmonlee', 106, 10600, 1),
    (281, 1123, 'hitmonchan', 'Hitmonchan', 107, 10700, 2);