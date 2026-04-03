-- ============================================================================
-- Table: meta.progress_categories
-- Curated lookup table for progress milestone groupings.
-- Examples: story, badges, elite_four, champion, post_game, legendary, dex.
-- ============================================================================
CREATE TABLE
    meta.progress_categories (id INTEGER PRIMARY KEY, slug VARCHAR(50) NOT NULL UNIQUE, name VARCHAR(100) NOT NULL UNIQUE, sort_order INTEGER NOT NULL, created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ());

-- Indexes
CREATE INDEX idx_progress_categories_slug ON meta.progress_categories (slug);

CREATE INDEX idx_progress_categories_sort ON meta.progress_categories (sort_order);