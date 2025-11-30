CREATE TABLE
  gameplay.team (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4 (),
    play_id UUID NOT NULL REFERENCES gameplay.plays (id) ON DELETE CASCADE,
    species_id INTEGER NOT NULL REFERENCES meta.pokemon_species (id),
    form_id INTEGER NOT NULL REFERENCES meta.pokemon_forms (id),
    nature_id INTEGER REFERENCES meta.natures (id),
    ability_id INTEGER REFERENCES meta.abilities (id),
    move1_id INTEGER REFERENCES meta.moves (id),
    move2_id INTEGER REFERENCES meta.moves (id),
    move3_id INTEGER REFERENCES meta.moves (id),
    move4_id INTEGER REFERENCES meta.moves (id),
    nickname VARCHAR(50),
    level INTEGER NOT NULL DEFAULT 1 CHECK (level BETWEEN 1 AND 100),
    gender VARCHAR(10) CHECK (gender IN ('male', 'female', 'genderless')),
    is_shiny BOOLEAN DEFAULT FALSE,
    position INTEGER NOT NULL CHECK (position BETWEEN 1 AND 12),
    created_at TIMESTAMPTZ DEFAULT now (),
    updated_at TIMESTAMPTZ DEFAULT now ()
  );

-- WHAT: Index on play_id (which playthrough this Pokemon belongs to)
-- WHY: Makes it fast to find all Pokemon in a team
-- WHEN USED: "Show me all Pokemon in MY team for this playthrough"
CREATE INDEX idx_team_play ON gameplay.team (play_id);

-- WHAT: Index on species_id (which Pokemon species)
-- WHY: Makes it fast to find all instances of a species across teams
-- WHEN USED: "How many times have I used Pikachu in my teams?"
CREATE INDEX idx_team_species ON gameplay.team (species_id);

-- WHAT: Index on form_id (which specific form of the Pokemon)
-- WHY: Makes it fast to find specific forms across teams
-- WHEN USED: "How many times have I used Alolan Vulpix?"
CREATE INDEX idx_team_form ON gameplay.team (form_id);

-- WHAT: Composite index on play_id + position together
-- WHY: Makes it fast to find a Pokemon at a specific position in a team
-- WHEN USED: "Show me the Pokemon in position 1 of this team"
CREATE INDEX idx_team_position ON gameplay.team (play_id, position);

-- WHAT: Composite index on play_id + updated_at (newest first)
-- WHY: Makes it fast to see recently updated Pokemon in a team
-- WHEN USED: "Show me recently modified Pokemon in this playthrough"
CREATE INDEX idx_team_play_updated ON gameplay.team (play_id, updated_at DESC);

-- WHAT: Partial index on nature_id (ONLY when nature is set, not null)
-- WHY: Saves space by only indexing Pokemon that have a nature assigned
-- WHEN USED: "Show me all Pokemon with Adamant nature"
CREATE INDEX idx_team_nature ON gameplay.team (nature_id)
WHERE
  nature_id IS NOT NULL;

-- WHAT: Partial index on ability_id (ONLY when ability is set, not null)
-- WHY: Saves space by only indexing Pokemon that have an ability assigned
-- WHEN USED: "Show me all Pokemon with Intimidate ability"
CREATE INDEX idx_team_ability ON gameplay.team (ability_id)
WHERE
  ability_id IS NOT NULL;

-- WHAT: Partial index on shiny Pokemon (ONLY when is_shiny is TRUE)
-- WHY: Saves space since most Pokemon aren't shiny - only indexes the rare ones!
-- WHEN USED: "Show me all my shiny Pokemon" or "How many shinies do I have?"
CREATE INDEX idx_team_shiny ON gameplay.team (play_id, is_shiny)
WHERE
  is_shiny = TRUE;

-- Trigger for updated_at
CREATE TRIGGER update_team_updated_at BEFORE
UPDATE ON gameplay.team FOR EACH ROW EXECUTE FUNCTION update_updated_at_column ();