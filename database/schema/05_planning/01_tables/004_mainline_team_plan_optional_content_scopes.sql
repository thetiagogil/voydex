-- ============================================================================
-- Table: planning.mainline_team_plan_optional_content_scopes
-- Optional content selected for a team plan.
-- ============================================================================
CREATE TABLE planning.mainline_team_plan_optional_content_scopes (
    team_plan_id uuid NOT NULL,
    game_id integer NOT NULL,
    version_group_id integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT team_plan_optional_content_scopes_primary_key PRIMARY KEY (team_plan_id, version_group_id),
    CONSTRAINT team_plan_optional_content_scopes_plan_game_fkey FOREIGN KEY (team_plan_id, game_id) REFERENCES planning.mainline_team_plans (id, game_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT team_plan_optional_content_scopes_game_scope_fkey FOREIGN KEY (game_id, version_group_id) REFERENCES reference.game_content_scopes (game_id, version_group_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

COMMENT ON TABLE planning.mainline_team_plan_optional_content_scopes IS 'Optional game content scopes such as DLC selected for a team plan. The base content scope is implied by planning.mainline_team_plans.';

COMMENT ON COLUMN planning.mainline_team_plan_optional_content_scopes.game_id IS 'Duplicated from the plan to enforce game-specific content-scope validity with a composite FK.';

CREATE FUNCTION private.enforce_team_plan_optional_content_scope ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SECURITY DEFINER
    SET search_path = ''
    AS $$
DECLARE
    is_base boolean;
BEGIN
    SELECT
        game_content_scopes.is_base_scope
    INTO
        is_base
    FROM
        reference.game_content_scopes
    WHERE
        game_content_scopes.game_id = NEW.game_id
        AND game_content_scopes.version_group_id = NEW.version_group_id;
    IF is_base IS NULL THEN
        RAISE EXCEPTION 'Version group % is not a content scope for game %', NEW.version_group_id, NEW.game_id
            USING ERRCODE = '23503';
    END IF;
    IF is_base THEN
        RAISE EXCEPTION 'Base version group % for game % is implied by the plan and cannot be inserted as optional content', NEW.version_group_id, NEW.game_id
            USING ERRCODE = '23514';
    END IF;
    RETURN NEW;
END;
$$;

REVOKE ALL ON FUNCTION private.enforce_team_plan_optional_content_scope () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.enforce_team_plan_optional_content_scope () FROM anon;

REVOKE ALL ON FUNCTION private.enforce_team_plan_optional_content_scope () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.enforce_team_plan_optional_content_scope () TO service_role;

CREATE TRIGGER enforce_team_plan_optional_content_scope
    BEFORE INSERT OR UPDATE OF game_id,
    version_group_id ON planning.mainline_team_plan_optional_content_scopes
    FOR EACH ROW
    EXECUTE FUNCTION private.enforce_team_plan_optional_content_scope ();

CREATE INDEX team_plan_optional_content_scopes_plan_game_idx ON planning.mainline_team_plan_optional_content_scopes (team_plan_id, game_id);

CREATE INDEX team_plan_optional_content_scopes_game_scope_idx ON planning.mainline_team_plan_optional_content_scopes (game_id, version_group_id);

CREATE INDEX team_plan_optional_content_scopes_version_group_idx ON planning.mainline_team_plan_optional_content_scopes (version_group_id);

COMMENT ON FUNCTION private.enforce_team_plan_optional_content_scope () IS 'Prevents inserting a team plan base content scope as optional content.';
