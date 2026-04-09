-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_pokemon_refs
-- Scope: version-group-specific (oras, VG 14)
WITH
    seed_data (item_vg, item_game_id, item_slug, species_id, form_id) AS (
        VALUES
            (14, 23::INTEGER, 'groudon', 383, 38300),
            (14, 24, 'kyogre', 382, 38200),
            (14, NULL, 'rayquaza', 384, 38400),
            (14, NULL, 'deoxys', 386, 38600)
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
