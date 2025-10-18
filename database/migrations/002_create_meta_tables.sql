-- ========================================
-- Migration: Meta Tables
-- ========================================

-- ========================================
-- GENERATIONS TABLE
-- ========================================
CREATE TABLE meta.generations (
  id INTEGER PRIMARY KEY,
  slug VARCHAR(50) NOT NULL UNIQUE,
  name VARCHAR(100) NOT NULL,
  start_year INTEGER NOT NULL CHECK (start_year BETWEEN 1996 AND 2100),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ========================================
-- REGIONS TABLE
-- ========================================
CREATE TABLE meta.regions (
  id INTEGER PRIMARY KEY,
  slug VARCHAR(50) NOT NULL UNIQUE,
  name VARCHAR(100) NOT NULL,
  generation_id INTEGER NOT NULL REFERENCES meta.generations(id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  UNIQUE (generation_id, name)
);

CREATE INDEX idx_regions_generation ON meta.regions(generation_id);

-- ========================================
-- VERSION GROUPS TABLE
-- ========================================
CREATE TABLE meta.version_groups (
  id SERIAL PRIMARY KEY,
  slug VARCHAR(50) NOT NULL UNIQUE,
  name VARCHAR(100) NOT NULL,
  generation_id INTEGER NOT NULL REFERENCES meta.generations(id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE INDEX idx_version_groups_generation ON meta.version_groups(generation_id);

-- ========================================
-- GAME TYPE ENUM
-- ========================================
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM pg_type t
    JOIN pg_namespace n ON n.oid = t.typnamespace
    WHERE t.typname = 'game_type'
      AND n.nspname = 'meta'
  ) THEN
    EXECUTE 'CREATE TYPE meta.game_type AS ENUM (
      ''main'', ''remake'', ''enhanced'', ''dlc'', ''spin-off''
    )';
  END IF;
END$$;

-- ========================================
-- GAMES TABLE
-- ========================================
CREATE TABLE meta.games (
  id INTEGER PRIMARY KEY,
  slug VARCHAR(50) NOT NULL UNIQUE,
  name VARCHAR(100) NOT NULL,
  generation_id INTEGER NOT NULL REFERENCES meta.generations(id),
  region_id INTEGER NOT NULL REFERENCES meta.regions(id),
  version_group_id INTEGER NOT NULL REFERENCES meta.version_groups(id),
  type meta.game_type NOT NULL,
  regional_dex_count INTEGER,
  national_dex_count INTEGER,
  release_year INTEGER NOT NULL CHECK (release_year BETWEEN 1996 AND 2100),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  UNIQUE (version_group_id, name)
);

CREATE INDEX idx_games_generation ON meta.games(generation_id);
CREATE INDEX idx_games_region ON meta.games(region_id);
CREATE INDEX idx_games_version_group ON meta.games(version_group_id);