-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_pokemon_refs
-- Scope: version-group-specific (platinum, VG 9)
WITH
    seed_data (item_vg, item_game_id, item_slug, species_id, form_id) AS (
        VALUES
            (9, NULL::INTEGER, 'giratina', 487, 48700),
            (9, NULL, 'dialga', 483, 48300),
            (9, NULL, 'palkia', 484, 48400),
            (9, NULL, 'heatran', 485, 48500),
            (9, NULL, 'regigigas', 486, 48600),
            (9, NULL, 'cresselia', 488, 48800)
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
