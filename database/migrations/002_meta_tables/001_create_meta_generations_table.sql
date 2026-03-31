-- ============================================================================
-- Table: meta.generations
-- Pokémon game generations (Gen 1 through current).
-- ============================================================================
CREATE TABLE
    meta.generations (
        id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
        slug VARCHAR(50) NOT NULL UNIQUE,
        name VARCHAR(100) NOT NULL UNIQUE,
        start_year INTEGER NOT NULL,
        end_year INTEGER,
        new_pokemon_count INTEGER NOT NULL DEFAULT 0,
        total_pokemon_count INTEGER NOT NULL DEFAULT 0,
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ()
    );

-- Indexes
CREATE INDEX idx_generations_slug ON meta.generations (slug);