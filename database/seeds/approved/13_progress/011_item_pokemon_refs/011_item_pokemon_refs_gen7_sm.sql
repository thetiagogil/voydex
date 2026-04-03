-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (sm, VG 15)
-- ============================================================================
WITH
    seed_data (item_vg, item_game_id, item_slug, species_id, form_id) AS (
        VALUES
            (15, 25::INTEGER, 'solgaleo', 791, 79100),
            (15, 26, 'lunala', 792, 79200),
            (15, NULL, 'necrozma', 800, 80000),
            (15, NULL, 'tapu-koko', 785, 78500)
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
