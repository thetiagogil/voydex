-- ============================================================================
-- Schema: tracking
-- Milestone tracking system for game playthroughs.
-- ============================================================================
CREATE SCHEMA IF NOT EXISTS tracking;

-- ============================================================================
-- Enum: tracking.opponent_role
-- Allowed roles for tracking opponents.
-- ============================================================================
CREATE TYPE tracking.opponent_role AS ENUM ('gym_leader', 'elite_four', 'champion', 'trial_captain', 'kahuna', 'titan', 'team_star_boss', 'story_boss');