-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (rb, VG 1)
-- pokemon_species_id and pokemon_form_id link to meta tables.
-- form_id formula: species_id * 100 (default form).
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
            (1, NULL::INTEGER, 'starter-choice', 'bulbasaur', 'Bulbasaur', 1, 100, 1),
            (1, NULL, 'starter-choice', 'charmander', 'Charmander', 4, 400, 2),
            (1, NULL, 'starter-choice', 'squirtle', 'Squirtle', 7, 700, 3),
            (1, NULL, 'fossil-choice', 'helix-fossil', 'Helix Fossil (Omanyte)', 138, 13800, 1),
            (1, NULL, 'fossil-choice', 'dome-fossil', 'Dome Fossil (Kabuto)', 140, 14000, 2),
            (1, NULL, 'fighting-dojo-choice', 'hitmonlee', 'Hitmonlee', 106, 10600, 1),
            (1, NULL, 'fighting-dojo-choice', 'hitmonchan', 'Hitmonchan', 107, 10700, 2)
    )
INSERT INTO
    progress.item_choice_options (
        progress_item_id,
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
    JOIN progress.items i ON i.version_group_id = s.item_vg
        AND i.game_id IS NOT DISTINCT FROM s.item_game_id
        AND i.slug = s.item_slug;
