-- ============================================================================
-- View: views.reference_resolved_move_machines
-- Effective TM/HM/TR catalog after applying cumulative content scopes.
-- ============================================================================
CREATE VIEW views.reference_resolved_move_machines WITH ( security_invoker = TRUE
) AS
WITH ranked_rows AS (
    SELECT
        content_scope_closure.target_version_group_id,
        move_machines.version_group_id AS source_version_group_id,
        move_machines.id,
        move_machines.move_id,
        move_machines.game_id,
        move_machines.learn_method_id,
        move_machines.machine_label,
        move_machines.scope_operation,
        move_machines.sort_order,
        move_machines.created_at,
        ROW_NUMBER() OVER (PARTITION BY content_scope_closure.target_version_group_id,
            COALESCE(move_machines.game_id, 0),
            move_machines.learn_method_id,
            move_machines.machine_label ORDER BY content_scope_closure.resolution_order DESC,
            move_machines.sort_order DESC,
            move_machines.id DESC) AS resolution_rank
    FROM
        views.reference_content_scope_closure AS content_scope_closure
        JOIN reference.move_machines ON move_machines.version_group_id = content_scope_closure.included_version_group_id
)
SELECT
    ranked_rows.target_version_group_id,
    ranked_rows.source_version_group_id,
    ranked_rows.id,
    ranked_rows.move_id,
    ranked_rows.game_id,
    ranked_rows.learn_method_id,
    ranked_rows.machine_label,
    ranked_rows.sort_order,
    ranked_rows.created_at
FROM
    ranked_rows
WHERE
    ranked_rows.resolution_rank = 1
    AND ranked_rows.scope_operation <> 'remove';
