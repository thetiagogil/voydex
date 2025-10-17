-- ========================================
-- Migration: Dex Types Tables
-- ========================================

-- ========================================
-- TYPES TABLE
-- ========================================
CREATE TABLE dex.types (
  id INTEGER PRIMARY KEY,
  slug VARCHAR(50) NOT NULL UNIQUE,
  name VARCHAR(50) NOT NULL UNIQUE,
  generation_introduced_id INTEGER NOT NULL REFERENCES meta.generations(id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE INDEX idx_types_generation_introduced ON dex.types(generation_introduced_id);