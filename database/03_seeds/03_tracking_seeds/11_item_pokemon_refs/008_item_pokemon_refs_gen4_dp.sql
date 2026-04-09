-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_pokemon_refs
-- Scope: version-group-specific (dp, VG 8)
WITH
    seed_data (item_vg, item_game_id, item_slug, species_id, form_id) AS (
        VALUES
            (8, 12::INTEGER, 'dialga', 483, 48300),
            (8, 13, 'palkia', 484, 48400),
            (8, NULL, 'heatran', 485, 48500),
            (8, NULL, 'giratina', 487, 48700),
            (8, NULL, 'cresselia', 488, 48800)
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
