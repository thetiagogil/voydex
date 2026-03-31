-- =============================================================================
-- PROGRESS ITEM POKEMON REFS TABLE
-- Links species-goal progress items to specific Pokémon (one-to-one extension)
-- =============================================================================
CREATE TABLE
    meta.progress_item_pokemon_refs (progress_item_id INTEGER NOT NULL UNIQUE REFERENCES meta.progress_items (id) ON DELETE CASCADE, species_id INTEGER NOT NULL REFERENCES meta.pokemon_species (id) ON DELETE CASCADE, form_id INTEGER REFERENCES meta.pokemon_forms (id) ON DELETE CASCADE, PRIMARY KEY (progress_item_id));

CREATE INDEX idx_progress_pokemon_refs_species ON meta.progress_item_pokemon_refs (species_id);

CREATE INDEX idx_progress_pokemon_refs_form ON meta.progress_item_pokemon_refs (form_id)
WHERE
    form_id IS NOT NULL;

COMMENT ON TABLE meta.progress_item_pokemon_refs IS 'One-to-one extension of progress_items. Links species-goal items to specific Pokémon (e.g. "Catch Mewtwo" → species_id for Mewtwo).';