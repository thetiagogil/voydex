-- ============================================================================
-- Table: tracking.mainline_opponents
-- Opponent definitions for story mainline_milestones and important fights.
-- ============================================================================
CREATE TABLE tracking.mainline_opponents (
    id integer PRIMARY KEY,
    version_group_id integer NOT NULL REFERENCES reference.version_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    game_id integer,
    slug text NOT NULL,
    name text NOT NULL,
    opponent_role text NOT NULL,
    primary_type_id integer REFERENCES reference.types (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    secondary_type_id integer REFERENCES reference.types (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    sprite_slug text,
    sort_order integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT mainline_opponents_id_positive_check CHECK (id > 0),
    CONSTRAINT mainline_opponents_game_scope_fkey FOREIGN KEY (game_id, version_group_id) REFERENCES reference.game_content_scopes (game_id, version_group_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mainline_opponents_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 160),
    CONSTRAINT mainline_opponents_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 200),
    CONSTRAINT mainline_opponents_role_format_check CHECK (opponent_role = LOWER(opponent_role) AND opponent_role ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(opponent_role) <= 80),
    CONSTRAINT mainline_opponents_distinct_specialty_types_check CHECK (secondary_type_id IS NULL OR secondary_type_id <> primary_type_id),
    CONSTRAINT mainline_opponents_sprite_slug_format_check CHECK (sprite_slug IS NULL OR (sprite_slug = LOWER(sprite_slug) AND sprite_slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(sprite_slug) <= 160)),
    CONSTRAINT mainline_opponents_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT mainline_opponents_id_version_group_unique UNIQUE (id, version_group_id)
);

CREATE UNIQUE INDEX mainline_opponents_version_group_slug_unique ON tracking.mainline_opponents (version_group_id, slug)
WHERE
    game_id IS NULL;

CREATE UNIQUE INDEX mainline_opponents_game_slug_unique ON tracking.mainline_opponents (version_group_id, game_id, slug)
WHERE
    game_id IS NOT NULL;

CREATE UNIQUE INDEX mainline_opponents_version_group_sort_order_unique ON tracking.mainline_opponents (version_group_id, sort_order)
WHERE
    game_id IS NULL;

CREATE UNIQUE INDEX mainline_opponents_game_sort_order_unique ON tracking.mainline_opponents (version_group_id, game_id, sort_order)
WHERE
    game_id IS NOT NULL;

CREATE INDEX mainline_opponents_version_group_game_idx ON tracking.mainline_opponents (version_group_id, game_id);

CREATE INDEX mainline_opponents_role_idx ON tracking.mainline_opponents (opponent_role);

CREATE INDEX mainline_opponents_primary_type_idx ON tracking.mainline_opponents (primary_type_id)
WHERE
    primary_type_id IS NOT NULL;

CREATE INDEX mainline_opponents_secondary_type_idx ON tracking.mainline_opponents (secondary_type_id)
WHERE
    secondary_type_id IS NOT NULL;

COMMENT ON TABLE tracking.mainline_opponents IS 'Curated opponent definitions used by story mainline_milestones and important fight metadata.';

COMMENT ON COLUMN tracking.mainline_opponents.game_id IS 'Nullable for version-group-wide mainline_opponents. When set, the game must be mapped to the same content scope.';

COMMENT ON COLUMN tracking.mainline_opponents.opponent_role IS 'Curated role slug such as gym-leader, rival, boss, elite-four, champion, kahuna, or trial-captain.';
