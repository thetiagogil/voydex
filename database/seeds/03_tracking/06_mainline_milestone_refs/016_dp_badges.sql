-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge page.
-- Cross-check: Pokémon Diamond / Pearl source page.
-- Scope: Pokémon Diamond / Pearl milestone-to-badge references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Diamond / Pearl Gym milestones to their badge rewards.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_badge_refs (
  milestone_id,
  badge_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Coal Badge milestone -> Coal Badge
  (80003, 8001, 8, 'reward', 1, NULL),
  -- Forest Badge milestone -> Forest Badge
  (80004, 8002, 8, 'reward', 1, NULL),
  -- Cobble Badge milestone -> Cobble Badge
  (80005, 8003, 8, 'reward', 1, NULL),
  -- Fen Badge milestone -> Fen Badge
  (80006, 8004, 8, 'reward', 1, NULL),
  -- Relic Badge milestone -> Relic Badge
  (80007, 8005, 8, 'reward', 1, NULL),
  -- Mine Badge milestone -> Mine Badge
  (80008, 8006, 8, 'reward', 1, NULL),
  -- Icicle Badge milestone -> Icicle Badge
  (80009, 8007, 8, 'reward', 1, NULL),
  -- Beacon Badge milestone -> Beacon Badge
  (80010, 8008, 8, 'reward', 1, NULL);
