-- ============================================================================
-- Secondary Indexes: gameplay schema
-- Performance indexes applied AFTER seeding. Not required for data integrity.
-- Run: db:index or db:index:gameplay | Drop: db:index:drop or db:index:drop:gameplay
-- ============================================================================
-- plays
CREATE INDEX IF NOT EXISTS idx_plays_user ON gameplay.plays (user_id);

CREATE INDEX IF NOT EXISTS idx_plays_game ON gameplay.plays (game_id);

CREATE INDEX IF NOT EXISTS idx_plays_status ON gameplay.plays (status_id);

CREATE INDEX IF NOT EXISTS idx_plays_user_game ON gameplay.plays (user_id, game_id);

CREATE INDEX IF NOT EXISTS idx_plays_user_status_updated ON gameplay.plays (user_id, status_id, updated_at DESC);

CREATE INDEX IF NOT EXISTS idx_plays_created_at ON gameplay.plays (created_at DESC);

CREATE INDEX IF NOT EXISTS idx_plays_updated_at ON gameplay.plays (updated_at DESC);

-- play_optional_version_groups
CREATE INDEX IF NOT EXISTS idx_play_optional_vg_play ON gameplay.play_optional_version_groups (play_id);

-- play_pokedex_entries
CREATE INDEX IF NOT EXISTS idx_play_pokedex_entries_play ON gameplay.play_pokedex_entries (play_id);

CREATE INDEX IF NOT EXISTS idx_play_pokedex_entries_entry ON gameplay.play_pokedex_entries (pokedex_entry_id);

-- pokemon_team
CREATE INDEX IF NOT EXISTS idx_pokemon_team_play ON gameplay.pokemon_team (play_id);

CREATE INDEX IF NOT EXISTS idx_pokemon_team_species ON gameplay.pokemon_team (species_id);

CREATE INDEX IF NOT EXISTS idx_pokemon_team_play_position ON gameplay.pokemon_team (play_id, position);

-- play_tracking_items
CREATE INDEX IF NOT EXISTS idx_tracking_play_tracking_items_play ON gameplay.play_tracking_items (play_id);

CREATE INDEX IF NOT EXISTS idx_tracking_play_tracking_items_item ON gameplay.play_tracking_items (tracking_item_id);

-- play_tracking_decisions
CREATE INDEX IF NOT EXISTS idx_tracking_play_tracking_decisions_play ON gameplay.play_tracking_decisions (play_id);

CREATE INDEX IF NOT EXISTS idx_tracking_play_tracking_decisions_item ON gameplay.play_tracking_decisions (tracking_item_id);

CREATE INDEX IF NOT EXISTS idx_tracking_play_tracking_decisions_option ON gameplay.play_tracking_decisions (decision_option_id);

-- play_collectible_entries
CREATE INDEX IF NOT EXISTS idx_gameplay_play_collectible_entries_play ON gameplay.play_collectible_entries (play_id);

CREATE INDEX IF NOT EXISTS idx_gameplay_play_collectible_entries_entry ON gameplay.play_collectible_entries (collectible_entry_id);