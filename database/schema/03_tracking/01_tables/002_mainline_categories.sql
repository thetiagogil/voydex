-- ============================================================================
-- Table: tracking.mainline_categories
-- Tracking mainline_categories by version group.
-- ============================================================================
CREATE TABLE tracking.mainline_categories (
    id integer PRIMARY KEY,
    version_group_id integer NOT NULL REFERENCES reference.version_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    slug text NOT NULL,
    name text NOT NULL,
    category_kind text NOT NULL,
    chapter_kind text,
    plays_in_any_order boolean NOT NULL DEFAULT FALSE,
    sort_order integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT mainline_categories_id_positive_check CHECK (id > 0),
    CONSTRAINT mainline_categories_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 120),
    CONSTRAINT mainline_categories_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 160),
    CONSTRAINT mainline_categories_kind_check CHECK (category_kind IN ('story', 'collectible')),
    CONSTRAINT mainline_categories_chapter_kind_check CHECK (chapter_kind IS NULL OR chapter_kind IN ('main-story', 'post-game', 'side-content')),
    CONSTRAINT mainline_categories_story_chapter_kind_check CHECK ((category_kind = 'story') = (chapter_kind IS NOT NULL)),
    CONSTRAINT mainline_categories_any_order_story_check CHECK (NOT plays_in_any_order OR category_kind = 'story'),
    CONSTRAINT mainline_categories_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT mainline_categories_id_version_group_unique UNIQUE (id, version_group_id),
    CONSTRAINT mainline_categories_version_group_slug_unique UNIQUE (version_group_id, slug),
    CONSTRAINT mainline_categories_version_group_sort_order_unique UNIQUE (version_group_id, sort_order)
);

COMMENT ON TABLE tracking.mainline_categories IS 'Version-group tracking mainline_categories for story and collectible progress definitions.';

COMMENT ON COLUMN tracking.mainline_categories.chapter_kind IS 'What a story chapter is to the journey: main-story runs to the credits (the League included), post-game continues after them, side-content hangs off the route and never counts. NULL for collectible categories.';

COMMENT ON COLUMN tracking.mainline_categories.plays_in_any_order IS 'Whether this chapter is played beside the other chapters of its version group flagged the same, in any order (Scarlet / Violet''s three paths). Story draws them as forks that join back.';
