-- ============================================================================
-- Table: progress.opponents
-- Boss/opponent metadata for progress milestones.
-- Allowed roles: gym-leader, elite-four, champion, trial-captain, kahuna,
--                titan, team-star-boss, story-boss.
-- ============================================================================
CREATE TABLE
    progress.opponents (
        id INTEGER PRIMARY KEY,
        version_group_id INTEGER NOT NULL REFERENCES meta.version_groups (id),
        game_id INTEGER NULL REFERENCES meta.games (id),
        slug TEXT NOT NULL,
        name TEXT NOT NULL,
        opponent_role TEXT NOT NULL,
        sprite_url TEXT NULL,
        sort_order INTEGER NOT NULL,
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        UNIQUE (version_group_id, game_id, slug)
    );

-- Indexes
CREATE INDEX idx_progress_opponents_slug ON progress.opponents (slug);

CREATE INDEX idx_progress_opponents_vg ON progress.opponents (version_group_id);

CREATE INDEX idx_progress_opponents_role ON progress.opponents (opponent_role);

-- Comments
COMMENT ON TABLE progress.opponents IS 'Boss/opponent metadata. Linked to progress items via item_context.';