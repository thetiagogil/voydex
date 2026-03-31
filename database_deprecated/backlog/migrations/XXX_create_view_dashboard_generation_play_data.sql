-- =====================================================
-- Migration: Dashboard - Generation Play Data View
-- =====================================================
-- Purpose: Combine generation metadata with user play statistics
-- Used In: /dashboard page (GenerationSection component)
-- Type: Regular View (real-time data)
-- Dependencies: views.mv_dashboard_generation_metadata, gameplay.plays
--
-- Page Location: src/app/(protected)/dashboard/page.tsx
-- Component: src/components/features/dashboard/generation-section.tsx
-- API Route: /api/dashboard/generations
-- Hook: useGenerationPlayData() in src/hooks/useDashboard.ts
--
-- Why Regular View:
-- - Combines static metadata (from matview) with dynamic user data
-- - Per-user statistics must be real-time
-- - Shows ALL generations to every user
-- - user_id is NULL for generations without user plays
--
-- Query Pattern:
--   SELECT * FROM views.v_dashboard_generation_play_data
--   WHERE user_id = auth.uid() OR user_id IS NULL
--   ORDER BY gen_id
--
-- Returns: One row per generation with metadata + optional user stats
-- =====================================================

-- =====================================================
-- View: Dashboard - Generation Play Data
-- =====================================================

CREATE OR REPLACE VIEW views.v_dashboard_generation_play_data AS
WITH user_play_stats AS (
  -- Calculate per-user, per-generation play statistics
  SELECT
    gm.generation_id,
    p.user_id,
    
    -- Count playthroughs by status
    COUNT(DISTINCT p.id) AS playthroughs_count,
    COUNT(DISTINCT p.id) FILTER (WHERE p.status = 'active') AS active_plays,
    COUNT(DISTINCT p.id) FILTER (WHERE p.status = 'completed') AS completed_plays,
    
    -- Average completion percentage across all plays in this generation
    COALESCE(
      ROUND(
        AVG(
          CASE
            WHEN play_progress.total_items > 0 THEN 
              (play_progress.completed_items::DECIMAL / play_progress.total_items::DECIMAL) * 100
            ELSE 0
          END
        )
      ),
      0
    ) AS average_completion
    
  FROM
    gameplay.plays p
    JOIN meta.games gm ON p.game_id = gm.id
    
    -- Calculate completion stats per play
    LEFT JOIN LATERAL (
      SELECT
        -- Total progress items for this game
        COUNT(DISTINCT pi_all.id) AS total_items,
        -- Completed progress items for this play
        COUNT(DISTINCT prog_done.progress_item_id) AS completed_items
      FROM
        meta.progress_items pi_all
        JOIN meta.progress_categories pc_all ON pi_all.progress_category_id = pc_all.id
        LEFT JOIN gameplay.progress prog_done ON (
          prog_done.progress_item_id = pi_all.id 
          AND prog_done.play_id = p.id
        )
      WHERE
        -- Items specific to this game
        pi_all.game_id = p.game_id
        -- OR items that apply to this version group
        OR (pi_all.game_id IS NULL AND pc_all.version_group_id = gm.version_group_id)
    ) play_progress ON TRUE
    
  GROUP BY
    gm.generation_id, p.user_id
)
SELECT
  -- All generation metadata from materialized view (no recalculation)
  md.*,
  
  -- User-specific play statistics (NULL if user has no plays in this generation)
  ups.user_id,
  COALESCE(ups.playthroughs_count, 0) AS playthroughs_count,
  COALESCE(ups.active_plays, 0) AS active_plays,
  COALESCE(ups.completed_plays, 0) AS completed_plays,
  COALESCE(ups.average_completion, 0) AS average_completion
  
FROM
  -- Start with all generation metadata (from materialized view - pre-computed)
  views.mv_dashboard_generation_metadata md
  
  -- Left join user play stats (NULL if user has no plays)
  LEFT JOIN user_play_stats ups ON md.gen_id = ups.generation_id
  
ORDER BY
  md.gen_id;

-- =====================================================
-- Permissions
-- =====================================================

-- Grant SELECT to authenticated users
GRANT SELECT ON views.v_dashboard_generation_play_data 
  TO authenticated, service_role;

-- =====================================================
-- Comments
-- =====================================================

COMMENT ON VIEW views.v_dashboard_generation_play_data IS 
  'Generation metadata combined with per-user play statistics for /dashboard page. Shows all generations; user_id is NULL for generations without user plays.';

-- =====================================================
-- Usage Examples
-- =====================================================
-- Get all generations with current user's stats:
--   SELECT * FROM views.v_dashboard_generation_play_data
--   WHERE user_id = auth.uid() OR user_id IS NULL
--   ORDER BY gen_id;
--
-- Get only enabled generations:
--   SELECT * FROM views.v_dashboard_generation_play_data
--   WHERE is_enabled = TRUE
--     AND (user_id = auth.uid() OR user_id IS NULL)
--   ORDER BY gen_id;
--
-- Get generations where user has active plays:
--   SELECT * FROM views.v_dashboard_generation_play_data
--   WHERE user_id = auth.uid()
--     AND active_plays > 0
--   ORDER BY gen_id;
--
-- Expected result structure:
--   [
--     {
--       // All fields from mv_generation_metadata
--       "gen_id": 1,
--       "gen_slug": "generation-i",
--       "gen_name": "Generation I",
--       "region": "Kanto",
--       "years": "1996-2000",
--       "pokemon_count": 151,
--       "total_pokemon_count": 151,
--       "games_count": 3,
--       "is_enabled": true,
--       "start_year": 1996,
--       "end_year": 2000,
--       
--       // User-specific statistics
--       "user_id": "uuid",
--       "playthroughs_count": 2,
--       "active_plays": 1,
--       "completed_plays": 1,
--       "average_completion": 75
--     },
--     {
--       "gen_id": 2,
--       "gen_slug": "generation-ii",
--       "gen_name": "Generation II",
--       ...
--       "user_id": null,  // User has no plays in Gen 2
--       "playthroughs_count": 0,
--       ...
--     }
--   ]
-- =====================================================
