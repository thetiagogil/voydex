-- ============================================================================
-- Table: gameplay.mainline_play_milestone_decisions
-- Per-play selected options for decision mainline_milestones.
-- ============================================================================
CREATE TABLE gameplay.mainline_play_milestone_decisions (
    play_id uuid NOT NULL REFERENCES gameplay.mainline_plays (id) ON UPDATE CASCADE ON DELETE CASCADE,
    milestone_id integer NOT NULL REFERENCES tracking.mainline_milestones (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    decision_option_id integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT play_milestone_decisions_primary_key PRIMARY KEY (play_id, milestone_id),
    CONSTRAINT play_milestone_decisions_option_milestone_fkey FOREIGN KEY (decision_option_id, milestone_id) REFERENCES tracking.mainline_milestone_decision_options (id, milestone_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TRIGGER set_play_milestone_decisions_updated_at
    BEFORE UPDATE ON gameplay.mainline_play_milestone_decisions
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

CREATE TRIGGER enforce_play_milestone_decisions_scope
    BEFORE INSERT OR UPDATE OF play_id,
    milestone_id ON gameplay.mainline_play_milestone_decisions
    FOR EACH ROW
    EXECUTE FUNCTION private.enforce_mainline_play_milestone_scope ();

CREATE INDEX play_milestone_decisions_milestone_idx ON gameplay.mainline_play_milestone_decisions (milestone_id);

CREATE INDEX play_milestone_decisions_option_milestone_idx ON gameplay.mainline_play_milestone_decisions (decision_option_id, milestone_id);

COMMENT ON TABLE gameplay.mainline_play_milestone_decisions IS 'Selected decision option for a play milestone.';
