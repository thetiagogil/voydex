-- ============================================================================
-- Table: meta.item_categories
-- Curated lookup table for item category classifications.
-- ============================================================================
CREATE TABLE
    meta.item_categories (id INTEGER PRIMARY KEY, slug VARCHAR(50) NOT NULL UNIQUE, name VARCHAR(100) NOT NULL UNIQUE, created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ());

-- Indexes
CREATE INDEX idx_item_categories_slug ON meta.item_categories (slug);