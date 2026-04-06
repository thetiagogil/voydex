-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (sv-tm, VG 24)
WITH
    seed_data (item_vg, item_game_id, item_slug, species_id, form_id) AS (
        VALUES
            (24, NULL::INTEGER, 'ogerpon', 1017, 101700),
            (24, NULL, 'bloodmoon-ursaluna', 901, 90101)
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
