-- ============================================================================
-- Table: reference.game_types
-- Mainline game classification lookup.
-- ============================================================================
CREATE TABLE reference.game_types (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    description text NOT NULL,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT game_types_id_positive_check CHECK (id > 0),
    CONSTRAINT game_types_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT game_types_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT game_types_description_length_check CHECK (CHAR_LENGTH(BTRIM(description)) BETWEEN 1 AND 1000),
    CONSTRAINT game_types_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE reference.game_types IS 'Mainline game classifications such as main, enhanced, remake, and sequel.';

COMMENT ON COLUMN reference.game_types.id IS 'Curated stable game type ID.';

COMMENT ON COLUMN reference.game_types.description IS 'Stable product-facing definition for this game type.';
