-- ============================================================================
-- Table: gameplay.user_game_library_entries
-- User-owned game library/backlog rows.
-- ============================================================================
CREATE TABLE gameplay.user_game_library_entries (
    user_id uuid NOT NULL REFERENCES public.profiles (id) ON UPDATE CASCADE ON DELETE CASCADE,
    game_id integer NOT NULL REFERENCES reference.games (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    library_status_id integer NOT NULL REFERENCES gameplay.user_game_library_statuses (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    notes text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT user_game_library_entries_primary_key PRIMARY KEY (user_id, game_id),
    CONSTRAINT user_game_library_entries_notes_length_check CHECK (notes IS NULL OR CHAR_LENGTH(BTRIM(notes)) BETWEEN 1 AND 5000)
);

CREATE TRIGGER set_user_game_library_entries_updated_at
    BEFORE UPDATE ON gameplay.user_game_library_entries
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

CREATE INDEX user_game_library_entries_game_idx ON gameplay.user_game_library_entries (game_id);

CREATE INDEX user_game_library_entries_status_idx ON gameplay.user_game_library_entries (library_status_id);

CREATE INDEX user_game_library_entries_user_status_idx ON gameplay.user_game_library_entries (user_id, library_status_id);

COMMENT ON TABLE gameplay.user_game_library_entries IS 'User-owned game backlog, wishlist, and intent state. Independent from concrete mainline plays.';
