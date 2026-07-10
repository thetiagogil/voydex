-- ============================================================================
-- Table: gameplay.mainline_play_optional_content_scopes
-- Optional content selected for a play.
-- ============================================================================
CREATE TABLE gameplay.mainline_play_optional_content_scopes (
    play_id uuid NOT NULL,
    game_id integer NOT NULL,
    version_group_id integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT play_optional_content_scopes_primary_key PRIMARY KEY (play_id, version_group_id),
    CONSTRAINT play_optional_content_scopes_play_game_fkey FOREIGN KEY (play_id, game_id) REFERENCES gameplay.mainline_plays (id, game_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT play_optional_content_scopes_game_scope_fkey FOREIGN KEY (game_id, version_group_id) REFERENCES reference.game_content_scopes (game_id, version_group_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

COMMENT ON TABLE gameplay.mainline_play_optional_content_scopes IS 'Optional game content scopes such as DLC selected for a play. The base content scope is implied by gameplay.mainline_plays.';

COMMENT ON COLUMN gameplay.mainline_play_optional_content_scopes.game_id IS 'Duplicated from the play to enforce game-specific content-scope validity with a composite FK.';

CREATE FUNCTION private.enforce_play_optional_content_scope ()
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
        RAISE EXCEPTION 'Base version group % for game % is implied by the play and cannot be inserted as optional content', NEW.version_group_id, NEW.game_id
            USING ERRCODE = '23514';
    END IF;
    RETURN NEW;
END;
$$;

REVOKE ALL ON FUNCTION private.enforce_play_optional_content_scope () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.enforce_play_optional_content_scope () FROM anon;

REVOKE ALL ON FUNCTION private.enforce_play_optional_content_scope () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.enforce_play_optional_content_scope () TO service_role;

CREATE TRIGGER enforce_play_optional_content_scope
    BEFORE INSERT OR UPDATE OF game_id,
    version_group_id ON gameplay.mainline_play_optional_content_scopes
    FOR EACH ROW
    EXECUTE FUNCTION private.enforce_play_optional_content_scope ();

CREATE INDEX play_optional_content_scopes_play_game_idx ON gameplay.mainline_play_optional_content_scopes (play_id, game_id);

CREATE INDEX play_optional_content_scopes_game_scope_idx ON gameplay.mainline_play_optional_content_scopes (game_id, version_group_id);

CREATE INDEX play_optional_content_scopes_version_group_idx ON gameplay.mainline_play_optional_content_scopes (version_group_id);

COMMENT ON FUNCTION private.enforce_play_optional_content_scope () IS 'Prevents inserting a play base content scope as optional content.';
