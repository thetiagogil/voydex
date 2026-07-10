-- ============================================================================
-- View: views.mainline_collection_used_identities
-- Normalized Pokémon identities used across current team and history.
-- ============================================================================
CREATE VIEW views.mainline_collection_used_identities WITH ( security_invoker = TRUE
) AS
SELECT
    mainline_plays.user_id,
    mainline_play_pokemon.play_id,
    'mainline_play_pokemon'::text AS source_kind,
    mainline_play_pokemon.id AS source_row_id,
    mainline_play_pokemon.species_id,
    pokemon_species.slug AS species_slug,
    pokemon_species.name AS species_name,
    pokemon_species.national_number,
    pokemon_species.evolution_family_id,
    mainline_play_pokemon.form_id,
    pokemon_forms.slug AS form_slug,
    pokemon_forms.name AS form_name,
    mainline_play_pokemon.created_at AS used_at
FROM
    gameplay.mainline_play_pokemon
    JOIN gameplay.mainline_plays ON mainline_plays.id = mainline_play_pokemon.play_id
    JOIN reference.pokemon_species ON pokemon_species.id = mainline_play_pokemon.species_id
    JOIN reference.pokemon_forms ON pokemon_forms.species_id = mainline_play_pokemon.species_id
        AND pokemon_forms.id = mainline_play_pokemon.form_id
    UNION ALL
    SELECT
        mainline_plays.user_id,
        mainline_play_event_pokemon_refs.play_id,
        'event_pokemon_ref'::text AS source_kind,
        mainline_play_event_pokemon_refs.id AS source_row_id,
        mainline_play_event_pokemon_refs.species_id,
        pokemon_species.slug AS species_slug,
        pokemon_species.name AS species_name,
        pokemon_species.national_number,
        pokemon_species.evolution_family_id,
        mainline_play_event_pokemon_refs.form_id,
        pokemon_forms.slug AS form_slug,
        pokemon_forms.name AS form_name,
        COALESCE(
            mainline_play_events.happened_at, mainline_play_events.created_at
) AS used_at
    FROM
        gameplay.mainline_play_event_pokemon_refs
    JOIN gameplay.mainline_play_events ON mainline_play_events.id = mainline_play_event_pokemon_refs.event_id
        AND mainline_play_events.play_id = mainline_play_event_pokemon_refs.play_id
    JOIN gameplay.mainline_plays ON mainline_plays.id = mainline_play_event_pokemon_refs.play_id
    JOIN reference.pokemon_species ON pokemon_species.id = mainline_play_event_pokemon_refs.species_id
    JOIN reference.pokemon_forms ON pokemon_forms.species_id = mainline_play_event_pokemon_refs.species_id
        AND pokemon_forms.id = mainline_play_event_pokemon_refs.form_id
    UNION ALL
    SELECT
        mainline_plays.user_id,
        mainline_play_event_team_snapshots.play_id,
        'team_snapshot'::text AS source_kind,
        mainline_play_event_team_snapshots.id AS source_row_id,
        mainline_play_event_team_snapshots.species_id,
        pokemon_species.slug AS species_slug,
        pokemon_species.name AS species_name,
        pokemon_species.national_number,
        pokemon_species.evolution_family_id,
        mainline_play_event_team_snapshots.form_id,
        pokemon_forms.slug AS form_slug,
        pokemon_forms.name AS form_name,
        COALESCE(
            mainline_play_events.happened_at, mainline_play_events.created_at
) AS used_at
    FROM
        gameplay.mainline_play_event_team_snapshots
    JOIN gameplay.mainline_play_events ON mainline_play_events.id = mainline_play_event_team_snapshots.event_id
        AND mainline_play_events.play_id = mainline_play_event_team_snapshots.play_id
    JOIN gameplay.mainline_plays ON mainline_plays.id = mainline_play_event_team_snapshots.play_id
    JOIN reference.pokemon_species ON pokemon_species.id = mainline_play_event_team_snapshots.species_id
    JOIN reference.pokemon_forms ON pokemon_forms.species_id = mainline_play_event_team_snapshots.species_id
        AND pokemon_forms.id = mainline_play_event_team_snapshots.form_id;

COMMENT ON VIEW views.mainline_collection_used_identities IS 'Pokémon identities used across current play Pokémon, event refs, and team snapshots. Uses security_invoker so gameplay RLS applies to the caller.';
