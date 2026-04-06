-- ============================================================================
-- Schema: reference
-- Static reference data: generations, games, Pokémon, moves, abilities, etc.
-- ============================================================================
CREATE SCHEMA IF NOT EXISTS reference;

COMMENT ON SCHEMA reference IS 'Static reference data: games, generations, regions, Pokémon, moves, abilities, types, natures';

-- Permissions: public read-only access for all roles
GRANT USAGE ON SCHEMA reference TO postgres,
anon,
authenticated,
service_role,
dashboard_user;

ALTER DEFAULT PRIVILEGES IN SCHEMA reference GRANT ALL ON TABLES TO postgres,
anon,
authenticated,
service_role,
dashboard_user;