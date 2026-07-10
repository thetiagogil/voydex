-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge page.
-- Cross-check: legacy Voydex Red / Blue tracking seeds.
-- Scope: Pokémon Red / Blue milestone-to-badge references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links required Red / Blue Gym milestones to their badge rewards.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_badge_refs (
  milestone_id,
  badge_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Boulder Badge milestone -> Boulder Badge
  (10003, 1001, 1, 'reward', 1, NULL),
  -- Cascade Badge milestone -> Cascade Badge
  (10005, 1002, 1, 'reward', 1, NULL),
  -- Thunder Badge milestone -> Thunder Badge
  (10006, 1003, 1, 'reward', 1, NULL),
  -- Rainbow Badge milestone -> Rainbow Badge
  (10007, 1004, 1, 'reward', 1, NULL),
  -- Soul Badge milestone -> Soul Badge
  (10008, 1005, 1, 'reward', 1, NULL),
  -- Marsh Badge milestone -> Marsh Badge
  (10009, 1006, 1, 'reward', 1, NULL),
  -- Volcano Badge milestone -> Volcano Badge
  (10011, 1007, 1, 'reward', 1, NULL),
  -- Earth Badge milestone -> Earth Badge
  (10012, 1008, 1, 'reward', 1, NULL);
