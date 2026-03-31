-- ============================================================================
-- Table: meta.pokemon_forms
-- Specific forms of a Pokémon species (default, regional, mega, etc.).
-- ============================================================================
CREATE TABLE
    meta.pokemon_forms (
        id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
        slug VARCHAR(50) NOT NULL,
        name VARCHAR(100) NOT NULL UNIQUE,
        species_id INTEGER NOT NULL REFERENCES meta.pokemon_species (id) ON DELETE CASCADE,
        introduced_generation_id INTEGER NOT NULL REFERENCES meta.generations (id),
        height INTEGER,
        weight INTEGER,
        is_default BOOLEAN NOT NULL DEFAULT TRUE,
        sprite_url VARCHAR(255),
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        UNIQUE (species_id, slug),
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
CREATE INDEX idx_pokemon_forms_slug ON meta.pokemon_forms (slug);

CREATE INDEX idx_pokemon_forms_species ON meta.pokemon_forms (species_id);

CREATE INDEX idx_pokemon_forms_introduced_generation ON meta.pokemon_forms (introduced_generation_id);

CREATE INDEX idx_pokemon_forms_default ON meta.pokemon_forms (species_id)
WHERE
    is_default = TRUE;

-- One default form per species
CREATE UNIQUE INDEX uq_pokemon_forms_one_default_per_species ON meta.pokemon_forms (species_id)
WHERE
    is_default = TRUE;