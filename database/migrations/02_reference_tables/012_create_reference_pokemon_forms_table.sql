-- ============================================================================
-- Table: reference.pokemon_forms
-- Specific forms of a Pokémon species (default, regional, alternate, etc.).
-- ============================================================================
CREATE TABLE
    reference.pokemon_forms (
        id INTEGER PRIMARY KEY,
        slug VARCHAR(50) NOT NULL UNIQUE,
        name VARCHAR(100) NOT NULL UNIQUE,
        species_id INTEGER NOT NULL REFERENCES reference.pokemon_species (id) ON DELETE CASCADE,
        introduced_generation_id INTEGER NOT NULL REFERENCES reference.generations (id),
        height INTEGER,
        weight INTEGER,
        is_default BOOLEAN NOT NULL DEFAULT TRUE,
        pokemondb_sprite_slug VARCHAR(100),
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        CHECK (
            height IS NULL
            OR height > 0
        ),
        CHECK (
            weight IS NULL
            OR weight > 0
        )
    );

-- Indexes
CREATE INDEX idx_pokemon_forms_slug ON reference.pokemon_forms (slug);

CREATE INDEX idx_pokemon_forms_species ON reference.pokemon_forms (species_id);

CREATE INDEX idx_pokemon_forms_introduced_generation ON reference.pokemon_forms (introduced_generation_id);

CREATE INDEX idx_pokemon_forms_default ON reference.pokemon_forms (species_id)
WHERE
    is_default = TRUE;

-- One default form per species
CREATE UNIQUE INDEX uq_pokemon_forms_one_default_per_species ON reference.pokemon_forms (species_id)
WHERE
    is_default = TRUE;