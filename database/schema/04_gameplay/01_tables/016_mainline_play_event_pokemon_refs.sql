-- ============================================================================
-- Table: gameplay.mainline_play_event_pokemon_refs
-- Event-time Pokémon identities linked to timeline events.
-- ============================================================================
CREATE TABLE gameplay.mainline_play_event_pokemon_refs (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid (),
    event_id uuid NOT NULL,
    play_id uuid NOT NULL,
    play_pokemon_id uuid,
    role TEXT NOT NULL,
    species_id integer NOT NULL REFERENCES reference.pokemon_species (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    form_id integer NOT NULL,
    nickname text,
    level integer,
    sort_order integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT play_event_pokemon_refs_event_play_fkey FOREIGN KEY (event_id, play_id) REFERENCES gameplay.mainline_play_events (id, play_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT play_event_pokemon_refs_play_pokemon_play_fkey FOREIGN KEY (play_pokemon_id, play_id) REFERENCES gameplay.mainline_play_pokemon (id, play_id) ON UPDATE CASCADE ON DELETE SET NULL (play_pokemon_id),
    CONSTRAINT play_event_pokemon_refs_form_fkey FOREIGN KEY (species_id, form_id) REFERENCES reference.pokemon_forms (species_id, id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT play_event_pokemon_refs_event_sort_unique UNIQUE (event_id, sort_order),
    CONSTRAINT play_event_pokemon_refs_role_check CHECK (ROLE IN ('subject', 'from', 'to', 'replaced', 'replacement')),
    CONSTRAINT play_event_pokemon_refs_level_range_check CHECK (level IS NULL OR level BETWEEN 1 AND 100),
    CONSTRAINT play_event_pokemon_refs_nickname_length_check CHECK (nickname IS NULL OR CHAR_LENGTH(BTRIM(nickname)) BETWEEN 1 AND 100),
    CONSTRAINT play_event_pokemon_refs_sort_order_positive_check CHECK (sort_order > 0)
);

CREATE INDEX play_event_pokemon_refs_event_play_idx ON gameplay.mainline_play_event_pokemon_refs (event_id, play_id);

CREATE INDEX play_event_pokemon_refs_play_idx ON gameplay.mainline_play_event_pokemon_refs (play_id);

CREATE INDEX play_event_pokemon_refs_play_pokemon_play_idx ON gameplay.mainline_play_event_pokemon_refs (play_pokemon_id, play_id)
WHERE
    play_pokemon_id IS NOT NULL;

CREATE INDEX play_event_pokemon_refs_identity_idx ON gameplay.mainline_play_event_pokemon_refs (species_id, form_id);

COMMENT ON TABLE gameplay.mainline_play_event_pokemon_refs IS 'Event-time Pokémon identity rows used for history, Collection, and reuse checks.';

COMMENT ON COLUMN gameplay.mainline_play_event_pokemon_refs.play_id IS 'Duplicated from the event to enforce same-play integrity with event and play Pokémon FKs.';
