-- ============================================================================
-- Table: reference.location_version_groups
-- Which places each version group has, in the order the story reaches them.
-- ============================================================================
CREATE TABLE reference.location_version_groups (
    location_id integer NOT NULL REFERENCES reference.locations (id) ON UPDATE CASCADE ON DELETE CASCADE,
    version_group_id integer NOT NULL REFERENCES reference.version_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    sort_order integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT location_version_groups_primary_key PRIMARY KEY (location_id, version_group_id),
    CONSTRAINT location_version_groups_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT location_version_groups_sort_order_unique UNIQUE (version_group_id, sort_order)
);

CREATE INDEX location_version_groups_version_group_idx ON reference.location_version_groups (version_group_id, sort_order);

COMMENT ON TABLE reference.location_version_groups IS 'Which places each version group has, in the order the story reaches them; an expansion orders its own places.';

COMMENT ON COLUMN reference.location_version_groups.sort_order IS 'Story order within the version group: the first place the game opens is 1.';
