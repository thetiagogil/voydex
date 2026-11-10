-- ============================================================================
-- Grants: planning
-- Your Plans live only on the device (ADR 0008), where the one local
-- user owns every row, so these tables have no row security and the API
-- roles get nothing: hosted Supabase never serves them.
-- ============================================================================
REVOKE ALL ON TABLE planning.mainline_team_plan_statuses FROM anon, authenticated;

REVOKE ALL ON TABLE planning.mainline_team_plans FROM anon, authenticated;

REVOKE ALL ON TABLE planning.mainline_team_plan_optional_content_scopes FROM anon, authenticated;

REVOKE ALL ON TABLE planning.mainline_team_plan_members FROM anon, authenticated;

REVOKE ALL ON TABLE planning.mainline_team_plan_member_moves FROM anon, authenticated;

REVOKE ALL ON TABLE planning.mainline_play_plan_links FROM anon, authenticated;

GRANT ALL ON TABLE planning.mainline_team_plan_statuses TO service_role;

GRANT ALL ON TABLE planning.mainline_team_plans TO service_role;

GRANT ALL ON TABLE planning.mainline_team_plan_optional_content_scopes TO service_role;

GRANT ALL ON TABLE planning.mainline_team_plan_members TO service_role;

GRANT ALL ON TABLE planning.mainline_team_plan_member_moves TO service_role;

GRANT ALL ON TABLE planning.mainline_play_plan_links TO service_role;
