-- ============================================================================
-- View: views.mainline_dashboard_summary
-- One-row dashboard counters per authenticated user profile.
-- ============================================================================
CREATE VIEW views.mainline_dashboard_summary WITH ( security_invoker = TRUE
) AS
SELECT
    profiles.id AS user_id,
    profiles.display_name,
    (
        SELECT
            COUNT(
                *
)
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.user_id = profiles.id
            AND mainline_plays.archived_at IS NULL
) AS active_library_play_count,
    (
        SELECT
            COUNT(
                *
)
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.user_id = profiles.id
) AS total_play_count,
    (
        SELECT
            COUNT(
                *
)
        FROM
            gameplay.mainline_plays
            JOIN gameplay.mainline_play_statuses ON mainline_play_statuses.id = mainline_plays.status_id
        WHERE
            mainline_plays.user_id = profiles.id
            AND mainline_play_statuses.slug = 'completed'
) AS completed_play_count,
    (
        SELECT
            COUNT(
                *
)
        FROM
            planning.mainline_team_plans
        WHERE
            mainline_team_plans.user_id = profiles.id
) AS team_plan_count,
    (
        SELECT
            COUNT(
                DISTINCT mainline_collection_detail.species_id
)
        FROM
            views.mainline_collection_detail
        WHERE
            mainline_collection_detail.user_id = profiles.id
) AS used_species_count,
    (
        SELECT
            COUNT(
                *
)
        FROM
            views.mainline_collection_detail
        WHERE
            mainline_collection_detail.user_id = profiles.id
) AS used_form_count,
    (
        SELECT
            MAX(
                updated_at
)
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.user_id = profiles.id
) AS last_play_updated_at
FROM
    public.profiles;

COMMENT ON VIEW views.mainline_dashboard_summary IS 'Dashboard counters scoped by profile ownership. Uses security_invoker so public/gameplay/planning RLS applies to the caller.';
