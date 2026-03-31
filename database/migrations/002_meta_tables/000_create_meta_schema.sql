-- ============================================================================
-- Schema: meta
-- Static reference data: generations, games, Pokémon, moves, abilities, etc.
-- ============================================================================
CREATE SCHEMA IF NOT EXISTS meta;

COMMENT ON SCHEMA meta IS 'Static reference data: games, generations, regions, Pokémon, moves, abilities, types, natures';

-- Permissions: public read-only access for all roles
GRANT USAGE ON SCHEMA meta TO postgres,
anon,
authenticated,
service_role,
dashboard_user;

ALTER DEFAULT PRIVILEGES IN SCHEMA meta GRANT ALL ON TABLES TO postgres,
anon,
authenticated,
service_role,
dashboard_user;