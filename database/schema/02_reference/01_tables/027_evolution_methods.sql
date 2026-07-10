-- ============================================================================
-- Table: reference.evolution_methods
-- Evolution method lookup.
-- ============================================================================
CREATE TABLE reference.evolution_methods (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    description text NOT NULL,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT evolution_methods_id_positive_check CHECK (id > 0),
    CONSTRAINT evolution_methods_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 120),
    CONSTRAINT evolution_methods_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT evolution_methods_description_length_check CHECK (CHAR_LENGTH(BTRIM(description)) BETWEEN 1 AND 1000),
    CONSTRAINT evolution_methods_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE reference.evolution_methods IS 'Curated evolution method lookup used by Pokémon evolution edges.';

COMMENT ON COLUMN reference.evolution_methods.description IS 'Stable product-facing definition for this evolution method.';
