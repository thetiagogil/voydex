-- ========================================
-- Migration: Gameplay Tables
-- ========================================

-- ========================================
-- PLAYS
-- ========================================
CREATE TABLE gameplay.plays (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  game_id INTEGER NOT NULL REFERENCES meta.games(id),
  name VARCHAR(200) NOT NULL,
  status VARCHAR(20) DEFAULT 'active' CHECK (status IN ('active','completed','dropped','paused')),
  challenge_type VARCHAR(50) DEFAULT 'normal',
  settings JSONB DEFAULT '{}'::jsonb,
  include_unique_pokemon BOOLEAN DEFAULT false,
  include_regional_dex  BOOLEAN DEFAULT false,
  include_national_dex  BOOLEAN DEFAULT false,
  include_mythical_pokemon BOOLEAN DEFAULT false,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  UNIQUE (user_id, name)
);

CREATE INDEX idx_plays_user ON gameplay.plays(user_id);
CREATE INDEX idx_plays_game ON gameplay.plays(game_id);
CREATE INDEX idx_plays_status ON gameplay.plays(status);

-- ========================================
-- TEAM POKÉMON
-- ========================================
CREATE TABLE gameplay.team_pokemon (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  play_id UUID NOT NULL REFERENCES gameplay.plays(id) ON DELETE CASCADE,
  species_id INTEGER NOT NULL REFERENCES dex.pokemon_species(id),
  form_id INTEGER NOT NULL REFERENCES dex.pokemon_forms(id),
  nature_id INTEGER REFERENCES dex.natures(id),
  ability_id INTEGER REFERENCES dex.abilities(id),
  move1_id INTEGER REFERENCES dex.moves(id),
  move2_id INTEGER REFERENCES dex.moves(id),
  move3_id INTEGER REFERENCES dex.moves(id),
  move4_id INTEGER REFERENCES dex.moves(id),
  nickname VARCHAR(50),
  level INTEGER NOT NULL DEFAULT 1 CHECK (level BETWEEN 1 AND 100),
  gender VARCHAR(10) CHECK (gender IN ('male','female','genderless')),
  is_shiny BOOLEAN DEFAULT false,
  held_item_id INTEGER REFERENCES dex.items(id),
  ball_item_id INTEGER REFERENCES dex.items(id),
  team_slot INTEGER NOT NULL CHECK (team_slot BETWEEN 1 AND 20),
  created_at TIMESTAMPTZ DEFAULT now(),
  updated_at TIMESTAMPTZ DEFAULT now(),
  UNIQUE (play_id, team_slot)
);

CREATE INDEX idx_team_play ON gameplay.team_pokemon(play_id);
CREATE INDEX idx_team_species ON gameplay.team_pokemon(species_id);
CREATE INDEX idx_team_form ON gameplay.team_pokemon(form_id);
CREATE INDEX idx_team_items ON gameplay.team_pokemon(held_item_id, ball_item_id);
CREATE INDEX idx_team_slot ON gameplay.team_pokemon(play_id, team_slot);


-- form must belong to species
CREATE OR REPLACE FUNCTION gameplay.enforce_form_belongs_to_species_team()
RETURNS TRIGGER AS $$
DECLARE form_species INT;
BEGIN
  SELECT species_id INTO form_species FROM dex.pokemon_forms WHERE id = NEW.form_id;
  IF form_species IS NULL OR form_species <> NEW.species_id THEN
    RAISE EXCEPTION 'form_id % does not belong to species_id %', NEW.form_id, NEW.species_id;
  END IF;
  RETURN NEW;
END$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trg_team_form_species ON gameplay.team_pokemon;
CREATE TRIGGER trg_team_form_species
BEFORE INSERT OR UPDATE ON gameplay.team_pokemon
FOR EACH ROW EXECUTE FUNCTION gameplay.enforce_form_belongs_to_species_team();

-- ========================================
-- PROGRESS (user ticks off items)
-- ========================================
CREATE TABLE gameplay.progress (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  play_id UUID NOT NULL REFERENCES gameplay.plays(id) ON DELETE CASCADE,
  progress_item_id UUID NOT NULL REFERENCES meta.progress_items(id) ON DELETE CASCADE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  UNIQUE (play_id, progress_item_id)
);

CREATE INDEX idx_progress_play ON gameplay.progress(play_id);
CREATE INDEX idx_progress_item ON gameplay.progress(progress_item_id);
