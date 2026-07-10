-- ============================================================================
-- Table: reference.version_groups
-- Shared game content scopes, including optional DLC child scopes.
-- ============================================================================
CREATE TABLE reference.version_groups (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    generation_id integer NOT NULL REFERENCES reference.generations (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    parent_version_group_id integer,
    sort_order integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT version_groups_id_positive_check CHECK (id > 0),
    CONSTRAINT version_groups_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 120),
    CONSTRAINT version_groups_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 160),
    CONSTRAINT version_groups_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT version_groups_parent_not_self_check CHECK (parent_version_group_id IS NULL OR parent_version_group_id <> id),
    CONSTRAINT version_groups_id_generation_unique UNIQUE (id, generation_id),
    CONSTRAINT version_groups_id_parent_unique UNIQUE (id, parent_version_group_id),
    CONSTRAINT version_groups_generation_sort_order_unique UNIQUE (generation_id, sort_order),
    CONSTRAINT version_groups_parent_generation_fkey FOREIGN KEY (parent_version_group_id, generation_id) REFERENCES reference.version_groups (id, generation_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

COMMENT ON TABLE reference.version_groups IS 'Version-group content scopes. DLC and other optional content are child version groups.';

COMMENT ON COLUMN reference.version_groups.parent_version_group_id IS 'Base version group for optional child content such as DLC.';
