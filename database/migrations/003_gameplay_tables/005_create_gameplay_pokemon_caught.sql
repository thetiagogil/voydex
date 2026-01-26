CREATE TABLE
  gameplay.pokemon_caught (play_id UUID NOT NULL REFERENCES gameplay.plays (id) ON DELETE CASCADE, species_id INTEGER NOT NULL REFERENCES meta.pokemon_species (id) ON DELETE CASCADE, form_id INTEGER REFERENCES meta.pokemon_forms (id) ON DELETE CASCADE, UNIQUE (play_id, species_id));

-- WHAT: Index on play_id (which playthrough these caught Pokemon belong to)
-- WHY: Makes it fast to find all caught Pokemon for a playthrough
-- WHEN USED: "Show me all Pokemon I've caught in THIS playthrough"
CREATE INDEX idx_pokemon_caught_play ON gameplay.pokemon_caught (play_id);

-- WHAT: Index on species_id (which Pokemon species was caught)
-- WHY: Makes it fast to find all playthroughs that caught a specific Pokemon
-- WHEN USED: "How many times have I caught Pikachu across all playthroughs?"
CREATE INDEX idx_pokemon_caught_species ON gameplay.pokemon_caught (species_id);

-- WHAT: Composite index on play + species
-- WHY: Makes it fast to check if a species is caught in a play
-- WHEN USED: getPlayRegionalDex(), getPlayProgressCategories()
CREATE INDEX idx_pokemon_caught_play_species ON gameplay.pokemon_caught (play_id, species_id);

-- WHAT: Index on form_id (which specific form was caught)
-- WHY: Makes it fast to find playthroughs that caught specific forms
-- WHEN USED: "How many times have I caught Alolan Vulpix?"
CREATE INDEX idx_pokemon_caught_form ON gameplay.pokemon_caught (form_id);