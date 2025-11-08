CREATE TYPE gameplay.status_values AS ENUM ('active', 'completed', 'dropped', 'paused');

CREATE TABLE
  gameplay.plays (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4 (),
    user_id UUID NOT NULL REFERENCES auth.users (id) ON DELETE CASCADE,
    game_id INTEGER NOT NULL REFERENCES meta.games (id),
    name VARCHAR(200) NOT NULL,
    status gameplay.status_values DEFAULT 'active',
    notes TEXT,
    include_unique_pokemon BOOLEAN DEFAULT FALSE,
    include_regional_dex BOOLEAN DEFAULT FALSE,
    include_national_dex BOOLEAN DEFAULT FALSE,
    include_mythical_pokemon BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP
    WITH
      TIME ZONE DEFAULT NOW (),
      updated_at TIMESTAMP
    WITH
      TIME ZONE DEFAULT NOW (),
      UNIQUE (user_id, name)
  );

-- WHAT: Index on user_id (which user owns this playthrough)
-- WHY: Makes it fast to find all playthroughs for a user
-- WHEN USED: "Show me all MY playthroughs" (most common query in the app!)
CREATE INDEX idx_plays_user ON gameplay.plays (user_id);

-- WHAT: Index on game_id (which Pokemon game is being played)
-- WHY: Makes it fast to find all playthroughs of a specific game
-- WHEN USED: "Show me all playthroughs of Pokemon Red"
CREATE INDEX idx_plays_game ON gameplay.plays (game_id);

-- WHAT: Index on status (active, completed, dropped, paused)
-- WHY: Makes it fast to filter playthroughs by status
-- WHEN USED: "Show me only my active playthroughs"
CREATE INDEX idx_plays_status ON gameplay.plays (status);

-- WHAT: Composite index on user + status + updated_at (newest first)
-- WHY: Makes it super fast to show a user's playthroughs filtered by status and sorted by last update
-- WHEN USED: "Show me MY active playthroughs sorted by most recently updated"
CREATE INDEX idx_plays_user_status_updated ON gameplay.plays (user_id, status, updated_at DESC);

-- WHAT: Composite index on user + game together
-- WHY: Makes it fast to find a specific user's playthroughs of a specific game
-- WHEN USED: "Show me all MY playthroughs of Pokemon Red"
CREATE INDEX idx_plays_user_game ON gameplay.plays (user_id, game_id);

-- WHAT: Index on created_at sorted newest first (DESC)
-- WHY: Makes it fast to show recently created playthroughs across all users
-- WHEN USED: "Show me the most recently started playthroughs"
CREATE INDEX idx_plays_created_at_desc ON gameplay.plays (created_at DESC);

-- Enable Row Level Security
ALTER TABLE gameplay.plays ENABLE ROW LEVEL SECURITY;

-- RLS Policies
CREATE POLICY "Users can view own plays" ON gameplay.plays FOR
SELECT
  USING (auth.uid () = user_id);

CREATE POLICY "Users can insert own plays" ON gameplay.plays FOR INSERT
WITH
  CHECK (auth.uid () = user_id);

CREATE POLICY "Users can update own plays" ON gameplay.plays FOR
UPDATE USING (auth.uid () = user_id)
WITH
  CHECK (auth.uid () = user_id);

CREATE POLICY "Users can delete own plays" ON gameplay.plays FOR DELETE USING (auth.uid () = user_id);

-- Trigger for updated_at
CREATE TRIGGER update_plays_updated_at BEFORE
UPDATE ON gameplay.plays FOR EACH ROW EXECUTE FUNCTION update_updated_at_column ();