-- ============================================================================
-- Table: reference.move_kinds
-- Move identity categories used for filtering regular, Z, Max, and G-Max moves.
-- ============================================================================
CREATE TABLE reference.move_kinds (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    description text NOT NULL,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT move_kinds_id_positive_check CHECK (id > 0),
    CONSTRAINT move_kinds_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT move_kinds_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 80),
    CONSTRAINT move_kinds_description_length_check CHECK (CHAR_LENGTH(BTRIM(description)) BETWEEN 1 AND 1000),
    CONSTRAINT move_kinds_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE reference.move_kinds IS 'Move identity categories for UI filtering and learnset/planning rules.';

COMMENT ON COLUMN reference.move_kinds.description IS 'Stable product-facing definition for this move kind.';
