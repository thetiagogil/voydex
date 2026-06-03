-- ============================================================================
-- Table: gameplay.plays
-- User playthroughs. Central gameplay entity, RLS-protected by user_id.
-- ============================================================================
CREATE TABLE
  gameplay.plays (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    user_id UUID NOT NULL REFERENCES public.users (id) ON DELETE CASCADE,
    game_id INTEGER NOT NULL REFERENCES reference.games (id),
    status_id INTEGER NOT NULL DEFAULT 1 REFERENCES gameplay.play_statuses (id),
    name VARCHAR(200) NOT NULL,
    notes TEXT,
    include_pokedex BOOLEAN NOT NULL DEFAULT TRUE,
    include_other_pokedex BOOLEAN NOT NULL DEFAULT TRUE,
    include_mythical_pokemon BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
    UNIQUE (user_id, name),
    CHECK (
      include_pokedex = TRUE
      OR include_other_pokedex = FALSE
    )
  );

-- Trigger: auto-update updated_at
CREATE TRIGGER update_plays_updated_at BEFORE
UPDATE ON gameplay.plays FOR EACH ROW EXECUTE FUNCTION update_updated_at_column ();

-- ============================================================================
-- RLS: ownership via auth.uid() = user_id
-- ============================================================================
ALTER TABLE gameplay.plays ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.plays FORCE ROW LEVEL SECURITY;

CREATE POLICY plays_select ON gameplay.plays FOR
SELECT
  USING (auth.uid () = user_id);

CREATE POLICY plays_insert ON gameplay.plays FOR INSERT
WITH
  CHECK (auth.uid () = user_id);

CREATE POLICY plays_update ON gameplay.plays FOR
UPDATE USING (auth.uid () = user_id)
WITH
  CHECK (auth.uid () = user_id);

CREATE POLICY plays_delete ON gameplay.plays FOR DELETE USING (auth.uid () = user_id);