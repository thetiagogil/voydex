-- ============================================================================
-- Table: meta.move_attributes
-- Timeline model for move mechanical data by generation change point.
-- One row per move per generation where attributes changed.
-- ============================================================================
-- Enum: damage class (physical, special, status)
CREATE TYPE meta.move_damage_class AS ENUM ('physical', 'special', 'status');

CREATE TABLE
    meta.move_attributes (
        -- Composite primary key
        move_id INTEGER NOT NULL REFERENCES meta.moves (id) ON DELETE CASCADE,
        generation_start_id INTEGER NOT NULL REFERENCES meta.generations (id),
        -- Attributes
        type_id INTEGER NOT NULL REFERENCES meta.types (id),
        power INTEGER,
        accuracy INTEGER,
        pp INTEGER NOT NULL,
        priority INTEGER NOT NULL DEFAULT 0,
        damage_class meta.move_damage_class NOT NULL,
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        PRIMARY KEY (move_id, generation_start_id),
        CHECK (
            power IS NULL
            OR power > 0
        ),
        CHECK (
            accuracy IS NULL
            OR (
                accuracy > 0
                AND accuracy <= 100
            )
        ),
        CHECK (pp > 0),
        CHECK (priority BETWEEN -7 AND 7)
    );

-- Indexes
CREATE INDEX idx_move_attrs_move ON meta.move_attributes (move_id);

CREATE INDEX idx_move_attrs_generation ON meta.move_attributes (generation_start_id);

CREATE INDEX idx_move_attrs_type ON meta.move_attributes (type_id);

CREATE INDEX idx_move_attrs_damage_class ON meta.move_attributes (damage_class);

CREATE INDEX idx_move_attrs_move_gen_desc ON meta.move_attributes (move_id, generation_start_id DESC);

-- Comments
COMMENT ON TABLE meta.move_attributes IS 'Timeline model: one row per change point. Query latest WHERE generation_start_id <= target_gen ORDER BY generation_start_id DESC LIMIT 1.';