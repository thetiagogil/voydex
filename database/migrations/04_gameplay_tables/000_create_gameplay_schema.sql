-- ============================================================================
-- Schema: gameplay
-- User gameplay data: plays, teams, progress, caught Pokémon (RLS-protected).
-- ============================================================================
CREATE SCHEMA IF NOT EXISTS gameplay;

COMMENT ON SCHEMA gameplay IS 'User gameplay data: plays, progress, teams, caught Pokémon. All tables RLS-protected.';

-- Permissions: RLS-protected user data
GRANT USAGE ON SCHEMA gameplay TO postgres,
anon,
authenticated,
service_role,
dashboard_user;

ALTER DEFAULT PRIVILEGES IN SCHEMA gameplay GRANT ALL ON TABLES TO postgres,
anon,
authenticated,
service_role,
dashboard_user;