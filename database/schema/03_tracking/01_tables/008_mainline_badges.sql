-- ============================================================================
-- Table: tracking.mainline_badges
-- Badge definitions by version group and optional game scope.
-- ============================================================================
CREATE TABLE tracking.mainline_badges (
    id integer PRIMARY KEY,
    version_group_id integer NOT NULL REFERENCES reference.version_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    game_id integer,
    slug text NOT NULL,
    name text NOT NULL,
    type_id integer REFERENCES reference.types (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    sprite_slug text,
    sort_order integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT mainline_badges_id_positive_check CHECK (id > 0),
    CONSTRAINT mainline_badges_game_scope_fkey FOREIGN KEY (game_id, version_group_id) REFERENCES reference.game_content_scopes (game_id, version_group_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mainline_badges_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 160),
    CONSTRAINT mainline_badges_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 200),
    CONSTRAINT mainline_badges_sprite_slug_format_check CHECK (sprite_slug IS NULL OR (sprite_slug = LOWER(sprite_slug) AND sprite_slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(sprite_slug) <= 160)),
    CONSTRAINT mainline_badges_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT mainline_badges_id_version_group_unique UNIQUE (id, version_group_id)
);

CREATE UNIQUE INDEX mainline_badges_version_group_slug_unique ON tracking.mainline_badges (version_group_id, slug)
WHERE
    game_id IS NULL;

CREATE UNIQUE INDEX mainline_badges_game_slug_unique ON tracking.mainline_badges (version_group_id, game_id, slug)
WHERE
    game_id IS NOT NULL;

CREATE UNIQUE INDEX mainline_badges_version_group_sort_order_unique ON tracking.mainline_badges (version_group_id, sort_order)
WHERE
    game_id IS NULL;

CREATE UNIQUE INDEX mainline_badges_game_sort_order_unique ON tracking.mainline_badges (version_group_id, game_id, sort_order)
WHERE
    game_id IS NOT NULL;

CREATE INDEX mainline_badges_version_group_game_idx ON tracking.mainline_badges (version_group_id, game_id);

CREATE INDEX mainline_badges_type_idx ON tracking.mainline_badges (type_id)
WHERE
    type_id IS NOT NULL;

COMMENT ON TABLE tracking.mainline_badges IS 'Curated badge definitions used by story mainline_milestones and completion display.';

COMMENT ON COLUMN tracking.mainline_badges.game_id IS 'Nullable for version-group-wide mainline_badges. When set, the game must be mapped to the same content scope.';

COMMENT ON COLUMN tracking.mainline_badges.type_id IS 'Optional type association for badge display and filtering.';
