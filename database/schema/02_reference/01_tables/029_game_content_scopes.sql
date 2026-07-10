-- ============================================================================
-- Table: reference.game_content_scopes
-- Maps games to their base and optional content scopes.
-- ============================================================================
CREATE TABLE reference.game_content_scopes (
    game_id integer NOT NULL REFERENCES reference.games (id) ON UPDATE CASCADE ON DELETE CASCADE,
    version_group_id integer NOT NULL REFERENCES reference.version_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    is_base_scope boolean NOT NULL DEFAULT FALSE,
    sort_order integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT game_content_scopes_primary_key PRIMARY KEY (game_id, version_group_id),
    CONSTRAINT game_content_scopes_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT game_content_scopes_game_sort_order_unique UNIQUE (game_id, sort_order)
);

CREATE UNIQUE INDEX game_content_scopes_one_base_scope_per_game_unique ON reference.game_content_scopes (game_id)
WHERE
    is_base_scope;

COMMENT ON TABLE reference.game_content_scopes IS 'Maps each game to the version-group content scopes that can apply to it, including optional DLC scopes.';

COMMENT ON COLUMN reference.game_content_scopes.is_base_scope IS 'True for the game base version group. Optional content such as DLC uses false.';

CREATE FUNCTION private.enforce_game_content_scope_base ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SET search_path = ''
    AS $$
DECLARE
    expected_base_version_group_id integer;
    scope_parent_version_group_id integer;
BEGIN
    SELECT
        games.version_group_id
    INTO
        expected_base_version_group_id
    FROM
        reference.games
    WHERE
        games.id = NEW.game_id;
    IF expected_base_version_group_id IS NULL THEN
        RAISE EXCEPTION 'Game content scope references unknown game_id %', NEW.game_id
            USING ERRCODE = '23503';
    END IF;
    IF NEW.is_base_scope AND NEW.version_group_id <> expected_base_version_group_id THEN
        RAISE EXCEPTION 'Base content scope for game_id % must use version_group_id %, got %', NEW.game_id, expected_base_version_group_id, NEW.version_group_id
            USING ERRCODE = '23514';
    END IF;
    IF NOT NEW.is_base_scope AND NEW.version_group_id = expected_base_version_group_id THEN
        RAISE EXCEPTION 'Base version_group_id % for game_id % must be marked as the base scope', NEW.version_group_id, NEW.game_id
            USING ERRCODE = '23514';
    END IF;
    IF NOT NEW.is_base_scope THEN
        SELECT
            version_groups.parent_version_group_id
        INTO
            scope_parent_version_group_id
        FROM
            reference.version_groups
        WHERE
            version_groups.id = NEW.version_group_id;
        IF scope_parent_version_group_id IS DISTINCT FROM expected_base_version_group_id THEN
            RAISE EXCEPTION 'Optional content scope version_group_id % for game_id % must be a child of base version_group_id %', NEW.version_group_id, NEW.game_id, expected_base_version_group_id
                USING ERRCODE = '23514';
        END IF;
    END IF;
    RETURN NEW;
END;
$$;

REVOKE ALL ON FUNCTION private.enforce_game_content_scope_base () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.enforce_game_content_scope_base () FROM anon;

REVOKE ALL ON FUNCTION private.enforce_game_content_scope_base () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.enforce_game_content_scope_base () TO service_role;

CREATE TRIGGER enforce_game_content_scope_base
    BEFORE INSERT OR UPDATE OF game_id,
    version_group_id,
    is_base_scope ON reference.game_content_scopes
    FOR EACH ROW
    EXECUTE FUNCTION private.enforce_game_content_scope_base ();

COMMENT ON FUNCTION private.enforce_game_content_scope_base () IS 'Ensures each base game content scope matches the game base version group and optional scopes are direct children of that base scope.';
