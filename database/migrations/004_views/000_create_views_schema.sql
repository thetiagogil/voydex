-- ============================================================================
-- Schema: views
-- Read-oriented SQL views for app convenience queries.
-- ============================================================================
CREATE SCHEMA IF NOT EXISTS views;

COMMENT ON SCHEMA views IS 'Read-oriented SQL views. Simplify app queries by pre-joining common table relationships.';

-- Permissions
GRANT USAGE ON SCHEMA views TO postgres,
anon,
authenticated,
service_role,
dashboard_user;

ALTER DEFAULT PRIVILEGES IN SCHEMA views GRANT
SELECT
    ON TABLES TO postgres,
    anon,
    authenticated,
    service_role,
    dashboard_user;