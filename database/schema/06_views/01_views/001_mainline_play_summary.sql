-- ============================================================================
-- View: views.mainline_play_summary
-- Compact play rows for libraries, dashboards, and navigation.
-- ============================================================================
CREATE VIEW views.mainline_play_summary WITH ( security_invoker = TRUE
) AS
SELECT
    mainline_plays.id AS play_id,
    mainline_plays.user_id,
    mainline_plays.name AS play_name,
    mainline_plays.trainer_name,
    mainline_plays.game_id,
    games.slug AS game_slug,
    games.name AS game_name,
    mainline_plays.version_group_id,
    version_groups.slug AS version_group_slug,
    version_groups.name AS version_group_name,
    games.generation_id,
    generations.slug AS generation_slug,
    generations.name AS generation_name,
    mainline_plays.status_id,
    mainline_play_statuses.slug AS status_slug,
    mainline_play_statuses.name AS status_name,
    mainline_plays.started_on,
    mainline_plays.completed_on,
    mainline_plays.playtime_minutes,
    mainline_plays.archived_at,
    mainline_plays.created_at,
    mainline_plays.updated_at,
    (
        SELECT
            COUNT(
                *
)
        FROM
            gameplay.mainline_play_pokemon
        WHERE
            mainline_play_pokemon.play_id = mainline_plays.id
            AND mainline_play_pokemon.roster_state_id = 1
) AS active_team_count,
    (
        SELECT
            COUNT(
                *
)
        FROM
            gameplay.mainline_play_pokemon
        WHERE
            mainline_play_pokemon.play_id = mainline_plays.id
            AND mainline_play_pokemon.roster_state_id = 2
) AS reserve_team_count,
    (
        SELECT
            COUNT(
                *
)
        FROM
            gameplay.mainline_play_pokemon
        WHERE
            mainline_play_pokemon.play_id = mainline_plays.id
            AND mainline_play_pokemon.roster_state_id IN (
                3, 4
)
) AS historical_pokemon_count,
    (
        SELECT
            COUNT(
                *
)
        FROM
            gameplay.mainline_play_milestone_progress
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_play_milestone_progress.milestone_id
        WHERE
            mainline_play_milestone_progress.play_id = mainline_plays.id
            AND (
                mainline_milestones.game_id IS NULL
                OR mainline_milestones.game_id = mainline_plays.game_id
)
            AND (
                mainline_milestones.version_group_id = mainline_plays.version_group_id
                OR EXISTS (
                    SELECT
                        1
                    FROM
                        gameplay.mainline_play_optional_content_scopes
                    WHERE
                        mainline_play_optional_content_scopes.play_id = mainline_plays.id
                        AND mainline_play_optional_content_scopes.version_group_id = mainline_milestones.version_group_id
)
)
) AS completed_milestone_count,
        (
            SELECT
                COUNT(
                    *
)
            FROM
                gameplay.mainline_play_collectible_entry_progress
                JOIN tracking.mainline_collectible_entries ON mainline_collectible_entries.id = mainline_play_collectible_entry_progress.collectible_entry_id
                JOIN tracking.mainline_collectibles ON mainline_collectibles.id = mainline_collectible_entries.collectible_id
            WHERE
                mainline_play_collectible_entry_progress.play_id = mainline_plays.id
                AND (
                    mainline_collectibles.game_id IS NULL
                    OR mainline_collectibles.game_id = mainline_plays.game_id
)
                AND (
                    mainline_collectibles.version_group_id = mainline_plays.version_group_id
                    OR EXISTS (
                        SELECT
                            1
                        FROM
                            gameplay.mainline_play_optional_content_scopes
                        WHERE
                            mainline_play_optional_content_scopes.play_id = mainline_plays.id
                            AND mainline_play_optional_content_scopes.version_group_id = mainline_collectibles.version_group_id
)
)
) AS collected_entry_count,
            (
                SELECT
                    COUNT(
                        *
)
                FROM
                    gameplay.mainline_play_pokedex_species_progress
                WHERE
                    mainline_play_pokedex_species_progress.play_id = mainline_plays.id
                    AND mainline_play_pokedex_species_progress.is_seen
                    AND COALESCE(
                        mainline_play_settings.include_pokedex_in_completion, TRUE
)
                    AND EXISTS (
                        SELECT
                            1
                        FROM
                            reference.pokedex_entries
                            JOIN reference.pokedex ON pokedex.id = pokedex_entries.pokedex_id
                        WHERE
                            pokedex_entries.species_id = mainline_play_pokedex_species_progress.species_id
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
                            AND (
                                pokedex.version_group_id = mainline_plays.version_group_id
                                OR EXISTS (
                                    SELECT
                                        1
                                    FROM
                                        gameplay.mainline_play_optional_content_scopes
                                    WHERE
                                        mainline_play_optional_content_scopes.play_id = mainline_plays.id
                                        AND mainline_play_optional_content_scopes.version_group_id = pokedex.version_group_id
)
)
)
) AS pokedex_seen_count,
                    (
                        SELECT
                            COUNT(
                                *
)
                        FROM
                            gameplay.mainline_play_pokedex_species_progress
                        WHERE
                            mainline_play_pokedex_species_progress.play_id = mainline_plays.id
                            AND mainline_play_pokedex_species_progress.is_caught
                            AND COALESCE(
                                mainline_play_settings.include_pokedex_in_completion, TRUE
)
                            AND EXISTS (
                                SELECT
                                    1
                                FROM
                                    reference.pokedex_entries
                                    JOIN reference.pokedex ON pokedex.id = pokedex_entries.pokedex_id
                                WHERE
                                    pokedex_entries.species_id = mainline_play_pokedex_species_progress.species_id
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
                                    AND (
                                        pokedex.version_group_id = mainline_plays.version_group_id
                                        OR EXISTS (
                                            SELECT
                                                1
                                            FROM
                                                gameplay.mainline_play_optional_content_scopes
                                            WHERE
                                                mainline_play_optional_content_scopes.play_id = mainline_plays.id
                                                AND mainline_play_optional_content_scopes.version_group_id = pokedex.version_group_id
)
)
)
) AS pokedex_caught_count,
                            (
                                SELECT
                                    COUNT(
                                        *
)
                                FROM
                                    gameplay.mainline_play_events
                                WHERE
                                    mainline_play_events.play_id = mainline_plays.id
) AS timeline_event_count
                        FROM
                            gameplay.mainline_plays
                        LEFT JOIN gameplay.mainline_play_settings ON mainline_play_settings.play_id = mainline_plays.id
                        JOIN gameplay.mainline_play_statuses ON mainline_play_statuses.id = mainline_plays.status_id
                        JOIN reference.games ON games.id = mainline_plays.game_id
                        JOIN reference.version_groups ON version_groups.id = mainline_plays.version_group_id
                        JOIN reference.generations ON generations.id = games.generation_id;

COMMENT ON VIEW views.mainline_play_summary IS 'Compact play summary rows. Uses security_invoker so gameplay RLS applies to the caller.';
