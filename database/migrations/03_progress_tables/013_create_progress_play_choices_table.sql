-- ============================================================================
-- Table: progress.play_choices
-- Records player choices for critical-choice milestones.
-- ============================================================================
CREATE TABLE
    progress.play_choices (
        -- Composite primary key
        play_id UUID NOT NULL REFERENCES gameplay.plays (id) ON DELETE CASCADE,
        progress_item_id INTEGER NOT NULL REFERENCES progress.items (id),
        choice_option_id INTEGER NOT NULL REFERENCES progress.item_choice_options (id),
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        PRIMARY KEY (play_id, progress_item_id)
    );

-- Indexes
CREATE INDEX idx_progress_play_choices_play ON progress.play_choices (play_id);

CREATE INDEX idx_progress_play_choices_item ON progress.play_choices (progress_item_id);

CREATE INDEX idx_progress_play_choices_option ON progress.play_choices (choice_option_id);

-- Comments
COMMENT ON TABLE progress.play_choices IS 'Records which option was selected for critical-choice milestones.';

-- ============================================================================
-- RLS: ownership via parent play
-- ============================================================================
ALTER TABLE progress.play_choices ENABLE ROW LEVEL SECURITY;

ALTER TABLE progress.play_choices FORCE ROW LEVEL SECURITY;

CREATE POLICY play_choices_select ON progress.play_choices FOR
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

CREATE POLICY play_choices_insert ON progress.play_choices FOR INSERT
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

CREATE POLICY play_choices_delete ON progress.play_choices FOR DELETE USING (
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