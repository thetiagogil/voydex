-- ============================================================================
-- Table: reference.encounter_ways
-- The ways a Pokémon is met at a place: walking, surfing, fishing with the
-- rod it takes, a raid den, a gift.
-- ============================================================================
CREATE TABLE reference.encounter_ways (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT encounter_ways_id_positive_check CHECK (id > 0),
    CONSTRAINT encounter_ways_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT encounter_ways_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 80),
    CONSTRAINT encounter_ways_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE reference.encounter_ways IS 'The ways a Pokémon is met at a place, from walking in tall grass to a gift, in the order they read; fishing names the rod it takes.';
