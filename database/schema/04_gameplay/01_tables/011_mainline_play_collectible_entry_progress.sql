-- ============================================================================
-- Table: gameplay.mainline_play_collectible_entry_progress
-- Per-play collected collectible entry rows.
-- ============================================================================
CREATE TABLE gameplay.mainline_play_collectible_entry_progress (
    play_id uuid NOT NULL REFERENCES gameplay.mainline_plays (id) ON UPDATE CASCADE ON DELETE CASCADE,
    collectible_entry_id integer NOT NULL REFERENCES tracking.mainline_collectible_entries (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    collected_at timestamptz,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT play_collectible_entry_progress_primary_key PRIMARY KEY (play_id, collectible_entry_id)
);

CREATE TRIGGER set_play_collectible_entry_progress_updated_at
    BEFORE UPDATE ON gameplay.mainline_play_collectible_entry_progress
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

CREATE TRIGGER enforce_mainline_play_collectible_entry_scope
    BEFORE INSERT OR UPDATE OF play_id,
    collectible_entry_id ON gameplay.mainline_play_collectible_entry_progress
    FOR EACH ROW
    EXECUTE FUNCTION private.enforce_mainline_play_collectible_entry_scope ();

CREATE INDEX play_collectible_entry_progress_entry_idx ON gameplay.mainline_play_collectible_entry_progress (collectible_entry_id);

COMMENT ON TABLE gameplay.mainline_play_collectible_entry_progress IS 'Sparse positive collectible progress. Row existence means collected.';

COMMENT ON COLUMN gameplay.mainline_play_collectible_entry_progress.collected_at IS 'Nullable for imported historical mainline_plays where the exact collection time is unknown.';

CREATE TRIGGER touch_play_after_change
    AFTER INSERT OR UPDATE OR DELETE ON gameplay.mainline_play_collectible_entry_progress
    FOR EACH ROW
    EXECUTE FUNCTION private.touch_play ();
