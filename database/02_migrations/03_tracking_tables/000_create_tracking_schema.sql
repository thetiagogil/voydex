-- ============================================================================
-- Schema: tracking
-- Milestone tracking system for game playthroughs.
-- ============================================================================
CREATE SCHEMA IF NOT EXISTS tracking;

COMMENT ON SCHEMA tracking IS 'Milestone tracking system for game playthroughs';

-- Permissions: read-only access for all roles
GRANT USAGE ON SCHEMA tracking TO postgres,
anon,
authenticated,
service_role,
dashboard_user;

ALTER DEFAULT PRIVILEGES IN SCHEMA tracking GRANT ALL ON TABLES TO postgres,
anon,
authenticated,
service_role,
dashboard_user;

-- ============================================================================
-- Enum: tracking.opponent_role
-- Allowed roles for tracking opponents.
-- ============================================================================
CREATE TYPE tracking.opponent_role AS ENUM ('gym_leader', 'elite_four', 'champion', 'trial_captain', 'kahuna', 'titan', 'team_star_boss', 'story_boss');