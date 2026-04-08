-- ============================================================================
-- Table: reference.moves
-- Pokémon moves across all generations.
-- ============================================================================
CREATE TABLE
  reference.moves (id INTEGER PRIMARY KEY, slug VARCHAR(50) NOT NULL UNIQUE, name VARCHAR(100) NOT NULL UNIQUE, external_id INTEGER NOT NULL UNIQUE, introduced_generation_id INTEGER NOT NULL REFERENCES reference.generations (id), effect TEXT, created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ());

-- Indexes
CREATE INDEX idx_moves_slug ON reference.moves (slug);

CREATE INDEX idx_moves_external_id ON reference.moves (external_id);

CREATE INDEX idx_moves_introduced_generation ON reference.moves (introduced_generation_id);