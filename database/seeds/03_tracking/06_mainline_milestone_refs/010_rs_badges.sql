-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge page.
-- Cross-check: Pokémon Ruby / Sapphire source pages.
-- Scope: Pokémon Ruby / Sapphire milestone-to-badge references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Ruby / Sapphire Gym milestones to their badge rewards.
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
  (50003, 5001, 5, 'reward', 1, NULL),
  -- Knuckle Badge milestone -> Knuckle Badge
  (50004, 5002, 5, 'reward', 1, NULL),
  -- Dynamo Badge milestone -> Dynamo Badge
  (50005, 5003, 5, 'reward', 1, NULL),
  -- Heat Badge milestone -> Heat Badge
  (50007, 5004, 5, 'reward', 1, NULL),
  -- Balance Badge milestone -> Balance Badge
  (50008, 5005, 5, 'reward', 1, NULL),
  -- Feather Badge milestone -> Feather Badge
  (50009, 5006, 5, 'reward', 1, NULL),
  -- Mind Badge milestone -> Mind Badge
  (50010, 5007, 5, 'reward', 1, NULL),
  -- Rain Badge milestone -> Rain Badge
  (50011, 5008, 5, 'reward', 1, NULL);
