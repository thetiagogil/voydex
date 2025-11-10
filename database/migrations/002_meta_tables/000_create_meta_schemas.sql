
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- =====================================================
-- Utility Functions
-- =====================================================
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$;

COMMENT ON FUNCTION update_updated_at_column() IS 'Automatically updates the updated_at column to current timestamp';

-- =====================================================
-- Schema: meta (All Static Reference Data)
-- =====================================================
CREATE SCHEMA IF NOT EXISTS meta;

COMMENT ON SCHEMA meta IS 'Static reference data: games, generations, regions, Pokémon, moves, abilities, types, natures, progress items';

-- =====================================================
-- Permissions: meta schema (Public Read-Only)
-- =====================================================
GRANT USAGE ON SCHEMA meta TO postgres, anon, authenticated, service_role, dashboard_user;

ALTER DEFAULT PRIVILEGES IN SCHEMA meta
GRANT ALL ON TABLES TO postgres, anon, authenticated, service_role, dashboard_user;