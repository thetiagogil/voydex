-- ============================================================================
-- Table: gameplay.pokemon_team
-- Pokemon team members for a playthrough. Max 12 (6 active + 6 reserves).
-- ============================================================================
CREATE TABLE
    gameplay.pokemon_team (
        id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
        play_id UUID NOT NULL REFERENCES gameplay.plays (id) ON DELETE CASCADE,
        species_id INTEGER NOT NULL REFERENCES meta.pokemon_species (id),
        form_id INTEGER NOT NULL REFERENCES meta.pokemon_forms (id),
        position INTEGER NOT NULL,
        nickname VARCHAR(100),
        level INTEGER NOT NULL DEFAULT 1 CHECK (level BETWEEN 1 AND 100),
        gender VARCHAR(10) DEFAULT 'unknown',
        is_shiny BOOLEAN NOT NULL DEFAULT FALSE,
        nature_id INTEGER REFERENCES meta.natures (id),
        ability_id INTEGER REFERENCES meta.abilities (id),
        move1_id INTEGER REFERENCES meta.moves (id),
        move2_id INTEGER REFERENCES meta.moves (id),
        move3_id INTEGER REFERENCES meta.moves (id),
        move4_id INTEGER REFERENCES meta.moves (id),
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        UNIQUE (play_id, position)
    );

-- Indexes
CREATE INDEX idx_pokemon_team_play ON gameplay.pokemon_team (play_id);

CREATE INDEX idx_pokemon_team_species ON gameplay.pokemon_team (species_id);

CREATE INDEX idx_pokemon_team_play_position ON gameplay.pokemon_team (play_id, position);

-- Trigger: auto-update updated_at
CREATE TRIGGER update_pokemon_team_updated_at BEFORE
UPDATE ON gameplay.pokemon_team FOR EACH ROW EXECUTE FUNCTION update_updated_at_column ();

-- Comments
COMMENT ON TABLE gameplay.pokemon_team IS 'Pokemon team members per play. Positions 1-6 are active, 7-12 are reserves.';

-- ============================================================================
-- RLS: ownership via parent play
-- ============================================================================
ALTER TABLE gameplay.pokemon_team ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.pokemon_team FORCE ROW LEVEL SECURITY;

CREATE POLICY pokemon_team_select ON gameplay.pokemon_team FOR
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

CREATE POLICY pokemon_team_insert ON gameplay.pokemon_team FOR INSERT
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

CREATE POLICY pokemon_team_update ON gameplay.pokemon_team FOR
UPDATE USING (
    EXISTS (
        SELECT
            1
        FROM
            gameplay.plays
        WHERE
            plays.id = play_id
            AND plays.user_id = auth.uid ()
    )
)
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

CREATE POLICY pokemon_team_delete ON gameplay.pokemon_team FOR DELETE USING (
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