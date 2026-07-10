-- ============================================================================
-- Table: reference.abilities
-- Pokémon ability identities.
-- ============================================================================
CREATE TABLE reference.abilities (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL,
    external_id integer UNIQUE,
    introduced_generation_id integer NOT NULL REFERENCES reference.generations (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT abilities_id_positive_check CHECK (id > 0),
    CONSTRAINT abilities_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 120),
    CONSTRAINT abilities_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT abilities_external_id_positive_check CHECK (external_id IS NULL OR external_id > 0),
    CONSTRAINT abilities_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE reference.abilities IS 'Stable Pokémon ability identities. Historic mechanics live in reference.ability_attributes.';

COMMENT ON COLUMN reference.abilities.external_id IS 'Optional source-specific ability ID for audit cross-reference.';
