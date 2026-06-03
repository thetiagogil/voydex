-- ============================================================================
-- Table: reference.moves
-- Pokémon moves across all generations.
-- ============================================================================
CREATE TABLE
  reference.moves (id INTEGER PRIMARY KEY, slug VARCHAR(50) NOT NULL UNIQUE, name VARCHAR(100) NOT NULL UNIQUE, external_id INTEGER NOT NULL UNIQUE, introduced_generation_id INTEGER NOT NULL REFERENCES reference.generations (id), effect TEXT, created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ());
