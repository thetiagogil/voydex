-- ============================================================================
-- Table: gameplay.mainline_play_event_team_snapshots
-- Historical team member snapshots attached to play events.
-- ============================================================================
CREATE TABLE gameplay.mainline_play_event_team_snapshots (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid (),
    event_id uuid NOT NULL,
    play_id uuid NOT NULL,
    play_pokemon_id uuid,
    position integer NOT NULL,
    species_id integer NOT NULL REFERENCES reference.pokemon_species (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    form_id integer NOT NULL,
    nickname text,
    level integer,
    gender text NOT NULL DEFAULT 'unknown',
    is_shiny boolean NOT NULL DEFAULT FALSE,
    nature_id integer REFERENCES reference.natures (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    ability_id integer REFERENCES reference.abilities (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    held_item_id integer REFERENCES reference.items (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    notes text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT play_event_team_snapshots_event_play_fkey FOREIGN KEY (event_id, play_id) REFERENCES gameplay.mainline_play_events (id, play_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT play_event_team_snapshots_play_pokemon_play_fkey FOREIGN KEY (play_pokemon_id, play_id) REFERENCES gameplay.mainline_play_pokemon (id, play_id) ON UPDATE CASCADE ON DELETE SET NULL (play_pokemon_id),
    CONSTRAINT play_event_team_snapshots_form_fkey FOREIGN KEY (species_id, form_id) REFERENCES reference.pokemon_forms (species_id, id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT play_event_team_snapshots_id_play_unique UNIQUE (id, play_id),
    CONSTRAINT play_event_team_snapshots_event_position_unique UNIQUE (event_id, position),
    CONSTRAINT play_event_team_snapshots_position_range_check CHECK (position BETWEEN 1 AND 12),
    CONSTRAINT play_event_team_snapshots_level_range_check CHECK (level IS NULL OR level BETWEEN 1 AND 100),
    CONSTRAINT play_event_team_snapshots_gender_check CHECK (gender IN ('male', 'female', 'genderless', 'unknown')),
    CONSTRAINT play_event_team_snapshots_nickname_length_check CHECK (nickname IS NULL OR CHAR_LENGTH(BTRIM(nickname)) BETWEEN 1 AND 100),
    CONSTRAINT play_event_team_snapshots_notes_length_check CHECK (notes IS NULL OR CHAR_LENGTH(BTRIM(notes)) BETWEEN 1 AND 5000)
);

CREATE INDEX play_event_team_snapshots_event_play_idx ON gameplay.mainline_play_event_team_snapshots (event_id, play_id);

CREATE INDEX play_event_team_snapshots_play_idx ON gameplay.mainline_play_event_team_snapshots (play_id);

CREATE INDEX play_event_team_snapshots_play_pokemon_play_idx ON gameplay.mainline_play_event_team_snapshots (play_pokemon_id, play_id)
WHERE
    play_pokemon_id IS NOT NULL;

CREATE INDEX play_event_team_snapshots_identity_idx ON gameplay.mainline_play_event_team_snapshots (species_id, form_id);

CREATE INDEX play_event_team_snapshots_nature_idx ON gameplay.mainline_play_event_team_snapshots (nature_id)
WHERE
    nature_id IS NOT NULL;

CREATE INDEX play_event_team_snapshots_ability_idx ON gameplay.mainline_play_event_team_snapshots (ability_id)
WHERE
    ability_id IS NOT NULL;

CREATE INDEX play_event_team_snapshots_held_item_idx ON gameplay.mainline_play_event_team_snapshots (held_item_id)
WHERE
    held_item_id IS NOT NULL;

COMMENT ON TABLE gameplay.mainline_play_event_team_snapshots IS 'Historical display copies of team members attached to events such as milestone completions and Hall of Fame.';

COMMENT ON COLUMN gameplay.mainline_play_event_team_snapshots.position IS 'Snapshot display position. Usually active party slots 1 to 6; custom snapshots can use up to 12.';
