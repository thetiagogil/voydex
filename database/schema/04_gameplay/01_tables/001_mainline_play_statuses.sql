-- ============================================================================
-- Table: gameplay.mainline_play_statuses
-- Play lifecycle status lookup.
-- ============================================================================
CREATE TABLE gameplay.mainline_play_statuses (
    id integer PRIMARY KEY,
    slug text NOT NULL UNIQUE,
    name text NOT NULL UNIQUE,
    is_terminal boolean NOT NULL DEFAULT FALSE,
    sort_order integer NOT NULL UNIQUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT play_statuses_id_positive_check CHECK (id > 0),
    CONSTRAINT play_statuses_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:_[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
    CONSTRAINT play_statuses_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
    CONSTRAINT play_statuses_sort_order_positive_check CHECK (sort_order > 0)
);

COMMENT ON TABLE gameplay.mainline_play_statuses IS 'Lookup table for play lifecycle states. Archive is stored separately on gameplay.mainline_plays.';

COMMENT ON COLUMN gameplay.mainline_play_statuses.is_terminal IS 'Marks statuses where the play is no longer expected to progress.';
