-- ============================================================================
-- Table: progress.play_items
-- Tracks completion of progress milestones per playthrough.
-- Positive model: row exists = milestone completed.
-- ============================================================================
CREATE TABLE
    progress.play_items (
        -- Composite primary key
        play_id UUID NOT NULL REFERENCES gameplay.plays (id) ON DELETE CASCADE,
        progress_item_id INTEGER NOT NULL REFERENCES progress.items (id),
        -- Completion
        completed_at TIMESTAMPTZ NULL,
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        PRIMARY KEY (play_id, progress_item_id)
    );

-- Indexes
CREATE INDEX idx_progress_play_items_play ON progress.play_items (play_id);

CREATE INDEX idx_progress_play_items_item ON progress.play_items (progress_item_id);

-- Comments
COMMENT ON TABLE progress.play_items IS 'Milestone completion tracking. Row exists = milestone completed for this play.';

-- ============================================================================
-- RLS: ownership via parent play
-- ============================================================================
ALTER TABLE progress.play_items ENABLE ROW LEVEL SECURITY;

ALTER TABLE progress.play_items FORCE ROW LEVEL SECURITY;

CREATE POLICY play_items_select ON progress.play_items FOR
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

CREATE POLICY play_items_insert ON progress.play_items FOR INSERT
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

CREATE POLICY play_items_delete ON progress.play_items FOR DELETE USING (
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