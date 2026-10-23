-- ============================================================================
-- Table: tracking.mainline_opponent_team_member_moves
-- The moves each opponent's Pokémon uses in a Story battle, slot by slot.
-- ============================================================================
CREATE TABLE tracking.mainline_opponent_team_member_moves (
    team_member_id integer NOT NULL REFERENCES tracking.mainline_opponent_team_members (id) ON UPDATE CASCADE ON DELETE CASCADE,
    slot integer NOT NULL,
    move_id integer NOT NULL REFERENCES reference.moves (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT mainline_opponent_team_member_moves_primary_key PRIMARY KEY (team_member_id, slot),
    CONSTRAINT mainline_opponent_team_member_moves_slot_range_check CHECK (slot BETWEEN 1 AND 4),
    CONSTRAINT mainline_opponent_team_member_moves_unique_move UNIQUE (team_member_id, move_id)
);

CREATE INDEX mainline_opponent_team_member_moves_move_idx ON tracking.mainline_opponent_team_member_moves (move_id);

COMMENT ON TABLE tracking.mainline_opponent_team_member_moves IS 'Curated move slots of an opponent''s Pokémon in a Story battle (a mainline_opponent_team_members row), in the game''s own order. A Pokémon with no rows has moves Voydex does not have.';

COMMENT ON COLUMN tracking.mainline_opponent_team_member_moves.move_id IS 'A regular move it knows in this battle, as that game''s own trainer data gives it; a Pokémon the game gives no set moves keeps its default level-up moves for its level.';
