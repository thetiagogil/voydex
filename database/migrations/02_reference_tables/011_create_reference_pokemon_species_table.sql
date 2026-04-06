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

-- Indexes
CREATE INDEX idx_pokemon_species_slug ON reference.pokemon_species (slug);

CREATE INDEX idx_pokemon_species_national_number ON reference.pokemon_species (national_number);

CREATE INDEX idx_pokemon_species_introduced_generation ON reference.pokemon_species (introduced_generation_id);

CREATE INDEX idx_pokemon_species_legendary ON reference.pokemon_species (id)
WHERE
    is_legendary = TRUE;

CREATE INDEX idx_pokemon_species_mythical ON reference.pokemon_species (id)
WHERE
    is_mythical = TRUE;