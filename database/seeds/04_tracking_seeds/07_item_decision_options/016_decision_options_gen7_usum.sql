-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_decision_options
-- Scope: version-group-specific (usum, VG 16)
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
            (16, NULL::INTEGER, 'starter-choice', 'rowlet', 'Rowlet', 722, 72200, 1),
            (16, NULL, 'starter-choice', 'litten', 'Litten', 725, 72500, 2),
            (16, NULL, 'starter-choice', 'popplio', 'Popplio', 728, 72800, 3)
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
