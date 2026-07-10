-- ============================================================================
-- Table: reference.natures
-- Pokémon nature definitions.
-- ============================================================================
CREATE TABLE reference.natures (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    introduced_generation_id integer NOT NULL REFERENCES reference.generations (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    increased_stat text,
    decreased_stat text,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT natures_id_positive_check CHECK (id > 0),
    CONSTRAINT natures_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT natures_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 80),
    CONSTRAINT natures_increased_stat_check CHECK (increased_stat IS NULL OR increased_stat IN ('attack', 'defense', 'special_attack', 'special_defense', 'speed')),
    CONSTRAINT natures_decreased_stat_check CHECK (decreased_stat IS NULL OR decreased_stat IN ('attack', 'defense', 'special_attack', 'special_defense', 'speed')),
    CONSTRAINT natures_stat_pair_check CHECK ((increased_stat IS NULL AND decreased_stat IS NULL) OR (increased_stat IS NOT NULL AND decreased_stat IS NOT NULL AND increased_stat <> decreased_stat)),
    CONSTRAINT natures_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE reference.natures IS 'Pokémon natures and their stat modifiers. Neutral natures use null modifier fields.';
