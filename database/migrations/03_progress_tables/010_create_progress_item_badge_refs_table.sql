-- ============================================================================
-- Table: progress.item_badge_refs
-- Links progress milestones to the badge earned from that milestone.
-- ============================================================================
CREATE TABLE
    progress.item_badge_refs (progress_item_id INTEGER NOT NULL REFERENCES progress.items (id) ON DELETE CASCADE, badge_id INTEGER NOT NULL REFERENCES progress.badges (id), PRIMARY KEY (progress_item_id, badge_id));

-- Indexes
CREATE INDEX idx_progress_item_badge_refs_badge ON progress.item_badge_refs (badge_id);

-- Comments
COMMENT ON TABLE progress.item_badge_refs IS 'Links progress milestones to the badge earned upon completion.';