-- =====================================================
-- Migration: Views Schema (Presentation Layer)
-- =====================================================
-- Purpose: Create schema for database views and aggregations
-- - views: Views, materialized views, and functions that combine data
--
-- This schema contains:
-- - Read-only views combining multiple schemas
-- - Materialized views for performance optimization
-- - Helper functions for complex queries
-- - Presentation layer for frontend consumption
-- =====================================================
CREATE SCHEMA IF NOT EXISTS views;

COMMENT ON SCHEMA views IS 'Presentation layer: views, materialized views, and aggregation functions';

-- =====================================================
-- Permissions: views schema (Read-Only Presentation)
-- =====================================================
-- Access pattern: 
-- - anon & authenticated: Can read all views
-- - service_role: Full admin access
--
-- Note: Views enforce their own security through:
-- - RLS on underlying tables
-- - auth.uid() filtering in view definitions
-- - Function-level SECURITY DEFINER when needed
-- Schema access
GRANT USAGE ON SCHEMA views TO anon,
authenticated,
service_role;

-- Existing objects (read-only for users)
GRANT
SELECT
    ON ALL TABLES IN SCHEMA views TO anon,
    authenticated;

GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA views TO anon,
authenticated;

GRANT ALL ON ALL TABLES IN SCHEMA views TO service_role;

GRANT ALL ON ALL FUNCTIONS IN SCHEMA views TO service_role;

-- Future objects (auto-grant)
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA views GRANT
SELECT
    ON TABLES TO anon,
    authenticated;

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA views GRANT EXECUTE ON FUNCTIONS TO anon,
authenticated;

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA views GRANT ALL ON TABLES TO service_role;

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA views GRANT ALL ON FUNCTIONS TO service_role;