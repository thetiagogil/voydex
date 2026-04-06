-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_pokemon_refs
-- Scope: version-group-specific (bdsp, VG 21)
WITH
    seed_data (item_vg, item_game_id, item_slug, species_id, form_id) AS (
        VALUES
            (21, 33::INTEGER, 'dialga', 483, 48300),
            (21, 34, 'palkia', 484, 48400),
            (21, NULL, 'heatran', 485, 48500),
            (21, NULL, 'giratina', 487, 48700),
            (21, NULL, 'regigigas', 486, 48600),
            (21, NULL, 'cresselia', 488, 48800)
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
