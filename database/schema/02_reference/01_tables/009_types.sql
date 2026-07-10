-- ============================================================================
-- Table: reference.types
-- Pokémon elemental type definitions.
-- ============================================================================
CREATE TABLE reference.types (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    introduced_generation_id integer NOT NULL REFERENCES reference.generations (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT types_id_positive_check CHECK (id > 0),
    CONSTRAINT types_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT types_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 80),
    CONSTRAINT types_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE reference.types IS 'Pokémon elemental types used by Pokémon attributes, moves, and type matchups.';

COMMENT ON COLUMN reference.types.introduced_generation_id IS 'Generation when this type became available.';
