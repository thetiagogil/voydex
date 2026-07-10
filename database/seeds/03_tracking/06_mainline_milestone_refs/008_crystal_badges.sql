-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge page.
-- Cross-check: Pokémon Crystal source page.
-- Scope: Pokémon Crystal milestone-to-badge references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Crystal Gym milestones to their badge rewards.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_badge_refs (
  milestone_id,
  badge_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Zephyr Badge milestone -> Zephyr Badge
  (40003, 4001, 4, 'reward', 1, NULL),
  -- Hive Badge milestone -> Hive Badge
  (40004, 4002, 4, 'reward', 1, NULL),
  -- Plain Badge milestone -> Plain Badge
  (40005, 4003, 4, 'reward', 1, NULL),
  -- Fog Badge milestone -> Fog Badge
  (40006, 4004, 4, 'reward', 1, NULL),
  -- Storm Badge milestone -> Storm Badge
  (40007, 4005, 4, 'reward', 1, NULL),
  -- Mineral Badge milestone -> Mineral Badge
  (40008, 4006, 4, 'reward', 1, NULL),
  -- Glacier Badge milestone -> Glacier Badge
  (40009, 4007, 4, 'reward', 1, NULL),
  -- Rising Badge milestone -> Rising Badge
  (40010, 4008, 4, 'reward', 1, NULL),
  -- Boulder Badge milestone -> Boulder Badge
  (40017, 4009, 4, 'reward', 1, NULL),
  -- Cascade Badge milestone -> Cascade Badge
  (40018, 4010, 4, 'reward', 1, NULL),
  -- Thunder Badge milestone -> Thunder Badge
  (40019, 4011, 4, 'reward', 1, NULL),
  -- Rainbow Badge milestone -> Rainbow Badge
  (40020, 4012, 4, 'reward', 1, NULL),
  -- Soul Badge milestone -> Soul Badge
  (40021, 4013, 4, 'reward', 1, NULL),
  -- Marsh Badge milestone -> Marsh Badge
  (40022, 4014, 4, 'reward', 1, NULL),
  -- Volcano Badge milestone -> Volcano Badge
  (40023, 4015, 4, 'reward', 1, NULL),
  -- Earth Badge milestone -> Earth Badge
  (40024, 4016, 4, 'reward', 1, NULL);
