-- ============================================================================
-- Secondary Indexes: tracking schema
-- Performance indexes applied AFTER seeding. Not required for data integrity.
-- Run: db:index or db:index:tracking | Drop: db:index:drop or db:index:drop:tracking
-- ============================================================================
-- items
CREATE INDEX IF NOT EXISTS idx_tracking_items_vg_category_sort ON tracking.items (version_group_id, category_id, sort_order);

-- item_decision_options
CREATE INDEX IF NOT EXISTS idx_tracking_item_decision_options_item ON tracking.item_decision_options (tracking_item_id);

-- item_pokemon_refs
CREATE INDEX IF NOT EXISTS idx_tracking_item_pokemon_refs_item ON tracking.item_pokemon_refs (tracking_item_id);