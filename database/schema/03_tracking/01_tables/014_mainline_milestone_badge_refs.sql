-- ============================================================================
-- Table: tracking.mainline_milestone_badge_refs
-- Badge references attached to milestone definitions.
-- ============================================================================
CREATE TABLE tracking.mainline_milestone_badge_refs (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    milestone_id integer NOT NULL,
    badge_id integer NOT NULL,
    version_group_id integer NOT NULL,
    relation_kind text NOT NULL,
    sort_order integer NOT NULL,
    notes text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT mainline_milestone_badge_refs_id_positive_check CHECK (id > 0),
    CONSTRAINT mainline_milestone_badge_refs_milestone_version_group_fkey FOREIGN KEY (milestone_id, version_group_id) REFERENCES tracking.mainline_milestones (id, version_group_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT mainline_milestone_badge_refs_badge_version_group_fkey FOREIGN KEY (badge_id, version_group_id) REFERENCES tracking.mainline_badges (id, version_group_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mainline_milestone_badge_refs_relation_kind_format_check CHECK (relation_kind = LOWER(relation_kind) AND relation_kind ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(relation_kind) <= 80),
    CONSTRAINT mainline_milestone_badge_refs_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT mainline_milestone_badge_refs_notes_length_check CHECK (notes IS NULL OR CHAR_LENGTH(BTRIM(notes)) BETWEEN 1 AND 1000),
    CONSTRAINT mainline_milestone_badge_refs_unique UNIQUE (milestone_id, badge_id, version_group_id, relation_kind)
);

CREATE UNIQUE INDEX mainline_milestone_badge_refs_sort_order_unique ON tracking.mainline_milestone_badge_refs (milestone_id, sort_order);

CREATE INDEX mainline_milestone_badge_refs_badge_idx ON tracking.mainline_milestone_badge_refs (badge_id);

COMMENT ON TABLE tracking.mainline_milestone_badge_refs IS 'Static badge references related to milestone definitions.';

COMMENT ON COLUMN tracking.mainline_milestone_badge_refs.version_group_id IS 'Enforces that the milestone and badge belong to the same version group.';

CREATE FUNCTION private.enforce_mainline_milestone_badge_ref_game_scope ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SET search_path = ''
    AS $$
DECLARE
    milestone_game_id integer;
    badge_game_id integer;
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
        mainline_badges.game_id
    INTO
        badge_game_id
    FROM
        tracking.mainline_badges
    WHERE
        mainline_badges.id = NEW.badge_id;
    IF milestone_game_id IS NOT NULL AND badge_game_id IS NOT NULL AND milestone_game_id <> badge_game_id THEN
        RAISE EXCEPTION 'Milestone % and badge % belong to different games', NEW.milestone_id, NEW.badge_id
            USING ERRCODE = '23514';
    END IF;
    RETURN NEW;
END;
$$;

REVOKE ALL ON FUNCTION private.enforce_mainline_milestone_badge_ref_game_scope () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.enforce_mainline_milestone_badge_ref_game_scope () FROM anon;

REVOKE ALL ON FUNCTION private.enforce_mainline_milestone_badge_ref_game_scope () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.enforce_mainline_milestone_badge_ref_game_scope () TO service_role;

CREATE TRIGGER enforce_mainline_milestone_badge_ref_game_scope
    BEFORE INSERT OR UPDATE OF milestone_id,
    badge_id,
    version_group_id ON tracking.mainline_milestone_badge_refs
    FOR EACH ROW
    EXECUTE FUNCTION private.enforce_mainline_milestone_badge_ref_game_scope ();

COMMENT ON FUNCTION private.enforce_mainline_milestone_badge_ref_game_scope () IS 'Prevents linking game-specific mainline_milestones and mainline_badges from different games.';
