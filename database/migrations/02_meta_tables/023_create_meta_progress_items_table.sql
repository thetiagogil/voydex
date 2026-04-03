-- ============================================================================
-- Table: meta.progress_items
-- Curated progress milestones per version group.
-- Defines what can be tracked in a playthrough.
-- ============================================================================
CREATE TABLE
    meta.progress_items (
        id INTEGER PRIMARY KEY,
        slug VARCHAR(100) NOT NULL,
        name VARCHAR(150) NOT NULL,
        description TEXT,
        category_id INTEGER NOT NULL REFERENCES meta.progress_categories (id),
        version_group_id INTEGER NOT NULL REFERENCES meta.version_groups (id),
        sort_order INTEGER NOT NULL,
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        UNIQUE (version_group_id, slug)
    );

-- Indexes
CREATE INDEX idx_progress_items_slug ON meta.progress_items (slug);

CREATE INDEX idx_progress_items_category ON meta.progress_items (category_id);

CREATE INDEX idx_progress_items_vg ON meta.progress_items (version_group_id);

CREATE INDEX idx_progress_items_vg_category_sort ON meta.progress_items (version_group_id, category_id, sort_order);

-- Comments
COMMENT ON TABLE meta.progress_items IS 'Curated progress milestones per version group. Each row is a trackable checkpoint in a playthrough. Slugs are unique within a VG but may repeat across VGs (e.g. champion-defeated in every VG).';

COMMENT ON COLUMN meta.progress_items.sort_order IS 'Display order within the version group and category. Lower values appear first.';