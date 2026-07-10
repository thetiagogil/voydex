-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge page.
-- Cross-check: Pokémon Emerald source page.
-- Scope: Pokémon Emerald milestone-to-badge references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Emerald Gym milestones to their badge rewards.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_badge_refs (
  milestone_id,
  badge_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Stone Badge milestone -> Stone Badge
  (70003, 7001, 7, 'reward', 1, NULL),
  -- Knuckle Badge milestone -> Knuckle Badge
  (70004, 7002, 7, 'reward', 1, NULL),
  -- Dynamo Badge milestone -> Dynamo Badge
  (70005, 7003, 7, 'reward', 1, NULL),
  -- Heat Badge milestone -> Heat Badge
  (70007, 7004, 7, 'reward', 1, NULL),
  -- Balance Badge milestone -> Balance Badge
  (70008, 7005, 7, 'reward', 1, NULL),
  -- Feather Badge milestone -> Feather Badge
  (70009, 7006, 7, 'reward', 1, NULL),
  -- Mind Badge milestone -> Mind Badge
  (70010, 7007, 7, 'reward', 1, NULL),
  -- Rain Badge milestone -> Rain Badge
  (70011, 7008, 7, 'reward', 1, NULL);
