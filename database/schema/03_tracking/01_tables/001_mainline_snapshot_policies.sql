-- ============================================================================
-- Table: tracking.mainline_snapshot_policies
-- Snapshot behavior lookup for milestone completion.
-- ============================================================================
CREATE TABLE tracking.mainline_snapshot_policies (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT mainline_snapshot_policies_id_positive_check CHECK (id > 0),
    CONSTRAINT mainline_snapshot_policies_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT mainline_snapshot_policies_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT mainline_snapshot_policies_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE tracking.mainline_snapshot_policies IS 'Snapshot behavior lookup for story milestone completion.';
