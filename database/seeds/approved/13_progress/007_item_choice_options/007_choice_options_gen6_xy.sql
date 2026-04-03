-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (xy, VG 13)
-- ============================================================================
INSERT INTO
    progress.item_choice_options (id, progress_item_id, slug, name, pokemon_species_id, pokemon_form_id, sort_order)
VALUES
    -- Starter Choice (item 619)
    (210, 619, 'chespin', 'Chespin', 650, 65000, 1),
    (211, 619, 'fennekin', 'Fennekin', 653, 65300, 2),
    (212, 619, 'froakie', 'Froakie', 656, 65600, 3),
    -- Kanto Starter Choice (item 620)
    (213, 620, 'bulbasaur', 'Bulbasaur', 1, 100, 1),
    (214, 620, 'charmander', 'Charmander', 4, 400, 2),
    (215, 620, 'squirtle', 'Squirtle', 7, 700, 3),
    -- Fossil Choice (item 621)
    (216, 621, 'jaw-fossil', 'Jaw Fossil (Tyrunt)', 696, 69600, 1),
    (217, 621, 'sail-fossil', 'Sail Fossil (Amaura)', 698, 69800, 2);