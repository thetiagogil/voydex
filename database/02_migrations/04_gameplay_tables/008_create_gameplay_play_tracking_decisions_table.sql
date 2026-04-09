-- ============================================================================
-- Table: gameplay.play_tracking_decisions
-- Records player decisions for decision milestones.
-- ============================================================================
CREATE TABLE
    gameplay.play_tracking_decisions (
        -- Composite primary key
        play_id UUID NOT NULL REFERENCES gameplay.plays (id) ON DELETE CASCADE,
        tracking_item_id INTEGER NOT NULL REFERENCES tracking.items (id),
        decision_option_id INTEGER NOT NULL REFERENCES tracking.item_decision_options (id),
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        PRIMARY KEY (play_id, tracking_item_id)
    );

-- Comments
COMMENT ON TABLE gameplay.play_tracking_decisions IS 'Records which option was selected for decision milestones.';

-- ============================================================================
-- RLS: ownership via parent play
-- ============================================================================
ALTER TABLE gameplay.play_tracking_decisions ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.play_tracking_decisions FORCE ROW LEVEL SECURITY;

CREATE POLICY play_tracking_decisions_select ON gameplay.play_tracking_decisions FOR
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

CREATE POLICY play_tracking_decisions_insert ON gameplay.play_tracking_decisions FOR INSERT
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

CREATE POLICY play_tracking_decisions_delete ON gameplay.play_tracking_decisions FOR DELETE USING (
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