-- View: Generation Overview with Play Data
-- Purpose: Adventures dashboard - list all generations with metadata and user play statistics
-- Used in: /adventures (main dashboard)
CREATE OR REPLACE VIEW meta.generation_overview_with_plays AS
SELECT
    g.id AS gen_id,
    g.slug AS gen_slug,
    g.name AS gen_name,
    r.name AS region,
    CONCAT(g.start_year :: TEXT, '-', COALESCE(g.end_year :: TEXT, 'Present')) AS years,
    COUNT(DISTINCT ps.id) AS pokemon_count,
    COUNT(DISTINCT gm.id) AS games_count,
    COALESCE(play_stats.playthroughs_count, 0) AS playthroughs_count,
    COALESCE(play_stats.active_plays, 0) AS active_plays,
    COALESCE(play_stats.completed_plays, 0) AS completed_plays,
    COALESCE(play_stats.average_completion, 0) AS average_completion,
    TRUE AS is_enabled -- Set to false for generations 5+ when not ready
FROM
    meta.generations g
    LEFT JOIN meta.regions r ON r.generation_id = g.id
    LEFT JOIN dex.pokemon_species ps ON ps.introduced_generation_id = g.id
    LEFT JOIN meta.games gm ON gm.generation_id = g.id
    -- Subquery to get play statistics per generation
    LEFT JOIN (
        SELECT
            gm.generation_id,
            COUNT(DISTINCT p.id) AS playthroughs_count,
            COUNT(
                DISTINCT CASE
                    WHEN p.status = 'active' THEN p.id
                END
            ) AS active_plays,
            COUNT(
                DISTINCT CASE
                    WHEN p.status = 'completed' THEN p.id
                END
            ) AS completed_plays,
            -- Calculate average completion percentage across tracked plays
            ROUND(
                AVG(
                    CASE
                        WHEN p.is_tracked THEN (
                            -- Calculate completion % based on completed progress items
                            SELECT
                                (
                                    COUNT(*) FILTER (
                                        WHERE
                                            prg.completed = TRUE
                                    ) * 100.0 / NULLIF(COUNT(*), 0)
                                )
                            FROM
                                gameplay.progress prg
                                JOIN meta.progress_items pi ON pi.id = prg.progress_item_id
                            WHERE
                                prg.play_id = p.id
                        )
                    END
                )
            ) :: INTEGER AS average_completion
        FROM
            gameplay.plays p
            JOIN meta.games gm ON gm.id = p.game_id
        WHERE
            p.user_id = auth.uid () -- Only current user's plays
        GROUP BY
            gm.generation_id
    ) play_stats ON play_stats.generation_id = g.id
GROUP BY
    g.id,
    g.slug,
    g.name,
    g.start_year,
    g.end_year,
    r.name,
    play_stats.playthroughs_count,
    play_stats.active_plays,
    play_stats.completed_plays,
    play_stats.average_completion
ORDER BY
    g.id;

-- Grant permissions
GRANT SELECT ON meta.generation_overview_with_plays TO authenticated, anon;

-- Note: This view combines static generation metadata with dynamic user play data
-- The is_enabled flag should be set based on which generations are currently supported
-- Only tracked plays (is_tracked = TRUE) are included in average_completion calculation
