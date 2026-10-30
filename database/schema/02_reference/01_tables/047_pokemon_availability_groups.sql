-- ============================================================================
-- Table: reference.pokemon_availability_groups
-- Pokémon a save hands out only one of: a one-per-save gift and what it
-- becomes, or an either-or pick.
-- ============================================================================
CREATE TABLE reference.pokemon_availability_groups (
    id integer PRIMARY KEY,
    version_group_id integer NOT NULL REFERENCES reference.version_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    slug text NOT NULL,
    name text NOT NULL,
    kind text NOT NULL,
    note text NOT NULL,
    sort_order integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT pokemon_availability_groups_id_positive_check CHECK (id > 0),
    CONSTRAINT pokemon_availability_groups_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 160),
    CONSTRAINT pokemon_availability_groups_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 200),
    CONSTRAINT pokemon_availability_groups_kind_check CHECK (kind IN ('one-per-save', 'pick-one')),
    CONSTRAINT pokemon_availability_groups_note_length_check CHECK (CHAR_LENGTH(BTRIM(note)) BETWEEN 1 AND 300),
    CONSTRAINT pokemon_availability_groups_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT pokemon_availability_groups_version_group_slug_unique UNIQUE (version_group_id, slug),
    CONSTRAINT pokemon_availability_groups_sort_order_unique UNIQUE (sort_order)
);

COMMENT ON TABLE reference.pokemon_availability_groups IS 'A set of Pokémon a single save can hold only one of. one-per-save: a gift handed out once and the forms it can become (one Kubfu, so one Urshifu). pick-one: an either-or choice (Glastrier or Spectrier).';

COMMENT ON COLUMN reference.pokemon_availability_groups.note IS 'One short line, in our own words, that the Team check shows when a team holds two members.';
