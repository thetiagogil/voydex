-- ============================================================================
-- Table: reference.tera_types
-- The types a Pokémon can Terastallize into.
-- ============================================================================
CREATE TABLE reference.tera_types (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    type_id integer UNIQUE REFERENCES reference.types (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    introduced_version_group_id integer NOT NULL REFERENCES reference.version_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT tera_types_id_positive_check CHECK (id > 0),
    CONSTRAINT tera_types_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT tera_types_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 80),
    CONSTRAINT tera_types_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT tera_types_type_id_matches_check CHECK (type_id IS NULL OR type_id = id)
);

COMMENT ON TABLE reference.tera_types IS 'Tera Types: the 18 types, whose id equals their reference.types id, plus Stellar, which has no type.';

COMMENT ON COLUMN reference.tera_types.type_id IS 'The matching type. NULL only for Stellar.';

COMMENT ON COLUMN reference.tera_types.introduced_version_group_id IS 'First version group with this Tera Type: Scarlet / Violet for the 18 types, The Indigo Disk for Stellar.';
