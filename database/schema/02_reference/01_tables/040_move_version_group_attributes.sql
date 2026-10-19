-- ============================================================================
-- Table: reference.move_version_group_attributes
-- Move mechanics that one version group changes against its generation row.
-- ============================================================================
CREATE TABLE reference.move_version_group_attributes (
    move_id integer NOT NULL REFERENCES reference.moves (id) ON UPDATE CASCADE ON DELETE CASCADE,
    version_group_id integer NOT NULL REFERENCES reference.version_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    type_id integer NOT NULL REFERENCES reference.types (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    power integer,
    accuracy integer,
    pp integer,
    priority integer NOT NULL DEFAULT 0,
    damage_class text NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT move_version_group_attributes_primary_key PRIMARY KEY (move_id, version_group_id),
    CONSTRAINT move_version_group_attributes_power_check CHECK (power IS NULL OR power BETWEEN 0 AND 300),
    CONSTRAINT move_version_group_attributes_accuracy_check CHECK (accuracy IS NULL OR accuracy BETWEEN 1 AND 100),
    CONSTRAINT move_version_group_attributes_pp_check CHECK (pp IS NULL OR pp BETWEEN 1 AND 64),
    CONSTRAINT move_version_group_attributes_priority_check CHECK (priority BETWEEN -7 AND 7),
    CONSTRAINT move_version_group_attributes_damage_class_check CHECK (damage_class IN ('physical', 'special', 'status', 'variable'))
);

COMMENT ON TABLE reference.move_version_group_attributes IS 'Version-group overrides for move type, power, accuracy, PP, priority, and damage class, such as Let''s Go values. A row replaces the generation row for that version group only.';
