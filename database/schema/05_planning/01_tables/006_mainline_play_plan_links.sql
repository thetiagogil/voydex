-- ============================================================================
-- Table: planning.mainline_play_plan_links
-- Links mainline plays to their single reusable team plan.
-- ============================================================================
CREATE TABLE planning.mainline_play_plan_links (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid (),
    play_id uuid NOT NULL,
    team_plan_id uuid NOT NULL,
    user_id uuid NOT NULL,
    game_id integer NOT NULL,
    version_group_id integer NOT NULL,
    created_from_plan boolean NOT NULL DEFAULT FALSE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT play_plan_links_play_scope_fkey FOREIGN KEY (play_id, user_id, game_id, version_group_id) REFERENCES gameplay.mainline_plays (id, user_id, game_id, version_group_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT play_plan_links_plan_scope_fkey FOREIGN KEY (team_plan_id, user_id, game_id, version_group_id) REFERENCES planning.mainline_team_plans (id, user_id, game_id, version_group_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT play_plan_links_play_unique UNIQUE (play_id),
    CONSTRAINT play_plan_links_id_play_plan_unique UNIQUE (id, play_id, team_plan_id)
);

CREATE INDEX play_plan_links_team_plan_idx ON planning.mainline_play_plan_links (team_plan_id);

CREATE INDEX play_plan_links_game_version_group_idx ON planning.mainline_play_plan_links (game_id, version_group_id);

CREATE INDEX play_plan_links_user_idx ON planning.mainline_play_plan_links (user_id);

CREATE INDEX play_plan_links_play_scope_idx ON planning.mainline_play_plan_links (play_id, user_id, game_id, version_group_id);

CREATE INDEX play_plan_links_plan_scope_idx ON planning.mainline_play_plan_links (team_plan_id, user_id, game_id, version_group_id);

COMMENT ON TABLE planning.mainline_play_plan_links IS 'Links each play to zero or one reusable team plan while enforcing that the play and plan share owner, game, and version group.';

COMMENT ON COLUMN planning.mainline_play_plan_links.game_id IS 'Duplicated from both play and plan to enforce same-game play-plan integrity.';

COMMENT ON COLUMN planning.mainline_play_plan_links.version_group_id IS 'Duplicated from both play and plan to enforce same-version-group play-plan integrity.';

COMMENT ON COLUMN planning.mainline_play_plan_links.created_from_plan IS 'True when the play was originally created from the linked plan.';
