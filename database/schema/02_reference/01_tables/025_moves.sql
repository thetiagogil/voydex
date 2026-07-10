-- ============================================================================
-- Table: reference.moves
-- Pokémon move identities.
-- ============================================================================
CREATE TABLE reference.moves (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL,
    move_kind_id integer NOT NULL REFERENCES reference.move_kinds (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    external_id integer UNIQUE,
    introduced_generation_id integer NOT NULL REFERENCES reference.generations (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT moves_id_positive_check CHECK (id > 0),
    CONSTRAINT moves_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 120),
    CONSTRAINT moves_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT moves_external_id_positive_check CHECK (external_id IS NULL OR external_id > 0),
    CONSTRAINT moves_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE reference.moves IS 'Stable Pokémon move identities. Historic mechanics live in reference.move_attributes.';

COMMENT ON COLUMN reference.moves.move_kind_id IS 'Move kind used to filter regular, Z, Max, and G-Max moves in product surfaces.';

COMMENT ON COLUMN reference.moves.external_id IS 'Optional source-specific move ID for audit cross-reference.';
