-- ============================================================================
-- Table: tracking.mainline_milestone_opponent_refs
-- Opponent references attached to milestone definitions.
-- ============================================================================
CREATE TABLE tracking.mainline_milestone_opponent_refs (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    milestone_id integer NOT NULL,
    opponent_id integer NOT NULL,
    version_group_id integer NOT NULL,
    relation_kind text NOT NULL,
    sort_order integer NOT NULL,
    notes text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT mainline_milestone_opponent_refs_id_positive_check CHECK (id > 0),
    CONSTRAINT mainline_milestone_opponent_refs_milestone_version_group_fkey FOREIGN KEY (milestone_id, version_group_id) REFERENCES tracking.mainline_milestones (id, version_group_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT mainline_milestone_opponent_refs_opponent_version_group_fkey FOREIGN KEY (opponent_id, version_group_id) REFERENCES tracking.mainline_opponents (id, version_group_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mainline_milestone_opponent_refs_relation_kind_format_check CHECK (relation_kind = LOWER(relation_kind) AND relation_kind ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(relation_kind) <= 80),
    CONSTRAINT mainline_milestone_opponent_refs_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT mainline_milestone_opponent_refs_notes_length_check CHECK (notes IS NULL OR CHAR_LENGTH(BTRIM(notes)) BETWEEN 1 AND 1000),
    CONSTRAINT mainline_milestone_opponent_refs_unique UNIQUE (milestone_id, opponent_id, version_group_id)
);

CREATE UNIQUE INDEX mainline_milestone_opponent_refs_sort_order_unique ON tracking.mainline_milestone_opponent_refs (milestone_id, sort_order);

CREATE INDEX mainline_milestone_opponent_refs_opponent_idx ON tracking.mainline_milestone_opponent_refs (opponent_id);

COMMENT ON TABLE tracking.mainline_milestone_opponent_refs IS 'Static opponent references related to milestone definitions.';

COMMENT ON COLUMN tracking.mainline_milestone_opponent_refs.version_group_id IS 'Enforces that the milestone and opponent belong to the same version group.';

CREATE FUNCTION private.enforce_mainline_milestone_opponent_ref_game_scope ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SET search_path = ''
    AS $$
DECLARE
    milestone_game_id integer;
    opponent_game_id integer;
BEGIN
    SELECT
        mainline_milestones.game_id
    INTO
        milestone_game_id
    FROM
        tracking.mainline_milestones
    WHERE
        mainline_milestones.id = NEW.milestone_id;
    SELECT
        mainline_opponents.game_id
    INTO
        opponent_game_id
    FROM
        tracking.mainline_opponents
    WHERE
        mainline_opponents.id = NEW.opponent_id;
    IF milestone_game_id IS NOT NULL AND opponent_game_id IS NOT NULL AND milestone_game_id <> opponent_game_id THEN
        RAISE EXCEPTION 'Milestone % and opponent % belong to different games', NEW.milestone_id, NEW.opponent_id
            USING ERRCODE = '23514';
    END IF;
    RETURN NEW;
END;
$$;

REVOKE ALL ON FUNCTION private.enforce_mainline_milestone_opponent_ref_game_scope () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.enforce_mainline_milestone_opponent_ref_game_scope () FROM anon;

REVOKE ALL ON FUNCTION private.enforce_mainline_milestone_opponent_ref_game_scope () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.enforce_mainline_milestone_opponent_ref_game_scope () TO service_role;

CREATE TRIGGER enforce_mainline_milestone_opponent_ref_game_scope
    BEFORE INSERT OR UPDATE OF milestone_id,
    opponent_id,
    version_group_id ON tracking.mainline_milestone_opponent_refs
    FOR EACH ROW
    EXECUTE FUNCTION private.enforce_mainline_milestone_opponent_ref_game_scope ();

COMMENT ON FUNCTION private.enforce_mainline_milestone_opponent_ref_game_scope () IS 'Prevents linking game-specific mainline_milestones and mainline_opponents from different games.';
