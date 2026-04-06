-- ============================================================================
-- Table: progress.item_opponent_refs
-- Links progress milestones to their associated opponent.
-- ============================================================================
CREATE TABLE
    progress.item_opponent_refs (progress_item_id INTEGER NOT NULL REFERENCES progress.items (id) ON DELETE CASCADE, opponent_id INTEGER NOT NULL REFERENCES progress.opponents (id), PRIMARY KEY (progress_item_id, opponent_id));

-- Indexes
CREATE INDEX idx_progress_item_opponent_refs_opponent ON progress.item_opponent_refs (opponent_id);

-- Comments
COMMENT ON TABLE progress.item_opponent_refs IS 'Links progress milestones to the opponent fought in that milestone.';