-- ============================================================================
-- View: views.mainline_play_milestone_category_summary
-- Milestone category progress counts available to each play.
-- ============================================================================
CREATE VIEW views.mainline_play_milestone_category_summary WITH ( security_invoker = TRUE
) AS
WITH play_scopes AS (
    SELECT
        mainline_plays.id AS play_id,
        mainline_plays.user_id,
        mainline_plays.game_id,
        mainline_plays.version_group_id,
        game_content_scopes.sort_order AS content_scope_sort_order
    FROM
        gameplay.mainline_plays
        JOIN reference.game_content_scopes ON game_content_scopes.game_id = mainline_plays.game_id
            AND game_content_scopes.version_group_id = mainline_plays.version_group_id
        UNION ALL
        SELECT
            mainline_play_optional_content_scopes.play_id,
            mainline_plays.user_id,
            mainline_play_optional_content_scopes.game_id,
            mainline_play_optional_content_scopes.version_group_id,
            game_content_scopes.sort_order AS content_scope_sort_order
        FROM
            gameplay.mainline_play_optional_content_scopes
        JOIN gameplay.mainline_plays ON mainline_plays.id = mainline_play_optional_content_scopes.play_id
        JOIN reference.game_content_scopes ON game_content_scopes.game_id = mainline_play_optional_content_scopes.game_id
            AND game_content_scopes.version_group_id = mainline_play_optional_content_scopes.version_group_id
),
category_counts AS (
    SELECT
        play_scopes.play_id,
        play_scopes.user_id,
        play_scopes.game_id,
        games.slug AS game_slug,
        games.name AS game_name,
        play_scopes.version_group_id,
        version_groups.slug AS version_group_slug,
        version_groups.name AS version_group_name,
        version_groups.is_open_world,
        play_scopes.content_scope_sort_order,
        mainline_categories.id AS category_id,
        mainline_categories.slug AS category_slug,
        mainline_categories.name AS category_name,
        mainline_categories.category_kind,
        mainline_categories.sort_order AS category_sort_order,
        COUNT(mainline_milestones.id) AS milestone_count,
        COUNT(mainline_milestones.id) FILTER (WHERE mainline_milestones.is_required_for_completion) AS required_milestone_count,
        COUNT(mainline_milestones.id) FILTER (WHERE NOT mainline_milestones.is_required_for_completion) AS optional_milestone_count,
        COUNT(mainline_play_milestone_progress.milestone_id) AS completed_milestone_count,
        COUNT(mainline_play_milestone_progress.milestone_id) FILTER (WHERE mainline_milestones.is_required_for_completion) AS completed_required_milestone_count,
        COUNT(mainline_play_milestone_progress.milestone_id) FILTER (WHERE NOT mainline_milestones.is_required_for_completion) AS completed_optional_milestone_count
    FROM
        play_scopes
    JOIN reference.games ON games.id = play_scopes.game_id
    JOIN reference.version_groups ON version_groups.id = play_scopes.version_group_id
    JOIN tracking.mainline_categories ON mainline_categories.version_group_id = play_scopes.version_group_id
        LEFT JOIN tracking.mainline_milestones ON mainline_milestones.version_group_id = mainline_categories.version_group_id
            AND mainline_milestones.category_id = mainline_categories.id
            AND (mainline_milestones.game_id IS NULL
                OR mainline_milestones.game_id = play_scopes.game_id)
        LEFT JOIN gameplay.mainline_play_milestone_progress ON mainline_play_milestone_progress.play_id = play_scopes.play_id
            AND mainline_play_milestone_progress.milestone_id = mainline_milestones.id
    GROUP BY
        play_scopes.play_id,
        play_scopes.user_id,
        play_scopes.game_id,
        games.slug,
        games.name,
        play_scopes.version_group_id,
        version_groups.slug,
        version_groups.name,
        version_groups.is_open_world,
        play_scopes.content_scope_sort_order,
        mainline_categories.id,
        mainline_categories.slug,
        mainline_categories.name,
        mainline_categories.category_kind,
        mainline_categories.sort_order
)
SELECT
    category_counts.play_id,
    category_counts.user_id,
    category_counts.game_id,
    category_counts.game_slug,
    category_counts.game_name,
    category_counts.version_group_id,
    category_counts.version_group_slug,
    category_counts.version_group_name,
    category_counts.is_open_world,
    category_counts.content_scope_sort_order,
    category_counts.category_id,
    category_counts.category_slug,
    category_counts.category_name,
    category_counts.category_kind,
    category_counts.category_sort_order,
    category_counts.milestone_count,
    category_counts.required_milestone_count,
    category_counts.completed_required_milestone_count,
    CASE WHEN category_counts.required_milestone_count = 0 THEN
        0
    ELSE
        ROUND((category_counts.completed_required_milestone_count::numeric * 100) / category_counts.required_milestone_count, 2)
    END AS required_milestone_completion_percent,
    category_counts.optional_milestone_count,
    category_counts.completed_optional_milestone_count,
    category_counts.completed_milestone_count,
    CASE WHEN category_counts.milestone_count = 0 THEN
        0
    ELSE
        ROUND((category_counts.completed_milestone_count::numeric * 100) / category_counts.milestone_count, 2)
    END AS all_milestone_completion_percent,
    CASE WHEN category_counts.required_milestone_count > 0 THEN
        'required'
    WHEN category_counts.optional_milestone_count > 0 THEN
        'optional'
    ELSE
        'empty'
    END AS completion_scope
FROM
    category_counts;

COMMENT ON VIEW views.mainline_play_milestone_category_summary IS 'Per-play milestone category progress counts for Story UI sections. Required completion uses milestone-level is_required_for_completion; optional rows remain visible without contributing to play completion.';
