-- ============================================================================
-- Table: meta.move_availability
-- Curated availability of moves by version group.
-- Positive model: row exists = move is present in this version group.
-- ============================================================================
CREATE TABLE
    meta.move_availability (
        -- Composite primary key
        move_id INTEGER NOT NULL REFERENCES meta.moves (id) ON DELETE CASCADE,
        version_group_id INTEGER NOT NULL REFERENCES meta.version_groups (id),
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        PRIMARY KEY (move_id, version_group_id)
    );

-- Indexes
CREATE INDEX idx_move_avail_move ON meta.move_availability (move_id);

CREATE INDEX idx_move_avail_vg ON meta.move_availability (version_group_id);

-- Comments
COMMENT ON TABLE meta.move_availability IS 'Positive availability model: row exists = move is present and usable in this version group. DLC version groups contain only additions over the base VG.';