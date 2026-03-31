-- =============================================================================
-- PLAY POKEMON CAUGHT TABLE (renamed from pokemon_caught)
-- Tracks which Pokemon have been caught/registered per play
-- =============================================================================
CREATE TABLE
    gameplay.play_pokemon_caught (
        play_id UUID NOT NULL REFERENCES gameplay.plays (id) ON DELETE CASCADE,
        species_id INTEGER NOT NULL REFERENCES meta.pokemon_species (id) ON DELETE CASCADE,
        form_id INTEGER NOT NULL REFERENCES meta.pokemon_forms (id) ON DELETE CASCADE,
        created_at TIMESTAMP
        WITH
            TIME ZONE DEFAULT NOW (),
            UNIQUE (play_id, species_id, form_id)
    );

CREATE INDEX idx_play_pokemon_caught_play ON gameplay.play_pokemon_caught (play_id);

CREATE INDEX idx_play_pokemon_caught_species ON gameplay.play_pokemon_caught (species_id);

CREATE INDEX idx_play_pokemon_caught_play_species ON gameplay.play_pokemon_caught (play_id, species_id);

CREATE INDEX idx_play_pokemon_caught_form ON gameplay.play_pokemon_caught (form_id);

COMMENT ON TABLE gameplay.play_pokemon_caught IS 'Tracks caught/registered Pokémon per play. form_id is NOT NULL — always reference the specific form (default form for single-form species). Unique on (play_id, species_id, form_id) to allow catching multiple forms.';

-- =============================================================================
-- RLS POLICIES: play_pokemon_caught
-- Users can only manage caught Pokemon for their own plays
-- =============================================================================
ALTER TABLE gameplay.play_pokemon_caught ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.play_pokemon_caught FORCE ROW LEVEL SECURITY;

CREATE POLICY play_pokemon_caught_select ON gameplay.play_pokemon_caught FOR
SELECT
    USING (
        EXISTS (
            SELECT
                1
            FROM
                gameplay.plays
            WHERE
                plays.id = play_id
                AND plays.user_id = auth.uid ()
        )
    );

CREATE POLICY play_pokemon_caught_insert ON gameplay.play_pokemon_caught FOR INSERT
WITH
    CHECK (
        EXISTS (
            SELECT
                1
            FROM
                gameplay.plays
            WHERE
                plays.id = play_id
                AND plays.user_id = auth.uid ()
        )
    );

CREATE POLICY play_pokemon_caught_delete ON gameplay.play_pokemon_caught FOR DELETE USING (
    EXISTS (
        SELECT
            1
        FROM
            gameplay.plays
        WHERE
            plays.id = play_id
            AND plays.user_id = auth.uid ()
    )
);