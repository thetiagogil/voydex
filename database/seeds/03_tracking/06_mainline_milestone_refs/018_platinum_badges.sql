-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge and Platinum pages.
-- Cross-check: Pokémon Platinum source page.
-- Scope: Pokémon Platinum milestone-to-badge references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Platinum Gym milestones to their badge rewards.
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
  (90003, 9001, 9, 'reward', 1, NULL),
  -- Forest Badge milestone -> Forest Badge
  (90004, 9002, 9, 'reward', 1, NULL),
  -- Relic Badge milestone -> Relic Badge
  (90005, 9003, 9, 'reward', 1, NULL),
  -- Cobble Badge milestone -> Cobble Badge
  (90006, 9004, 9, 'reward', 1, NULL),
  -- Fen Badge milestone -> Fen Badge
  (90007, 9005, 9, 'reward', 1, NULL),
  -- Mine Badge milestone -> Mine Badge
  (90008, 9006, 9, 'reward', 1, NULL),
  -- Icicle Badge milestone -> Icicle Badge
  (90009, 9007, 9, 'reward', 1, NULL),
  -- Beacon Badge milestone -> Beacon Badge
  (90010, 9008, 9, 'reward', 1, NULL);
