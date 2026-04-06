-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (swsh, VG 18)
WITH
    seed_data (item_vg, item_game_id, item_slug, species_id, form_id) AS (
        VALUES
            (18, 31::INTEGER, 'zacian', 888, 88800),
            (18, 32, 'zamazenta', 889, 88900),
            (18, NULL, 'eternatus', 890, 89000)
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
