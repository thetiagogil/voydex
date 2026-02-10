-- =====================================================
-- Migration: Dashboard - Recent Activity View
-- =====================================================
-- Purpose: Show user's recent progress items with full context
-- Used In: /dashboard page (ActivitySection component)
-- Type: Regular View (real-time data)
-- Dependencies: gameplay.progress, gameplay.plays, meta.*
--
-- Page Location: src/app/(protected)/dashboard/page.tsx
-- Component: src/components/features/dashboard/activity-section.tsx
-- API Route: /api/dashboard/activity
-- Hook: useRecentActivity(limit) in src/hooks/useDashboard.ts
--
-- Why Regular View:
-- - Time-ordered data that must be real-time
-- - User-specific (filtered by user_id in queries)
-- - Frequent inserts (new progress items)
-- - Includes navigation context (gen/game/play slugs)
--
-- Query Pattern:
--   SELECT * FROM views.v_dashboard_recent_activity
--   WHERE user_id = auth.uid()
--   ORDER BY completed_at DESC
--   LIMIT 10
--
-- Returns: Array of recent progress items with full context
-- =====================================================
-- =====================================================
-- View: Dashboard - Recent Activity
-- =====================================================
CREATE
OR REPLACE VIEW views.v_dashboard_recent_activity AS
SELECT
    -- Progress item identification
    prog.id,
    prog.play_id AS playthrough_id,
    -- Playthrough context
    p.name AS playthrough_name,
    p.status AS playthrough_status,
    -- Game context
    gm.name AS game_name,
    gm.slug AS game_slug,
    -- Generation context (for navigation)
    gen.id AS gen_id,
    gen.slug AS gen_slug,
    gen.name AS gen_name,
    -- Progress item details
    COALESCE(pi.timeline_message, pi.name) AS message,
    pi.name AS item_name,
    pi.location,
    -- Category information
    pc.name AS category_name,
    pc.slug AS category_slug,
    pc.type AS category_type,
    -- Categorize for UI display
    CASE
    -- Gym badges
        WHEN pc.slug LIKE '%badge%'
        OR pc.slug LIKE '%gym%'
        OR pi.slug LIKE '%badge%' THEN 'badge'
        -- Elite Four / Champion
        WHEN pc.slug LIKE '%elite%'
        OR pc.slug LIKE '%champion%'
        OR pi.slug LIKE '%elite%'
        OR pi.slug LIKE '%champion%' THEN 'elite-four'
        -- Legendary Pokemon
        WHEN pc.slug LIKE '%legend%'
        OR pi.slug LIKE '%legend%' THEN 'legendary'
        -- Pokedex milestones
        WHEN pc.type = 'dex'
        OR pc.slug LIKE '%dex%' THEN 'pokedex'
        -- Default: story progression
        ELSE 'story'
    END AS category,
    -- Timestamps
    prog.created_at AS completed_at,
    -- User identification
    p.user_id
FROM
    gameplay.progress prog
    -- Join playthrough
    JOIN gameplay.plays p ON prog.play_id = p.id
    -- Join game metadata
    JOIN meta.games gm ON p.game_id = gm.id
    -- Join generation (for navigation context)
    JOIN meta.generations gen ON gm.generation_id = gen.id
    -- Join progress item details
    JOIN meta.progress_items pi ON prog.progress_item_id = pi.id
    -- Join progress category
    JOIN meta.progress_categories pc ON pi.progress_category_id = pc.id
ORDER BY
    prog.created_at DESC;

-- =====================================================
-- Permissions
-- =====================================================
-- Grant SELECT to authenticated users
GRANT
SELECT
    ON views.v_dashboard_recent_activity TO authenticated,
    service_role;

-- =====================================================
-- Comments
-- =====================================================
COMMENT ON VIEW views.v_dashboard_recent_activity IS 'Recent progress items with full playthrough and game context for the /dashboard page. Filter by user_id and order by completed_at DESC.';

-- =====================================================
-- Usage Examples
-- =====================================================
-- Get user's recent activity (last 10 items):
--   SELECT * FROM views.v_dashboard_recent_activity
--   WHERE user_id = auth.uid()
--   ORDER BY completed_at DESC
--   LIMIT 10;
--
-- Get recent badges only:
--   SELECT * FROM views.v_dashboard_recent_activity
--   WHERE user_id = auth.uid()
--     AND category = 'badge'
--   ORDER BY completed_at DESC
--   LIMIT 5;
--
-- Get activity for specific playthrough:
--   SELECT * FROM views.v_dashboard_recent_activity
--   WHERE playthrough_id = 'uuid'
--   ORDER BY completed_at DESC;
--
-- Get all activity in past 7 days:
--   SELECT * FROM views.v_dashboard_recent_activity
--   WHERE user_id = auth.uid()
--     AND completed_at >= NOW() - INTERVAL '7 days'
--   ORDER BY completed_at DESC;
--
-- Expected result structure:
--   [
--     {
--       "id": "uuid",
--       "playthrough_id": "uuid",
--       "playthrough_name": "Red Nuzlocke Run",
--       "playthrough_status": "active",
--       "game_name": "Pokémon Red",
--       "game_slug": "red",
--       "gen_id": 1,
--       "gen_slug": "1",
--       "gen_name": "Generation I",
--       "message": "Defeated Giovanni and earned the Earth Badge",
--       "item_name": "Earth Badge",
--       "location": "Viridian City Gym",
--       "category_name": "Gym Badges",
--       "category_slug": "gym-badges",
--       "category_type": "main-story",
--       "category": "badge",
--       "completed_at": "2025-11-07T14:30:00Z",
--       "user_id": "uuid"
--     }
--   ]
-- =====================================================