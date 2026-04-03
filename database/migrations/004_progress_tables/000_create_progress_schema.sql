-- ============================================================================
-- Schema: progress
-- Milestone tracking system for game playthroughs.
-- ============================================================================
CREATE SCHEMA IF NOT EXISTS progress;

-- ============================================================================
-- Enum: progress.opponent_role
-- Allowed roles for progress opponents.
-- ============================================================================
CREATE TYPE progress.opponent_role AS ENUM ('gym_leader', 'elite_four', 'champion', 'trial_captain', 'kahuna', 'titan', 'team_star_boss', 'story_boss');