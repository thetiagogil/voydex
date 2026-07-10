-- ============================================================================
-- Table: reference.ability_attributes
-- Version-group-aware ability effect text and mechanics.
-- ============================================================================
CREATE TABLE reference.ability_attributes (
    ability_id integer NOT NULL REFERENCES reference.abilities (id) ON UPDATE CASCADE ON DELETE CASCADE,
    version_group_start_id integer NOT NULL REFERENCES reference.version_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    effect_summary text NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT ability_attributes_primary_key PRIMARY KEY (ability_id, version_group_start_id),
    CONSTRAINT ability_attributes_effect_summary_length_check CHECK (CHAR_LENGTH(BTRIM(effect_summary)) BETWEEN 1 AND 500)
);

COMMENT ON TABLE reference.ability_attributes IS 'Ability mechanics and product effect text by version-group change point.';

COMMENT ON COLUMN reference.ability_attributes.version_group_start_id IS 'First version group where this ability mechanics row applies.';
