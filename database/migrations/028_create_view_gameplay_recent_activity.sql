-- View: Recent Activity
-- Purpose: Adventures dashboard - show recent progress completions as activity feed
-- Used in: /adventures (activity feed sidebar)
CREATE
OR REPLACE VIEW gameplay.recent_activity AS
SELECT
    prg.id,
    p.id AS playthrough_id,
    p.name AS playthrough_name,
    gm.id AS game_id,
    gm.slug AS game_slug,
    gm.name AS game_name,
    g.id AS generation_id,
    g.slug AS generation_slug,
    g.name AS generation_name,
    pi.timeline_message AS message,
    pc.slug AS category,
    pi.location,
    prg.completed_at,
    prg.updated_at
FROM
    gameplay.progress prg
    JOIN gameplay.plays p ON p.id = prg.play_id
    JOIN meta.games gm ON gm.id = p.game_id
    JOIN meta.generations g ON g.id = gm.generation_id
    JOIN meta.progress_items pi ON pi.id = prg.progress_item_id
    JOIN meta.progress_categories pc ON pc.id = pi.progress_category_id
WHERE
    prg.completed = TRUE
    AND prg.completed_at IS NOT NULL
    AND p.user_id = auth.uid () -- Only current user's activity
ORDER BY
    prg.completed_at DESC
LIMIT
    50;

-- Grant permissions
GRANT
SELECT
    ON gameplay.recent_activity TO authenticated;

-- Note: This view shows the most recent 50 completed progress items
-- Used to display an activity timeline/feed showing what the user has accomplished