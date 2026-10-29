-- ============================================================================
-- View: views.mainline_play_collectible_detail
-- Collectible entries available to each play.
-- ============================================================================
CREATE VIEW views.mainline_play_collectible_detail WITH ( security_invoker = TRUE
) AS
SELECT
    mainline_plays.id AS play_id,
    mainline_plays.user_id,
    mainline_collectibles.id AS collectible_id,
    mainline_collectibles.slug AS collectible_slug,
    mainline_collectibles.name AS collectible_name,
    mainline_collectibles.version_group_id,
    mainline_collectibles.game_id,
    mainline_collectible_types.id AS collectible_type_id,
    mainline_collectible_types.slug AS collectible_type_slug,
    mainline_collectible_types.name AS collectible_type_name,
    mainline_collectibles.is_required_for_completion,
    COALESCE(
        mainline_play_settings.collectibles_tracking_enabled, TRUE
) AS collectibles_tracking_enabled,
    (
        COALESCE(
            mainline_play_settings.collectibles_tracking_enabled, TRUE
)
        AND COALESCE(
            mainline_play_settings.include_collectibles_in_completion, TRUE
)
        AND mainline_collectibles.is_required_for_completion
) AS is_included_in_completion,
    mainline_collectible_entries.id AS collectible_entry_id,
    mainline_collectible_entries.slug AS collectible_entry_slug,
    mainline_collectible_entries.name AS collectible_entry_name,
    mainline_collectible_entries.location_label,
    mainline_collectible_entries.sub_location_label,
    mainline_collectible_entries.description,
    mainline_collectible_entries.sort_order AS collectible_entry_sort_order,
    (
        mainline_play_collectible_entry_progress.play_id IS NOT NULL
) AS is_collected,
mainline_play_collectible_entry_progress.collected_at
FROM
    gameplay.mainline_plays
    LEFT JOIN gameplay.mainline_play_settings ON mainline_play_settings.play_id = mainline_plays.id
    JOIN tracking.mainline_collectibles ON (mainline_collectibles.version_group_id = mainline_plays.version_group_id
            OR EXISTS (
                SELECT
                    1
                FROM
                    gameplay.mainline_play_optional_content_scopes
            WHERE
                mainline_play_optional_content_scopes.play_id = mainline_plays.id
                AND mainline_play_optional_content_scopes.version_group_id = mainline_collectibles.version_group_id))
    AND (mainline_collectibles.game_id IS NULL
        OR mainline_collectibles.game_id = mainline_plays.game_id)
    JOIN tracking.mainline_collectible_types ON mainline_collectible_types.id = mainline_collectibles.collectible_type_id
    JOIN tracking.mainline_collectible_entries ON mainline_collectible_entries.collectible_id = mainline_collectibles.id
    LEFT JOIN gameplay.mainline_play_collectible_entry_progress ON mainline_play_collectible_entry_progress.play_id = mainline_plays.id
        AND mainline_play_collectible_entry_progress.collectible_entry_id = mainline_collectible_entries.id;

COMMENT ON VIEW views.mainline_play_collectible_detail IS 'Available collectible entries for each play with collected state. Uses security_invoker so gameplay RLS applies to the caller.';
