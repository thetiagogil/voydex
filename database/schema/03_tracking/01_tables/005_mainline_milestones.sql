-- ============================================================================
-- Table: tracking.mainline_milestones
-- Story/progression milestone definitions.
-- ============================================================================
CREATE TABLE tracking.mainline_milestones (
    id integer PRIMARY KEY,
    version_group_id integer NOT NULL REFERENCES reference.version_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    game_id integer,
    category_id integer NOT NULL,
    milestone_type_id integer NOT NULL REFERENCES tracking.mainline_milestone_types (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    snapshot_policy_id integer NOT NULL REFERENCES tracking.mainline_snapshot_policies (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    parent_milestone_id integer,
    slug text NOT NULL,
    name text NOT NULL,
    description text,
    sort_order integer NOT NULL,
    is_required_for_completion boolean NOT NULL DEFAULT TRUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT mainline_milestones_id_positive_check CHECK (id > 0),
    CONSTRAINT mainline_milestones_game_scope_fkey FOREIGN KEY (game_id, version_group_id) REFERENCES reference.game_content_scopes (game_id, version_group_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mainline_milestones_category_version_group_fkey FOREIGN KEY (category_id, version_group_id) REFERENCES tracking.mainline_categories (id, version_group_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mainline_milestones_parent_version_group_fkey FOREIGN KEY (parent_milestone_id, version_group_id) REFERENCES tracking.mainline_milestones (id, version_group_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT mainline_milestones_parent_not_self_check CHECK (parent_milestone_id IS NULL OR parent_milestone_id <> id),
    CONSTRAINT mainline_milestones_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 160),
    CONSTRAINT mainline_milestones_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 200),
    CONSTRAINT mainline_milestones_description_length_check CHECK (description IS NULL OR CHAR_LENGTH(BTRIM(description)) BETWEEN 1 AND 2000),
    CONSTRAINT mainline_milestones_sort_order_positive_check CHECK (sort_order > 0),
    CONSTRAINT mainline_milestones_id_version_group_unique UNIQUE (id, version_group_id)
);

CREATE UNIQUE INDEX mainline_milestones_version_group_slug_unique ON tracking.mainline_milestones (version_group_id, slug)
WHERE
    game_id IS NULL;

CREATE UNIQUE INDEX mainline_milestones_game_slug_unique ON tracking.mainline_milestones (version_group_id, game_id, slug)
WHERE
    game_id IS NOT NULL;

CREATE UNIQUE INDEX mainline_milestones_version_group_category_sort_order_unique ON tracking.mainline_milestones (version_group_id, category_id, sort_order)
WHERE
    game_id IS NULL;

CREATE UNIQUE INDEX mainline_milestones_game_category_sort_order_unique ON tracking.mainline_milestones (version_group_id, game_id, category_id, sort_order)
WHERE
    game_id IS NOT NULL;

CREATE INDEX mainline_milestones_version_group_game_idx ON tracking.mainline_milestones (version_group_id, game_id);

CREATE INDEX mainline_milestones_category_sort_idx ON tracking.mainline_milestones (version_group_id, category_id, sort_order);

CREATE INDEX mainline_milestones_milestone_type_idx ON tracking.mainline_milestones (milestone_type_id);

CREATE INDEX mainline_milestones_snapshot_policy_idx ON tracking.mainline_milestones (snapshot_policy_id);

CREATE INDEX mainline_milestones_parent_idx ON tracking.mainline_milestones (parent_milestone_id)
WHERE
    parent_milestone_id IS NOT NULL;

COMMENT ON TABLE tracking.mainline_milestones IS 'Curated story/progression milestone definitions. User completion state lives in gameplay.';

COMMENT ON COLUMN tracking.mainline_milestones.game_id IS 'Nullable for version-group-wide mainline_milestones. When set, the game must be mapped to the same content scope.';

COMMENT ON COLUMN tracking.mainline_milestones.sort_order IS 'Display order within its category in the final play scope. Game-specific rows can fill slots between version-group-wide rows. Previous-step prompts and unlock logic are modeled in mainline_milestone_prerequisites.';

COMMENT ON COLUMN tracking.mainline_milestones.snapshot_policy_id IS 'Defines whether the UI should offer or recommend a team snapshot when completing the milestone.';
