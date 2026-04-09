-- ============================================================================
-- Table: reference.game_types
-- Classification of Pokémon games (main, remake, enhanced, DLC, spin-off).
-- ============================================================================
CREATE TABLE
    reference.game_types (id INTEGER PRIMARY KEY, slug VARCHAR(20) NOT NULL UNIQUE, name VARCHAR(50) NOT NULL, description TEXT, sort_order INTEGER NOT NULL, created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ());
