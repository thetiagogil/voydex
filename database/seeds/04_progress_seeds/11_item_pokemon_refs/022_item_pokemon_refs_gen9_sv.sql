-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (sv, VG 23)
-- ============================================================================
WITH
    seed_data (item_vg, item_game_id, item_slug, species_id, form_id) AS (
        VALUES
            (23, 36::INTEGER, 'koraidon', 1007, 100700),
            (23, 37, 'miraidon', 1008, 100800)
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
