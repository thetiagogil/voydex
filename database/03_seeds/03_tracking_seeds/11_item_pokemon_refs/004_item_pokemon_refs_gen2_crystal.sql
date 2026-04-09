-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_pokemon_refs
-- Scope: version-group-specific (crystal, VG 4)
WITH
    seed_data (item_vg, item_game_id, item_slug, species_id, form_id) AS (
        VALUES
            (4, NULL::INTEGER, 'suicune', 245, 24500),
            (4, NULL, 'ho-oh', 250, 25000),
            (4, NULL, 'lugia', 249, 24900),
            (4, NULL, 'raikou', 243, 24300),
            (4, NULL, 'entei', 244, 24400)
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
