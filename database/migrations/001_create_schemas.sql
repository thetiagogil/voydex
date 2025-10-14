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