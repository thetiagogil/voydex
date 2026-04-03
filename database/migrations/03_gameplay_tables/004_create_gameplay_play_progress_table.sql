-- ============================================================================
-- Table: gameplay.play_progress
-- Tracks completion of curated progress milestones per playthrough.
-- Positive model: row exists = milestone completed.
-- ============================================================================
CREATE TABLE
    gameplay.play_progress (
        -- Composite primary key
        play_id UUID NOT NULL REFERENCES gameplay.plays (id) ON DELETE CASCADE,
        progress_item_id INTEGER NOT NULL REFERENCES meta.progress_items (id),
        -- Completion
        completed_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        PRIMARY KEY (play_id, progress_item_id)
    );

-- Indexes
CREATE INDEX idx_play_progress_play ON gameplay.play_progress (play_id);

CREATE INDEX idx_play_progress_item ON gameplay.play_progress (progress_item_id);

CREATE INDEX idx_play_progress_completed ON gameplay.play_progress (play_id, completed_at DESC);

-- Comments
COMMENT ON TABLE gameplay.play_progress IS 'Positive completion model: row exists = milestone completed for this play. completed_at records when the user marked it done.';

-- ============================================================================
-- RLS: ownership via parent play
-- ============================================================================
ALTER TABLE gameplay.play_progress ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.play_progress FORCE ROW LEVEL SECURITY;

CREATE POLICY play_progress_select ON gameplay.play_progress FOR
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

CREATE POLICY play_progress_insert ON gameplay.play_progress FOR INSERT
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

CREATE POLICY play_progress_delete ON gameplay.play_progress FOR DELETE USING (
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