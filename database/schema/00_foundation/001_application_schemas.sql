-- ============================================================================
-- Foundation: application schemas
-- Creates the clean Voydex schema domains.
-- ============================================================================
CREATE SCHEMA reference;

CREATE SCHEMA tracking;

CREATE SCHEMA gameplay;

CREATE SCHEMA planning;

CREATE SCHEMA views;

CREATE SCHEMA private;

COMMENT ON SCHEMA reference IS 'Static Pokémon and game reference data.';

COMMENT ON SCHEMA tracking IS 'Static game progression, milestone, and collectible definitions.';

COMMENT ON SCHEMA gameplay IS 'User-owned playthrough state and progress.';

COMMENT ON SCHEMA planning IS 'User-owned team plans and plan-to-play links.';

COMMENT ON SCHEMA views IS 'Read-only app query models.';

COMMENT ON SCHEMA private IS 'Internal helper functions and maintenance objects not exposed through the Data API.';

GRANT USAGE ON SCHEMA public TO authenticated, service_role;

GRANT USAGE ON SCHEMA reference TO anon, authenticated, service_role;

GRANT USAGE ON SCHEMA tracking TO anon, authenticated, service_role;

GRANT USAGE ON SCHEMA gameplay TO authenticated, service_role;

GRANT USAGE ON SCHEMA planning TO authenticated, service_role;

GRANT USAGE ON SCHEMA views TO anon, authenticated, service_role;

REVOKE ALL ON SCHEMA private FROM PUBLIC;

REVOKE ALL ON SCHEMA private FROM anon;

REVOKE ALL ON SCHEMA private FROM authenticated;

GRANT USAGE ON SCHEMA private TO service_role;
