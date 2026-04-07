-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_pokemon_refs
-- Scope: version-group-specific (hgss, VG 10)
WITH
    seed_data (item_vg, item_game_id, item_slug, species_id, form_id) AS (
        VALUES
            (10, 15::INTEGER, 'ho-oh', 250, 25000),
            (10, 16, 'lugia', 249, 24900),
            (10, NULL, 'suicune', 245, 24500),
            (10, NULL, 'raikou', 243, 24300),
            (10, NULL, 'entei', 244, 24400),
            (10, NULL, 'red-gyarados', 130, 13000)
    )
INSERT INTO
    tracking.item_pokemon_refs (tracking_item_id, species_id, form_id)
SELECT
    i.id,
    s.species_id,
    s.form_id
FROM
    seed_data s
    JOIN tracking.items i ON i.version_group_id = s.item_vg
        AND i.game_id IS NOT DISTINCT FROM s.item_game_id
        AND i.slug = s.item_slug;
