-- ============================================================================
-- View: views.mainline_team_plan_summary
-- Compact team plan rows for plan libraries and play setup.
-- ============================================================================
CREATE VIEW views.mainline_team_plan_summary WITH ( security_invoker = TRUE
) AS
SELECT
    mainline_team_plans.id AS team_plan_id,
    mainline_team_plans.user_id,
    mainline_team_plans.name AS team_plan_name,
    mainline_team_plans.game_id,
    games.slug AS game_slug,
    games.name AS game_name,
    mainline_team_plans.version_group_id,
    version_groups.slug AS version_group_slug,
    version_groups.name AS version_group_name,
    games.generation_id,
    generations.slug AS generation_slug,
    generations.name AS generation_name,
    mainline_team_plans.status_id,
    mainline_team_plan_statuses.slug AS status_slug,
    mainline_team_plan_statuses.name AS status_name,
    mainline_team_plans.notes,
    mainline_team_plans.created_at,
    mainline_team_plans.updated_at,
    (
        SELECT
            COUNT(
                *
)
        FROM
            planning.mainline_team_plan_members
        WHERE
            mainline_team_plan_members.team_plan_id = mainline_team_plans.id
            AND mainline_team_plan_members.member_group = 'primary'
) AS primary_member_count,
    (
        SELECT
            COUNT(
                *
)
        FROM
            planning.mainline_team_plan_members
        WHERE
            mainline_team_plan_members.team_plan_id = mainline_team_plans.id
            AND mainline_team_plan_members.member_group = 'alternate'
) AS alternate_member_count,
    (
        SELECT
            COUNT(
                *
)
        FROM
            planning.mainline_team_plan_optional_content_scopes
        WHERE
            mainline_team_plan_optional_content_scopes.team_plan_id = mainline_team_plans.id
) AS optional_content_scope_count
FROM
    planning.mainline_team_plans
    JOIN planning.mainline_team_plan_statuses ON mainline_team_plan_statuses.id = mainline_team_plans.status_id
    JOIN reference.games ON games.id = mainline_team_plans.game_id
    JOIN reference.version_groups ON version_groups.id = mainline_team_plans.version_group_id
    JOIN reference.generations ON generations.id = games.generation_id;

COMMENT ON VIEW views.mainline_team_plan_summary IS 'Compact team plan summary rows. Uses security_invoker so planning RLS applies to the caller.';
