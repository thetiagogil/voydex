-- ============================================================================
-- Table: planning.mainline_team_plan_tags
-- Tags attached to team plans.
-- ============================================================================
CREATE TABLE planning.mainline_team_plan_tags (
    team_plan_id uuid NOT NULL,
    tag_id uuid NOT NULL,
    user_id uuid NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT team_plan_tags_primary_key PRIMARY KEY (team_plan_id, tag_id),
    CONSTRAINT team_plan_tags_plan_user_fkey FOREIGN KEY (team_plan_id, user_id) REFERENCES planning.mainline_team_plans (id, user_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT team_plan_tags_tag_user_fkey FOREIGN KEY (tag_id, user_id) REFERENCES public.tags (id, user_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE INDEX team_plan_tags_plan_user_idx ON planning.mainline_team_plan_tags (team_plan_id, user_id);

CREATE INDEX team_plan_tags_tag_user_idx ON planning.mainline_team_plan_tags (tag_id, user_id);

COMMENT ON TABLE planning.mainline_team_plan_tags IS 'Typed tag links for team plans. user_id enforces tag ownership matches plan ownership.';
