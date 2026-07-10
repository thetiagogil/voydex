-- ============================================================================
-- Table: reference.move_attributes
-- Generation-aware move mechanics and effect text.
-- ============================================================================
CREATE TABLE reference.move_attributes (
    move_id integer NOT NULL REFERENCES reference.moves (id) ON UPDATE CASCADE ON DELETE CASCADE,
    generation_start_id integer NOT NULL REFERENCES reference.generations (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    type_id integer NOT NULL REFERENCES reference.types (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    power integer,
    accuracy integer,
    pp integer,
    priority integer NOT NULL DEFAULT 0,
    damage_class text NOT NULL,
    effect_summary text,
    effect_detail text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT move_attributes_primary_key PRIMARY KEY (move_id, generation_start_id),
    CONSTRAINT move_attributes_power_check CHECK (power IS NULL OR power BETWEEN 0 AND 300),
    CONSTRAINT move_attributes_accuracy_check CHECK (accuracy IS NULL OR accuracy BETWEEN 1 AND 100),
    CONSTRAINT move_attributes_pp_check CHECK (pp IS NULL OR pp BETWEEN 1 AND 64),
    CONSTRAINT move_attributes_priority_check CHECK (priority BETWEEN -7 AND 7),
    CONSTRAINT move_attributes_damage_class_check CHECK (damage_class IN ('physical', 'special', 'status', 'variable')),
    CONSTRAINT move_attributes_effect_summary_length_check CHECK (effect_summary IS NULL OR CHAR_LENGTH(BTRIM(effect_summary)) BETWEEN 1 AND 500),
    CONSTRAINT move_attributes_effect_detail_length_check CHECK (effect_detail IS NULL OR CHAR_LENGTH(BTRIM(effect_detail)) BETWEEN 1 AND 4000)
);

COMMENT ON TABLE reference.move_attributes IS 'Move type, power, accuracy, PP, damage class, priority, and effect text by generation change point.';

COMMENT ON COLUMN reference.move_attributes.power IS 'Base power. Null means no fixed power or not applicable.';

COMMENT ON COLUMN reference.move_attributes.accuracy IS 'Accuracy percentage. Null means never misses, variable, or not applicable by source convention.';

COMMENT ON COLUMN reference.move_attributes.pp IS 'Base PP when known. Null means the move has no fixed PP in the source, such as Max and G-Max moves.';

COMMENT ON COLUMN reference.move_attributes.damage_class IS 'Physical, special, status, or variable when the class is inherited from a base move.';
