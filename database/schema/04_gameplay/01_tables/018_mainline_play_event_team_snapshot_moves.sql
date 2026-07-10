-- ============================================================================
-- Table: gameplay.mainline_play_event_team_snapshot_moves
-- Historical move slots for team snapshot rows.
-- ============================================================================
CREATE TABLE gameplay.mainline_play_event_team_snapshot_moves (
    snapshot_id uuid NOT NULL REFERENCES gameplay.mainline_play_event_team_snapshots (id) ON UPDATE CASCADE ON DELETE CASCADE,
    slot integer NOT NULL,
    move_id integer NOT NULL REFERENCES reference.moves (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT play_event_team_snapshot_moves_primary_key PRIMARY KEY (snapshot_id, slot),
    CONSTRAINT play_event_team_snapshot_moves_slot_range_check CHECK (slot BETWEEN 1 AND 4),
    CONSTRAINT play_event_team_snapshot_moves_unique_move UNIQUE (snapshot_id, move_id)
);

CREATE INDEX play_event_team_snapshot_moves_move_idx ON gameplay.mainline_play_event_team_snapshot_moves (move_id);

COMMENT ON TABLE gameplay.mainline_play_event_team_snapshot_moves IS 'Move slots captured for historical team snapshot rows.';
