-- ============================================================================
-- Table: progress.item_collectible_refs
-- Links progress milestones to their associated collectible.
-- ============================================================================
CREATE TABLE
    progress.item_collectible_refs (progress_item_id INTEGER NOT NULL REFERENCES progress.items (id) ON DELETE CASCADE, collectible_id INTEGER NOT NULL REFERENCES progress.collectibles (id), PRIMARY KEY (progress_item_id, collectible_id));

-- Indexes
CREATE INDEX idx_progress_item_collectible_refs_collectible ON progress.item_collectible_refs (collectible_id);

-- Comments
COMMENT ON TABLE progress.item_collectible_refs IS 'Links progress milestones to the collectible tracked by that milestone.';