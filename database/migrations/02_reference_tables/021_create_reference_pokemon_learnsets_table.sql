-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Per-VG move learnsets: which moves each species/form can learn and how.
-- One row per species/form/move/version-group/learn-method combination.
-- ============================================================================
CREATE TABLE
    reference.pokemon_learnsets (
        -- Composite primary key
        species_id INTEGER NOT NULL REFERENCES reference.pokemon_species (id) ON DELETE CASCADE,
        form_id INTEGER NOT NULL REFERENCES reference.pokemon_forms (id) ON DELETE CASCADE,
        move_id INTEGER NOT NULL REFERENCES reference.moves (id) ON DELETE CASCADE,
        version_group_id INTEGER NOT NULL REFERENCES reference.version_groups (id),
        learn_method_id INTEGER NOT NULL REFERENCES reference.learn_methods (id),
        -- Method-specific metadata
        level_learned_at INTEGER,
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        PRIMARY KEY (species_id, form_id, move_id, version_group_id, learn_method_id),
        CHECK (
            level_learned_at IS NULL
            OR level_learned_at >= 0
        )
    );

-- Indexes
CREATE INDEX idx_learnsets_species_form_vg ON reference.pokemon_learnsets (species_id, form_id, version_group_id);

CREATE INDEX idx_learnsets_species_vg ON reference.pokemon_learnsets (species_id, version_group_id);

CREATE INDEX idx_learnsets_form_vg ON reference.pokemon_learnsets (form_id, version_group_id);

CREATE INDEX idx_learnsets_move_vg ON reference.pokemon_learnsets (move_id, version_group_id);

CREATE INDEX idx_learnsets_vg ON reference.pokemon_learnsets (version_group_id);

CREATE INDEX idx_learnsets_method ON reference.pokemon_learnsets (learn_method_id);

-- Comments
COMMENT ON TABLE reference.pokemon_learnsets IS 'Per-VG move learnsets. One row per species/form/move/VG/method. level_learned_at is set for level-up entries, NULL for all other methods. Estimated 200K-500K rows across all generations.';

COMMENT ON COLUMN reference.pokemon_learnsets.level_learned_at IS 'The level at which the move is learned. Set for level-up method, NULL for all others. 0 = learned on evolution.';