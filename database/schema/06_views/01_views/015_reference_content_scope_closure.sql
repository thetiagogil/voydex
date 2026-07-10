-- ============================================================================
-- View: views.reference_content_scope_closure
-- Canonical parent/dependency closure for cumulative reference content scopes.
-- ============================================================================
CREATE VIEW views.reference_content_scope_closure WITH ( security_invoker = TRUE
) AS
WITH RECURSIVE dependency_edges AS (
    SELECT
        version_groups.id AS version_group_id,
        version_groups.parent_version_group_id AS required_version_group_id
    FROM
        reference.version_groups
    WHERE
        version_groups.parent_version_group_id IS NOT NULL
    UNION ALL
    SELECT
        content_scope_dependencies.version_group_id,
        content_scope_dependencies.required_version_group_id
    FROM
        reference.content_scope_dependencies
),
content_scope_closure AS (
    SELECT
        version_groups.id AS target_version_group_id,
        version_groups.id AS included_version_group_id,
        0 AS depth,
        ARRAY[version_groups.id] AS visited_version_group_ids
    FROM
        reference.version_groups
    UNION ALL
    SELECT
        content_scope_closure.target_version_group_id,
        dependency_edges.required_version_group_id AS included_version_group_id,
        content_scope_closure.depth + 1 AS depth,
        content_scope_closure.visited_version_group_ids || dependency_edges.required_version_group_id
    FROM
        content_scope_closure
        JOIN dependency_edges ON dependency_edges.version_group_id = content_scope_closure.included_version_group_id
    WHERE
        dependency_edges.required_version_group_id <> ALL (content_scope_closure.visited_version_group_ids)
),
deduped_closure AS (
    SELECT
        content_scope_closure.target_version_group_id,
        content_scope_closure.included_version_group_id,
        MIN(content_scope_closure.depth) AS depth
    FROM
        content_scope_closure
    GROUP BY
        content_scope_closure.target_version_group_id,
        content_scope_closure.included_version_group_id
)
SELECT
    deduped_closure.target_version_group_id,
    target_version_groups.slug AS target_version_group_slug,
    deduped_closure.included_version_group_id,
    included_version_groups.slug AS included_version_group_slug,
    deduped_closure.depth,
    ROW_NUMBER() OVER (PARTITION BY deduped_closure.target_version_group_id ORDER BY CASE WHEN included_version_groups.parent_version_group_id IS NULL THEN
            0
        ELSE
            1
        END, included_version_groups.sort_order, included_version_groups.id) AS resolution_order
FROM
    deduped_closure
    JOIN reference.version_groups AS target_version_groups ON target_version_groups.id = deduped_closure.target_version_group_id
    JOIN reference.version_groups AS included_version_groups ON included_version_groups.id = deduped_closure.included_version_group_id;
