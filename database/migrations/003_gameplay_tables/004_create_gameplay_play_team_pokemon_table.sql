-- =============================================================================
-- PLAY TEAM POKEMON TABLE (renamed from pokemon_team)
-- Pokemon on a player's team for a specific playthrough
-- =============================================================================
CREATE TABLE
    gameplay.play_team_pokemon (
        id UUID PRIMARY KEY DEFAULT uuid_generate_v4 (),
        play_id UUID NOT NULL REFERENCES gameplay.plays (id) ON DELETE CASCADE,
        species_id INTEGER NOT NULL REFERENCES meta.pokemon_species (id),
        form_id INTEGER NOT NULL REFERENCES meta.pokemon_forms (id),
        nature_id INTEGER REFERENCES meta.natures (id),
        ability_id INTEGER REFERENCES meta.abilities (id),
        held_item_id INTEGER REFERENCES meta.items (id),
        move1_id INTEGER REFERENCES meta.moves (id),
        move2_id INTEGER REFERENCES meta.moves (id),
        move3_id INTEGER REFERENCES meta.moves (id),
        move4_id INTEGER REFERENCES meta.moves (id),
        nickname VARCHAR(50),
        level INTEGER NOT NULL DEFAULT 1 CHECK (level BETWEEN 1 AND 100),
        gender VARCHAR(10) CHECK (gender IN ('male', 'female', 'genderless')),
        is_shiny BOOLEAN DEFAULT FALSE,
        position INTEGER NOT NULL CHECK (position BETWEEN 1 AND 12),
        created_at TIMESTAMPTZ DEFAULT NOW (),
        updated_at TIMESTAMPTZ DEFAULT NOW (),
        UNIQUE (play_id, position)
    );

CREATE INDEX idx_play_team_pokemon_play ON gameplay.play_team_pokemon (play_id);

CREATE INDEX idx_play_team_pokemon_species ON gameplay.play_team_pokemon (species_id);

CREATE INDEX idx_play_team_pokemon_form ON gameplay.play_team_pokemon (form_id);

CREATE INDEX idx_play_team_pokemon_position ON gameplay.play_team_pokemon (play_id, position);

CREATE INDEX idx_play_team_pokemon_play_updated ON gameplay.play_team_pokemon (play_id, updated_at DESC);

CREATE INDEX idx_play_team_pokemon_nature ON gameplay.play_team_pokemon (nature_id)
WHERE
    nature_id IS NOT NULL;

CREATE INDEX idx_play_team_pokemon_ability ON gameplay.play_team_pokemon (ability_id)
WHERE
    ability_id IS NOT NULL;

CREATE INDEX idx_play_team_pokemon_held_item ON gameplay.play_team_pokemon (held_item_id)
WHERE
    held_item_id IS NOT NULL;

CREATE INDEX idx_play_team_pokemon_shiny ON gameplay.play_team_pokemon (play_id, is_shiny)
WHERE
    is_shiny = TRUE;

CREATE TRIGGER update_play_team_pokemon_updated_at BEFORE
UPDATE ON gameplay.play_team_pokemon FOR EACH ROW EXECUTE FUNCTION update_updated_at_column ();

-- =============================================================================
-- RLS POLICIES: play_team_pokemon
-- Users can only manage team Pokemon for their own plays
-- =============================================================================
ALTER TABLE gameplay.play_team_pokemon ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.play_team_pokemon FORCE ROW LEVEL SECURITY;

CREATE POLICY play_team_pokemon_select ON gameplay.play_team_pokemon FOR
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

CREATE POLICY play_team_pokemon_insert ON gameplay.play_team_pokemon FOR INSERT
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

CREATE POLICY play_team_pokemon_update ON gameplay.play_team_pokemon FOR
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

CREATE POLICY play_team_pokemon_delete ON gameplay.play_team_pokemon FOR DELETE USING (
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