-- ============================================================================
-- Table: meta.progress_item_pokemon_refs
-- Links progress items to specific Pokémon when the milestone involves
-- a particular species/form (e.g. "Captured Mewtwo", "Defeated Rayquaza").
-- ============================================================================
CREATE TABLE
    meta.progress_item_pokemon_refs (
        -- Composite primary key
        progress_item_id INTEGER NOT NULL REFERENCES meta.progress_items (id) ON DELETE CASCADE,
        species_id INTEGER NOT NULL REFERENCES meta.pokemon_species (id) ON DELETE CASCADE,
        form_id INTEGER NOT NULL REFERENCES meta.pokemon_forms (id) ON DELETE CASCADE,
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        PRIMARY KEY (progress_item_id, species_id, form_id)
    );

-- Indexes
CREATE INDEX idx_progress_pokemon_refs_item ON meta.progress_item_pokemon_refs (progress_item_id);

CREATE INDEX idx_progress_pokemon_refs_species ON meta.progress_item_pokemon_refs (species_id);

CREATE INDEX idx_progress_pokemon_refs_form ON meta.progress_item_pokemon_refs (form_id);

-- Comments
COMMENT ON TABLE meta.progress_item_pokemon_refs IS 'Optional linking table for progress items that reference specific Pokemon. One progress item can reference multiple Pokemon (e.g. a legendary trio milestone).';