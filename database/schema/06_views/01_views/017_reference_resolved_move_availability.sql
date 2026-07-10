-- ============================================================================
-- View: views.reference_resolved_move_availability
-- Effective move availability after applying cumulative content scopes.
-- ============================================================================
CREATE VIEW views.reference_resolved_move_availability WITH ( security_invoker = TRUE
) AS
WITH ranked_rows AS (
    SELECT
        content_scope_closure.target_version_group_id,
        move_availability.version_group_id AS source_version_group_id,
        move_availability.id,
        move_availability.move_id,
        move_availability.game_id,
        move_availability.scope_operation,
        move_availability.created_at,
        ROW_NUMBER() OVER (PARTITION BY content_scope_closure.target_version_group_id,
            move_availability.move_id,
            COALESCE(move_availability.game_id, 0) ORDER BY content_scope_closure.resolution_order DESC,
            move_availability.id DESC) AS resolution_rank
    FROM
        views.reference_content_scope_closure AS content_scope_closure
        JOIN reference.move_availability ON move_availability.version_group_id = content_scope_closure.included_version_group_id
)
SELECT
    ranked_rows.target_version_group_id,
    ranked_rows.source_version_group_id,
    ranked_rows.id,
    ranked_rows.move_id,
    ranked_rows.game_id,
    ranked_rows.created_at
FROM
    ranked_rows
WHERE
    ranked_rows.resolution_rank = 1
    AND ranked_rows.scope_operation <> 'remove';
