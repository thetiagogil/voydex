-- ============================================================================
-- View: views.reference_resolved_item_availability
-- Effective item availability after applying cumulative content scopes.
-- ============================================================================
CREATE VIEW views.reference_resolved_item_availability WITH ( security_invoker = TRUE
) AS
WITH ranked_rows AS (
    SELECT
        content_scope_closure.target_version_group_id,
        item_availability.version_group_id AS source_version_group_id,
        item_availability.id,
        item_availability.item_id,
        item_availability.game_id,
        item_availability.availability_method_id,
        item_availability.scope_operation,
        item_availability.notes,
        item_availability.created_at,
        ROW_NUMBER() OVER (PARTITION BY content_scope_closure.target_version_group_id,
            item_availability.item_id,
            COALESCE(item_availability.game_id, 0),
            COALESCE(item_availability.availability_method_id, 0) ORDER BY content_scope_closure.resolution_order DESC,
            item_availability.id DESC) AS resolution_rank
    FROM
        views.reference_content_scope_closure AS content_scope_closure
        JOIN reference.item_availability ON item_availability.version_group_id = content_scope_closure.included_version_group_id
)
SELECT
    ranked_rows.target_version_group_id,
    ranked_rows.source_version_group_id,
    ranked_rows.id,
    ranked_rows.item_id,
    ranked_rows.game_id,
    ranked_rows.availability_method_id,
    ranked_rows.notes,
    ranked_rows.created_at
FROM
    ranked_rows
WHERE
    ranked_rows.resolution_rank = 1
    AND ranked_rows.scope_operation <> 'remove';
