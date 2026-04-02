-- ============================================================================
-- Table: progress.badges
-- Badge metadata for progress milestones.
-- ============================================================================
CREATE TABLE
    progress.badges (
        id INTEGER PRIMARY KEY,
        version_group_id INTEGER NOT NULL REFERENCES meta.version_groups (id),
        game_id INTEGER NULL REFERENCES meta.games (id),
        slug TEXT NOT NULL,
        name TEXT NOT NULL,
        sprite_url TEXT NULL,
        sort_order INTEGER NOT NULL,
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        UNIQUE (version_group_id, game_id, slug)
    );

-- Indexes
CREATE INDEX idx_progress_badges_slug ON progress.badges (slug);

CREATE INDEX idx_progress_badges_vg ON progress.badges (version_group_id);

-- Comments
COMMENT ON TABLE progress.badges IS 'Badge metadata. Linked to progress items via item_context.';