-- ============================================================================
-- Table: meta.natures
-- Pokémon natures affecting stats and flavor preferences.
-- ============================================================================
-- Enums for stat/flavor references
CREATE TYPE meta.stat_name AS ENUM ('hp', 'attack', 'defense', 'special-attack', 'special-defense', 'speed');

CREATE TYPE meta.flavor_name AS ENUM ('spicy', 'dry', 'sweet', 'bitter', 'sour');

CREATE TABLE
  meta.natures (
    id INTEGER PRIMARY KEY,
    slug VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL UNIQUE,
    introduced_generation_id INTEGER NOT NULL REFERENCES meta.generations (id),
    increased_stat meta.stat_name,
    decreased_stat meta.stat_name,
    liked_flavor meta.flavor_name,
    disliked_flavor meta.flavor_name,
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
CREATE INDEX idx_natures_slug ON meta.natures (slug);

CREATE INDEX idx_natures_introduced_generation ON meta.natures (introduced_generation_id);