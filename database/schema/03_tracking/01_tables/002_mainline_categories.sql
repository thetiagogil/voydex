-- ============================================================================
-- Table: tracking.mainline_categories
-- Tracking mainline_categories by version group.
-- ============================================================================
CREATE TABLE tracking.mainline_categories (
    id integer PRIMARY KEY,
    version_group_id integer NOT NULL REFERENCES reference.version_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    slug text NOT NULL,
    name text NOT NULL,
    category_kind text NOT NULL,
    sort_order integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT mainline_categories_id_positive_check CHECK (id > 0),
    CONSTRAINT mainline_categories_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 120),
    CONSTRAINT mainline_categories_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 160),
    CONSTRAINT mainline_categories_kind_check CHECK (category_kind IN ('story', 'collectible')),
    CONSTRAINT mainline_categories_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT mainline_categories_id_version_group_unique UNIQUE (id, version_group_id),
    CONSTRAINT mainline_categories_version_group_slug_unique UNIQUE (version_group_id, slug),
    CONSTRAINT mainline_categories_version_group_sort_order_unique UNIQUE (version_group_id, sort_order)
);

COMMENT ON TABLE tracking.mainline_categories IS 'Version-group tracking mainline_categories for story and collectible progress definitions.';
