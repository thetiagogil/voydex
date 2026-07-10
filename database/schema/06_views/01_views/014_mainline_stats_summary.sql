-- ============================================================================
-- View: views.mainline_stats_summary
-- User-level aggregate stats across mainline_plays, plans, and Pokémon usage.
-- ============================================================================
CREATE VIEW views.mainline_stats_summary WITH ( security_invoker = TRUE
) AS
SELECT
    profiles.id AS user_id,
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
                DISTINCT mainline_plays.game_id
)
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.user_id = profiles.id
) AS played_game_count,
    (
        SELECT
            COUNT(
                DISTINCT games.generation_id
)
        FROM
            gameplay.mainline_plays
            JOIN reference.games ON games.id = mainline_plays.game_id
        WHERE
            mainline_plays.user_id = profiles.id
) AS played_generation_count,
    (
        SELECT
            COALESCE(
                SUM(
                    mainline_plays.playtime_minutes
), 0
)
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.user_id = profiles.id
) AS total_playtime_minutes,
    (
        SELECT
            COUNT(
                *
)
        FROM
            planning.mainline_team_plans
        WHERE
            mainline_team_plans.user_id = profiles.id
) AS total_team_plan_count,
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
            COUNT(
                *
)
        FROM
            gameplay.mainline_play_events
            JOIN gameplay.mainline_plays ON mainline_plays.id = mainline_play_events.play_id
        WHERE
            mainline_plays.user_id = profiles.id
) AS timeline_event_count,
    (
        SELECT
            COUNT(
                *
)
        FROM
            gameplay.mainline_play_milestone_progress
            JOIN gameplay.mainline_plays ON mainline_plays.id = mainline_play_milestone_progress.play_id
        WHERE
            mainline_plays.user_id = profiles.id
) AS completed_milestone_count
FROM
    public.profiles;

COMMENT ON VIEW views.mainline_stats_summary IS 'User-level aggregate stats. Uses security_invoker so public/gameplay/planning RLS applies to the caller.';
