-- ============================================================================
-- Grants: gameplay
-- Your Plays, Library, rules and favourites live only on the device
-- (ADR 0008), where the one local user owns every row, so these tables have
-- no row security and the API roles get nothing: hosted Supabase never
-- serves them.
-- ============================================================================
REVOKE ALL ON TABLE gameplay.mainline_play_statuses FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_plays FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_play_settings FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_play_optional_content_scopes FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_play_pokemon_roster_states FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_play_pokemon FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_play_pokemon_moves FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_play_milestone_progress FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_play_milestone_decisions FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_play_collectible_entry_progress FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_play_pokedex_species_progress FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_play_event_origins FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_play_event_types FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_play_events FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_play_event_pokemon_refs FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_play_event_team_snapshots FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_play_event_team_snapshot_moves FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_play_tags FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_play_pokemon_tags FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_challenge_rule_types FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_challenge_rules FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_play_challenge_rules FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_challenge_rule_sets FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.mainline_challenge_rule_set_rules FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.user_game_library_statuses FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.user_game_library_entries FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.user_favourite_pokemon FROM anon, authenticated;

GRANT ALL ON TABLE gameplay.mainline_play_statuses TO service_role;

GRANT ALL ON TABLE gameplay.mainline_plays TO service_role;

GRANT ALL ON TABLE gameplay.mainline_play_settings TO service_role;

GRANT ALL ON TABLE gameplay.mainline_play_optional_content_scopes TO service_role;

GRANT ALL ON TABLE gameplay.mainline_play_pokemon_roster_states TO service_role;

GRANT ALL ON TABLE gameplay.mainline_play_pokemon TO service_role;

GRANT ALL ON TABLE gameplay.mainline_play_pokemon_moves TO service_role;

GRANT ALL ON TABLE gameplay.mainline_play_milestone_progress TO service_role;

GRANT ALL ON TABLE gameplay.mainline_play_milestone_decisions TO service_role;

GRANT ALL ON TABLE gameplay.mainline_play_collectible_entry_progress TO service_role;

GRANT ALL ON TABLE gameplay.mainline_play_pokedex_species_progress TO service_role;

GRANT ALL ON TABLE gameplay.mainline_play_event_origins TO service_role;

GRANT ALL ON TABLE gameplay.mainline_play_event_types TO service_role;

GRANT ALL ON TABLE gameplay.mainline_play_events TO service_role;

GRANT ALL ON TABLE gameplay.mainline_play_event_pokemon_refs TO service_role;

GRANT ALL ON TABLE gameplay.mainline_play_event_team_snapshots TO service_role;

GRANT ALL ON TABLE gameplay.mainline_play_event_team_snapshot_moves TO service_role;

GRANT ALL ON TABLE gameplay.mainline_play_tags TO service_role;

GRANT ALL ON TABLE gameplay.mainline_play_pokemon_tags TO service_role;

GRANT ALL ON TABLE gameplay.mainline_challenge_rule_types TO service_role;

GRANT ALL ON TABLE gameplay.mainline_challenge_rules TO service_role;

GRANT ALL ON TABLE gameplay.mainline_play_challenge_rules TO service_role;

GRANT ALL ON TABLE gameplay.mainline_challenge_rule_sets TO service_role;

GRANT ALL ON TABLE gameplay.mainline_challenge_rule_set_rules TO service_role;

GRANT ALL ON TABLE gameplay.user_game_library_statuses TO service_role;

GRANT ALL ON TABLE gameplay.user_game_library_entries TO service_role;

GRANT ALL ON TABLE gameplay.user_favourite_pokemon TO service_role;
