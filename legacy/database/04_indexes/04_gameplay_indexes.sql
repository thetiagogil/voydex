-- ============================================================================
-- Secondary Indexes: gameplay schema
-- Performance indexes applied AFTER seeding. Not required for data integrity.
-- Run: db:index or db:index:gameplay | Drop: db:index:drop or db:index:drop:gameplay
-- ============================================================================
-- plays
CREATE INDEX IF NOT EXISTS idx_plays_user_game ON gameplay.plays (user_id, game_id);

CREATE INDEX IF NOT EXISTS idx_plays_user_status_updated ON gameplay.plays (user_id, status_id, updated_at DESC);

-- play_optional_version_groups
CREATE INDEX IF NOT EXISTS idx_play_optional_vg_play ON gameplay.play_optional_version_groups (play_id);

-- play_pokedex_entries
CREATE INDEX IF NOT EXISTS idx_play_pokedex_entries_play ON gameplay.play_pokedex_entries (play_id);

-- pokemon_team
CREATE INDEX IF NOT EXISTS idx_pokemon_team_play_position ON gameplay.pokemon_team (play_id, position);

-- play_tracking_items
CREATE INDEX IF NOT EXISTS idx_tracking_play_tracking_items_play ON gameplay.play_tracking_items (play_id);

-- play_tracking_decisions
CREATE INDEX IF NOT EXISTS idx_tracking_play_tracking_decisions_play ON gameplay.play_tracking_decisions (play_id);

-- play_collectible_entries
CREATE INDEX IF NOT EXISTS idx_gameplay_play_collectible_entries_play ON gameplay.play_collectible_entries (play_id);