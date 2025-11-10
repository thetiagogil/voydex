-- =====================================================
-- Migration: Adventures - Generation Metadata (Materialized View)
-- =====================================================
-- Purpose: Pre-compute expensive generation metadata joins
-- Used In: /adventures page (GenerationSection component)
-- Type: Materialized View (refreshed manually or via cron)
-- Dependencies: meta.generations, meta.games, meta.regions
--
-- Page Location: src/app/(protected)/adventures/page.tsx
-- Component: src/components/features/adventures/generation-section.tsx
-- API Route: /api/adventures/generations
-- Hook: useGenerationPlayData() in src/hooks/useAdventures.ts
--
-- Why Materialized:
-- - Global metadata that changes infrequently
-- - Complex joins across multiple meta tables
-- - Same data shown to all users (not user-specific)
-- - Read-heavy workload (every adventures page load)
--
-- Refresh Strategy:
-- - Manual: REFRESH MATERIALIZED VIEW CONCURRENTLY views.mv_adventures_generation_metadata
-- - Automated: Schedule via pg_cron or external script
-- - Trigger: After ETL imports or metadata updates
-- =====================================================

-- =====================================================
-- Materialized View: Adventures - Generation Metadata
-- =====================================================

CREATE MATERIALIZED VIEW IF NOT EXISTS views.mv_adventures_generation_metadata AS
SELECT
  -- Generation identification
  g.id AS gen_id,
  g.slug AS gen_slug,
  g.name AS gen_name,
  
  -- Primary region (from first main-series game in generation)
  COALESCE(
    (
      SELECT r.name
      FROM meta.games gm
      JOIN meta.regions r ON gm.region_id = r.id
      WHERE gm.generation_id = g.id
        AND gm.type = 'main'
      ORDER BY gm.id
      LIMIT 1
    ),
    (
      SELECT r.name
      FROM meta.games gm
      JOIN meta.regions r ON gm.region_id = r.id
      WHERE gm.generation_id = g.id
      ORDER BY gm.id
      LIMIT 1
    ),
    'Unknown'
  ) AS region,
  
  -- Year range
  CASE
    WHEN g.end_year IS NULL THEN g.start_year::TEXT || '-Present'
    ELSE g.start_year::TEXT || '-' || g.end_year::TEXT
  END AS years,
  
  -- Pokemon counts
  g.new_pokemon_count AS pokemon_count,
  g.total_pokemon_count AS total_pokemon_count,
  
  -- Game count for this generation
  (
    SELECT COUNT(*)
    FROM meta.games
    WHERE generation_id = g.id
  ) AS games_count,
  
  -- Is generation enabled (has games available)
  (
    SELECT COUNT(*) > 0
    FROM meta.games
    WHERE generation_id = g.id
  ) AS is_enabled,
  
  -- Metadata for display
  g.start_year,
  g.end_year
FROM
  meta.generations g
ORDER BY
  g.id;

-- =====================================================
-- Indexes on Materialized View
-- =====================================================

-- WHAT: Unique index on gen_id (primary key for this materialized view)
-- WHY: Required for REFRESH CONCURRENTLY to work (non-blocking refresh)
-- WHEN USED: Automatically when you run REFRESH MATERIALIZED VIEW CONCURRENTLY
CREATE UNIQUE INDEX IF NOT EXISTS idx_mv_adventures_gen_metadata_pkey 
  ON views.mv_adventures_generation_metadata (gen_id);

-- WHAT: Index on gen_slug (generation-i, generation-ii, etc.)
-- WHY: Makes it fast to find a generation by URL slug
-- WHEN USED: When you visit /adventures/generation-i
CREATE INDEX IF NOT EXISTS idx_mv_adventures_gen_metadata_slug 
  ON views.mv_adventures_generation_metadata (gen_slug);

-- WHAT: Partial index on is_enabled (ONLY indexes generations that are enabled)
-- WHY: Makes it fast to filter only enabled generations, saves space
-- WHEN USED: "Show me only generations that have games available"
CREATE INDEX IF NOT EXISTS idx_mv_adventures_gen_metadata_enabled 
  ON views.mv_adventures_generation_metadata (is_enabled) 
  WHERE is_enabled = TRUE;

-- =====================================================
-- Permissions
-- =====================================================

-- Grant SELECT to all users (public metadata)
GRANT SELECT ON views.mv_adventures_generation_metadata TO anon, authenticated;

-- Service role has full access for refresh operations
GRANT ALL ON views.mv_adventures_generation_metadata TO service_role;

-- =====================================================
-- Initial Data Population
-- =====================================================

-- Populate the materialized view
REFRESH MATERIALIZED VIEW views.mv_adventures_generation_metadata;

-- =====================================================
-- Comments
-- =====================================================

COMMENT ON MATERIALIZED VIEW views.mv_adventures_generation_metadata IS 
  'Pre-computed generation metadata for /adventures page. Refresh after metadata changes.';

COMMENT ON COLUMN views.mv_adventures_generation_metadata.gen_id IS 
  'Generation ID (1-9)';

COMMENT ON COLUMN views.mv_adventures_generation_metadata.gen_slug IS 
  'URL-friendly slug (generation-i, generation-ii, etc.)';

COMMENT ON COLUMN views.mv_adventures_generation_metadata.region IS 
  'Primary region name (from main-series game)';

COMMENT ON COLUMN views.mv_adventures_generation_metadata.is_enabled IS 
  'Whether generation has games available in the app';

-- =====================================================
-- Refresh Instructions
-- =====================================================
-- Manual refresh (use CONCURRENTLY to avoid blocking reads):
--   REFRESH MATERIALIZED VIEW CONCURRENTLY views.mv_adventures_generation_metadata;
--
-- Automated refresh (example pg_cron job):
--   SELECT cron.schedule(
--     'refresh-generation-metadata',
--     '0 2 * * *',  -- Daily at 2 AM
--     $$REFRESH MATERIALIZED VIEW CONCURRENTLY views.mv_adventures_generation_metadata$$
--   );
--
-- Refresh via Node.js script:
--   node database/scripts/refresh-materialized-views.js
-- =====================================================
