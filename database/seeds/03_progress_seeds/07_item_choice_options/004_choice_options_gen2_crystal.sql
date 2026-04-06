-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (crystal, VG 4)
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
            (4, NULL::INTEGER, 'starter-choice', 'chikorita', 'Chikorita', 152, 15200, 1),
            (4, NULL, 'starter-choice', 'cyndaquil', 'Cyndaquil', 155, 15500, 2),
            (4, NULL, 'starter-choice', 'totodile', 'Totodile', 158, 15800, 3)
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
