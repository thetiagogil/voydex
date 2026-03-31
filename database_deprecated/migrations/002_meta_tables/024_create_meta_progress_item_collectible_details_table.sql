-- =============================================================================
-- PROGRESS ITEM COLLECTIBLE DETAILS TABLE
-- Extension for non-Pokémon collectible items (one-to-one extension)
-- =============================================================================
CREATE TABLE
    meta.progress_item_collectible_details (progress_item_id INTEGER NOT NULL UNIQUE REFERENCES meta.progress_items (id) ON DELETE CASCADE, collectible_type VARCHAR(100) NOT NULL, description TEXT, PRIMARY KEY (progress_item_id));

COMMENT ON TABLE meta.progress_item_collectible_details IS 'One-to-one extension of progress_items. Details for non-Pokémon collectibles (e.g. Zygarde Cells, Spiritomb wisps, Korok seeds).';