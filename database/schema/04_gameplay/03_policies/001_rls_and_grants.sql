-- ============================================================================
-- RLS and grants for gameplay data.
-- ============================================================================
ALTER TABLE gameplay.mainline_play_statuses ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_plays ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_play_settings ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_play_optional_content_scopes ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_play_pokemon_roster_states ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_play_pokemon ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_play_pokemon_moves ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_play_milestone_progress ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_play_milestone_decisions ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_play_collectible_entry_progress ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_play_pokedex_species_progress ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_play_event_origins ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_play_event_types ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_play_events ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_play_event_pokemon_refs ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_play_event_team_snapshots ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_play_event_team_snapshot_moves ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_play_tags ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_play_pokemon_tags ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_challenge_rule_types ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_challenge_rules ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.mainline_play_challenge_rules ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.user_game_library_statuses ENABLE ROW LEVEL SECURITY;

ALTER TABLE gameplay.user_game_library_entries ENABLE ROW LEVEL SECURITY;

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

REVOKE ALL ON TABLE gameplay.user_game_library_statuses FROM anon, authenticated;

REVOKE ALL ON TABLE gameplay.user_game_library_entries FROM anon, authenticated;

GRANT SELECT ON TABLE gameplay.mainline_play_statuses TO authenticated;

GRANT SELECT ON TABLE gameplay.mainline_play_pokemon_roster_states TO authenticated;

GRANT SELECT ON TABLE gameplay.mainline_play_event_origins TO authenticated;

GRANT SELECT ON TABLE gameplay.mainline_play_event_types TO authenticated;

GRANT SELECT ON TABLE gameplay.mainline_challenge_rule_types TO authenticated;

GRANT SELECT ON TABLE gameplay.user_game_library_statuses TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE gameplay.mainline_plays TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE gameplay.mainline_play_settings TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE gameplay.mainline_play_optional_content_scopes TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE gameplay.mainline_play_pokemon TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE gameplay.mainline_play_pokemon_moves TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE gameplay.mainline_play_milestone_progress TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE gameplay.mainline_play_milestone_decisions TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE gameplay.mainline_play_collectible_entry_progress TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE gameplay.mainline_play_pokedex_species_progress TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE gameplay.mainline_play_events TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE gameplay.mainline_play_event_pokemon_refs TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE gameplay.mainline_play_event_team_snapshots TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE gameplay.mainline_play_event_team_snapshot_moves TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE gameplay.mainline_play_tags TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE gameplay.mainline_play_pokemon_tags TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE gameplay.mainline_challenge_rules TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE gameplay.mainline_play_challenge_rules TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE gameplay.user_game_library_entries TO authenticated;

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

GRANT ALL ON TABLE gameplay.user_game_library_statuses TO service_role;

GRANT ALL ON TABLE gameplay.user_game_library_entries TO service_role;

CREATE POLICY play_statuses_read_all ON gameplay.mainline_play_statuses
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY play_pokemon_roster_states_read_all ON gameplay.mainline_play_pokemon_roster_states
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY play_event_origins_read_all ON gameplay.mainline_play_event_origins
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY play_event_types_read_all ON gameplay.mainline_play_event_types
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY challenge_rule_types_read_all ON gameplay.mainline_challenge_rule_types
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY user_game_library_statuses_read_all ON gameplay.user_game_library_statuses
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY plays_select_own ON gameplay.mainline_plays
    FOR SELECT TO authenticated
    USING (user_id = auth.uid ());

CREATE POLICY plays_insert_own ON gameplay.mainline_plays
    FOR INSERT TO authenticated
    WITH CHECK (user_id = auth.uid ());

CREATE POLICY plays_update_own ON gameplay.mainline_plays
    FOR UPDATE TO authenticated
    USING (user_id = auth.uid ())
    WITH CHECK (user_id = auth.uid ());

CREATE POLICY plays_delete_own ON gameplay.mainline_plays
    FOR DELETE TO authenticated
    USING (user_id = auth.uid ());

CREATE POLICY challenge_rules_select_available ON gameplay.mainline_challenge_rules
    FOR SELECT TO authenticated
    USING (user_id IS NULL
        OR user_id = auth.uid ());

CREATE POLICY challenge_rules_insert_own ON gameplay.mainline_challenge_rules
    FOR INSERT TO authenticated
    WITH CHECK (user_id = auth.uid ());

CREATE POLICY challenge_rules_update_own ON gameplay.mainline_challenge_rules
    FOR UPDATE TO authenticated
    USING (user_id = auth.uid ())
    WITH CHECK (user_id = auth.uid ());

CREATE POLICY challenge_rules_delete_own ON gameplay.mainline_challenge_rules
    FOR DELETE TO authenticated
    USING (user_id = auth.uid ());

CREATE POLICY user_game_library_entries_select_own ON gameplay.user_game_library_entries
    FOR SELECT TO authenticated
    USING (user_id = auth.uid ());

CREATE POLICY user_game_library_entries_insert_own ON gameplay.user_game_library_entries
    FOR INSERT TO authenticated
    WITH CHECK (user_id = auth.uid ());

CREATE POLICY user_game_library_entries_update_own ON gameplay.user_game_library_entries
    FOR UPDATE TO authenticated
    USING (user_id = auth.uid ())
    WITH CHECK (user_id = auth.uid ());

CREATE POLICY user_game_library_entries_delete_own ON gameplay.user_game_library_entries
    FOR DELETE TO authenticated
    USING (user_id = auth.uid ());

CREATE POLICY play_settings_owned ON gameplay.mainline_play_settings
    FOR ALL TO authenticated
    USING (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()))
    WITH CHECK (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()));

CREATE POLICY play_optional_content_scopes_owned ON gameplay.mainline_play_optional_content_scopes
    FOR ALL TO authenticated
    USING (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()))
    WITH CHECK (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()));

CREATE POLICY play_pokemon_owned ON gameplay.mainline_play_pokemon
    FOR ALL TO authenticated
    USING (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()))
    WITH CHECK (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()));

CREATE POLICY play_milestone_progress_owned ON gameplay.mainline_play_milestone_progress
    FOR ALL TO authenticated
    USING (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()))
    WITH CHECK (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()));

CREATE POLICY play_milestone_decisions_owned ON gameplay.mainline_play_milestone_decisions
    FOR ALL TO authenticated
    USING (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()))
    WITH CHECK (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()));

CREATE POLICY play_collectible_entry_progress_owned ON gameplay.mainline_play_collectible_entry_progress
    FOR ALL TO authenticated
    USING (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()))
    WITH CHECK (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()));

CREATE POLICY play_pokedex_species_progress_owned ON gameplay.mainline_play_pokedex_species_progress
    FOR ALL TO authenticated
    USING (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()))
    WITH CHECK (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()));

CREATE POLICY play_events_owned ON gameplay.mainline_play_events
    FOR ALL TO authenticated
    USING (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()))
    WITH CHECK (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()));

CREATE POLICY play_event_pokemon_refs_owned ON gameplay.mainline_play_event_pokemon_refs
    FOR ALL TO authenticated
    USING (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()))
    WITH CHECK (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()));

CREATE POLICY play_event_team_snapshots_owned ON gameplay.mainline_play_event_team_snapshots
    FOR ALL TO authenticated
    USING (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()))
    WITH CHECK (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()));

CREATE POLICY play_tags_owned ON gameplay.mainline_play_tags
    FOR ALL TO authenticated
    USING (user_id = auth.uid ()
        AND EXISTS (
            SELECT
                1
            FROM
                gameplay.mainline_plays
            WHERE
                mainline_plays.id = play_id
                AND mainline_plays.user_id = auth.uid ()))
    WITH CHECK (user_id = auth.uid ()
    AND EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()));

CREATE POLICY play_pokemon_tags_owned ON gameplay.mainline_play_pokemon_tags
    FOR ALL TO authenticated
    USING (user_id = auth.uid ()
        AND EXISTS (
            SELECT
                1
            FROM
                gameplay.mainline_plays
            WHERE
                mainline_plays.id = play_id
                AND mainline_plays.user_id = auth.uid ()))
    WITH CHECK (user_id = auth.uid ()
    AND EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()));

CREATE POLICY play_challenge_rules_owned ON gameplay.mainline_play_challenge_rules
    FOR ALL TO authenticated
    USING (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()))
    WITH CHECK (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_plays
        WHERE
            mainline_plays.id = play_id
            AND mainline_plays.user_id = auth.uid ()));

CREATE POLICY play_pokemon_moves_owned ON gameplay.mainline_play_pokemon_moves
    FOR ALL TO authenticated
    USING (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_play_pokemon
            JOIN gameplay.mainline_plays ON mainline_plays.id = mainline_play_pokemon.play_id
        WHERE
            mainline_play_pokemon.id = play_pokemon_id
            AND mainline_plays.user_id = auth.uid ()))
    WITH CHECK (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_play_pokemon
            JOIN gameplay.mainline_plays ON mainline_plays.id = mainline_play_pokemon.play_id
        WHERE
            mainline_play_pokemon.id = play_pokemon_id
            AND mainline_plays.user_id = auth.uid ()));

CREATE POLICY play_event_team_snapshot_moves_owned ON gameplay.mainline_play_event_team_snapshot_moves
    FOR ALL TO authenticated
    USING (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_play_event_team_snapshots
            JOIN gameplay.mainline_plays ON mainline_plays.id = mainline_play_event_team_snapshots.play_id
        WHERE
            mainline_play_event_team_snapshots.id = snapshot_id
            AND mainline_plays.user_id = auth.uid ()))
    WITH CHECK (EXISTS (
        SELECT
            1
        FROM
            gameplay.mainline_play_event_team_snapshots
            JOIN gameplay.mainline_plays ON mainline_plays.id = mainline_play_event_team_snapshots.play_id
        WHERE
            mainline_play_event_team_snapshots.id = snapshot_id
            AND mainline_plays.user_id = auth.uid ()));
