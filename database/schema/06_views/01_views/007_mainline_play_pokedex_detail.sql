-- ============================================================================
-- View: views.mainline_play_pokedex_detail
-- Species-level Pokedex entries available to each play.
-- ============================================================================
CREATE VIEW views.mainline_play_pokedex_detail WITH ( security_invoker = TRUE
) AS
SELECT
    mainline_plays.id AS play_id,
    mainline_plays.user_id,
    pokedex.id AS pokedex_id,
    pokedex.slug AS pokedex_slug,
    pokedex.name AS pokedex_name,
    pokedex.pokedex_kind,
    pokedex.is_completion_relevant,
    (
        pokedex.pokedex_kind IN (
            'national', 'special'
)
) AS is_optional_pokedex_scope,
    COALESCE(
        mainline_play_settings.pokedex_mode, 'caught_and_seen'
) AS pokedex_mode,
    pokedex_entries.pokedex_number,
    pokedex_entries.is_source_required_for_completion,
    (
        COALESCE(
            mainline_play_settings.include_pokedex_in_completion, TRUE
)
        AND pokedex.is_completion_relevant
        AND (
            pokedex.pokedex_kind NOT IN (
                'national', 'special'
)
            OR COALESCE(
                mainline_play_settings.include_optional_pokedexes_in_completion, FALSE
)
)
        AND (
            pokedex_entries.is_source_required_for_completion
            OR COALESCE(
                mainline_play_settings.include_optional_pokedex_entries_in_completion, TRUE
)
)
) AS is_included_in_completion,
    pokedex_entries.species_id,
    pokemon_species.slug AS species_slug,
    pokemon_species.name AS species_name,
    pokemon_species.national_number,
    pokemon_species.is_mythical,
    pokedex_entries.display_form_id,
    display_forms.slug AS display_form_slug,
    display_forms.name AS display_form_name,
    COALESCE(
        mainline_play_pokedex_species_progress.is_seen, FALSE
) AS is_seen,
    COALESCE(
        mainline_play_pokedex_species_progress.is_caught, FALSE
) AS is_caught,
    mainline_play_pokedex_species_progress.seen_at,
    mainline_play_pokedex_species_progress.caught_at
FROM
    gameplay.mainline_plays
    LEFT JOIN gameplay.mainline_play_settings ON mainline_play_settings.play_id = mainline_plays.id
    JOIN reference.pokedex ON pokedex.version_group_id = mainline_plays.version_group_id
        OR EXISTS (
            SELECT
                1
            FROM
                gameplay.mainline_play_optional_content_scopes
        WHERE
            mainline_play_optional_content_scopes.play_id = mainline_plays.id
            AND mainline_play_optional_content_scopes.version_group_id = pokedex.version_group_id)
    JOIN reference.pokedex_entries ON pokedex_entries.pokedex_id = pokedex.id
    JOIN reference.pokemon_species ON pokemon_species.id = pokedex_entries.species_id
    LEFT JOIN reference.pokemon_forms AS display_forms ON display_forms.species_id = pokedex_entries.species_id
        AND display_forms.id = pokedex_entries.display_form_id
    LEFT JOIN gameplay.mainline_play_pokedex_species_progress ON mainline_play_pokedex_species_progress.play_id = mainline_plays.id
        AND mainline_play_pokedex_species_progress.species_id = pokedex_entries.species_id;

COMMENT ON VIEW views.mainline_play_pokedex_detail IS 'Available Pokedex entries for each play with species-level progress. Uses security_invoker so gameplay RLS applies to the caller.';
