-- ========================================
-- Migration: Dex Natures Tables
-- ========================================

-- ========================================
-- NATURES TYPE ENUMS
-- ========================================
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'stat_name') THEN
    CREATE TYPE stat_name AS ENUM ('hp','attack','defense','special_attack','special_defense','speed');
  END IF;

  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'berry_flavor') THEN
    CREATE TYPE berry_flavor AS ENUM ('spicy','dry','sweet','bitter','sour');
  END IF;
END$$;

-- ========================================
-- NATURES TABLE
-- ========================================
CREATE TABLE dex.natures (
  id INTEGER PRIMARY KEY,
  slug VARCHAR(50) NOT NULL UNIQUE,
  name VARCHAR(50) NOT NULL UNIQUE,
  generation_introduced_id INTEGER NOT NULL REFERENCES meta.generations(id),
  increased_stat stat_name,
  decreased_stat stat_name,
  liked_flavor berry_flavor,
  disliked_flavor berry_flavor,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),

  CHECK (
    (increased_stat IS NULL AND decreased_stat IS NULL)
    OR (increased_stat IS NOT NULL AND decreased_stat IS NOT NULL AND increased_stat <> decreased_stat)
  )
);

CREATE INDEX idx_natures_generation_introduced ON dex.natures(generation_introduced_id);