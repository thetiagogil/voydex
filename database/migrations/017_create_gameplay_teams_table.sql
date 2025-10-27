CREATE TABLE
  gameplay.team_pokemon (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4 (),
    play_id UUID NOT NULL REFERENCES gameplay.plays (id) ON DELETE CASCADE,
    species_id INTEGER NOT NULL REFERENCES dex.pokemon_species (id),
    form_id INTEGER NOT NULL REFERENCES dex.pokemon_forms (id),
    nature_id INTEGER REFERENCES dex.natures (id),
    ability_id INTEGER REFERENCES dex.abilities (id),
    move1_id INTEGER REFERENCES dex.moves (id),
    move2_id INTEGER REFERENCES dex.moves (id),
    move3_id INTEGER REFERENCES dex.moves (id),
    move4_id INTEGER REFERENCES dex.moves (id),
    nickname VARCHAR(50),
    level INTEGER NOT NULL DEFAULT 1 CHECK (level BETWEEN 1 AND 100),
    gender VARCHAR(10) CHECK (gender IN ('male', 'female', 'genderless')),
    is_shiny BOOLEAN DEFAULT FALSE,
    team_slot INTEGER NOT NULL CHECK (team_slot BETWEEN 1 AND 20),
    created_at TIMESTAMPTZ DEFAULT now (),
    updated_at TIMESTAMPTZ DEFAULT now (),
    UNIQUE (play_id, team_slot)
  );

CREATE INDEX idx_team_play ON gameplay.team_pokemon (play_id);

CREATE INDEX idx_team_species ON gameplay.team_pokemon (species_id);

CREATE INDEX idx_team_form ON gameplay.team_pokemon (form_id);

CREATE INDEX idx_team_slot ON gameplay.team_pokemon (play_id, team_slot);