-- =============================================================================
-- PLAY PROGRESS TABLE (renamed from progress)
-- Tracks completion of progress items per play
-- =============================================================================
CREATE TABLE
    gameplay.play_progress (
        id UUID PRIMARY KEY DEFAULT uuid_generate_v4 (),
        play_id UUID NOT NULL REFERENCES gameplay.plays (id) ON DELETE CASCADE,
        progress_item_id INTEGER NOT NULL REFERENCES meta.progress_items (id) ON DELETE CASCADE,
        current_count INTEGER,
        completed_at TIMESTAMP
        WITH
            TIME ZONE DEFAULT NOW (),
            UNIQUE (play_id, progress_item_id),
            -- current_count must be non-negative when set
            CHECK (
                current_count IS NULL
                OR current_count >= 0
            )
    );

CREATE INDEX idx_play_progress_play ON gameplay.play_progress (play_id);

CREATE INDEX idx_play_progress_item ON gameplay.play_progress (progress_item_id);

CREATE INDEX idx_play_progress_play_item ON gameplay.play_progress (play_id, progress_item_id);

CREATE INDEX idx_play_progress_play_completed ON gameplay.play_progress (play_id, completed_at DESC);

CREATE INDEX idx_play_progress_completed_at_desc ON gameplay.play_progress (completed_at DESC);

COMMENT ON TABLE gameplay.play_progress IS 'Tracks completion of progress items per play. current_count used for counter-type items (e.g. Zygarde Cells collected). completed_at set when boolean completed OR counter reaches target.';

-- =============================================================================
-- RLS POLICIES: play_progress
-- Users can only manage progress for their own plays
-- =============================================================================
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

CREATE POLICY play_progress_update ON gameplay.play_progress FOR
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