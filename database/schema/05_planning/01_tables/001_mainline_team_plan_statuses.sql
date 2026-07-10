-- ============================================================================
-- Table: planning.mainline_team_plan_statuses
-- Team plan lifecycle status lookup.
-- ============================================================================
CREATE TABLE planning.mainline_team_plan_statuses (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT team_plan_statuses_id_positive_check CHECK (id > 0),
    CONSTRAINT team_plan_statuses_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT team_plan_statuses_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT team_plan_statuses_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE planning.mainline_team_plan_statuses IS 'Lookup for team plan lifecycle states such as draft, active, and archived.';
