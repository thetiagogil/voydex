-- ============================================================================
-- Table: reference.locations
-- The places Pokémon are found in: one row per place, shared by every game
-- that has it (Route 1 is one place in Red and in HeartGold).
-- ============================================================================
CREATE TABLE reference.locations (
    id integer PRIMARY KEY,
    region_id integer NOT NULL REFERENCES reference.regions (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    slug text NOT NULL UNIQUE,
    name text NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT locations_id_positive_check CHECK (id > 0),
    CONSTRAINT locations_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 120),
    CONSTRAINT locations_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT locations_region_name_unique UNIQUE (region_id, name)
);

CREATE INDEX locations_region_idx ON reference.locations (region_id);

COMMENT ON TABLE reference.locations IS 'The places Pokémon are found in, one row per place across the games that share it; the name is what the game calls it (Route 1, not Kanto Route 1).';

COMMENT ON COLUMN reference.locations.region_id IS 'The region the place is in; an island group or an expansion''s land belongs to its game''s region.';
