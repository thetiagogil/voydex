-- ============================================================================
-- Table: reference.evolution_families
-- Evolution family groupings for reuse checks and browsing.
-- ============================================================================
CREATE TABLE reference.evolution_families (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT evolution_families_id_positive_check CHECK (id > 0),
    CONSTRAINT evolution_families_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 120),
    CONSTRAINT evolution_families_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 160),
    CONSTRAINT evolution_families_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE reference.evolution_families IS 'Species family groupings used by evolution-family reuse policy.';
