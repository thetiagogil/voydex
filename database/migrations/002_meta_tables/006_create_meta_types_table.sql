-- ============================================================================
-- Table: meta.types
-- Pokémon types (Normal, Fire, Water, etc.).
-- ============================================================================
CREATE TABLE
  meta.types (id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, slug VARCHAR(50) NOT NULL UNIQUE, name VARCHAR(50) NOT NULL UNIQUE, introduced_generation_id INTEGER NOT NULL REFERENCES meta.generations (id), created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ());

-- Indexes
CREATE INDEX idx_types_slug ON meta.types (slug);

CREATE INDEX idx_types_introduced_generation ON meta.types (introduced_generation_id);