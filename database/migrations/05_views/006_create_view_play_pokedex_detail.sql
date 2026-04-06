-- ============================================================================
-- View: views.play_pokedex_detail
-- Pokedex entries for a play with species/form info and seen/caught state.
-- Shows all pokedex entries for dexes associated with the play's version group.
-- ============================================================================
CREATE
OR REPLACE VIEW views.play_pokedex_detail AS
SELECT
    p.id AS play_id,
    p.user_id,
    d.id AS pokedex_id,
    d.slug AS pokedex_slug,
    d.name AS pokedex_name,
    d.pokedex_kind,
    de.id AS pokedex_entry_id,
    de.pokedex_number,
    de.species_id,
    sp.slug AS species_slug,
    sp.name AS species_name,
    sp.is_legendary,
    sp.is_mythical,
    de.form_id,
    pf.slug AS form_slug,
    pf.name AS form_name,
    pf.pokemondb_sprite_slug,
    COALESCE(pde.is_seen, FALSE) AS is_seen,
    COALESCE(pde.is_caught, FALSE) AS is_caught
FROM
    gameplay.plays p
    JOIN reference.games g ON p.game_id = g.id
    JOIN reference.pokedex d ON d.version_group_id = g.version_group_id
    JOIN reference.pokedex_entries de ON de.pokedex_id = d.id
    JOIN reference.pokemon_species sp ON de.species_id = sp.id
    JOIN reference.pokemon_forms pf ON de.form_id = pf.id
    LEFT JOIN gameplay.play_pokedex_entries pde ON pde.play_id = p.id
    AND pde.pokedex_entry_id = de.id
ORDER BY
    d.sort_order,
    de.pokedex_number;

COMMENT ON VIEW views.play_pokedex_detail IS 'Pokedex entries for a play with species/form info and seen/caught state. Shows entries for all dexes in the play''s base version group. Inherits RLS from gameplay.plays.';