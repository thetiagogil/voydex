-- ============================================================================
-- Table: meta.abilities
-- Pokémon abilities across all generations.
-- ============================================================================
CREATE TABLE
  meta.abilities (id INTEGER PRIMARY KEY, slug VARCHAR(50) NOT NULL UNIQUE, name VARCHAR(100) NOT NULL UNIQUE, external_id INTEGER NOT NULL UNIQUE, introduced_generation_id INTEGER NOT NULL REFERENCES meta.generations (id), effect TEXT, created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ());

-- Indexes
CREATE INDEX idx_abilities_slug ON meta.abilities (slug);

CREATE INDEX idx_abilities_external_id ON meta.abilities (external_id);

CREATE INDEX idx_abilities_introduced_generation ON meta.abilities (introduced_generation_id);