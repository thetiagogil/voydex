-- ============================================================================
-- Table: planning.mainline_team_plan_member_moves
-- Planned move slots for a team plan member.
-- ============================================================================
CREATE TABLE planning.mainline_team_plan_member_moves (
    team_plan_member_id uuid NOT NULL REFERENCES planning.mainline_team_plan_members (id) ON UPDATE CASCADE ON DELETE CASCADE,
    slot integer NOT NULL,
    move_id integer NOT NULL REFERENCES reference.moves (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT team_plan_member_moves_primary_key PRIMARY KEY (team_plan_member_id, slot),
    CONSTRAINT team_plan_member_moves_slot_range_check CHECK (slot BETWEEN 1 AND 4),
    CONSTRAINT team_plan_member_moves_unique_move UNIQUE (team_plan_member_id, move_id)
);

CREATE TRIGGER set_team_plan_member_moves_updated_at
    BEFORE UPDATE ON planning.mainline_team_plan_member_moves
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

CREATE INDEX team_plan_member_moves_move_idx ON planning.mainline_team_plan_member_moves (move_id);

COMMENT ON TABLE planning.mainline_team_plan_member_moves IS 'Ordered planned move slots for a planned Pokémon target.';
