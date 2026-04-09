-- ============================================================================
-- Secondary Indexes: tracking schema
-- Performance indexes applied AFTER seeding. Not required for data integrity.
-- Run: db:index or db:index:tracking | Drop: db:index:drop or db:index:drop:tracking
-- ============================================================================
-- items
CREATE INDEX IF NOT EXISTS idx_tracking_items_vg ON tracking.items (version_group_id);

CREATE INDEX IF NOT EXISTS idx_tracking_items_game ON tracking.items (game_id)
WHERE
    game_id IS NOT NULL;

CREATE INDEX IF NOT EXISTS idx_tracking_items_category ON tracking.items (category_id);

CREATE INDEX IF NOT EXISTS idx_tracking_items_type ON tracking.items (item_type_id);

CREATE INDEX IF NOT EXISTS idx_tracking_items_vg_category_sort ON tracking.items (version_group_id, category_id, sort_order);

-- opponents
CREATE INDEX IF NOT EXISTS idx_tracking_opponents_vg ON tracking.opponents (version_group_id);

-- badges
CREATE INDEX IF NOT EXISTS idx_tracking_badges_vg ON tracking.badges (version_group_id);

-- collectibles
CREATE INDEX IF NOT EXISTS idx_tracking_collectibles_vg ON tracking.collectibles (version_group_id);

-- item_decision_options
CREATE INDEX IF NOT EXISTS idx_tracking_item_decision_options_item ON tracking.item_decision_options (tracking_item_id);

CREATE INDEX IF NOT EXISTS idx_tracking_item_decision_options_species ON tracking.item_decision_options (pokemon_species_id)
WHERE
    pokemon_species_id IS NOT NULL;

-- item_pokemon_refs
CREATE INDEX IF NOT EXISTS idx_tracking_item_pokemon_refs_item ON tracking.item_pokemon_refs (tracking_item_id);

CREATE INDEX IF NOT EXISTS idx_tracking_item_pokemon_refs_species ON tracking.item_pokemon_refs (species_id);

-- item_opponent_refs
CREATE INDEX IF NOT EXISTS idx_tracking_item_opponent_refs_opponent ON tracking.item_opponent_refs (opponent_id);

-- item_badge_refs
CREATE INDEX IF NOT EXISTS idx_tracking_item_badge_refs_badge ON tracking.item_badge_refs (badge_id);

-- item_collectible_refs
CREATE INDEX IF NOT EXISTS idx_tracking_item_collectible_refs_collectible ON tracking.item_collectible_refs (collectible_id);

-- collectible_entries
CREATE INDEX IF NOT EXISTS idx_tracking_collectible_entries_collectible ON tracking.collectible_entries (collectible_id);