-- ============================================================================
-- Table: planning.mainline_team_plans
-- User-owned reusable team plans.
-- ============================================================================
CREATE TABLE planning.mainline_team_plans (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid (),
    user_id uuid NOT NULL REFERENCES public.profiles (id) ON UPDATE CASCADE ON DELETE CASCADE,
    game_id integer NOT NULL,
    version_group_id integer NOT NULL,
    status_id integer NOT NULL REFERENCES planning.mainline_team_plan_statuses (id) ON UPDATE CASCADE ON DELETE RESTRICT DEFAULT 1,
    name text NOT NULL,
    notes text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT team_plans_game_version_group_fkey FOREIGN KEY (game_id, version_group_id) REFERENCES reference.games (id, version_group_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT team_plans_id_user_unique UNIQUE (id, user_id),
    CONSTRAINT team_plans_id_game_unique UNIQUE (id, game_id),
    CONSTRAINT team_plans_id_user_game_version_group_unique UNIQUE (id, user_id, game_id, version_group_id),
    CONSTRAINT team_plans_id_user_version_group_unique UNIQUE (id, user_id, version_group_id),
    CONSTRAINT team_plans_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 200),
    CONSTRAINT team_plans_notes_length_check CHECK (notes IS NULL OR CHAR_LENGTH(BTRIM(notes)) BETWEEN 1 AND 10000)
);

CREATE TRIGGER set_team_plans_updated_at
    BEFORE UPDATE ON planning.mainline_team_plans
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

CREATE INDEX team_plans_user_updated_at_idx ON planning.mainline_team_plans (user_id, updated_at DESC);

CREATE INDEX team_plans_user_status_idx ON planning.mainline_team_plans (user_id, status_id);

CREATE INDEX team_plans_status_idx ON planning.mainline_team_plans (status_id);

CREATE INDEX team_plans_user_game_idx ON planning.mainline_team_plans (user_id, game_id);

CREATE INDEX team_plans_game_version_group_idx ON planning.mainline_team_plans (game_id, version_group_id);

CREATE INDEX team_plans_user_version_group_idx ON planning.mainline_team_plans (user_id, version_group_id);

CREATE INDEX team_plans_version_group_idx ON planning.mainline_team_plans (version_group_id);

COMMENT ON TABLE planning.mainline_team_plans IS 'Reusable user-owned Pokémon team plan for a base version group, for either of its games.';

COMMENT ON COLUMN planning.mainline_team_plans.game_id IS 'The version group''s first game, kept for its cover. A Plan is for either game: a Play of any game in the version group can follow it and checks against its own game.';

COMMENT ON COLUMN planning.mainline_team_plans.version_group_id IS 'Stored with game_id so optional content and availability joins can use composite integrity.';
