-- ============================================================================
-- Table: gameplay.mainline_play_milestone_progress
-- Per-play completed milestone rows.
-- ============================================================================
CREATE TABLE gameplay.mainline_play_milestone_progress (
    play_id uuid NOT NULL REFERENCES gameplay.mainline_plays (id) ON UPDATE CASCADE ON DELETE CASCADE,
    milestone_id integer NOT NULL REFERENCES tracking.mainline_milestones (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    completed_at timestamptz,
    notes text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT play_milestone_progress_primary_key PRIMARY KEY (play_id, milestone_id),
    CONSTRAINT play_milestone_progress_notes_length_check CHECK (notes IS NULL OR CHAR_LENGTH(BTRIM(notes)) BETWEEN 1 AND 5000)
);

CREATE TRIGGER set_play_milestone_progress_updated_at
    BEFORE UPDATE ON gameplay.mainline_play_milestone_progress
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

CREATE TRIGGER enforce_play_milestone_progress_scope
    BEFORE INSERT OR UPDATE OF play_id,
    milestone_id ON gameplay.mainline_play_milestone_progress
    FOR EACH ROW
    EXECUTE FUNCTION private.enforce_mainline_play_milestone_scope ();

CREATE INDEX play_milestone_progress_milestone_idx ON gameplay.mainline_play_milestone_progress (milestone_id);

COMMENT ON TABLE gameplay.mainline_play_milestone_progress IS 'Sparse positive milestone progress. Row existence means completed.';

COMMENT ON COLUMN gameplay.mainline_play_milestone_progress.completed_at IS 'Nullable for imported historical mainline_plays where the exact completion time is unknown.';

CREATE TRIGGER touch_play_after_change
    AFTER INSERT OR UPDATE OR DELETE ON gameplay.mainline_play_milestone_progress
    FOR EACH ROW
    EXECUTE FUNCTION private.touch_play ();
