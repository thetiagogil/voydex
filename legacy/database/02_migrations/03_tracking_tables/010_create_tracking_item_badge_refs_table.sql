-- ============================================================================
-- Table: tracking.item_badge_refs
-- Links tracking milestones to the badge earned from that milestone.
-- ============================================================================
CREATE TABLE
    tracking.item_badge_refs (tracking_item_id INTEGER NOT NULL REFERENCES tracking.items (id) ON DELETE CASCADE, badge_id INTEGER NOT NULL REFERENCES tracking.badges (id), PRIMARY KEY (tracking_item_id, badge_id));

-- Comments
COMMENT ON TABLE tracking.item_badge_refs IS 'Links tracking milestones to the badge earned upon completion.';