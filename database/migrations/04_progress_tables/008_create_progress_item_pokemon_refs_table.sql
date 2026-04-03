-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Links progress milestones to specific Pokémon species/forms.
-- One progress item can reference multiple Pokémon (e.g. legendary trio).
-- ============================================================================
CREATE TABLE
    progress.item_pokemon_refs (
        -- Composite primary key
        progress_item_id INTEGER NOT NULL REFERENCES progress.items (id) ON DELETE CASCADE,
        species_id INTEGER NOT NULL REFERENCES meta.pokemon_species (id),
        form_id INTEGER NOT NULL REFERENCES meta.pokemon_forms (id),
        PRIMARY KEY (progress_item_id, species_id, form_id)
    );

-- Indexes
CREATE INDEX idx_progress_item_pokemon_refs_item ON progress.item_pokemon_refs (progress_item_id);

CREATE INDEX idx_progress_item_pokemon_refs_species ON progress.item_pokemon_refs (species_id);

-- Comments
COMMENT ON TABLE progress.item_pokemon_refs IS 'Links progress items to specific Pokémon. One item can reference multiple Pokémon.';