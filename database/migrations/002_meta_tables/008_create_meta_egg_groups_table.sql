-- ============================================================================
-- Table: meta.egg_groups
-- Pokémon breeding compatibility groups.
-- ============================================================================
CREATE TABLE
  meta.egg_groups (id INTEGER PRIMARY KEY, slug VARCHAR(50) NOT NULL UNIQUE, name VARCHAR(50) NOT NULL UNIQUE, introduced_generation_id INTEGER NOT NULL REFERENCES meta.generations (id), created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ());

-- Indexes
CREATE INDEX idx_egg_groups_slug ON meta.egg_groups (slug);

CREATE INDEX idx_egg_groups_introduced_generation ON meta.egg_groups (introduced_generation_id);