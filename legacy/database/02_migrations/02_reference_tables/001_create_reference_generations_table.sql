-- ============================================================================
-- Table: reference.generations
-- Pokémon game generations (Generation 1 through current).
-- end_year is intentionally omitted: generation end boundaries are cosmetic
-- and should not be maintained as schema data.
-- ============================================================================
CREATE TABLE
    reference.generations (id INTEGER PRIMARY KEY, slug VARCHAR(50) NOT NULL UNIQUE, name VARCHAR(100) NOT NULL UNIQUE, start_year INTEGER NOT NULL, new_pokemon_count INTEGER NOT NULL DEFAULT 0, total_pokemon_count INTEGER NOT NULL DEFAULT 0, created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ());