-- ============================================================================
-- Table: tracking.mainline_milestone_prerequisites
-- Prerequisite links between story/progression milestones.
-- ============================================================================
CREATE TABLE tracking.mainline_milestone_prerequisites (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    milestone_id integer NOT NULL,
    prerequisite_milestone_id integer NOT NULL,
    version_group_id integer NOT NULL,
    prerequisite_kind_id integer NOT NULL REFERENCES tracking.mainline_milestone_prerequisite_kinds (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    sort_order integer NOT NULL,
    notes text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT mainline_milestone_prerequisites_id_positive_check CHECK (id > 0),
    CONSTRAINT mainline_milestone_prerequisites_milestone_version_group_fkey FOREIGN KEY (milestone_id, version_group_id) REFERENCES tracking.mainline_milestones (id, version_group_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT mainline_milestone_prerequisites_prerequisite_version_group_fkey FOREIGN KEY (prerequisite_milestone_id, version_group_id) REFERENCES tracking.mainline_milestones (id, version_group_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mainline_milestone_prerequisites_not_self_check CHECK (milestone_id <> prerequisite_milestone_id),
    CONSTRAINT mainline_milestone_prerequisites_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT mainline_milestone_prerequisites_notes_length_check CHECK (notes IS NULL OR CHAR_LENGTH(BTRIM(notes)) BETWEEN 1 AND 1000),
    CONSTRAINT mainline_milestone_prerequisites_unique UNIQUE (milestone_id, prerequisite_milestone_id, prerequisite_kind_id)
);

CREATE UNIQUE INDEX mainline_milestone_prerequisites_sort_order_unique ON tracking.mainline_milestone_prerequisites (milestone_id, sort_order);

CREATE INDEX mainline_milestone_prerequisites_prerequisite_idx ON tracking.mainline_milestone_prerequisites (prerequisite_milestone_id);

CREATE INDEX mainline_milestone_prerequisites_kind_idx ON tracking.mainline_milestone_prerequisites (prerequisite_kind_id);

COMMENT ON TABLE tracking.mainline_milestone_prerequisites IS 'Static prerequisite graph for story progression prompts, unlock notes, and bulk completion suggestions.';

COMMENT ON COLUMN tracking.mainline_milestone_prerequisites.version_group_id IS 'Enforces that milestone and prerequisite milestone belong to the same version group.';

COMMENT ON COLUMN tracking.mainline_milestone_prerequisites.sort_order IS 'Display order for prerequisite prompts attached to the milestone.';

CREATE FUNCTION private.enforce_mainline_milestone_prerequisite_game_scope ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SECURITY DEFINER
    SET search_path = ''
    AS $$
DECLARE
    milestone_game_id integer;
    prerequisite_game_id integer;
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
        mainline_milestones.game_id
    INTO
        prerequisite_game_id
    FROM
        tracking.mainline_milestones
    WHERE
        mainline_milestones.id = NEW.prerequisite_milestone_id;
    IF milestone_game_id IS NOT NULL AND prerequisite_game_id IS NOT NULL AND milestone_game_id <> prerequisite_game_id THEN
        RAISE EXCEPTION 'Cannot link game-specific mainline_milestones from different games: milestone % game %, prerequisite % game %', NEW.milestone_id, milestone_game_id, NEW.prerequisite_milestone_id, prerequisite_game_id;
    END IF;
    RETURN NEW;
END;
$$;

REVOKE ALL ON FUNCTION private.enforce_mainline_milestone_prerequisite_game_scope () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.enforce_mainline_milestone_prerequisite_game_scope () FROM anon;

REVOKE ALL ON FUNCTION private.enforce_mainline_milestone_prerequisite_game_scope () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.enforce_mainline_milestone_prerequisite_game_scope () TO service_role;

CREATE TRIGGER enforce_mainline_milestone_prerequisite_game_scope
    BEFORE INSERT OR UPDATE OF milestone_id,
    prerequisite_milestone_id,
    version_group_id ON tracking.mainline_milestone_prerequisites
    FOR EACH ROW
    EXECUTE FUNCTION private.enforce_mainline_milestone_prerequisite_game_scope ();

COMMENT ON FUNCTION private.enforce_mainline_milestone_prerequisite_game_scope () IS 'Prevents linking game-specific mainline_milestones from different games.';
