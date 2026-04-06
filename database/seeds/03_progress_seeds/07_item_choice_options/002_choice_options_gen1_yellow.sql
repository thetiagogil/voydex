-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_choice_options
-- Scope: version-group-specific (yellow, VG 2)
-- No starter choice in Yellow (Pikachu given). Fossils and Fighting Dojo remain.
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
            (2, NULL::INTEGER, 'fossil-choice', 'helix-fossil', 'Helix Fossil (Omanyte)', 138, 13800, 1),
            (2, NULL, 'fossil-choice', 'dome-fossil', 'Dome Fossil (Kabuto)', 140, 14000, 2),
            (2, NULL, 'fighting-dojo-choice', 'hitmonlee', 'Hitmonlee', 106, 10600, 1),
            (2, NULL, 'fighting-dojo-choice', 'hitmonchan', 'Hitmonchan', 107, 10700, 2)
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
