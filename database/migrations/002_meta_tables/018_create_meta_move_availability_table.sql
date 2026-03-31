-- =============================================================================
-- MOVE AVAILABILITY TABLE
-- Positive join table: row exists = move present in this version group
-- =============================================================================
CREATE TABLE
    meta.move_availability (
        move_id INTEGER NOT NULL REFERENCES meta.moves (id) ON DELETE CASCADE,
        version_group_id INTEGER NOT NULL REFERENCES meta.version_groups (id) ON DELETE CASCADE,
        created_at TIMESTAMP
        WITH
            TIME ZONE DEFAULT NOW (),
            PRIMARY KEY (move_id, version_group_id)
    );

CREATE INDEX idx_move_avail_vg ON meta.move_availability (version_group_id);

CREATE INDEX idx_move_avail_move ON meta.move_availability (move_id);

COMMENT ON TABLE meta.move_availability IS 'Positive availability model: row exists = move is present in this version group. DLC VG files contain only additions over the base VG.';