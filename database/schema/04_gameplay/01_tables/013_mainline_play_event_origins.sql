-- ============================================================================
-- Table: gameplay.mainline_play_event_origins
-- Timeline event origin lookup.
-- ============================================================================
CREATE TABLE gameplay.mainline_play_event_origins (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT play_event_origins_id_positive_check CHECK (id > 0),
    CONSTRAINT play_event_origins_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:_[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT play_event_origins_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT play_event_origins_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE gameplay.mainline_play_event_origins IS 'Lookup for how a user-facing play event was created, such as manual entry or milestone completion.';
