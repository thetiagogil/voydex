-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (emerald, VG 6)
WITH
    seed_data (item_vg, item_game_id, item_slug, species_id, form_id) AS (
        VALUES
            (6, NULL::INTEGER, 'rayquaza', 384, 38400),
            (6, NULL, 'groudon', 383, 38300),
            (6, NULL, 'kyogre', 382, 38200),
            (6, NULL, 'regirock', 377, 37700),
            (6, NULL, 'regice', 378, 37800),
            (6, NULL, 'registeel', 379, 37900)
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
