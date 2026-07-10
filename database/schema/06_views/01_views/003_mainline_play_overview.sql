-- ============================================================================
-- View: views.mainline_play_overview
-- Play hub overview with settings and optional content counts.
-- ============================================================================
CREATE VIEW views.mainline_play_overview WITH ( security_invoker = TRUE
) AS
SELECT
    mainline_play_summary.*,
    COALESCE(
        mainline_play_settings.pokedex_tracking_enabled, TRUE
) AS pokedex_tracking_enabled,
    COALESCE(
        mainline_play_settings.include_pokedex_in_completion, TRUE
) AS include_pokedex_in_completion,
    COALESCE(
        mainline_play_settings.include_collectibles_in_completion, TRUE
) AS include_collectibles_in_completion,
    COALESCE(
        mainline_play_settings.include_optional_pokedexes_in_completion, FALSE
) AS include_optional_pokedexes_in_completion,
    COALESCE(
        mainline_play_settings.include_optional_pokedex_entries_in_completion, TRUE
) AS include_optional_pokedex_entries_in_completion,
    COALESCE(
        mainline_play_completion_summary.required_milestone_count, 0
) AS required_milestone_count,
    COALESCE(
        mainline_play_completion_summary.completed_required_milestone_count, 0
) AS completed_required_milestone_count,
    COALESCE(
        mainline_play_completion_summary.milestone_completion_percent, 0
) AS milestone_completion_percent,
    COALESCE(
        mainline_play_completion_summary.required_collectible_entry_count, 0
) AS required_collectible_entry_count,
    COALESCE(
        mainline_play_completion_summary.collected_required_collectible_entry_count, 0
) AS collected_required_collectible_entry_count,
    COALESCE(
        mainline_play_completion_summary.collectible_completion_percent, 0
) AS collectible_completion_percent,
    COALESCE(
        mainline_play_completion_summary.required_pokedex_species_count, 0
) AS required_pokedex_species_count,
    COALESCE(
        mainline_play_completion_summary.seen_required_pokedex_species_count, 0
) AS seen_required_pokedex_species_count,
    COALESCE(
        mainline_play_completion_summary.caught_required_pokedex_species_count, 0
) AS caught_required_pokedex_species_count,
    COALESCE(
        mainline_play_completion_summary.pokedex_completion_percent, 0
) AS pokedex_completion_percent,
    COALESCE(
        mainline_play_completion_summary.total_completion_unit_count, 0
) AS total_completion_unit_count,
    COALESCE(
        mainline_play_completion_summary.completed_completion_unit_count, 0
) AS completed_completion_unit_count,
    COALESCE(
        mainline_play_completion_summary.overall_completion_percent, 0
) AS overall_completion_percent,
    COALESCE(
        optional_content.optional_content_scopes, '[]'::jsonb
) AS optional_content_scopes
FROM
    views.mainline_play_summary
    LEFT JOIN gameplay.mainline_play_settings ON mainline_play_settings.play_id = mainline_play_summary.play_id
    LEFT JOIN views.mainline_play_completion_summary ON mainline_play_completion_summary.play_id = mainline_play_summary.play_id
    LEFT JOIN LATERAL (
        SELECT
            jsonb_agg(
                jsonb_build_object(
                    'version_group_id', version_groups.id, 'slug', version_groups.slug, 'name', version_groups.name
) ORDER BY game_content_scopes.sort_order
) AS optional_content_scopes
        FROM
            gameplay.mainline_play_optional_content_scopes
            JOIN reference.game_content_scopes ON game_content_scopes.game_id = mainline_play_optional_content_scopes.game_id
                AND game_content_scopes.version_group_id = mainline_play_optional_content_scopes.version_group_id
            JOIN reference.version_groups ON version_groups.id = mainline_play_optional_content_scopes.version_group_id
        WHERE
            mainline_play_optional_content_scopes.play_id = mainline_play_summary.play_id
) AS optional_content ON TRUE;

COMMENT ON VIEW views.mainline_play_overview IS 'Play hub overview with settings and optional content. Uses security_invoker so gameplay RLS applies to the caller.';
