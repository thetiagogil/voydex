-- ================================================================================
-- Migration: 001
-- ================================================================================

-- Enable UUID extension for generating unique identifiers
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- ================================================================================
-- DEX SCHEMA - Pokemon Reference Data
-- ================================================================================
CREATE SCHEMA IF NOT EXISTS dex;
COMMENT ON SCHEMA dex IS 'Pokemon reference data - static, read-only content';

-- ================================================================================
-- META SCHEMA - Game Metadata & Templates
-- ================================================================================
CREATE SCHEMA IF NOT EXISTS meta;
COMMENT ON SCHEMA meta IS 'Game metadata, regions, generations, and progress tracking templates';

-- ================================================================================
-- GAMEPLAY SCHEMA - User Data & Progress
-- ================================================================================
CREATE SCHEMA IF NOT EXISTS gameplay;
COMMENT ON SCHEMA gameplay IS 'User gameplay data, teams, progress, and personal tracking';

-- ================================================================================
-- SCHEMA PERMISSIONS - Grant access to Supabase roles
-- ================================================================================

-- Grant permissions for DEX schema
GRANT USAGE ON SCHEMA dex TO anon, authenticated, service_role;
GRANT ALL ON ALL TABLES IN SCHEMA dex TO anon, authenticated, service_role;
GRANT ALL ON ALL ROUTINES IN SCHEMA dex TO anon, authenticated, service_role;
GRANT ALL ON ALL SEQUENCES IN SCHEMA dex TO anon, authenticated, service_role;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA dex GRANT ALL ON TABLES TO anon, authenticated, service_role;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA dex GRANT ALL ON ROUTINES TO anon, authenticated, service_role;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA dex GRANT ALL ON SEQUENCES TO anon, authenticated, service_role;

-- Grant permissions for META schema
GRANT USAGE ON SCHEMA meta TO anon, authenticated, service_role;
GRANT ALL ON ALL TABLES IN SCHEMA meta TO anon, authenticated, service_role;
GRANT ALL ON ALL ROUTINES IN SCHEMA meta TO anon, authenticated, service_role;
GRANT ALL ON ALL SEQUENCES IN SCHEMA meta TO anon, authenticated, service_role;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA meta GRANT ALL ON TABLES TO anon, authenticated, service_role;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA meta GRANT ALL ON ROUTINES TO anon, authenticated, service_role;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA meta GRANT ALL ON SEQUENCES TO anon, authenticated, service_role;

-- Grant permissions for GAMEPLAY schema
GRANT USAGE ON SCHEMA gameplay TO anon, authenticated, service_role;
GRANT ALL ON ALL TABLES IN SCHEMA gameplay TO anon, authenticated, service_role;
GRANT ALL ON ALL ROUTINES IN SCHEMA gameplay TO anon, authenticated, service_role;
GRANT ALL ON ALL SEQUENCES IN SCHEMA gameplay TO anon, authenticated, service_role;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA gameplay GRANT ALL ON TABLES TO anon, authenticated, service_role;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA gameplay GRANT ALL ON ROUTINES TO anon, authenticated, service_role;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA gameplay GRANT ALL ON SEQUENCES TO anon, authenticated, service_role;