-- View: User Stats
-- Purpose: Dashboard KPI cards
-- Used in: /dashboard
CREATE
OR REPLACE VIEW gameplay.user_stats AS
SELECT
    user_id,
    COUNT(*) AS total_playthroughs,
    COUNT(*) FILTER (
        WHERE
            status = 'active'
    ) AS active_playthroughs,
    COUNT(*) FILTER (
        WHERE
            status = 'completed'
    ) AS completed_playthroughs,
    COUNT(*) FILTER (
        WHERE
            status = 'paused'
    ) AS paused_playthroughs,
    COUNT(*) FILTER (
        WHERE
            status = 'dropped'
    ) AS dropped_playthroughs,
    SUM(badges_earned) AS total_badges_earned,
    SUM(pokemon_caught_count) AS total_pokemon_caught,
    MAX(updated_at) AS last_played_at,
    ROUND(
        AVG(
            CASE
                WHEN status = 'completed' THEN 100.0
                ELSE 0
            END
        ),
        1
    ) AS completion_rate
FROM
    gameplay.playthrough_list
GROUP BY
    user_id;

-- Grant permissions
GRANT
SELECT
    ON gameplay.user_stats TO authenticated;