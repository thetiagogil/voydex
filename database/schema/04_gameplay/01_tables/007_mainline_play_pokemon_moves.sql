-- ============================================================================
-- Table: gameplay.mainline_play_pokemon_moves
-- Current move slots for play Pokémon.
-- ============================================================================
CREATE TABLE gameplay.mainline_play_pokemon_moves (
    play_pokemon_id uuid NOT NULL REFERENCES gameplay.mainline_play_pokemon (id) ON UPDATE CASCADE ON DELETE CASCADE,
    slot integer NOT NULL,
    move_id integer NOT NULL REFERENCES reference.moves (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT play_pokemon_moves_primary_key PRIMARY KEY (play_pokemon_id, slot),
    CONSTRAINT play_pokemon_moves_slot_range_check CHECK (slot BETWEEN 1 AND 4),
    CONSTRAINT play_pokemon_moves_unique_move UNIQUE (play_pokemon_id, move_id)
);

CREATE TRIGGER set_play_pokemon_moves_updated_at
    BEFORE UPDATE ON gameplay.mainline_play_pokemon_moves
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

CREATE INDEX play_pokemon_moves_move_idx ON gameplay.mainline_play_pokemon_moves (move_id);

COMMENT ON TABLE gameplay.mainline_play_pokemon_moves IS 'Normalized current move slots for a Pokémon recorded in a play.';
