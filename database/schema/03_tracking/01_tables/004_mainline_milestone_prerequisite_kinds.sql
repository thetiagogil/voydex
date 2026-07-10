-- ============================================================================
-- Table: tracking.mainline_milestone_prerequisite_kinds
-- Relationship kinds for milestone prerequisite links.
-- ============================================================================
CREATE TABLE tracking.mainline_milestone_prerequisite_kinds (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    description text NOT NULL,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT mainline_milestone_prerequisite_kinds_id_positive_check CHECK (id > 0),
    CONSTRAINT mainline_milestone_prerequisite_kinds_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT mainline_milestone_prerequisite_kinds_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT mainline_milestone_prerequisite_kinds_description_length_check CHECK (CHAR_LENGTH(BTRIM(description)) BETWEEN 1 AND 500),
    CONSTRAINT mainline_milestone_prerequisite_kinds_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE tracking.mainline_milestone_prerequisite_kinds IS 'Lookup for milestone prerequisite relationships used by story progression prompts and unlock logic.';
