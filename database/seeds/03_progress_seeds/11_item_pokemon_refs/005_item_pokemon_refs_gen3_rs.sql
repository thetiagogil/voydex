-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (rs, VG 5)
WITH
    seed_data (item_vg, item_game_id, item_slug, species_id, form_id) AS (
        VALUES
            (5, 7::INTEGER, 'groudon', 383, 38300),
            (5, 8, 'kyogre', 382, 38200),
            (5, NULL, 'rayquaza', 384, 38400),
            (5, NULL, 'regirock', 377, 37700),
            (5, NULL, 'regice', 378, 37800),
            (5, NULL, 'registeel', 379, 37900)
    )
INSERT INTO
    progress.item_pokemon_refs (progress_item_id, species_id, form_id)
SELECT
    i.id,
    s.species_id,
    s.form_id
FROM
    seed_data s
    JOIN progress.items i ON i.version_group_id = s.item_vg
        AND i.game_id IS NOT DISTINCT FROM s.item_game_id
        AND i.slug = s.item_slug;
