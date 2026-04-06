-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (bw, VG 11)
WITH
    seed_data (item_vg, item_game_id, item_slug, species_id, form_id) AS (
        VALUES
            (11, 17::INTEGER, 'reshiram', 643, 64300),
            (11, 18, 'zekrom', 644, 64400),
            (11, NULL, 'kyurem', 646, 64600),
            (11, NULL, 'cobalion', 638, 63800),
            (11, NULL, 'terrakion', 639, 63900),
            (11, NULL, 'virizion', 640, 64000)
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
