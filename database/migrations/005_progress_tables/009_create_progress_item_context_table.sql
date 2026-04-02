-- ============================================================================
-- Table: progress.item_context
-- Optional metadata links for progress milestones.
-- Attaches opponent, badge, or collectible without duplicating milestones.
-- ============================================================================
CREATE TABLE
    progress.item_context (progress_item_id INTEGER PRIMARY KEY REFERENCES progress.items (id) ON DELETE CASCADE, opponent_id INTEGER NULL REFERENCES progress.opponents (id), badge_id INTEGER NULL REFERENCES progress.badges (id), collectible_id INTEGER NULL REFERENCES progress.collectibles (id));

-- Indexes
CREATE INDEX idx_progress_item_context_opponent ON progress.item_context (opponent_id)
WHERE
    opponent_id IS NOT NULL;

CREATE INDEX idx_progress_item_context_badge ON progress.item_context (badge_id)
WHERE
    badge_id IS NOT NULL;

CREATE INDEX idx_progress_item_context_collectible ON progress.item_context (collectible_id)
WHERE
    collectible_id IS NOT NULL;

-- Comments
COMMENT ON TABLE progress.item_context IS 'Optional metadata links: opponent, badge, or collectible attached to a progress milestone.';