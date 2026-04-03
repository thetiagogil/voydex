-- ============================================================================
-- Table: gameplay.play_dex_entries
-- Dex progress tracking per playthrough. User toggles seen/caught manually.
-- ============================================================================
CREATE TABLE
    gameplay.play_dex_entries (
        -- Composite primary key
        play_id UUID NOT NULL REFERENCES gameplay.plays (id) ON DELETE CASCADE,
        dex_entry_id INTEGER NOT NULL REFERENCES meta.dex_entries (id),
        -- State
        is_seen BOOLEAN NOT NULL DEFAULT FALSE,
        is_caught BOOLEAN NOT NULL DEFAULT FALSE,
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        PRIMARY KEY (play_id, dex_entry_id)
    );

-- Indexes
CREATE INDEX idx_play_dex_entries_play ON gameplay.play_dex_entries (play_id);

CREATE INDEX idx_play_dex_entries_entry ON gameplay.play_dex_entries (dex_entry_id);

-- Trigger: auto-update updated_at
CREATE TRIGGER update_play_dex_entries_updated_at BEFORE
UPDATE ON gameplay.play_dex_entries FOR EACH ROW EXECUTE FUNCTION update_updated_at_column ();

-- Comments
COMMENT ON TABLE gameplay.play_dex_entries IS 'Per-play dex progress. User manually toggles seen/caught state.';

-- ============================================================================
-- RLS: ownership via parent play
-- ============================================================================
ALTER TABLE gameplay.play_dex_entries ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.play_dex_entries FORCE ROW LEVEL SECURITY;

CREATE POLICY play_dex_entries_select ON gameplay.play_dex_entries FOR
SELECT
    USING (
        EXISTS (
            SELECT
                1
            FROM
                gameplay.plays
            WHERE
                plays.id = play_id
                AND plays.user_id = auth.uid ()
        )
    );

CREATE POLICY play_dex_entries_insert ON gameplay.play_dex_entries FOR INSERT
WITH
    CHECK (
        EXISTS (
            SELECT
                1
            FROM
                gameplay.plays
            WHERE
                plays.id = play_id
                AND plays.user_id = auth.uid ()
        )
    );

CREATE POLICY play_dex_entries_update ON gameplay.play_dex_entries FOR
UPDATE USING (
    EXISTS (
        SELECT
            1
        FROM
            gameplay.plays
        WHERE
            plays.id = play_id
            AND plays.user_id = auth.uid ()
    )
)
WITH
    CHECK (
        EXISTS (
            SELECT
                1
            FROM
                gameplay.plays
            WHERE
                plays.id = play_id
                AND plays.user_id = auth.uid ()
        )
    );

CREATE POLICY play_dex_entries_delete ON gameplay.play_dex_entries FOR DELETE USING (
    EXISTS (
        SELECT
            1
        FROM
            gameplay.plays
        WHERE
            plays.id = play_id
            AND plays.user_id = auth.uid ()
    )
);