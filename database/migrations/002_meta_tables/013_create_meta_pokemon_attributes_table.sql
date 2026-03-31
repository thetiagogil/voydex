-- ============================================================================
-- Table: meta.pokemon_attributes
-- Per-form, per-generation stats, types, abilities, egg groups.
-- Timeline model: one row per change point, not per generation.
-- ============================================================================
CREATE TABLE
    meta.pokemon_attributes (
        -- Composite primary key
        species_id INTEGER NOT NULL REFERENCES meta.pokemon_species (id) ON DELETE CASCADE,
        form_id INTEGER NOT NULL REFERENCES meta.pokemon_forms (id) ON DELETE CASCADE,
        generation_start_id INTEGER NOT NULL REFERENCES meta.generations (id),
        -- Types
        type1_id INTEGER NOT NULL REFERENCES meta.types (id),
        type2_id INTEGER REFERENCES meta.types (id),
        -- Abilities
        ability1_id INTEGER REFERENCES meta.abilities (id),
        ability2_id INTEGER REFERENCES meta.abilities (id),
        hidden_ability_id INTEGER REFERENCES meta.abilities (id),
        -- Egg groups
        egg_group1_id INTEGER REFERENCES meta.egg_groups (id),
        egg_group2_id INTEGER REFERENCES meta.egg_groups (id),
        -- Base stats
        hp INTEGER NOT NULL,
        attack INTEGER NOT NULL,
        defense INTEGER NOT NULL,
        special_attack INTEGER,
        special_defense INTEGER,
        speed INTEGER NOT NULL,
        special INTEGER,
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        PRIMARY KEY (species_id, form_id, generation_start_id),
        -- Types must differ if both set
        CHECK (
            type2_id IS NULL
            OR type1_id <> type2_id
        ),
        -- Base stats must be positive
        CHECK (
            hp > 0
            AND attack > 0
            AND defense > 0
            AND speed > 0
        ),
        CHECK (
            special_attack IS NULL
            OR special_attack > 0
        ),
        CHECK (
            special_defense IS NULL
            OR special_defense > 0
        ),
        CHECK (
            special IS NULL
            OR special > 0
        ),
        -- Gen 1 uses special; Gen 2+ uses special_attack/special_defense
        CHECK (
            (
                special IS NOT NULL
                AND special_attack IS NULL
                AND special_defense IS NULL
            )
            OR (
                special IS NULL
                AND special_attack IS NOT NULL
                AND special_defense IS NOT NULL
            )
        ),
        CHECK (
            generation_start_id = 1
            OR special IS NULL
        )
    );

-- Indexes
CREATE INDEX idx_pokemon_attrs_lookup ON meta.pokemon_attributes (species_id, form_id, generation_start_id DESC);

CREATE INDEX idx_pokemon_attrs_form_gen ON meta.pokemon_attributes (form_id, generation_start_id DESC);

-- Comments
COMMENT ON TABLE meta.pokemon_attributes IS 'Timeline model: one row per change point. Query latest WHERE generation_start_id <= target_gen.';