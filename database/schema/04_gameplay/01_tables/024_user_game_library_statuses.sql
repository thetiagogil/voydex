-- ============================================================================
-- Table: gameplay.user_game_library_statuses
-- User game library status lookup.
-- ============================================================================
CREATE TABLE gameplay.user_game_library_statuses (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT user_game_library_statuses_id_positive_check CHECK (id > 0),
    CONSTRAINT user_game_library_statuses_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:_[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT user_game_library_statuses_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT user_game_library_statuses_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE gameplay.user_game_library_statuses IS 'Lookup for user-owned game backlog and intent statuses.';
