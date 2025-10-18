-- ========================================
-- Migration: Pokémon Availability Tables
-- ========================================

-- ========================================
-- POKÉMON AVAILABILITY PER GAME
-- Whether a species (optionally a form) is obtainable in a specific game.
-- ========================================
CREATE TABLE dex.pokemon_availability_per_game (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  species_id INTEGER NOT NULL REFERENCES dex.pokemon_species(id) ON DELETE CASCADE,
  form_id INTEGER REFERENCES dex.pokemon_forms(id) ON DELETE CASCADE,  -- NULL = species/default form
  game_id INTEGER NOT NULL REFERENCES meta.games(id) ON DELETE CASCADE,
  is_available BOOLEAN DEFAULT true,
  is_version_exclusive BOOLEAN DEFAULT false,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),

  CHECK (NOT is_version_exclusive OR is_available)
);

CREATE INDEX idx_availability_game ON dex.pokemon_availability_per_game(game_id);
CREATE INDEX idx_availability_species ON dex.pokemon_availability_per_game(species_id);
CREATE INDEX idx_availability_form ON dex.pokemon_availability_per_game(form_id);
CREATE INDEX idx_availability_game_species ON dex.pokemon_availability_per_game (game_id, species_id);

-- Use a UNIQUE INDEX for (game_id, species_id, COALESCE(form_id,0))
CREATE UNIQUE INDEX uq_availability_species_form_per_game
  ON dex.pokemon_availability_per_game (game_id, species_id, COALESCE(form_id, 0));

-- Consistency: form_id must belong to species_id
CREATE OR REPLACE FUNCTION dex.enforce_form_belongs_to_species_avail()
RETURNS TRIGGER AS $$
DECLARE form_species INT;
BEGIN
  IF NEW.form_id IS NULL THEN
    RETURN NEW;
  END IF;

  SELECT species_id INTO form_species
  FROM dex.pokemon_forms
  WHERE id = NEW.form_id;

  IF form_species IS NULL OR form_species <> NEW.species_id THEN
    RAISE EXCEPTION 'form_id % does not belong to species_id %', NEW.form_id, NEW.species_id;
  END IF;

  RETURN NEW;
END$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trg_availability_form_species ON dex.pokemon_availability_per_game;
CREATE TRIGGER trg_availability_form_species
BEFORE INSERT OR UPDATE ON dex.pokemon_availability_per_game
FOR EACH ROW EXECUTE FUNCTION dex.enforce_form_belongs_to_species_avail();
