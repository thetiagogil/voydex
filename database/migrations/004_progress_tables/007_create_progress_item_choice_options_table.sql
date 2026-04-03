-- ============================================================================
-- Table: progress.item_choice_options
-- Available options for critical-choice progress items.
-- Examples: starter Pokémon, fossils, gift Pokémon choices.
-- ============================================================================
CREATE TABLE
    progress.item_choice_options (
        id INTEGER PRIMARY KEY,
        progress_item_id INTEGER NOT NULL REFERENCES progress.items (id) ON DELETE CASCADE,
        slug TEXT NOT NULL,
        name TEXT NOT NULL,
        pokemon_species_id INTEGER NULL REFERENCES meta.pokemon_species (id),
        pokemon_form_id INTEGER NULL REFERENCES meta.pokemon_forms (id),
        sort_order INTEGER NOT NULL,
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        UNIQUE (progress_item_id, slug)
    );

-- Indexes
CREATE INDEX idx_progress_item_choice_options_item ON progress.item_choice_options (progress_item_id);

CREATE INDEX idx_progress_item_choice_options_species ON progress.item_choice_options (pokemon_species_id)
WHERE
    pokemon_species_id IS NOT NULL;

-- Comments
COMMENT ON TABLE progress.item_choice_options IS 'Available options for critical-choice progress items (e.g. starter Pokémon, fossils).';