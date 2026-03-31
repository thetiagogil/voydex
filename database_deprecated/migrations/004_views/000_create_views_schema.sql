CREATE SCHEMA IF NOT EXISTS views;

-- =====================================================
-- Permissions: views schema (RLS-Protected User Data)
-- =====================================================
GRANT USAGE ON SCHEMA views TO postgres,
anon,
authenticated,
service_role,
dashboard_user;

ALTER DEFAULT PRIVILEGES IN SCHEMA views GRANT ALL ON TABLES TO postgres,
anon,
authenticated,
service_role,
dashboard_user;