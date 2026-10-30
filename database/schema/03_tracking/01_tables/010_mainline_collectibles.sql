-- ============================================================================
-- Table: tracking.mainline_collectibles
-- Collectible groups by version group and optional game scope.
-- ============================================================================
CREATE TABLE tracking.mainline_collectibles (
    id integer PRIMARY KEY,
    version_group_id integer NOT NULL REFERENCES reference.version_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    game_id integer,
    collectible_type_id integer NOT NULL REFERENCES tracking.mainline_collectible_types (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    slug text NOT NULL,
    name text NOT NULL,
    total_count integer,
    sprite_slug text,
    reward_summary text NOT NULL,
    sort_order integer NOT NULL,
    is_required_for_completion boolean NOT NULL DEFAULT TRUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT mainline_collectibles_id_positive_check CHECK (id > 0),
    CONSTRAINT mainline_collectibles_game_scope_fkey FOREIGN KEY (game_id, version_group_id) REFERENCES reference.game_content_scopes (game_id, version_group_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mainline_collectibles_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 160),
    CONSTRAINT mainline_collectibles_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 200),
    CONSTRAINT mainline_collectibles_total_count_positive_check CHECK (total_count IS NULL OR total_count > 0),
    CONSTRAINT mainline_collectibles_sprite_slug_format_check CHECK (sprite_slug IS NULL OR (sprite_slug = LOWER(sprite_slug) AND sprite_slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(sprite_slug) <= 160)),
    CONSTRAINT mainline_collectibles_reward_summary_length_check CHECK (CHAR_LENGTH(BTRIM(reward_summary)) BETWEEN 1 AND 200),
    CONSTRAINT mainline_collectibles_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT mainline_collectibles_id_version_group_unique UNIQUE (id, version_group_id)
);

CREATE UNIQUE INDEX mainline_collectibles_version_group_slug_unique ON tracking.mainline_collectibles (version_group_id, slug)
WHERE
    game_id IS NULL;

CREATE UNIQUE INDEX mainline_collectibles_game_slug_unique ON tracking.mainline_collectibles (version_group_id, game_id, slug)
WHERE
    game_id IS NOT NULL;

CREATE UNIQUE INDEX mainline_collectibles_version_group_sort_order_unique ON tracking.mainline_collectibles (version_group_id, sort_order)
WHERE
    game_id IS NULL;

CREATE UNIQUE INDEX mainline_collectibles_game_sort_order_unique ON tracking.mainline_collectibles (version_group_id, game_id, sort_order)
WHERE
    game_id IS NOT NULL;

CREATE INDEX mainline_collectibles_version_group_game_idx ON tracking.mainline_collectibles (version_group_id, game_id);

CREATE INDEX mainline_collectibles_collectible_type_idx ON tracking.mainline_collectibles (collectible_type_id);

CREATE INDEX mainline_collectibles_required_completion_idx ON tracking.mainline_collectibles (version_group_id, is_required_for_completion);

COMMENT ON TABLE tracking.mainline_collectibles IS 'Curated collectible groups. User collection state lives in gameplay.';

COMMENT ON COLUMN tracking.mainline_collectibles.game_id IS 'Nullable for version-group-wide mainline_collectibles. When set, the game must be mapped to the same content scope.';

COMMENT ON COLUMN tracking.mainline_collectibles.total_count IS 'Optional expected count when individual entries are not fully enumerated or when a count is useful for display.';

COMMENT ON COLUMN tracking.mainline_collectibles.reward_summary IS 'One short line, in our own words, saying what the set rewards or leads to, such as the Zygarde its Cells build with the Cores. Shown in the Collectibles head.';
