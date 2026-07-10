-- ============================================================================
-- View: views.mainline_play_completion_summary
-- Derived completion denominators and progress counts per play.
-- ============================================================================
CREATE VIEW views.mainline_play_completion_summary WITH ( security_invoker = TRUE
) AS
WITH play_settings AS (
    SELECT
        mainline_plays.id AS play_id,
        mainline_plays.user_id,
        mainline_plays.game_id,
        mainline_plays.version_group_id,
        COALESCE(mainline_play_settings.include_pokedex_in_completion, TRUE) AS include_pokedex_in_completion,
        COALESCE(mainline_play_settings.include_collectibles_in_completion, TRUE) AS include_collectibles_in_completion,
        COALESCE(mainline_play_settings.include_optional_pokedexes_in_completion, FALSE) AS include_optional_pokedexes_in_completion,
        COALESCE(mainline_play_settings.include_optional_pokedex_entries_in_completion, TRUE) AS include_optional_pokedex_entries_in_completion
    FROM
        gameplay.mainline_plays
        LEFT JOIN gameplay.mainline_play_settings ON mainline_play_settings.play_id = mainline_plays.id
),
play_scopes AS (
    SELECT
        play_settings.play_id,
        play_settings.game_id,
        play_settings.version_group_id
    FROM
        play_settings
UNION ALL
SELECT
    mainline_play_optional_content_scopes.play_id,
    mainline_play_optional_content_scopes.game_id,
    mainline_play_optional_content_scopes.version_group_id
FROM
    gameplay.mainline_play_optional_content_scopes
),
eligible_milestones AS (
    SELECT DISTINCT
        play_scopes.play_id,
        mainline_milestones.id AS milestone_id
    FROM
        play_scopes
        JOIN tracking.mainline_milestones ON mainline_milestones.version_group_id = play_scopes.version_group_id
            AND (mainline_milestones.game_id IS NULL
                OR mainline_milestones.game_id = play_scopes.game_id)
    WHERE
        mainline_milestones.is_required_for_completion
),
milestone_counts AS (
    SELECT
        eligible_milestones.play_id,
        COUNT(*) AS required_milestone_count,
        COUNT(mainline_play_milestone_progress.milestone_id) AS completed_required_milestone_count
    FROM
        eligible_milestones
        LEFT JOIN gameplay.mainline_play_milestone_progress ON mainline_play_milestone_progress.play_id = eligible_milestones.play_id
            AND mainline_play_milestone_progress.milestone_id = eligible_milestones.milestone_id
    GROUP BY
        eligible_milestones.play_id
),
eligible_collectible_entries AS (
    SELECT DISTINCT
        play_settings.play_id,
        mainline_collectible_entries.id AS collectible_entry_id
    FROM
        play_settings
        JOIN play_scopes ON play_scopes.play_id = play_settings.play_id
        JOIN tracking.mainline_collectibles ON mainline_collectibles.version_group_id = play_scopes.version_group_id
            AND (mainline_collectibles.game_id IS NULL
                OR mainline_collectibles.game_id = play_scopes.game_id)
        JOIN tracking.mainline_collectible_entries ON mainline_collectible_entries.collectible_id = mainline_collectibles.id
    WHERE
        play_settings.include_collectibles_in_completion
        AND mainline_collectibles.is_required_for_completion
),
collectible_counts AS (
    SELECT
        eligible_collectible_entries.play_id,
        COUNT(*) AS required_collectible_entry_count,
        COUNT(mainline_play_collectible_entry_progress.collectible_entry_id) AS collected_required_collectible_entry_count
    FROM
        eligible_collectible_entries
        LEFT JOIN gameplay.mainline_play_collectible_entry_progress ON mainline_play_collectible_entry_progress.play_id = eligible_collectible_entries.play_id
            AND mainline_play_collectible_entry_progress.collectible_entry_id = eligible_collectible_entries.collectible_entry_id
    GROUP BY
        eligible_collectible_entries.play_id
),
eligible_pokedex_species AS (
    SELECT DISTINCT
        play_settings.play_id,
        pokedex_entries.species_id
    FROM
        play_settings
        JOIN play_scopes ON play_scopes.play_id = play_settings.play_id
        JOIN reference.pokedex ON pokedex.version_group_id = play_scopes.version_group_id
        JOIN reference.pokedex_entries ON pokedex_entries.pokedex_id = pokedex.id
    WHERE
        play_settings.include_pokedex_in_completion
        AND pokedex.is_completion_relevant
        AND (pokedex.pokedex_kind NOT IN ('national', 'special')
            OR play_settings.include_optional_pokedexes_in_completion)
        AND (pokedex_entries.is_source_required_for_completion
            OR play_settings.include_optional_pokedex_entries_in_completion)
),
pokedex_counts AS (
    SELECT
        eligible_pokedex_species.play_id,
        COUNT(*) AS required_pokedex_species_count,
        COUNT(mainline_play_pokedex_species_progress.species_id) FILTER (WHERE mainline_play_pokedex_species_progress.is_seen) AS seen_required_pokedex_species_count,
        COUNT(mainline_play_pokedex_species_progress.species_id) FILTER (WHERE mainline_play_pokedex_species_progress.is_caught) AS caught_required_pokedex_species_count
    FROM
        eligible_pokedex_species
        LEFT JOIN gameplay.mainline_play_pokedex_species_progress ON mainline_play_pokedex_species_progress.play_id = eligible_pokedex_species.play_id
            AND mainline_play_pokedex_species_progress.species_id = eligible_pokedex_species.species_id
    GROUP BY
        eligible_pokedex_species.play_id
),
completion_counts AS (
    SELECT
        play_settings.play_id,
        play_settings.user_id,
        COALESCE(milestone_counts.required_milestone_count, 0) AS required_milestone_count,
        COALESCE(milestone_counts.completed_required_milestone_count, 0) AS completed_required_milestone_count,
        COALESCE(collectible_counts.required_collectible_entry_count, 0) AS required_collectible_entry_count,
        COALESCE(collectible_counts.collected_required_collectible_entry_count, 0) AS collected_required_collectible_entry_count,
        COALESCE(pokedex_counts.required_pokedex_species_count, 0) AS required_pokedex_species_count,
        COALESCE(pokedex_counts.seen_required_pokedex_species_count, 0) AS seen_required_pokedex_species_count,
        COALESCE(pokedex_counts.caught_required_pokedex_species_count, 0) AS caught_required_pokedex_species_count
    FROM
        play_settings
        LEFT JOIN milestone_counts ON milestone_counts.play_id = play_settings.play_id
        LEFT JOIN collectible_counts ON collectible_counts.play_id = play_settings.play_id
        LEFT JOIN pokedex_counts ON pokedex_counts.play_id = play_settings.play_id
),
completion_totals AS (
    SELECT
        completion_counts.*,
        (completion_counts.required_milestone_count + completion_counts.required_collectible_entry_count + completion_counts.required_pokedex_species_count) AS total_completion_unit_count,
        (completion_counts.completed_required_milestone_count + completion_counts.collected_required_collectible_entry_count + completion_counts.caught_required_pokedex_species_count) AS completed_completion_unit_count
    FROM
        completion_counts
)
SELECT
    completion_totals.play_id,
    completion_totals.user_id,
    completion_totals.required_milestone_count,
    completion_totals.completed_required_milestone_count,
    CASE WHEN completion_totals.required_milestone_count = 0 THEN
        0
    ELSE
        ROUND((completion_totals.completed_required_milestone_count::numeric * 100) / completion_totals.required_milestone_count, 2)
    END AS milestone_completion_percent,
    completion_totals.required_collectible_entry_count,
    completion_totals.collected_required_collectible_entry_count,
    CASE WHEN completion_totals.required_collectible_entry_count = 0 THEN
        0
    ELSE
        ROUND((completion_totals.collected_required_collectible_entry_count::numeric * 100) / completion_totals.required_collectible_entry_count, 2)
    END AS collectible_completion_percent,
    completion_totals.required_pokedex_species_count,
    completion_totals.seen_required_pokedex_species_count,
    completion_totals.caught_required_pokedex_species_count,
    CASE WHEN completion_totals.required_pokedex_species_count = 0 THEN
        0
    ELSE
        ROUND((completion_totals.caught_required_pokedex_species_count::numeric * 100) / completion_totals.required_pokedex_species_count, 2)
    END AS pokedex_completion_percent,
    completion_totals.total_completion_unit_count,
    completion_totals.completed_completion_unit_count,
    CASE WHEN completion_totals.total_completion_unit_count = 0 THEN
        0
    ELSE
        ROUND((completion_totals.completed_completion_unit_count::numeric * 100) / completion_totals.total_completion_unit_count, 2)
    END AS overall_completion_percent
FROM
    completion_totals;

COMMENT ON VIEW views.mainline_play_completion_summary IS 'Derived completion counts and percentages per play. Uses security_invoker so gameplay RLS applies to the caller.';
