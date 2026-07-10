-- ============================================================================
-- RLS/Grants: reference base tables
-- Makes reference base data read-only for client roles.
-- ============================================================================
ALTER TABLE reference.generations ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.regions ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.product_families ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.game_types ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.version_groups ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.platforms ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.games ENABLE ROW LEVEL SECURITY;

ALTER TABLE reference.game_platforms ENABLE ROW LEVEL SECURITY;

REVOKE ALL ON TABLE reference.generations FROM anon, authenticated;

REVOKE ALL ON TABLE reference.regions FROM anon, authenticated;

REVOKE ALL ON TABLE reference.product_families FROM anon, authenticated;

REVOKE ALL ON TABLE reference.game_types FROM anon, authenticated;

REVOKE ALL ON TABLE reference.version_groups FROM anon, authenticated;

REVOKE ALL ON TABLE reference.platforms FROM anon, authenticated;

REVOKE ALL ON TABLE reference.games FROM anon, authenticated;

REVOKE ALL ON TABLE reference.game_platforms FROM anon, authenticated;

GRANT SELECT ON TABLE reference.generations TO anon, authenticated;

GRANT SELECT ON TABLE reference.regions TO anon, authenticated;

GRANT SELECT ON TABLE reference.product_families TO anon, authenticated;

GRANT SELECT ON TABLE reference.game_types TO anon, authenticated;

GRANT SELECT ON TABLE reference.version_groups TO anon, authenticated;

GRANT SELECT ON TABLE reference.platforms TO anon, authenticated;

GRANT SELECT ON TABLE reference.games TO anon, authenticated;

GRANT SELECT ON TABLE reference.game_platforms TO anon, authenticated;

GRANT ALL ON TABLE reference.generations TO service_role;

GRANT ALL ON TABLE reference.regions TO service_role;

GRANT ALL ON TABLE reference.product_families TO service_role;

GRANT ALL ON TABLE reference.game_types TO service_role;

GRANT ALL ON TABLE reference.version_groups TO service_role;

GRANT ALL ON TABLE reference.platforms TO service_role;

GRANT ALL ON TABLE reference.games TO service_role;

GRANT ALL ON TABLE reference.game_platforms TO service_role;

CREATE POLICY generations_read_all ON reference.generations
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY regions_read_all ON reference.regions
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY product_families_read_all ON reference.product_families
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY game_types_read_all ON reference.game_types
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY version_groups_read_all ON reference.version_groups
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY platforms_read_all ON reference.platforms
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY games_read_all ON reference.games
    FOR SELECT TO anon, authenticated
    USING (TRUE);

CREATE POLICY game_platforms_read_all ON reference.game_platforms
    FOR SELECT TO anon, authenticated
    USING (TRUE);
