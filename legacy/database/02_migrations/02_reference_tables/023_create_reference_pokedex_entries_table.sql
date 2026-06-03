-- ============================================================================
-- Table: reference.pokedex_entries
-- Curated Pokémon/form membership in a specific dex.
-- Each row means "this form appears at this dex number in this dex."
-- ============================================================================
CREATE TABLE
    reference.pokedex_entries (
        id INTEGER PRIMARY KEY,
        -- Foreign keys
        pokedex_id INTEGER NOT NULL REFERENCES reference.pokedex (id) ON DELETE CASCADE,
        species_id INTEGER NOT NULL REFERENCES reference.pokemon_species (id) ON DELETE CASCADE,
        form_id INTEGER NOT NULL REFERENCES reference.pokemon_forms (id) ON DELETE CASCADE,
        -- Dex data
        pokedex_number INTEGER NOT NULL CHECK (pokedex_number >= 0),
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ()
    );

-- Unique constraints
-- Each dex number is unique within a dex
CREATE UNIQUE INDEX uq_pokedex_entries_pokedex_number ON reference.pokedex_entries (pokedex_id, pokedex_number);

-- Each form appears at most once per dex
CREATE UNIQUE INDEX uq_pokedex_entries_dex_form ON reference.pokedex_entries (pokedex_id, species_id, form_id);

-- Comments
COMMENT ON TABLE reference.pokedex_entries IS 'Pokémon membership in a specific dex. Each row = one form listed at one dex number. A form can appear in multiple dexes (e.g. regional + national).';

COMMENT ON COLUMN reference.pokedex_entries.pokedex_number IS 'The Pokémon number within this dex. Unique per dex.';

COMMENT ON COLUMN reference.pokedex_entries.pokedex_id IS 'The dex this entry belongs to. FK to reference.pokedex.';