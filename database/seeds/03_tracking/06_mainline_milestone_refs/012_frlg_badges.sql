-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge page.
-- Cross-check: Pokémon FireRed / LeafGreen source pages.
-- Scope: Pokémon FireRed / LeafGreen milestone-to-badge references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links FireRed / LeafGreen Gym milestones to their badge rewards.
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
  (60003, 6001, 6, 'reward', 1, NULL),
  -- Cascade Badge milestone -> Cascade Badge
  (60005, 6002, 6, 'reward', 1, NULL),
  -- Thunder Badge milestone -> Thunder Badge
  (60006, 6003, 6, 'reward', 1, NULL),
  -- Rainbow Badge milestone -> Rainbow Badge
  (60007, 6004, 6, 'reward', 1, NULL),
  -- Soul Badge milestone -> Soul Badge
  (60008, 6005, 6, 'reward', 1, NULL),
  -- Marsh Badge milestone -> Marsh Badge
  (60009, 6006, 6, 'reward', 1, NULL),
  -- Volcano Badge milestone -> Volcano Badge
  (60011, 6007, 6, 'reward', 1, NULL),
  -- Earth Badge milestone -> Earth Badge
  (60012, 6008, 6, 'reward', 1, NULL);
