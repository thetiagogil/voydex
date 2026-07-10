-- ============================================================================
-- Table: planning.mainline_plan_member_link_statuses
-- Status lookup for plan member links within a play.
-- ============================================================================
CREATE TABLE planning.mainline_plan_member_link_statuses (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT plan_member_link_statuses_id_positive_check CHECK (id > 0),
    CONSTRAINT plan_member_link_statuses_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT plan_member_link_statuses_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT plan_member_link_statuses_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE planning.mainline_plan_member_link_statuses IS 'Lookup for play-specific plan member statuses. Stable IDs: 1 pending, 2 linked, 3 reached, 4 skipped.';
