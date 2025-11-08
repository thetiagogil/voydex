-- =====================================================
-- Migration: Adventures - User Statistics View
-- =====================================================
-- Purpose: Calculate per-user adventure statistics
-- Used In: /adventures page (StatsSection component)
-- Type: Function + Regular View (real-time data)
-- Dependencies: gameplay.plays, gameplay.progress, gameplay.pokemon_caught
--
-- Page Location: src/app/(protected)/adventures/page.tsx
-- Component: src/components/features/adventures/stats-section.tsx
-- API Route: /api/adventures/stats
-- Hook: useAdventureStats() in src/hooks/useAdventures.ts
--
-- Why Function-Based View:
-- - Guarantees exactly 1 row per user (even if no data)
-- - Prevents "cannot coerce to single JSON object" errors
-- - Real-time calculations (not materialized)
-- - Respects RLS via auth.uid()
--
-- Query Pattern: SELECT * FROM views.v_adventures_user_stats
-- Returns: Single row with user's aggregate statistics
-- =====================================================

-- =====================================================
-- Function: Get User Adventure Stats
-- =====================================================

CREATE OR REPLACE FUNCTION views.fn_adventures_user_stats(target_user_id UUID)
RETURNS TABLE (
  user_id UUID,
  total_playthroughs BIGINT,
  active_playthroughs BIGINT,
  completed_playthroughs BIGINT,
  total_badges BIGINT,
  total_pokemon_caught BIGINT,
  completion_rate NUMERIC
)
LANGUAGE plpgsql
STABLE
SECURITY DEFINER
AS $$
BEGIN
  RETURN QUERY
  SELECT
    target_user_id AS user_id,
    
    -- Total playthroughs (all statuses)
    COALESCE(COUNT(DISTINCT p.id), 0) AS total_playthroughs,
    
    -- Active playthroughs
    COALESCE(
      COUNT(DISTINCT p.id) FILTER (WHERE p.status = 'active'), 
      0
    ) AS active_playthroughs,
    
    -- Completed playthroughs
    COALESCE(
      COUNT(DISTINCT p.id) FILTER (WHERE p.status = 'completed'), 
      0
    ) AS completed_playthroughs,
    
    -- Total gym badges earned
    -- Counts progress items where category type = main-story AND slug contains 'badge' or 'gym'
    COALESCE(
      COUNT(DISTINCT prog.id) FILTER (
        WHERE pc.type = 'main-story' 
          AND (pc.slug LIKE '%badge%' OR pc.slug LIKE '%gym%' OR pi.slug LIKE '%badge%')
      ), 
      0
    ) AS total_badges,
    
    -- Total unique Pokemon species caught across all playthroughs
    COALESCE(
      COUNT(DISTINCT caught.species_id), 
      0
    ) AS total_pokemon_caught,
    
    -- Average completion rate across all playthroughs
    -- Calculated as: AVG(completed_items / total_items * 100) per playthrough
    COALESCE(
      ROUND(
        AVG(
          CASE
            WHEN play_stats.total_items > 0 THEN 
              (play_stats.completed_items::DECIMAL / play_stats.total_items::DECIMAL) * 100
            ELSE 0
          END
        ),
        1
      ),
      0
    ) AS completion_rate
    
  FROM
    -- Start with user's plays
    gameplay.plays p
    
    -- Left join progress (to count badges and calculate completion)
    LEFT JOIN gameplay.progress prog ON p.id = prog.play_id
    LEFT JOIN meta.progress_items pi ON prog.progress_item_id = pi.id
    LEFT JOIN meta.progress_categories pc ON pi.progress_category_id = pc.id
    
    -- Left join pokemon caught (to count unique species)
    LEFT JOIN gameplay.pokemon_caught caught ON p.id = caught.play_id
    
    -- Lateral join to calculate per-play completion stats
    LEFT JOIN LATERAL (
      SELECT
        -- Count total progress items available for this play's game
        COUNT(DISTINCT pi_count.id) AS total_items,
        -- Count progress items completed by user for this play
        COUNT(DISTINCT prog_count.progress_item_id) AS completed_items
      FROM
        meta.games g
        -- Join all progress items for this game or version group
        LEFT JOIN meta.progress_items pi_count ON (
          pi_count.game_id = g.id 
          OR (
            pi_count.game_id IS NULL 
            AND pi_count.progress_category_id IN (
              SELECT id 
              FROM meta.progress_categories 
              WHERE version_group_id = g.version_group_id
            )
          )
        )
        -- Join completed progress for this specific playthrough
        LEFT JOIN gameplay.progress prog_count ON (
          prog_count.progress_item_id = pi_count.id 
          AND prog_count.play_id = p.id
        )
      WHERE
        g.id = p.game_id
    ) play_stats ON TRUE
    
  WHERE
    p.user_id = target_user_id;
END;
$$;

-- =====================================================
-- View: User Adventure Stats (Wrapper)
-- =====================================================

CREATE OR REPLACE VIEW views.v_adventures_user_stats AS
SELECT
  stats.*
FROM
  views.fn_adventures_user_stats(auth.uid()) AS stats;

-- =====================================================
-- Permissions
-- =====================================================

-- Grant EXECUTE on function to authenticated users
GRANT EXECUTE ON FUNCTION views.fn_adventures_user_stats(UUID) 
  TO authenticated, service_role;

-- Grant SELECT on view to authenticated users
GRANT SELECT ON views.v_adventures_user_stats 
  TO authenticated, service_role;

-- =====================================================
-- Comments
-- =====================================================

COMMENT ON FUNCTION views.fn_adventures_user_stats(UUID) IS 
  'Calculate adventure statistics for a specific user. Returns exactly 1 row with aggregate counts.';

COMMENT ON VIEW views.v_adventures_user_stats IS 
  'Per-user adventure statistics for /adventures page. Automatically filters by auth.uid(). Always returns 1 row.';

-- =====================================================
-- Usage Examples
-- =====================================================
-- From authenticated context (uses auth.uid()):
--   SELECT * FROM views.v_adventures_user_stats;
--
-- From service role (specify user_id):
--   SELECT * FROM views.fn_adventures_user_stats('user-uuid-here');
--
-- Expected result:
--   {
--     "user_id": "uuid",
--     "total_playthroughs": 5,
--     "active_playthroughs": 2,
--     "completed_playthroughs": 3,
--     "total_badges": 24,
--     "total_pokemon_caught": 187,
--     "completion_rate": 67.5
--   }
-- =====================================================
