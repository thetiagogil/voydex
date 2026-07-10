-- ============================================================================
-- Table: reference.egg_groups
-- Pokémon egg group definitions.
-- ============================================================================
CREATE TABLE reference.egg_groups (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    introduced_generation_id integer NOT NULL REFERENCES reference.generations (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT egg_groups_id_positive_check CHECK (id > 0),
    CONSTRAINT egg_groups_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT egg_groups_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 80),
    CONSTRAINT egg_groups_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE reference.egg_groups IS 'Pokémon egg group definitions used by generation-aware Pokémon attributes.';
