-- ============================================================================
-- Table: gameplay.mainline_play_pokemon
-- Pokémon recorded in a play.
-- ============================================================================
CREATE TABLE gameplay.mainline_play_pokemon (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid (),
    play_id uuid NOT NULL REFERENCES gameplay.mainline_plays (id) ON UPDATE CASCADE ON DELETE CASCADE,
    roster_state_id integer NOT NULL REFERENCES gameplay.mainline_play_pokemon_roster_states (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    slot integer,
    species_id integer NOT NULL REFERENCES reference.pokemon_species (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    form_id integer NOT NULL,
    nickname text,
    level integer,
    gender text NOT NULL DEFAULT 'unknown',
    is_shiny boolean NOT NULL DEFAULT FALSE,
    nature_id integer REFERENCES reference.natures (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    ability_id integer REFERENCES reference.abilities (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    held_item_id integer REFERENCES reference.items (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    met_location_label text,
    met_level integer,
    ball_item_id integer REFERENCES reference.items (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    personal_notes text,
    is_mvp boolean NOT NULL DEFAULT FALSE,
    final_status text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT play_pokemon_form_fkey FOREIGN KEY (species_id, form_id) REFERENCES reference.pokemon_forms (species_id, id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT play_pokemon_id_play_unique UNIQUE (id, play_id),
    CONSTRAINT play_pokemon_slot_range_check CHECK (slot IS NULL OR slot BETWEEN 1 AND 12),
    CONSTRAINT play_pokemon_current_slot_check CHECK ((roster_state_id = 1 AND slot BETWEEN 1 AND 6) OR (roster_state_id = 2 AND slot BETWEEN 7 AND 12) OR (roster_state_id IN (3, 4) AND slot IS NULL)),
    CONSTRAINT play_pokemon_level_range_check CHECK (level IS NULL OR level BETWEEN 1 AND 100),
    CONSTRAINT play_pokemon_met_level_range_check CHECK (met_level IS NULL OR met_level BETWEEN 1 AND 100),
    CONSTRAINT play_pokemon_gender_check CHECK (gender IN ('male', 'female', 'genderless', 'unknown')),
    CONSTRAINT play_pokemon_nickname_length_check CHECK (nickname IS NULL OR CHAR_LENGTH(BTRIM(nickname)) BETWEEN 1 AND 100),
    CONSTRAINT play_pokemon_met_location_length_check CHECK (met_location_label IS NULL OR CHAR_LENGTH(BTRIM(met_location_label)) BETWEEN 1 AND 200),
    CONSTRAINT play_pokemon_personal_notes_length_check CHECK (personal_notes IS NULL OR CHAR_LENGTH(BTRIM(personal_notes)) BETWEEN 1 AND 5000),
    CONSTRAINT play_pokemon_final_status_format_check CHECK (final_status IS NULL OR (final_status = LOWER(final_status) AND final_status ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(final_status) <= 80))
);

CREATE TRIGGER set_play_pokemon_updated_at
    BEFORE UPDATE ON gameplay.mainline_play_pokemon
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

CREATE UNIQUE INDEX play_pokemon_play_slot_unique ON gameplay.mainline_play_pokemon (play_id, slot)
WHERE
    slot IS NOT NULL;

CREATE INDEX play_pokemon_play_roster_state_idx ON gameplay.mainline_play_pokemon (play_id, roster_state_id);

CREATE INDEX play_pokemon_roster_state_idx ON gameplay.mainline_play_pokemon (roster_state_id);

CREATE INDEX play_pokemon_play_identity_idx ON gameplay.mainline_play_pokemon (play_id, species_id, form_id);

CREATE INDEX play_pokemon_identity_idx ON gameplay.mainline_play_pokemon (species_id, form_id);

CREATE INDEX play_pokemon_nature_idx ON gameplay.mainline_play_pokemon (nature_id)
WHERE
    nature_id IS NOT NULL;

CREATE INDEX play_pokemon_ability_idx ON gameplay.mainline_play_pokemon (ability_id)
WHERE
    ability_id IS NOT NULL;

CREATE INDEX play_pokemon_held_item_idx ON gameplay.mainline_play_pokemon (held_item_id)
WHERE
    held_item_id IS NOT NULL;

CREATE INDEX play_pokemon_ball_item_idx ON gameplay.mainline_play_pokemon (ball_item_id)
WHERE
    ball_item_id IS NOT NULL;

COMMENT ON TABLE gameplay.mainline_play_pokemon IS 'Pokémon recorded in a play. Current identity can change through recorded evolutions or form changes.';

COMMENT ON COLUMN gameplay.mainline_play_pokemon.roster_state_id IS 'Stable lookup IDs: 1 active, 2 reserve, 3 retired, 4 replaced.';

COMMENT ON COLUMN gameplay.mainline_play_pokemon.slot IS 'Current roster slot. Active uses 1 to 6; reserve uses 7 to 12; retired/replaced rows have no slot.';
