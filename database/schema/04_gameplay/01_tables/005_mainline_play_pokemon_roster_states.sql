-- ============================================================================
-- Table: gameplay.mainline_play_pokemon_roster_states
-- Current roster state lookup for play Pokémon.
-- ============================================================================
CREATE TABLE gameplay.mainline_play_pokemon_roster_states (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    requires_slot boolean NOT NULL,
    counts_toward_roster_limit boolean NOT NULL,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT play_pokemon_roster_states_id_positive_check CHECK (id > 0),
    CONSTRAINT play_pokemon_roster_states_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT play_pokemon_roster_states_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT play_pokemon_roster_states_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE gameplay.mainline_play_pokemon_roster_states IS 'Lookup for active, reserve, retired, and replaced play Pokémon states.';

COMMENT ON COLUMN gameplay.mainline_play_pokemon_roster_states.requires_slot IS 'True for current roster states that require a slot.';

COMMENT ON COLUMN gameplay.mainline_play_pokemon_roster_states.counts_toward_roster_limit IS 'True for states that count toward current roster caps.';
