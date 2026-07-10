-- ============================================================================
-- Table: tracking.mainline_milestone_collectible_refs
-- Collectible references attached to milestone definitions.
-- ============================================================================
CREATE TABLE tracking.mainline_milestone_collectible_refs (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    milestone_id integer NOT NULL,
    collectible_id integer NOT NULL,
    collectible_entry_id integer,
    version_group_id integer NOT NULL,
    relation_kind text NOT NULL,
    sort_order integer NOT NULL,
    notes text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT mainline_milestone_collectible_refs_id_positive_check CHECK (id > 0),
    CONSTRAINT mainline_milestone_collectible_refs_milestone_version_group_fkey FOREIGN KEY (milestone_id, version_group_id) REFERENCES tracking.mainline_milestones (id, version_group_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT mainline_milestone_collectible_refs_collectible_version_group_fkey FOREIGN KEY (collectible_id, version_group_id) REFERENCES tracking.mainline_collectibles (id, version_group_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mainline_milestone_collectible_refs_entry_fkey FOREIGN KEY (collectible_entry_id, collectible_id) REFERENCES tracking.mainline_collectible_entries (id, collectible_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mainline_milestone_collectible_refs_relation_kind_format_check CHECK (relation_kind = LOWER(relation_kind) AND relation_kind ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(relation_kind) <= 80),
    CONSTRAINT mainline_milestone_collectible_refs_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT mainline_milestone_collectible_refs_notes_length_check CHECK (notes IS NULL OR CHAR_LENGTH(BTRIM(notes)) BETWEEN 1 AND 1000)
);

CREATE UNIQUE INDEX mainline_milestone_collectible_refs_group_unique ON tracking.mainline_milestone_collectible_refs (milestone_id, collectible_id, relation_kind)
WHERE
    collectible_entry_id IS NULL;

CREATE UNIQUE INDEX mainline_milestone_collectible_refs_entry_unique ON tracking.mainline_milestone_collectible_refs (milestone_id, collectible_id, collectible_entry_id, relation_kind)
WHERE
    collectible_entry_id IS NOT NULL;

CREATE UNIQUE INDEX mainline_milestone_collectible_refs_sort_order_unique ON tracking.mainline_milestone_collectible_refs (milestone_id, sort_order);

CREATE INDEX mainline_milestone_collectible_refs_collectible_idx ON tracking.mainline_milestone_collectible_refs (collectible_id);

CREATE INDEX mainline_milestone_collectible_refs_entry_idx ON tracking.mainline_milestone_collectible_refs (collectible_entry_id)
WHERE
    collectible_entry_id IS NOT NULL;

COMMENT ON TABLE tracking.mainline_milestone_collectible_refs IS 'Static collectible group or entry references related to milestone definitions.';

COMMENT ON COLUMN tracking.mainline_milestone_collectible_refs.collectible_entry_id IS 'Nullable for group-level collectible references.';

COMMENT ON COLUMN tracking.mainline_milestone_collectible_refs.version_group_id IS 'Enforces that the milestone and collectible belong to the same version group.';

CREATE FUNCTION private.enforce_mainline_milestone_collectible_ref_game_scope ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SET search_path = ''
    AS $$
DECLARE
    milestone_game_id integer;
    collectible_game_id integer;
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
        mainline_collectibles.game_id
    INTO
        collectible_game_id
    FROM
        tracking.mainline_collectibles
    WHERE
        mainline_collectibles.id = NEW.collectible_id;
    IF milestone_game_id IS NOT NULL AND collectible_game_id IS NOT NULL AND milestone_game_id <> collectible_game_id THEN
        RAISE EXCEPTION 'Milestone % and collectible % belong to different games', NEW.milestone_id, NEW.collectible_id
            USING ERRCODE = '23514';
    END IF;
    RETURN NEW;
END;
$$;

REVOKE ALL ON FUNCTION private.enforce_mainline_milestone_collectible_ref_game_scope () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.enforce_mainline_milestone_collectible_ref_game_scope () FROM anon;

REVOKE ALL ON FUNCTION private.enforce_mainline_milestone_collectible_ref_game_scope () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.enforce_mainline_milestone_collectible_ref_game_scope () TO service_role;

CREATE TRIGGER enforce_mainline_milestone_collectible_ref_game_scope
    BEFORE INSERT OR UPDATE OF milestone_id,
    collectible_id,
    version_group_id ON tracking.mainline_milestone_collectible_refs
    FOR EACH ROW
    EXECUTE FUNCTION private.enforce_mainline_milestone_collectible_ref_game_scope ();

COMMENT ON FUNCTION private.enforce_mainline_milestone_collectible_ref_game_scope () IS 'Prevents linking game-specific mainline_milestones and mainline_collectibles from different games.';
