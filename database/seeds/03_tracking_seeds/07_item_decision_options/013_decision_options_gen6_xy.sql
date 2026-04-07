-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_decision_options
-- Scope: version-group-specific (xy, VG 13)
WITH
    seed_data (
        item_vg,
        item_game_id,
        item_slug,
        slug,
        name,
        pokemon_species_id,
        pokemon_form_id,
        sort_order
    ) AS (
        VALUES
            (13, NULL::INTEGER, 'starter-choice', 'chespin', 'Chespin', 650, 65000, 1),
            (13, NULL, 'starter-choice', 'fennekin', 'Fennekin', 653, 65300, 2),
            (13, NULL, 'starter-choice', 'froakie', 'Froakie', 656, 65600, 3),
            (13, NULL, 'kanto-starter-choice', 'bulbasaur', 'Bulbasaur', 1, 100, 1),
            (13, NULL, 'kanto-starter-choice', 'charmander', 'Charmander', 4, 400, 2),
            (13, NULL, 'kanto-starter-choice', 'squirtle', 'Squirtle', 7, 700, 3),
            (13, NULL, 'fossil-choice', 'jaw-fossil', 'Jaw Fossil (Tyrunt)', 696, 69600, 1),
            (13, NULL, 'fossil-choice', 'sail-fossil', 'Sail Fossil (Amaura)', 698, 69800, 2)
    )
INSERT INTO
    tracking.item_decision_options (
        tracking_item_id,
        slug,
        name,
        pokemon_species_id,
        pokemon_form_id,
        sort_order
    )
SELECT
    i.id,
    s.slug,
    s.name,
    s.pokemon_species_id,
    s.pokemon_form_id,
    s.sort_order
FROM
    seed_data s
    JOIN tracking.items i ON i.version_group_id = s.item_vg
        AND i.game_id IS NOT DISTINCT FROM s.item_game_id
        AND i.slug = s.item_slug;
