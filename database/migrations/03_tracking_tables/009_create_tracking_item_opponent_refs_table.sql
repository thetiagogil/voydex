-- ============================================================================
-- Table: tracking.item_opponent_refs
-- Links tracking milestones to their associated opponent.
-- ============================================================================
CREATE TABLE
    tracking.item_opponent_refs (tracking_item_id INTEGER NOT NULL REFERENCES tracking.items (id) ON DELETE CASCADE, opponent_id INTEGER NOT NULL REFERENCES tracking.opponents (id), PRIMARY KEY (tracking_item_id, opponent_id));

-- Indexes
CREATE INDEX idx_tracking_item_opponent_refs_opponent ON tracking.item_opponent_refs (opponent_id);

-- Comments
COMMENT ON TABLE tracking.item_opponent_refs IS 'Links tracking milestones to the opponent fought in that milestone.';