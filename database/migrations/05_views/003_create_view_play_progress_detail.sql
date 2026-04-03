-- ============================================================================
-- View: views.play_progress_detail
-- Per-play progress checklist: all applicable milestones with completion state.
-- Shows both completed and not-yet-completed items for a play.
-- ============================================================================
CREATE
OR REPLACE VIEW views.play_progress_detail AS
SELECT
    p.id AS play_id,
    p.user_id,
    pi.id AS progress_item_id,
    pi.slug AS progress_item_slug,
    pi.name AS progress_item_name,
    pi.description AS progress_item_description,
    pc.id AS category_id,
    pc.slug AS category_slug,
    pc.name AS category_name,
    pc.sort_order AS category_sort_order,
    pi.sort_order,
    pp.completed_at,
    CASE
        WHEN pp.play_id IS NOT NULL THEN TRUE
        ELSE FALSE
    END AS is_completed
FROM
    gameplay.plays p
    JOIN meta.games g ON p.game_id = g.id
    JOIN progress.items pi ON pi.version_group_id = g.version_group_id
    JOIN progress.categories pc ON pi.category_id = pc.id
    LEFT JOIN progress.play_items pp ON pp.play_id = p.id
    AND pp.progress_item_id = pi.id
ORDER BY
    p.id,
    pc.sort_order,
    pi.sort_order;

COMMENT ON VIEW views.play_progress_detail IS 'Per-play progress checklist showing all base-VG milestones with completion state. Inherits RLS from gameplay.plays. Does not include DLC milestones — filter by effective VGs at the app layer.';