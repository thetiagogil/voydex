CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- SCHEMAS
CREATE SCHEMA IF NOT EXISTS dex;

CREATE SCHEMA IF NOT EXISTS meta;

CREATE SCHEMA IF NOT EXISTS gameplay;

-- SCHEMA DEX (reference data: public read-only)
GRANT USAGE ON SCHEMA dex TO anon,
authenticated,
service_role;

-- Current objects
GRANT
SELECT
    ON ALL TABLES IN SCHEMA dex TO anon,
    authenticated;

GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA dex TO anon,
authenticated;

GRANT USAGE ON ALL SEQUENCES IN SCHEMA dex TO anon,
authenticated;

GRANT ALL ON ALL TABLES IN SCHEMA dex TO service_role;

GRANT ALL ON ALL FUNCTIONS IN SCHEMA dex TO service_role;

GRANT ALL ON ALL SEQUENCES IN SCHEMA dex TO service_role;

-- Future objects
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA dex GRANT
SELECT
    ON TABLES TO anon,
    authenticated;

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA dex GRANT EXECUTE ON FUNCTIONS TO anon,
authenticated;

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA dex GRANT USAGE ON SEQUENCES TO anon,
authenticated;

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA dex GRANT ALL ON TABLES TO service_role;

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA dex GRANT ALL ON FUNCTIONS TO service_role;

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA dex GRANT ALL ON SEQUENCES TO service_role;

-- SCHEMA META (metadata: public read-only)
GRANT USAGE ON SCHEMA meta TO anon,
authenticated,
service_role;

-- Current objects
GRANT
SELECT
    ON ALL TABLES IN SCHEMA meta TO anon,
    authenticated;

GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA meta TO anon,
authenticated;

GRANT USAGE ON ALL SEQUENCES IN SCHEMA meta TO anon,
authenticated;

GRANT ALL ON ALL TABLES IN SCHEMA meta TO service_role;

GRANT ALL ON ALL FUNCTIONS IN SCHEMA meta TO service_role;

GRANT ALL ON ALL SEQUENCES IN SCHEMA meta TO service_role;

-- Future objects
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA meta GRANT
SELECT
    ON TABLES TO anon,
    authenticated;

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA meta GRANT EXECUTE ON FUNCTIONS TO anon,
authenticated;

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA meta GRANT USAGE ON SEQUENCES TO anon,
authenticated;

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA meta GRANT ALL ON TABLES TO service_role;

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA meta GRANT ALL ON FUNCTIONS TO service_role;

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA meta GRANT ALL ON SEQUENCES TO service_role;

-- SCHEMA GAMEPLAY (user data: RLS-protected)
GRANT USAGE ON SCHEMA gameplay TO anon,
authenticated,
service_role;

-- Current objects (do NOT grant anything to anon here)
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

-- Future objects
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