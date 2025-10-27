CREATE TABLE
  gameplay.pokemon_caught (play_id UUID NOT NULL REFERENCES gameplay.plays (id) ON DELETE CASCADE, species_id INTEGER NOT NULL REFERENCES dex.pokemon_species (id) ON DELETE CASCADE, form_id INTEGER REFERENCES dex.pokemon_forms (id) ON DELETE CASCADE, UNIQUE (play_id, species_id));

CREATE INDEX idx_pokemon_caught_play ON gameplay.pokemon_caught (play_id);

CREATE INDEX idx_pokemon_caught_species ON gameplay.pokemon_caught (species_id);

CREATE INDEX idx_pokemon_caught_form ON gameplay.pokemon_caught (form_id);