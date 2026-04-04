-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (b2w2, VG 12)
WITH
    seed_data (item_vg, item_game_id, item_slug, species_id, form_id) AS (
        VALUES
            (12, 19::INTEGER, 'black-kyurem', 646, 64602),
            (12, 20, 'white-kyurem', 646, 64601),
            (12, NULL, 'cobalion', 638, 63800),
            (12, NULL, 'terrakion', 639, 63900),
            (12, NULL, 'virizion', 640, 64000),
            (12, NULL, 'heatran', 485, 48500),
            (12, NULL, 'cresselia', 488, 48800)
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
