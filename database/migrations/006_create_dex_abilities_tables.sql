-- ========================================
-- Migration: Dex Abilities Tables
-- ========================================

-- ========================================
-- ABILITIES TABLE
-- ========================================
CREATE TABLE dex.abilities (
  id INTEGER PRIMARY KEY,
  slug VARCHAR(50) NOT NULL UNIQUE,
  name VARCHAR(100) NOT NULL UNIQUE,
  generation_introduced_id INTEGER NOT NULL REFERENCES meta.generations(id),
  effect_short TEXT,
  effect_long TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE INDEX idx_abilities_generation_introduced ON dex.abilities(generation_introduced_id);