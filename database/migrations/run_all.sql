-- ================================================================================
-- Migration Runner: Execute All Migrations in Order
-- ================================================================================
-- This script runs all migration files in the correct order

\echo 'Starting database migration...'

-- Core schemas and basic setup
\i 001_create_schemas.sql

-- Static/meta tables (generations, regions, games, etc.)
\i 002_create_core_meta_tables.sql

-- Base tables with modern PokeAPI data
\i 003_create_base_tables.sql

-- Historical changes tables for generation-specific differences
\i 004_create_changes_tables.sql

-- Pokemon move learnsets
\i 005_create_pokemon_learnsets.sql

-- Gameplay tables (teams, playthroughs, etc.)
\i 006_create_gameplay_tables.sql

-- Meta progress tracking
\i 007_create_meta_progress_tables.sql

-- Other meta tables
\i 008_create_meta_other_tables.sql

\echo 'Database migration completed successfully!'

-- ================================================================================
-- Verify Migration Success
-- ================================================================================
SELECT 
  schemaname,
  tablename,
  tableowner
FROM pg_tables 
WHERE schemaname IN ('dex', 'meta', 'gameplay')
ORDER BY schemaname, tablename;