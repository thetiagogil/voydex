-- ============================================================================
-- Table: reference.pokemon_species
-- Base Pokémon species (one per National Dex entry).
-- ============================================================================
CREATE TABLE
    reference.pokemon_species (
        id INTEGER PRIMARY KEY,
        slug VARCHAR(50) NOT NULL UNIQUE,
        name VARCHAR(100) NOT NULL UNIQUE,
        introduced_generation_id INTEGER NOT NULL REFERENCES reference.generations (id),
        national_number INTEGER NOT NULL CHECK (national_number > 0),
        color VARCHAR(20),
        is_baby BOOLEAN NOT NULL DEFAULT FALSE,
        is_legendary BOOLEAN NOT NULL DEFAULT FALSE,
        is_mythical BOOLEAN NOT NULL DEFAULT FALSE,
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ()
    );
