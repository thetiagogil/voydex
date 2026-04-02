-- ============================================================================
-- Table: progress.item_types
-- Defines structural behavior of progress milestones.
-- Examples: story-battle, story-checkpoint, pokemon-milestone, collectible,
--           critical-choice.
-- ============================================================================
CREATE TABLE
    progress.item_types (
        id INTEGER PRIMARY KEY,
        slug TEXT NOT NULL UNIQUE,
        name TEXT NOT NULL,
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ()
    );

-- Indexes
CREATE INDEX idx_progress_item_types_slug ON progress.item_types (slug);

-- Comments
COMMENT ON TABLE progress.item_types IS 'Structural behavior types for progress milestones.';