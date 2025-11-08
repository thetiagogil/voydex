-- =====================================================
-- Migration: Static Schemas (Meta + Dex)
-- =====================================================
-- Purpose: Create schemas for reference/static data
-- - meta: Game metadata (generations, regions, games, progress items)
-- - dex: Pokédex data (Pokémon, moves, abilities, types)
--
-- These schemas contain:
-- - Data generated from external APIs (PokéAPI)
-- - Reference data that changes rarely
-- - Read-only data for most users
-- - No user-specific information
-- =====================================================

-- Extension for UUID generation (used across all schemas)
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- =====================================================
-- Utility Functions
-- =====================================================

-- Function: Auto-update updated_at timestamps
-- Used by tables across all schemas
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
-- Schema: dex (Pokédex Reference Data)
-- =====================================================

CREATE SCHEMA IF NOT EXISTS dex;

COMMENT ON SCHEMA dex IS 'Pokédex reference data: Pokémon species, forms, abilities, moves, types, natures, egg groups';

-- =====================================================
-- Schema: meta (Game Metadata)
-- =====================================================

CREATE SCHEMA IF NOT EXISTS meta;

COMMENT ON SCHEMA meta IS 'Game metadata: generations, regions, version groups, games, progress categories/items, regional dex entries';

-- =====================================================
-- Permissions: dex schema (Public Read-Only)
-- =====================================================
-- Access pattern: Anyone can read, only service_role can write

-- Schema access
GRANT USAGE ON SCHEMA dex TO anon, authenticated, service_role;

-- Existing objects
GRANT SELECT ON ALL TABLES IN SCHEMA dex TO anon, authenticated;
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA dex TO anon, authenticated;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA dex TO anon, authenticated;
GRANT ALL ON ALL TABLES IN SCHEMA dex TO service_role;
GRANT ALL ON ALL FUNCTIONS IN SCHEMA dex TO service_role;
GRANT ALL ON ALL SEQUENCES IN SCHEMA dex TO service_role;

-- Future objects (auto-grant)
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA dex 
  GRANT SELECT ON TABLES TO anon, authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA dex 
  GRANT EXECUTE ON FUNCTIONS TO anon, authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA dex 
  GRANT USAGE ON SEQUENCES TO anon, authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA dex 
  GRANT ALL ON TABLES TO service_role;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA dex 
  GRANT ALL ON FUNCTIONS TO service_role;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA dex 
  GRANT ALL ON SEQUENCES TO service_role;

-- =====================================================
-- Permissions: meta schema (Public Read-Only)
-- =====================================================
-- Access pattern: Anyone can read, only service_role can write

-- Schema access
GRANT USAGE ON SCHEMA meta TO anon, authenticated, service_role;

-- Existing objects
GRANT SELECT ON ALL TABLES IN SCHEMA meta TO anon, authenticated;
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA meta TO anon, authenticated;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA meta TO anon, authenticated;
GRANT ALL ON ALL TABLES IN SCHEMA meta TO service_role;
GRANT ALL ON ALL FUNCTIONS IN SCHEMA meta TO service_role;
GRANT ALL ON ALL SEQUENCES IN SCHEMA meta TO service_role;

-- Future objects (auto-grant)
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA meta 
  GRANT SELECT ON TABLES TO anon, authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA meta 
  GRANT EXECUTE ON FUNCTIONS TO anon, authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA meta 
  GRANT USAGE ON SEQUENCES TO anon, authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA meta 
  GRANT ALL ON TABLES TO service_role;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA meta 
  GRANT ALL ON FUNCTIONS TO service_role;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA meta 
  GRANT ALL ON SEQUENCES TO service_role;