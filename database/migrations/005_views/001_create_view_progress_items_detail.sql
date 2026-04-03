-- ============================================================================
-- View: views.progress_items_detail
-- Progress items with category name and sort info pre-joined.
-- Useful for building progress checklists per version group.
-- ============================================================================
CREATE
OR REPLACE VIEW views.progress_items_detail AS
SELECT
    pi.id AS progress_item_id,
    pi.slug,
    pi.name,
    pi.description,
    pi.version_group_id,
    vg.slug AS version_group_slug,
    vg.name AS version_group_name,
    pi.category_id,
    pc.slug AS category_slug,
    pc.name AS category_name,
    pc.sort_order AS category_sort_order,
    pi.sort_order
FROM
    progress.items pi
    JOIN progress.categories pc ON pi.category_id = pc.id
    JOIN meta.version_groups vg ON pi.version_group_id = vg.id
ORDER BY
    pi.version_group_id,
    pc.sort_order,
    pi.sort_order;

COMMENT ON VIEW views.progress_items_detail IS 'Progress items with category and version group names pre-joined. Ordered by VG, category sort, item sort.';