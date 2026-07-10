-- ============================================================================
-- Table: reference.type_matchups
-- Generation-aware type effectiveness change-point rows.
-- ============================================================================
CREATE TABLE reference.type_matchups (
    attacking_type_id integer NOT NULL REFERENCES reference.types (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    defending_type_id integer NOT NULL REFERENCES reference.types (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    generation_start_id integer NOT NULL REFERENCES reference.generations (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    multiplier_numerator integer NOT NULL,
    multiplier_denominator integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT type_matchups_primary_key PRIMARY KEY (attacking_type_id, defending_type_id, generation_start_id),
    CONSTRAINT type_matchups_multiplier_check CHECK ((multiplier_numerator, multiplier_denominator) IN ((0, 1), (1, 2), (1, 1), (2, 1)))
);

CREATE INDEX type_matchups_defending_generation_idx ON reference.type_matchups (defending_type_id, generation_start_id);

COMMENT ON TABLE reference.type_matchups IS 'Type effectiveness rows stored by generation change point for historic team analysis.';

COMMENT ON COLUMN reference.type_matchups.multiplier_numerator IS 'Exact rational multiplier numerator, e.g. 1 for 1/2x or 2 for 2x.';

COMMENT ON COLUMN reference.type_matchups.multiplier_denominator IS 'Exact rational multiplier denominator, e.g. 2 for 1/2x or 1 for 2x.';
