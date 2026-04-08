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
    COALESCE(pde.is_caught, FALSE) AS is_caught,
    d.version_group_id,
    vg.name AS version_group_name,
    vg.parent_version_group_id
FROM
    gameplay.plays p
    JOIN reference.pokedex d ON d.version_group_id IN (
        SELECT
            gameplay.get_effective_version_group_ids (p.id)
    )
    JOIN reference.pokedex_entries de ON de.pokedex_id = d.id
    JOIN reference.pokemon_species sp ON de.species_id = sp.id
    JOIN reference.pokemon_forms pf ON de.form_id = pf.id
    JOIN reference.version_groups vg ON d.version_group_id = vg.id
    LEFT JOIN gameplay.play_pokedex_entries pde ON pde.play_id = p.id
    AND pde.pokedex_entry_id = de.id
ORDER BY
    vg.id,
    d.sort_order,
    de.pokedex_number;

COMMENT ON VIEW views.play_pokedex_detail IS 'Pokedex entries for a play with species/form info and seen/caught state. DLC-aware via get_effective_version_group_ids(). Inherits RLS from gameplay.plays.';