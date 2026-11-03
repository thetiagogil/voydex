-- ============================================================================
-- Source
-- ============================================================================
-- Primary: the games' experience tables, as read from each game's own data.
-- Cross-check: Bulbapedia's experience page.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The six experience curves and the total each takes to reach level 100.
-- ============================================================================
INSERT INTO reference.growth_rates (id, slug, name, level_100_experience, sort_order)
VALUES
  -- Erratic
  (1, 'erratic', 'Erratic', 600000, 1),
  -- Fast
  (2, 'fast', 'Fast', 800000, 2),
  -- Medium Fast
  (3, 'medium', 'Medium Fast', 1000000, 3),
  -- Medium Slow
  (4, 'medium-slow', 'Medium Slow', 1059860, 4),
  -- Slow
  (5, 'slow', 'Slow', 1250000, 5),
  -- Fluctuating
  (6, 'fluctuating', 'Fluctuating', 1640000, 6);
