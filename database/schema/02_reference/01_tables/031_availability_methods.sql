-- ============================================================================
-- Table: reference.availability_methods
-- Curated availability method/context lookup.
-- ============================================================================
CREATE TABLE reference.availability_methods (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    description text NOT NULL,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT availability_methods_id_positive_check CHECK (id > 0),
    CONSTRAINT availability_methods_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:_[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT availability_methods_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT availability_methods_description_length_check CHECK (CHAR_LENGTH(BTRIM(description)) BETWEEN 1 AND 1000),
    CONSTRAINT availability_methods_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE reference.availability_methods IS 'Stable availability methods used by Pokémon, item, and planning availability queries.';

COMMENT ON COLUMN reference.availability_methods.description IS 'Stable product-facing definition for this availability method.';
