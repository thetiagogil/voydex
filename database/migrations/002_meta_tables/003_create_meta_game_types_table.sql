-- ============================================================================
-- Table: meta.game_types
-- Classification of Pokémon games (main, remake, enhanced, DLC, spin-off).
-- ============================================================================
CREATE TABLE
    meta.game_types (id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, slug VARCHAR(20) NOT NULL UNIQUE, name VARCHAR(50) NOT NULL, description TEXT, sort_order INTEGER NOT NULL, created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ());

-- Indexes
CREATE INDEX idx_game_types_slug ON meta.game_types (slug);

CREATE INDEX idx_game_types_sort ON meta.game_types (sort_order);