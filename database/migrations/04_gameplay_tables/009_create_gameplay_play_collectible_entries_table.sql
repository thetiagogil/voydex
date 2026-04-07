-- ============================================================================
-- Table: gameplay.play_collectible_entries
-- Per-play collected collectible entries.
-- Positive model: row exists = entry collected. No row = not collected.
-- NOTE: Lives in gameplay schema but placed here due to FK dependency
--       on tracking.collectible_entries (created in 014).
-- ============================================================================
CREATE TABLE
    gameplay.play_collectible_entries (
        play_id UUID NOT NULL REFERENCES gameplay.plays (id) ON DELETE CASCADE,
        collectible_entry_id INTEGER NOT NULL REFERENCES tracking.collectible_entries (id) ON DELETE CASCADE,
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        PRIMARY KEY (play_id, collectible_entry_id)
    );

-- Indexes
CREATE INDEX idx_gameplay_play_collectible_entries_play ON gameplay.play_collectible_entries (play_id);

CREATE INDEX idx_gameplay_play_collectible_entries_entry ON gameplay.play_collectible_entries (collectible_entry_id);

-- Comments
COMMENT ON TABLE gameplay.play_collectible_entries IS 'Per-play collectible entry completion. Row exists = collected.';

-- ============================================================================
-- RLS: ownership via parent play
-- ============================================================================
ALTER TABLE gameplay.play_collectible_entries ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.play_collectible_entries FORCE ROW LEVEL SECURITY;

CREATE POLICY play_collectible_entries_select ON gameplay.play_collectible_entries FOR
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

CREATE POLICY play_collectible_entries_insert ON gameplay.play_collectible_entries FOR INSERT
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

CREATE POLICY play_collectible_entries_delete ON gameplay.play_collectible_entries FOR DELETE USING (
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