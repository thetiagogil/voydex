-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (sv, VG 23)
-- ============================================================================
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
            (23, NULL::INTEGER, 'starter-choice', 'sprigatito', 'Sprigatito', 906, 90600, 1),
            (23, NULL, 'starter-choice', 'fuecoco', 'Fuecoco', 909, 90900, 2),
            (23, NULL, 'starter-choice', 'quaxly', 'Quaxly', 912, 91200, 3)
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
