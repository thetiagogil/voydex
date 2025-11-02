CREATE TABLE
  gameplay.pokemon_caught (play_id UUID NOT NULL REFERENCES gameplay.plays (id) ON DELETE CASCADE, species_id INTEGER NOT NULL REFERENCES dex.pokemon_species (id) ON DELETE CASCADE, form_id INTEGER REFERENCES dex.pokemon_forms (id) ON DELETE CASCADE, UNIQUE (play_id, species_id));

CREATE INDEX idx_pokemon_caught_play ON gameplay.pokemon_caught (play_id);

CREATE INDEX idx_pokemon_caught_species ON gameplay.pokemon_caught (species_id);

CREATE INDEX idx_pokemon_caught_form ON gameplay.pokemon_caught (form_id);

-- Enable Row Level Security
ALTER TABLE gameplay.pokemon_caught ENABLE ROW LEVEL SECURITY;

-- RLS Policies
CREATE POLICY "Users can view own caught pokemon" ON gameplay.pokemon_caught FOR
SELECT
  USING (
    auth.uid () IN (
      SELECT
        user_id
      FROM
        gameplay.plays
      WHERE
        id = pokemon_caught.play_id
    )
  );

CREATE POLICY "Users can insert own caught pokemon" ON gameplay.pokemon_caught FOR INSERT
WITH
  CHECK (
    auth.uid () IN (
      SELECT
        user_id
      FROM
        gameplay.plays
      WHERE
        id = pokemon_caught.play_id
    )
  );

CREATE POLICY "Users can delete own caught pokemon" ON gameplay.pokemon_caught FOR DELETE USING (
  auth.uid () IN (
    SELECT
      user_id
    FROM
      gameplay.plays
    WHERE
      id = pokemon_caught.play_id
  )
);