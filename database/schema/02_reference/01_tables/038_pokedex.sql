-- ============================================================================
-- Table: reference.pokedex
-- Pokedex definitions by version group.
-- ============================================================================
CREATE TABLE reference.pokedex (
    id integer PRIMARY KEY,
    version_group_id integer NOT NULL REFERENCES reference.version_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    slug text NOT NULL,
    name text NOT NULL,
    pokedex_kind text NOT NULL,
    is_completion_relevant boolean NOT NULL DEFAULT TRUE,
    sort_order integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT pokedex_id_positive_check CHECK (id > 0),
    CONSTRAINT pokedex_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 120),
    CONSTRAINT pokedex_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 160),
    CONSTRAINT pokedex_kind_check CHECK (pokedex_kind IN ('national', 'regional', 'local', 'dlc', 'special')),
    CONSTRAINT pokedex_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT pokedex_version_group_slug_unique UNIQUE (version_group_id, slug),
    CONSTRAINT pokedex_version_group_sort_order_unique UNIQUE (version_group_id, sort_order)
);

COMMENT ON TABLE reference.pokedex IS 'Pokedex scopes by version group, including completion dexes, browse-only local sections, and optional DLC dexes.';

COMMENT ON COLUMN reference.pokedex.is_completion_relevant IS 'True when this Pokedex is a completion-counting scope. False for browse-only local sections covered by an aggregate regional Pokedex.';
