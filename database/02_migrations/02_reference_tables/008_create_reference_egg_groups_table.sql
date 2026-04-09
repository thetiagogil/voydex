-- ============================================================================
-- Table: reference.egg_groups
-- Pokémon breeding compatibility groups.
-- ============================================================================
CREATE TABLE
  reference.egg_groups (id INTEGER PRIMARY KEY, slug VARCHAR(50) NOT NULL UNIQUE, name VARCHAR(50) NOT NULL UNIQUE, introduced_generation_id INTEGER NOT NULL REFERENCES reference.generations (id), created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ());
