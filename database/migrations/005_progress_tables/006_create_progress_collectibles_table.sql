-- ============================================================================
-- Table: progress.collectibles
-- Collectible metadata for progress milestones.
-- Example types: sticker, cell, diglett, wisp, stake.
-- ============================================================================
CREATE TABLE
    progress.collectibles (
        id INTEGER PRIMARY KEY,
        version_group_id INTEGER NOT NULL REFERENCES meta.version_groups (id),
        game_id INTEGER NULL REFERENCES meta.games (id),
        slug TEXT NOT NULL,
        name TEXT NOT NULL,
        collectible_type TEXT NOT NULL,
        total_count INTEGER NULL,
        sprite_url TEXT NULL,
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        UNIQUE (version_group_id, game_id, slug)
    );

-- Indexes
CREATE INDEX idx_progress_collectibles_slug ON progress.collectibles (slug);

CREATE INDEX idx_progress_collectibles_vg ON progress.collectibles (version_group_id);

CREATE INDEX idx_progress_collectibles_type ON progress.collectibles (collectible_type);

-- Comments
COMMENT ON TABLE progress.collectibles IS 'Collectible metadata. Linked to progress items via item_context.';