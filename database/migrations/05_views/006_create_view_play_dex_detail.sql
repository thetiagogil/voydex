-- ============================================================================
-- View: views.play_dex_detail
-- Dex entries for a play with species/form info and seen/caught state.
-- Shows all dex entries for dexes associated with the play's version group.
-- ============================================================================
CREATE
OR REPLACE VIEW views.play_dex_detail AS
SELECT
    p.id AS play_id,
    p.user_id,
    d.id AS dex_id,
    d.slug AS dex_slug,
    d.name AS dex_name,
    d.dex_kind,
    de.id AS dex_entry_id,
    de.dex_number,
    de.species_id,
    sp.slug AS species_slug,
    sp.name AS species_name,
    sp.is_legendary,
    sp.is_mythical,
    de.form_id,
    pf.slug AS form_slug,
    pf.name AS form_name,
    pf.sprite_url,
    COALESCE(pde.is_seen, FALSE) AS is_seen,
    COALESCE(pde.is_caught, FALSE) AS is_caught
FROM
    gameplay.plays p
    JOIN meta.games g ON p.game_id = g.id
    JOIN meta.dexes d ON d.version_group_id = g.version_group_id
    JOIN meta.dex_entries de ON de.dex_id = d.id
    JOIN meta.pokemon_species sp ON de.species_id = sp.id
    JOIN meta.pokemon_forms pf ON de.form_id = pf.id
    LEFT JOIN gameplay.play_dex_entries pde ON pde.play_id = p.id
    AND pde.dex_entry_id = de.id
ORDER BY
    d.sort_order,
    de.dex_number;

COMMENT ON VIEW views.play_dex_detail IS 'Dex entries for a play with species/form info and seen/caught state. Shows entries for all dexes in the play''s base version group. Inherits RLS from gameplay.plays.';