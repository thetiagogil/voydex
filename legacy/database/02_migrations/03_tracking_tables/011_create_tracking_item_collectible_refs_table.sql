-- ============================================================================
-- Table: tracking.item_collectible_refs
-- Links tracking milestones to their associated collectible.
-- ============================================================================
CREATE TABLE
    tracking.item_collectible_refs (tracking_item_id INTEGER NOT NULL REFERENCES tracking.items (id) ON DELETE CASCADE, collectible_id INTEGER NOT NULL REFERENCES tracking.collectibles (id), PRIMARY KEY (tracking_item_id, collectible_id));

-- Comments
COMMENT ON TABLE tracking.item_collectible_refs IS 'Links tracking milestones to the collectible tracked by that milestone.';