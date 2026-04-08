-- ============================================================================
-- Table: reference.types
-- Pokémon types (Normal, Fire, Water, etc.).
-- ============================================================================
CREATE TABLE
  reference.types (id INTEGER PRIMARY KEY, slug VARCHAR(50) NOT NULL UNIQUE, name VARCHAR(50) NOT NULL UNIQUE, introduced_generation_id INTEGER NOT NULL REFERENCES reference.generations (id), created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ());

-- Indexes
CREATE INDEX idx_types_slug ON reference.types (slug);

CREATE INDEX idx_types_introduced_generation ON reference.types (introduced_generation_id);