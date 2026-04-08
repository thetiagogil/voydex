-- ============================================================================
-- Table: reference.natures
-- Pokémon natures affecting stats and flavor preferences.
-- ============================================================================
-- Enums for stat/flavor references
CREATE TYPE reference.stat_name AS ENUM ('hp', 'attack', 'defense', 'special-attack', 'special-defense', 'speed');

CREATE TYPE reference.flavor_name AS ENUM ('spicy', 'dry', 'sweet', 'bitter', 'sour');

CREATE TABLE
  reference.natures (
    id INTEGER PRIMARY KEY,
    slug VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL UNIQUE,
    introduced_generation_id INTEGER NOT NULL REFERENCES reference.generations (id),
    increased_stat reference.stat_name,
    decreased_stat reference.stat_name,
    liked_flavor reference.flavor_name,
    disliked_flavor reference.flavor_name,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
    -- Neutral natures: both NULL. Non-neutral: both set and different.
    CHECK (
      (
        increased_stat IS NULL
        AND decreased_stat IS NULL
      )
      OR (
        increased_stat IS NOT NULL
        AND decreased_stat IS NOT NULL
        AND increased_stat <> decreased_stat
      )
    )
  );

-- Indexes
CREATE INDEX idx_natures_slug ON reference.natures (slug);

CREATE INDEX idx_natures_introduced_generation ON reference.natures (introduced_generation_id);