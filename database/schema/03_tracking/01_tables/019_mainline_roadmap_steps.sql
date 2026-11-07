-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- The Story roadmap of a version group, step by step in walkthrough order.
-- ============================================================================
CREATE TABLE tracking.mainline_roadmap_steps (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    version_group_id integer NOT NULL REFERENCES reference.version_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    sort_order integer NOT NULL,
    location_id integer,
    milestone_id integer,
    note text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT mainline_roadmap_steps_id_positive_check CHECK (id > 0),
    CONSTRAINT mainline_roadmap_steps_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT mainline_roadmap_steps_location_version_group_fkey FOREIGN KEY (location_id, version_group_id) REFERENCES reference.location_version_groups (location_id, version_group_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mainline_roadmap_steps_milestone_version_group_fkey FOREIGN KEY (milestone_id, version_group_id) REFERENCES tracking.mainline_milestones (id, version_group_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT mainline_roadmap_steps_one_target_check CHECK (num_nonnulls (location_id, milestone_id) = 1),
    CONSTRAINT mainline_roadmap_steps_note_length_check CHECK (note IS NULL OR CHAR_LENGTH(BTRIM(note)) BETWEEN 1 AND 300),
    CONSTRAINT mainline_roadmap_steps_note_place_check CHECK (note IS NULL OR location_id IS NOT NULL),
    CONSTRAINT mainline_roadmap_steps_version_group_sort_order_unique UNIQUE (version_group_id, sort_order)
);

CREATE UNIQUE INDEX mainline_roadmap_steps_milestone_unique ON tracking.mainline_roadmap_steps (milestone_id)
WHERE
    milestone_id IS NOT NULL;

CREATE INDEX mainline_roadmap_steps_location_idx ON tracking.mainline_roadmap_steps (location_id, version_group_id)
WHERE
    location_id IS NOT NULL;

COMMENT ON TABLE tracking.mainline_roadmap_steps IS 'A version group''s Story roadmap in walkthrough order. A step is a place you pass (location_id) or a milestone (milestone_id), which carries its own place. Places may repeat (revisits); a milestone appears once.';

COMMENT ON COLUMN tracking.mainline_roadmap_steps.sort_order IS 'The step''s position on the version group''s roadmap, counting 1, 2, 3.';

COMMENT ON COLUMN tracking.mainline_roadmap_steps.location_id IS 'A place the story passes through, one of the version group''s places. NULL on a milestone step.';

COMMENT ON COLUMN tracking.mainline_roadmap_steps.milestone_id IS 'A milestone of the same version group; the step sits at the milestone''s own place. NULL on a place step.';

COMMENT ON COLUMN tracking.mainline_roadmap_steps.note IS 'What happens at a place step, in a line (pick up Oak''s Parcel, needs Cut); NULL where nothing does. Milestones have their own description.';
