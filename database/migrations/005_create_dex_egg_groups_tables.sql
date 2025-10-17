-- ========================================
-- Migration: Dex Egg Groups Tables
-- ========================================

-- ========================================
-- EGG GROUPS TABLE
-- ========================================
CREATE TABLE dex.egg_groups (
  id INTEGER PRIMARY KEY,
  slug VARCHAR(50) NOT NULL UNIQUE,
  name VARCHAR(50) NOT NULL UNIQUE,
  generation_introduced_id INTEGER NOT NULL REFERENCES meta.generations(id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE INDEX idx_egg_groups_generation_introduced ON dex.egg_groups(generation_introduced_id);