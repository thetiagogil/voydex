-- ============================================================================
-- RLS and grants for planning data.
-- ============================================================================
ALTER TABLE planning.mainline_team_plan_statuses ENABLE ROW LEVEL SECURITY;

ALTER TABLE planning.mainline_team_plans ENABLE ROW LEVEL SECURITY;

ALTER TABLE planning.mainline_team_plan_optional_content_scopes ENABLE ROW LEVEL SECURITY;

ALTER TABLE planning.mainline_team_plan_members ENABLE ROW LEVEL SECURITY;

ALTER TABLE planning.mainline_team_plan_member_moves ENABLE ROW LEVEL SECURITY;

ALTER TABLE planning.mainline_play_plan_links ENABLE ROW LEVEL SECURITY;

REVOKE ALL ON TABLE planning.mainline_team_plan_statuses FROM anon, authenticated;

REVOKE ALL ON TABLE planning.mainline_team_plans FROM anon, authenticated;

REVOKE ALL ON TABLE planning.mainline_team_plan_optional_content_scopes FROM anon, authenticated;

REVOKE ALL ON TABLE planning.mainline_team_plan_members FROM anon, authenticated;

REVOKE ALL ON TABLE planning.mainline_team_plan_member_moves FROM anon, authenticated;

REVOKE ALL ON TABLE planning.mainline_play_plan_links FROM anon, authenticated;

GRANT SELECT ON TABLE planning.mainline_team_plan_statuses TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE planning.mainline_team_plans TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE planning.mainline_team_plan_optional_content_scopes TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE planning.mainline_team_plan_members TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE planning.mainline_team_plan_member_moves TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE planning.mainline_play_plan_links TO authenticated;

GRANT ALL ON TABLE planning.mainline_team_plan_statuses TO service_role;

GRANT ALL ON TABLE planning.mainline_team_plans TO service_role;

GRANT ALL ON TABLE planning.mainline_team_plan_optional_content_scopes TO service_role;

GRANT ALL ON TABLE planning.mainline_team_plan_members TO service_role;

GRANT ALL ON TABLE planning.mainline_team_plan_member_moves TO service_role;

GRANT ALL ON TABLE planning.mainline_play_plan_links TO service_role;

CREATE POLICY team_plan_statuses_read_all ON planning.mainline_team_plan_statuses
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY team_plans_select_own ON planning.mainline_team_plans
    FOR SELECT TO authenticated
    USING (user_id = auth.uid ());

CREATE POLICY team_plans_insert_own ON planning.mainline_team_plans
    FOR INSERT TO authenticated
    WITH CHECK (user_id = auth.uid ());

CREATE POLICY team_plans_update_own ON planning.mainline_team_plans
    FOR UPDATE TO authenticated
    USING (user_id = auth.uid ())
    WITH CHECK (user_id = auth.uid ());

CREATE POLICY team_plans_delete_own ON planning.mainline_team_plans
    FOR DELETE TO authenticated
    USING (user_id = auth.uid ());

CREATE POLICY play_plan_links_select_own ON planning.mainline_play_plan_links
    FOR SELECT TO authenticated
    USING (user_id = auth.uid ());

CREATE POLICY play_plan_links_insert_own ON planning.mainline_play_plan_links
    FOR INSERT TO authenticated
    WITH CHECK (user_id = auth.uid ());

CREATE POLICY play_plan_links_update_own ON planning.mainline_play_plan_links
    FOR UPDATE TO authenticated
    USING (user_id = auth.uid ())
    WITH CHECK (user_id = auth.uid ());

CREATE POLICY play_plan_links_delete_own ON planning.mainline_play_plan_links
    FOR DELETE TO authenticated
    USING (user_id = auth.uid ());

CREATE POLICY team_plan_optional_content_scopes_owned ON planning.mainline_team_plan_optional_content_scopes
    FOR ALL TO authenticated
    USING (EXISTS (
        SELECT
            1
        FROM
            planning.mainline_team_plans
        WHERE
            mainline_team_plans.id = team_plan_id
            AND mainline_team_plans.user_id = auth.uid ()))
    WITH CHECK (EXISTS (
        SELECT
            1
        FROM
            planning.mainline_team_plans
        WHERE
            mainline_team_plans.id = team_plan_id
            AND mainline_team_plans.user_id = auth.uid ()));

CREATE POLICY team_plan_members_owned ON planning.mainline_team_plan_members
    FOR ALL TO authenticated
    USING (EXISTS (
        SELECT
            1
        FROM
            planning.mainline_team_plans
        WHERE
            mainline_team_plans.id = team_plan_id
            AND mainline_team_plans.user_id = auth.uid ()))
    WITH CHECK (EXISTS (
        SELECT
            1
        FROM
            planning.mainline_team_plans
        WHERE
            mainline_team_plans.id = team_plan_id
            AND mainline_team_plans.user_id = auth.uid ()));

CREATE POLICY team_plan_member_moves_owned ON planning.mainline_team_plan_member_moves
    FOR ALL TO authenticated
    USING (EXISTS (
        SELECT
            1
        FROM
            planning.mainline_team_plan_members
            JOIN planning.mainline_team_plans ON mainline_team_plans.id = mainline_team_plan_members.team_plan_id
        WHERE
            mainline_team_plan_members.id = team_plan_member_id
            AND mainline_team_plans.user_id = auth.uid ()))
    WITH CHECK (EXISTS (
        SELECT
            1
        FROM
            planning.mainline_team_plan_members
            JOIN planning.mainline_team_plans ON mainline_team_plans.id = mainline_team_plan_members.team_plan_id
        WHERE
            mainline_team_plan_members.id = team_plan_member_id
            AND mainline_team_plans.user_id = auth.uid ()));
