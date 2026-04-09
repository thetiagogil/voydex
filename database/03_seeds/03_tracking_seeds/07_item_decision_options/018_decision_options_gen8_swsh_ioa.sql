-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_decision_options
-- Scope: version-group-specific (swsh-ioa, VG 19)
-- Tower choice does not involve choosing a Pokémon species.
-- It determines which form Urshifu evolves into.
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
            (19, NULL::INTEGER, 'tower-choice', 'tower-of-darkness', 'Tower of Darkness (Single Strike)', 892, 89200, 1),
            (19, NULL, 'tower-choice', 'tower-of-waters', 'Tower of Waters (Rapid Strike)', 892, 89201, 2)
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
