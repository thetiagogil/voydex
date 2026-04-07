-- ============================================================================
-- View: views.play_tracking_detail
-- Per-play tracking checklist: all applicable milestones with completion state.
-- Shows both completed and not-yet-completed items for a play.
-- ============================================================================
CREATE
OR REPLACE VIEW views.play_tracking_detail AS
SELECT
    p.id AS play_id,
    p.user_id,
    pi.id AS tracking_item_id,
    pi.slug AS tracking_item_slug,
    pi.name AS tracking_item_name,
    pi.description AS tracking_item_description,
    pc.id AS category_id,
    pc.slug AS category_slug,
    pc.name AS category_name,
    pc.sort_order AS category_sort_order,
    pit.id AS item_type_id,
    pit.slug AS item_type_slug,
    pit.name AS item_type_name,
    pi.sort_order,
    pp.completed_at,
    CASE
        WHEN pp.play_id IS NOT NULL THEN TRUE
        ELSE FALSE
    END AS is_completed
FROM
    gameplay.plays p
    JOIN reference.games g ON p.game_id = g.id
    JOIN tracking.items pi ON pi.version_group_id = g.version_group_id
    JOIN tracking.categories pc ON pi.category_id = pc.id
    JOIN tracking.item_types pit ON pi.item_type_id = pit.id
    LEFT JOIN gameplay.play_tracking_items pp ON pp.play_id = p.id
    AND pp.tracking_item_id = pi.id
ORDER BY
    p.id,
    pc.sort_order,
    pi.sort_order;

COMMENT ON VIEW views.play_tracking_detail IS 'Per-play tracking checklist showing all base-VG milestones with completion state. Inherits RLS from gameplay.plays. Does not include DLC milestones — filter by effective VGs at the app layer.';