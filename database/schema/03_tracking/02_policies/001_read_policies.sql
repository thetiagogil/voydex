-- ============================================================================
-- Read-only policies for tracking data.
-- ============================================================================
ALTER TABLE tracking.mainline_snapshot_policies ENABLE ROW LEVEL SECURITY;

ALTER TABLE tracking.mainline_categories ENABLE ROW LEVEL SECURITY;

ALTER TABLE tracking.mainline_milestone_types ENABLE ROW LEVEL SECURITY;

ALTER TABLE tracking.mainline_milestone_prerequisite_kinds ENABLE ROW LEVEL SECURITY;

ALTER TABLE tracking.mainline_milestones ENABLE ROW LEVEL SECURITY;

ALTER TABLE tracking.mainline_milestone_prerequisites ENABLE ROW LEVEL SECURITY;

ALTER TABLE tracking.mainline_opponents ENABLE ROW LEVEL SECURITY;

ALTER TABLE tracking.mainline_badges ENABLE ROW LEVEL SECURITY;

ALTER TABLE tracking.mainline_collectible_types ENABLE ROW LEVEL SECURITY;

ALTER TABLE tracking.mainline_collectibles ENABLE ROW LEVEL SECURITY;

ALTER TABLE tracking.mainline_collectible_entries ENABLE ROW LEVEL SECURITY;

ALTER TABLE tracking.mainline_milestone_pokemon_refs ENABLE ROW LEVEL SECURITY;

ALTER TABLE tracking.mainline_milestone_opponent_refs ENABLE ROW LEVEL SECURITY;

ALTER TABLE tracking.mainline_milestone_badge_refs ENABLE ROW LEVEL SECURITY;

ALTER TABLE tracking.mainline_milestone_collectible_refs ENABLE ROW LEVEL SECURITY;

ALTER TABLE tracking.mainline_milestone_decision_options ENABLE ROW LEVEL SECURITY;

REVOKE ALL ON TABLE tracking.mainline_snapshot_policies FROM anon, authenticated;

REVOKE ALL ON TABLE tracking.mainline_categories FROM anon, authenticated;

REVOKE ALL ON TABLE tracking.mainline_milestone_types FROM anon, authenticated;

REVOKE ALL ON TABLE tracking.mainline_milestone_prerequisite_kinds FROM anon, authenticated;

REVOKE ALL ON TABLE tracking.mainline_milestones FROM anon, authenticated;

REVOKE ALL ON TABLE tracking.mainline_milestone_prerequisites FROM anon, authenticated;

REVOKE ALL ON TABLE tracking.mainline_opponents FROM anon, authenticated;

REVOKE ALL ON TABLE tracking.mainline_badges FROM anon, authenticated;

REVOKE ALL ON TABLE tracking.mainline_collectible_types FROM anon, authenticated;

REVOKE ALL ON TABLE tracking.mainline_collectibles FROM anon, authenticated;

REVOKE ALL ON TABLE tracking.mainline_collectible_entries FROM anon, authenticated;

REVOKE ALL ON TABLE tracking.mainline_milestone_pokemon_refs FROM anon, authenticated;

REVOKE ALL ON TABLE tracking.mainline_milestone_opponent_refs FROM anon, authenticated;

REVOKE ALL ON TABLE tracking.mainline_milestone_badge_refs FROM anon, authenticated;

REVOKE ALL ON TABLE tracking.mainline_milestone_collectible_refs FROM anon, authenticated;

REVOKE ALL ON TABLE tracking.mainline_milestone_decision_options FROM anon, authenticated;

GRANT SELECT ON TABLE tracking.mainline_snapshot_policies TO authenticated;

GRANT SELECT ON TABLE tracking.mainline_categories TO authenticated;

GRANT SELECT ON TABLE tracking.mainline_milestone_types TO authenticated;

GRANT SELECT ON TABLE tracking.mainline_milestone_prerequisite_kinds TO authenticated;

GRANT SELECT ON TABLE tracking.mainline_milestones TO authenticated;

GRANT SELECT ON TABLE tracking.mainline_milestone_prerequisites TO authenticated;

GRANT SELECT ON TABLE tracking.mainline_opponents TO authenticated;

GRANT SELECT ON TABLE tracking.mainline_badges TO authenticated;

GRANT SELECT ON TABLE tracking.mainline_collectible_types TO authenticated;

GRANT SELECT ON TABLE tracking.mainline_collectibles TO authenticated;

GRANT SELECT ON TABLE tracking.mainline_collectible_entries TO authenticated;

GRANT SELECT ON TABLE tracking.mainline_milestone_pokemon_refs TO authenticated;

GRANT SELECT ON TABLE tracking.mainline_milestone_opponent_refs TO authenticated;

GRANT SELECT ON TABLE tracking.mainline_milestone_badge_refs TO authenticated;

GRANT SELECT ON TABLE tracking.mainline_milestone_collectible_refs TO authenticated;

GRANT SELECT ON TABLE tracking.mainline_milestone_decision_options TO authenticated;

GRANT ALL ON TABLE tracking.mainline_snapshot_policies TO service_role;

GRANT ALL ON TABLE tracking.mainline_categories TO service_role;

GRANT ALL ON TABLE tracking.mainline_milestone_types TO service_role;

GRANT ALL ON TABLE tracking.mainline_milestone_prerequisite_kinds TO service_role;

GRANT ALL ON TABLE tracking.mainline_milestones TO service_role;

GRANT ALL ON TABLE tracking.mainline_milestone_prerequisites TO service_role;

GRANT ALL ON TABLE tracking.mainline_opponents TO service_role;

GRANT ALL ON TABLE tracking.mainline_badges TO service_role;

GRANT ALL ON TABLE tracking.mainline_collectible_types TO service_role;

GRANT ALL ON TABLE tracking.mainline_collectibles TO service_role;

GRANT ALL ON TABLE tracking.mainline_collectible_entries TO service_role;

GRANT ALL ON TABLE tracking.mainline_milestone_pokemon_refs TO service_role;

GRANT ALL ON TABLE tracking.mainline_milestone_opponent_refs TO service_role;

GRANT ALL ON TABLE tracking.mainline_milestone_badge_refs TO service_role;

GRANT ALL ON TABLE tracking.mainline_milestone_collectible_refs TO service_role;

GRANT ALL ON TABLE tracking.mainline_milestone_decision_options TO service_role;

CREATE POLICY mainline_snapshot_policies_read_all ON tracking.mainline_snapshot_policies
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY mainline_categories_read_all ON tracking.mainline_categories
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY mainline_milestone_types_read_all ON tracking.mainline_milestone_types
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY mainline_milestone_prerequisite_kinds_read_all ON tracking.mainline_milestone_prerequisite_kinds
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY mainline_milestones_read_all ON tracking.mainline_milestones
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY mainline_milestone_prerequisites_read_all ON tracking.mainline_milestone_prerequisites
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY mainline_opponents_read_all ON tracking.mainline_opponents
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY mainline_badges_read_all ON tracking.mainline_badges
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY mainline_collectible_types_read_all ON tracking.mainline_collectible_types
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY mainline_collectibles_read_all ON tracking.mainline_collectibles
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY mainline_collectible_entries_read_all ON tracking.mainline_collectible_entries
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY mainline_milestone_pokemon_refs_read_all ON tracking.mainline_milestone_pokemon_refs
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY mainline_milestone_opponent_refs_read_all ON tracking.mainline_milestone_opponent_refs
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY mainline_milestone_badge_refs_read_all ON tracking.mainline_milestone_badge_refs
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY mainline_milestone_collectible_refs_read_all ON tracking.mainline_milestone_collectible_refs
    FOR SELECT TO authenticated
    USING (TRUE);

CREATE POLICY mainline_milestone_decision_options_read_all ON tracking.mainline_milestone_decision_options
    FOR SELECT TO authenticated
    USING (TRUE);
