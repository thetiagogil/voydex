-- ============================================================================
-- Grants: app read models
-- Views are read-only app query models.
-- ============================================================================
REVOKE ALL ON TABLE views.mainline_play_summary FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.mainline_play_completion_summary FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.mainline_play_overview FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.mainline_play_milestone_detail FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.mainline_play_milestone_category_summary FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.mainline_play_team_detail FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.mainline_play_timeline_detail FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.mainline_play_pokedex_detail FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.mainline_play_collectible_detail FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.mainline_team_plan_summary FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.mainline_team_plan_detail FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.mainline_play_team_plan_detail FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.mainline_collection_used_identities FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.mainline_collection_detail FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.mainline_dashboard_summary FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.mainline_stats_summary FROM PUBLIC, anon, authenticated;

GRANT SELECT ON TABLE views.mainline_play_summary TO authenticated, service_role;

GRANT SELECT ON TABLE views.mainline_play_completion_summary TO authenticated, service_role;

GRANT SELECT ON TABLE views.mainline_play_overview TO authenticated, service_role;

GRANT SELECT ON TABLE views.mainline_play_milestone_detail TO authenticated, service_role;

GRANT SELECT ON TABLE views.mainline_play_milestone_category_summary TO authenticated, service_role;

GRANT SELECT ON TABLE views.mainline_play_team_detail TO authenticated, service_role;

GRANT SELECT ON TABLE views.mainline_play_timeline_detail TO authenticated, service_role;

GRANT SELECT ON TABLE views.mainline_play_pokedex_detail TO authenticated, service_role;

GRANT SELECT ON TABLE views.mainline_play_collectible_detail TO authenticated, service_role;

GRANT SELECT ON TABLE views.mainline_team_plan_summary TO authenticated, service_role;

GRANT SELECT ON TABLE views.mainline_team_plan_detail TO authenticated, service_role;

GRANT SELECT ON TABLE views.mainline_play_team_plan_detail TO authenticated, service_role;

GRANT SELECT ON TABLE views.mainline_collection_used_identities TO authenticated, service_role;

GRANT SELECT ON TABLE views.mainline_collection_detail TO authenticated, service_role;

GRANT SELECT ON TABLE views.mainline_dashboard_summary TO authenticated, service_role;

GRANT SELECT ON TABLE views.mainline_stats_summary TO authenticated, service_role;
