-- ============================================================================
-- Table: reference.regions
-- Pokémon world region definitions.
-- ============================================================================
CREATE TABLE reference.regions (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT regions_id_positive_check CHECK (id > 0),
    CONSTRAINT regions_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT regions_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT regions_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE reference.regions IS 'Pokémon world regions associated with mainline games.';

COMMENT ON COLUMN reference.regions.id IS 'Curated stable region ID.';
