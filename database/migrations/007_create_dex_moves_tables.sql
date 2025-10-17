-- ========================================
-- Migration: Dex Moves Tables
-- ========================================

-- ========================================
-- MOVES TYPE ENUM
-- ========================================
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'move_damage_class') THEN
    CREATE TYPE move_damage_class AS ENUM ('physical','special','status');
  END IF;
END$$;

-- ========================================
-- MOVES TABLE
-- ========================================
CREATE TABLE dex.moves (
  id INTEGER PRIMARY KEY,
  slug VARCHAR(50) NOT NULL UNIQUE,
  name VARCHAR(100) NOT NULL UNIQUE,
  generation_introduced_id INTEGER NOT NULL REFERENCES meta.generations(id),
  description TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ========================================
-- MOVES BY GENERATION TABLE
-- ========================================
CREATE TABLE dex.moves_by_gen (
  move_id INTEGER NOT NULL REFERENCES dex.moves(id) ON DELETE CASCADE,
  name_alt VARCHAR(100),
  generation_start_id INTEGER NOT NULL REFERENCES meta.generations(id),
  type_id INTEGER NOT NULL REFERENCES dex.types(id),
  power INTEGER,
  accuracy INTEGER,
  pp INTEGER NOT NULL,
  priority INTEGER NOT NULL DEFAULT 0,
  damage_class move_damage_class,
  effect_chance INTEGER,
  PRIMARY KEY (move_id, generation_start_id),

  CHECK (pp > 0),
  CHECK (power IS NULL OR power >= 1),
  CHECK (accuracy IS NULL OR (accuracy BETWEEN 1 AND 100)),
  CHECK (priority BETWEEN -7 AND 7),
  CHECK (effect_chance IS NULL OR (effect_chance BETWEEN 0 AND 100))
);

CREATE INDEX idx_moves_by_gen_lookup
  ON dex.moves_by_gen (move_id, generation_start_id DESC);