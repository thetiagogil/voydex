-- =====================================================
-- Migration: Gameplay Schema (User Data)
-- =====================================================
-- Purpose: Create schema for user-generated gameplay data
-- - gameplay: User playthroughs, progress, teams, caught Pokémon
--
-- This schema contains:
-- - User-specific data (protected by RLS)
-- - Dynamic data that changes frequently
-- - Data that should NEVER be cleaned in production
-- - Personal gameplay progress and achievements
-- =====================================================
CREATE SCHEMA IF NOT EXISTS gameplay;

COMMENT ON SCHEMA gameplay IS 'User gameplay data: plays, progress, teams, caught Pokémon (RLS-protected)';

-- =====================================================
-- Permissions: gameplay schema (RLS-Protected User Data)
-- =====================================================
-- Access pattern: 
-- - anon: NO access (must be authenticated)
-- - authenticated: Full CRUD (protected by Row Level Security)
-- - service_role: Full admin access
-- Schema access
GRANT USAGE ON SCHEMA gameplay TO authenticated,
service_role;

-- Existing objects (NO grants to anon - must be logged in)
GRANT
SELECT
,
    INSERT,
UPDATE,
DELETE ON ALL TABLES IN SCHEMA gameplay TO authenticated;

GRANT USAGE ON ALL SEQUENCES IN SCHEMA gameplay TO authenticated;

GRANT ALL ON ALL TABLES IN SCHEMA gameplay TO service_role;

GRANT ALL ON ALL FUNCTIONS IN SCHEMA gameplay TO service_role;

GRANT ALL ON ALL SEQUENCES IN SCHEMA gameplay TO service_role;

-- Future objects (auto-grant)
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA gameplay GRANT
SELECT
,
    INSERT,
UPDATE,
DELETE ON TABLES TO authenticated;

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA gameplay GRANT USAGE ON SEQUENCES TO authenticated;

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA gameplay GRANT ALL ON TABLES TO service_role;

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA gameplay GRANT ALL ON FUNCTIONS TO service_role;

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA gameplay GRANT ALL ON SEQUENCES TO service_role;