-- ============================================================================
-- Table: gameplay.play_tracking_items
-- Tracks completion of tracking milestones per playthrough.
-- Positive model: row exists = milestone completed.
-- ============================================================================
CREATE TABLE
    gameplay.play_tracking_items (
        -- Composite primary key
        play_id UUID NOT NULL REFERENCES gameplay.plays (id) ON DELETE CASCADE,
        tracking_item_id INTEGER NOT NULL REFERENCES tracking.items (id),
        -- Completion
        completed_at TIMESTAMPTZ NULL,
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        PRIMARY KEY (play_id, tracking_item_id)
    );

-- Indexes
CREATE INDEX idx_tracking_play_tracking_items_play ON gameplay.play_tracking_items (play_id);

CREATE INDEX idx_tracking_play_tracking_items_item ON gameplay.play_tracking_items (tracking_item_id);

-- Comments
COMMENT ON TABLE gameplay.play_tracking_items IS 'Milestone completion tracking. Row exists = milestone completed for this play.';

-- ============================================================================
-- RLS: ownership via parent play
-- ============================================================================
ALTER TABLE gameplay.play_tracking_items ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.play_tracking_items FORCE ROW LEVEL SECURITY;

CREATE POLICY play_tracking_items_select ON gameplay.play_tracking_items FOR
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

CREATE POLICY play_tracking_items_insert ON gameplay.play_tracking_items FOR INSERT
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

CREATE POLICY play_tracking_items_delete ON gameplay.play_tracking_items FOR DELETE USING (
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