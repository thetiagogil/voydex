-- ============================================================================
-- Table: reference.learn_methods
-- Curated lookup table for move learn method classifications.
-- ============================================================================
CREATE TABLE
    reference.learn_methods (id INTEGER PRIMARY KEY, slug VARCHAR(50) NOT NULL UNIQUE, name VARCHAR(100) NOT NULL UNIQUE, created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ());

-- Indexes
CREATE INDEX idx_learn_methods_slug ON reference.learn_methods (slug);