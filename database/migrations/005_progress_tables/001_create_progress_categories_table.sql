-- ============================================================================
-- Table: progress.categories
-- UI grouping for progress milestones.
-- Examples: main-story, post-game, pokemon, collectibles, choices.
-- ============================================================================
CREATE TABLE
    progress.categories (
        id INTEGER PRIMARY KEY,
        slug TEXT NOT NULL UNIQUE,
        name TEXT NOT NULL,
        sort_order INTEGER NOT NULL,
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ()
    );

-- Indexes
CREATE INDEX idx_progress_categories_slug ON progress.categories (slug);

CREATE INDEX idx_progress_categories_sort ON progress.categories (sort_order);

-- Comments
COMMENT ON TABLE progress.categories IS 'UI grouping categories for progress milestones.';