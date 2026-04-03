-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (rb, VG 1)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- pokemon_species_id and pokemon_form_id link to meta tables.
-- form_id formula: species_id * 100 (default form).
INSERT INTO
    progress.item_choice_options (id, progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 120)
    (100, 120, 'bulbasaur', 'Bulbasaur', 1, 100, 1),
    (101, 120, 'charmander', 'Charmander', 4, 400, 2),
    (102, 120, 'squirtle', 'Squirtle', 7, 700, 3),
    -- Fossil Choice (item 121)
    (103, 121, 'helix-fossil', 'Helix Fossil (Omanyte)', 138, 13800, 1),
    (104, 121, 'dome-fossil', 'Dome Fossil (Kabuto)', 140, 14000, 2),
    -- Fighting Dojo Choice (item 122)
    (105, 122, 'hitmonlee', 'Hitmonlee', 106, 10600, 1),
    (106, 122, 'hitmonchan', 'Hitmonchan', 107, 10700, 2);