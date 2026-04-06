-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (usum, VG 16)
WITH
    seed_data (item_vg, item_game_id, item_slug, species_id, form_id) AS (
        VALUES
            (16, 27::INTEGER, 'solgaleo', 791, 79100),
            (16, 28, 'lunala', 792, 79200),
            (16, NULL, 'necrozma', 800, 80000)
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
