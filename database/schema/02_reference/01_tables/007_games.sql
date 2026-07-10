-- ============================================================================
-- Table: reference.games
-- Individual games that belong to a Voydex product family.
-- ============================================================================
CREATE TABLE reference.games (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    product_family_id integer NOT NULL REFERENCES reference.product_families (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    generation_id integer NOT NULL,
    region_id integer NOT NULL REFERENCES reference.regions (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    version_group_id integer NOT NULL,
    game_type_id integer NOT NULL REFERENCES reference.game_types (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    release_year integer NOT NULL,
    sort_order integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT games_id_positive_check CHECK (id > 0),
    CONSTRAINT games_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 120),
    CONSTRAINT games_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 160),
    CONSTRAINT games_release_year_check CHECK (release_year BETWEEN 1996 AND 2100),
    CONSTRAINT games_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT games_id_version_group_unique UNIQUE (id, version_group_id),
    CONSTRAINT games_version_group_sort_order_unique UNIQUE (version_group_id, sort_order),
    CONSTRAINT games_version_group_generation_fkey FOREIGN KEY (version_group_id, generation_id) REFERENCES reference.version_groups (id, generation_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

COMMENT ON TABLE reference.games IS 'Individual games that belong to a Voydex product family and can be selected where that product family supports games.';

COMMENT ON COLUMN reference.games.product_family_id IS 'Pokémon product family that owns this game experience.';

COMMENT ON COLUMN reference.games.version_group_id IS 'Base content scope shared by one or more games.';

COMMENT ON COLUMN reference.games.game_type_id IS 'Mainline game classification.';
