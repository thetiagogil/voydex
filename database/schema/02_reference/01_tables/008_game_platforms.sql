-- ============================================================================
-- Table: reference.game_platforms
-- Maps games to official release platforms and enhanced editions.
-- ============================================================================
CREATE TABLE reference.game_platforms (
    game_id integer NOT NULL REFERENCES reference.games (id) ON UPDATE CASCADE ON DELETE CASCADE,
    platform_id integer NOT NULL REFERENCES reference.platforms (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    release_kind text NOT NULL,
    sort_order integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT game_platforms_primary_key PRIMARY KEY (game_id, platform_id),
    CONSTRAINT game_platforms_release_kind_check CHECK (release_kind IN ('native', 'enhanced')),
    CONSTRAINT game_platforms_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT game_platforms_game_sort_order_unique UNIQUE (game_id, sort_order)
);

CREATE INDEX game_platforms_platform_game_idx ON reference.game_platforms (platform_id, game_id);

COMMENT ON TABLE reference.game_platforms IS 'Maps each game to official release platforms and enhanced platform editions used by app filtering and play metadata.';

COMMENT ON COLUMN reference.game_platforms.release_kind IS 'native for the original release platform, enhanced for official enhanced platform editions.';
