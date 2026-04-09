-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_decision_options
-- Scope: version-group-specific (swsh-ct, VG 20)
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
            (20, NULL::INTEGER, 'steed-choice', 'glastrier', 'Glastrier', 896, 89600, 1),
            (20, NULL, 'steed-choice', 'spectrier', 'Spectrier', 897, 89700, 2),
            (20, NULL, 'regi-choice', 'regieleki', 'Regieleki', 894, 89400, 1),
            (20, NULL, 'regi-choice', 'regidrago', 'Regidrago', 895, 89500, 2)
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
