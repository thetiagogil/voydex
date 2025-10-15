-- ================================================================================
-- Run All Migrations
-- ================================================================================

\i 001_create_schemas.sql
\i 002_create_core_meta_tables.sql
\i 003_create_dex_tables.sql
\i 004_create_pokemon_learnsets.sql
\i 005_create_gameplay_tables.sql
\i 006_create_meta_progress_tables.sql
\i 007_create_meta_other_tables.sql

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