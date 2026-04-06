-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (swsh-ct, VG 20)
WITH
    seed_data (item_vg, item_game_id, item_slug, species_id, form_id) AS (
        VALUES
            (20, NULL::INTEGER, 'calyrex', 898, 89800),
            (20, NULL, 'regieleki-regidrago', 894, 89400),
            (20, NULL, 'regieleki-regidrago', 895, 89500),
            (20, NULL, 'galarian-articuno', 144, 14401),
            (20, NULL, 'galarian-zapdos', 145, 14501),
            (20, NULL, 'galarian-moltres', 146, 14601)
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
