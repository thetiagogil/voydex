-- ============================================================================
-- Table: gameplay.mainline_play_events
-- User-facing play timeline and journal events.
-- ============================================================================
CREATE TABLE gameplay.mainline_play_events (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid (),
    play_id uuid NOT NULL REFERENCES gameplay.mainline_plays (id) ON UPDATE CASCADE ON DELETE CASCADE,
    event_type_id integer NOT NULL REFERENCES gameplay.mainline_play_event_types (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    event_origin_id integer NOT NULL REFERENCES gameplay.mainline_play_event_origins (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    title text NOT NULL,
    body text,
    happened_at timestamptz,
    timeline_order integer NOT NULL,
    milestone_id integer REFERENCES tracking.mainline_milestones (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    is_pinned boolean NOT NULL DEFAULT FALSE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT play_events_id_play_unique UNIQUE (id, play_id),
    CONSTRAINT play_events_milestone_progress_fkey FOREIGN KEY (play_id, milestone_id) REFERENCES gameplay.mainline_play_milestone_progress (play_id, milestone_id) ON UPDATE CASCADE ON DELETE SET NULL (milestone_id) DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT play_events_play_timeline_order_unique UNIQUE (play_id, timeline_order),
    CONSTRAINT play_events_title_length_check CHECK (CHAR_LENGTH(BTRIM(title)) BETWEEN 1 AND 200),
    CONSTRAINT play_events_body_length_check CHECK (body IS NULL OR CHAR_LENGTH(BTRIM(body)) BETWEEN 1 AND 10000),
    CONSTRAINT play_events_timeline_order_positive_check CHECK (timeline_order > 0)
);

CREATE UNIQUE INDEX play_events_play_milestone_unique ON gameplay.mainline_play_events (play_id, milestone_id)
WHERE
    milestone_id IS NOT NULL;

CREATE INDEX play_events_play_happened_at_idx ON gameplay.mainline_play_events (play_id, happened_at);

CREATE INDEX play_events_play_type_happened_at_idx ON gameplay.mainline_play_events (play_id, event_type_id, happened_at);

CREATE INDEX play_events_event_type_idx ON gameplay.mainline_play_events (event_type_id);

CREATE INDEX play_events_event_origin_idx ON gameplay.mainline_play_events (event_origin_id);

CREATE INDEX play_events_milestone_idx ON gameplay.mainline_play_events (milestone_id)
WHERE
    milestone_id IS NOT NULL;

CREATE TRIGGER set_play_events_updated_at
    BEFORE UPDATE ON gameplay.mainline_play_events
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

CREATE TRIGGER enforce_play_event_milestone_scope
    BEFORE INSERT OR UPDATE OF play_id,
    milestone_id ON gameplay.mainline_play_events
    FOR EACH ROW
    EXECUTE FUNCTION private.enforce_mainline_play_milestone_scope ();

COMMENT ON TABLE gameplay.mainline_play_events IS 'User-facing play timeline and journal events, not a technical audit log.';

COMMENT ON COLUMN gameplay.mainline_play_events.event_origin_id IS 'How the event was created, such as manual entry or milestone completion.';

COMMENT ON COLUMN gameplay.mainline_play_events.timeline_order IS 'Deterministic order for imported or approximate-history mainline_plays where exact timestamps may be unknown.';

COMMENT ON COLUMN gameplay.mainline_play_events.milestone_id IS 'Optional completed milestone connected to a story/progression event. Milestone-linked events require the matching progress row; bulk progress can exist without an event.';
