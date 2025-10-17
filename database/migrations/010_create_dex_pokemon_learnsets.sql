-- ========================================
-- Migration: Dex Pokemon Learnsets Table
-- ========================================

-- ========================================
-- POKEMON LEARNSETS TABLE
-- ========================================
CREATE TABLE dex.pokemon_learnsets (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  species_id INTEGER NOT NULL REFERENCES dex.pokemon_species(id) ON DELETE CASCADE,
  form_id INTEGER REFERENCES dex.pokemon_forms(id) ON DELETE CASCADE,
  move_id INTEGER NOT NULL REFERENCES dex.moves(id) ON DELETE CASCADE,
  generation_id INTEGER NOT NULL REFERENCES meta.generations(id) ON DELETE CASCADE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  UNIQUE (species_id, form_id, move_id, generation_id)
);

CREATE INDEX idx_learnsets_species_gen
  ON dex.pokemon_learnsets (species_id, generation_id);

CREATE INDEX idx_learnsets_move_gen
  ON dex.pokemon_learnsets (move_id, generation_id);
