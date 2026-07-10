-- ============================================================================
-- Table: reference.generations
-- Pokémon generation definitions.
-- ============================================================================
CREATE TABLE reference.generations (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    start_year integer NOT NULL,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT generations_id_positive_check CHECK (id > 0),
    CONSTRAINT generations_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT generations_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT generations_start_year_check CHECK (start_year BETWEEN 1996 AND 2100),
    CONSTRAINT generations_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE reference.generations IS 'Pokémon generation definitions used by games, Pokémon, and mechanics timelines.';

COMMENT ON COLUMN reference.generations.id IS 'Curated stable generation ID.';

COMMENT ON COLUMN reference.generations.start_year IS 'First official release year for the generation.';
