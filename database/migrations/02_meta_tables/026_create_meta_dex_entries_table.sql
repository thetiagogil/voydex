-- ============================================================================
-- Table: meta.dex_entries
-- Curated Pokémon/form membership in a specific dex.
-- Each row means "this form appears at this dex number in this dex."
-- ============================================================================
CREATE TABLE
    meta.dex_entries (
        id INTEGER PRIMARY KEY,
        -- Foreign keys
        dex_id INTEGER NOT NULL REFERENCES meta.dexes (id) ON DELETE CASCADE,
        species_id INTEGER NOT NULL REFERENCES meta.pokemon_species (id) ON DELETE CASCADE,
        form_id INTEGER NOT NULL REFERENCES meta.pokemon_forms (id) ON DELETE CASCADE,
        -- Dex data
        dex_number INTEGER NOT NULL CHECK (dex_number > 0),
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ()
    );

-- Unique constraints
-- Each dex number is unique within a dex
CREATE UNIQUE INDEX uq_dex_entries_dex_number ON meta.dex_entries (dex_id, dex_number);

-- Each form appears at most once per dex
CREATE UNIQUE INDEX uq_dex_entries_dex_form ON meta.dex_entries (dex_id, species_id, form_id);

-- Indexes
CREATE INDEX idx_dex_entries_dex ON meta.dex_entries (dex_id);

CREATE INDEX idx_dex_entries_species ON meta.dex_entries (species_id);

CREATE INDEX idx_dex_entries_form ON meta.dex_entries (form_id);

-- Comments
COMMENT ON TABLE meta.dex_entries IS 'Pokémon membership in a specific dex. Each row = one form listed at one dex number. A form can appear in multiple dexes (e.g. regional + national).';

COMMENT ON COLUMN meta.dex_entries.dex_number IS 'The Pokémon number within this dex. Unique per dex.';

COMMENT ON COLUMN meta.dex_entries.dex_id IS 'The dex this entry belongs to. FK to meta.dexes.';