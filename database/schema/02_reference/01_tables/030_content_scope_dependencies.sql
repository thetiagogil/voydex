-- ============================================================================
-- Table: reference.content_scope_dependencies
-- Ordered dependencies between optional version-group content scopes.
-- ============================================================================
CREATE TABLE reference.content_scope_dependencies (
    version_group_id integer NOT NULL,
    required_version_group_id integer NOT NULL,
    dependency_kind text NOT NULL DEFAULT 'required',
    sort_order integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT content_scope_dependencies_primary_key PRIMARY KEY (version_group_id, required_version_group_id),
    CONSTRAINT content_scope_dependencies_version_group_fkey FOREIGN KEY (version_group_id) REFERENCES reference.version_groups (id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT content_scope_dependencies_required_version_group_fkey FOREIGN KEY (required_version_group_id) REFERENCES reference.version_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT content_scope_dependencies_kind_check CHECK (dependency_kind IN ('required')),
    CONSTRAINT content_scope_dependencies_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT content_scope_dependencies_not_self_check CHECK (version_group_id <> required_version_group_id)
);

CREATE UNIQUE INDEX content_scope_dependencies_sort_order_unique ON reference.content_scope_dependencies (version_group_id, sort_order);

COMMENT ON TABLE reference.content_scope_dependencies IS 'Explicit ordered dependencies between optional content scopes, used when resolving cumulative DLC/update reference data.';

COMMENT ON COLUMN reference.content_scope_dependencies.version_group_id IS 'Content scope that requires another scope when resolving cumulative reference data.';

COMMENT ON COLUMN reference.content_scope_dependencies.required_version_group_id IS 'Required content scope that must be included before version_group_id.';

COMMENT ON COLUMN reference.content_scope_dependencies.dependency_kind IS 'Dependency semantics. Currently only required dependencies are seeded.';
