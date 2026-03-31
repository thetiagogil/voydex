-- =============================================================================
-- MOVE ATTRIBUTES TABLE
-- Timeline model: one row per mechanical change point per move
-- =============================================================================
CREATE TYPE meta.move_damage_class AS ENUM ('physical', 'special', 'status');

CREATE TABLE
    meta.move_attributes (
        move_id INTEGER NOT NULL REFERENCES meta.moves (id) ON DELETE CASCADE,
        generation_start_id INTEGER NOT NULL REFERENCES meta.generations (id),
        type_id INTEGER NOT NULL REFERENCES meta.types (id),
        power INTEGER,
        accuracy INTEGER,
        pp INTEGER NOT NULL,
        priority INTEGER NOT NULL DEFAULT 0,
        damage_class meta.move_damage_class NOT NULL,
        created_at TIMESTAMP
        WITH
            TIME ZONE DEFAULT NOW (),
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

CREATE INDEX idx_move_attrs_move ON meta.move_attributes (move_id);

CREATE INDEX idx_move_attrs_gen ON meta.move_attributes (generation_start_id);

CREATE INDEX idx_move_attrs_type ON meta.move_attributes (type_id);

CREATE INDEX idx_move_attrs_damage_class ON meta.move_attributes (damage_class);

CREATE INDEX idx_move_attrs_move_gen_desc ON meta.move_attributes (move_id, generation_start_id DESC);

COMMENT ON TABLE meta.move_attributes IS 'Move mechanical attributes with timeline model. One row per change point (e.g. Tackle: Gen1 power=35, Gen5 power=50). Query latest row WHERE generation_start_id <= target_gen.';