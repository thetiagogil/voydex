-- ============================================================================
-- Table: meta.regions
-- Geographic regions in the Pokémon world.
-- ============================================================================
CREATE TABLE
    meta.regions (id INTEGER PRIMARY KEY, slug VARCHAR(50) NOT NULL UNIQUE, name VARCHAR(100) NOT NULL UNIQUE, created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ());

-- Indexes
CREATE INDEX idx_regions_slug ON meta.regions (slug);