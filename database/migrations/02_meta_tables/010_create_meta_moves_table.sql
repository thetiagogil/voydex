-- ============================================================================
-- Table: meta.moves
-- Pokémon moves across all generations.
-- ============================================================================
CREATE TABLE
  meta.moves (id INTEGER PRIMARY KEY, slug VARCHAR(50) NOT NULL UNIQUE, name VARCHAR(100) NOT NULL UNIQUE, external_id INTEGER NOT NULL UNIQUE, introduced_generation_id INTEGER NOT NULL REFERENCES meta.generations (id), effect TEXT, created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ());

-- Indexes
CREATE INDEX idx_moves_slug ON meta.moves (slug);

CREATE INDEX idx_moves_external_id ON meta.moves (external_id);

CREATE INDEX idx_moves_introduced_generation ON meta.moves (introduced_generation_id);