-- ============================================================================
-- View: views.tracking_items_detail
-- Tracking items with category name and sort info pre-joined.
-- Useful for building tracking checklists per version group.
-- ============================================================================
CREATE
OR REPLACE VIEW views.tracking_items_detail AS
SELECT
    pi.id AS tracking_item_id,
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
    tracking.items pi
    JOIN tracking.categories pc ON pi.category_id = pc.id
    JOIN reference.version_groups vg ON pi.version_group_id = vg.id
ORDER BY
    pi.version_group_id,
    pc.sort_order,
    pi.sort_order;

COMMENT ON VIEW views.tracking_items_detail IS 'Tracking items with category and version group names pre-joined. Ordered by VG, category sort, item sort.';