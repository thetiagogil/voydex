-- ============================================================================
-- Table: reference.regions
-- Geographic regions in the Pokémon world.
-- ============================================================================
CREATE TABLE
    reference.regions (id INTEGER PRIMARY KEY, slug VARCHAR(50) NOT NULL UNIQUE, name VARCHAR(100) NOT NULL UNIQUE, created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ());
