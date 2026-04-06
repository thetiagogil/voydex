-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_decision_options
-- Scope: version-group-specific (emerald, VG 6)
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
            (6, NULL::INTEGER, 'starter-choice', 'treecko', 'Treecko', 252, 25200, 1),
            (6, NULL, 'starter-choice', 'torchic', 'Torchic', 255, 25500, 2),
            (6, NULL, 'starter-choice', 'mudkip', 'Mudkip', 258, 25800, 3),
            (6, NULL, 'lati-choice', 'latias', 'Latias', 380, 38000, 1),
            (6, NULL, 'lati-choice', 'latios', 'Latios', 381, 38100, 2)
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
