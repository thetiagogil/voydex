-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge page.
-- Cross-check: Pokémon Gold / Silver source pages.
-- Scope: Pokémon Gold / Silver milestone-to-badge references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Gold / Silver Gym milestones to their badge rewards.
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
  (30003, 3001, 3, 'reward', 1, NULL),
  -- Hive Badge milestone -> Hive Badge
  (30004, 3002, 3, 'reward', 1, NULL),
  -- Plain Badge milestone -> Plain Badge
  (30005, 3003, 3, 'reward', 1, NULL),
  -- Fog Badge milestone -> Fog Badge
  (30006, 3004, 3, 'reward', 1, NULL),
  -- Storm Badge milestone -> Storm Badge
  (30007, 3005, 3, 'reward', 1, NULL),
  -- Mineral Badge milestone -> Mineral Badge
  (30008, 3006, 3, 'reward', 1, NULL),
  -- Glacier Badge milestone -> Glacier Badge
  (30009, 3007, 3, 'reward', 1, NULL),
  -- Rising Badge milestone -> Rising Badge
  (30010, 3008, 3, 'reward', 1, NULL),
  -- Boulder Badge milestone -> Boulder Badge
  (30017, 3009, 3, 'reward', 1, NULL),
  -- Cascade Badge milestone -> Cascade Badge
  (30018, 3010, 3, 'reward', 1, NULL),
  -- Thunder Badge milestone -> Thunder Badge
  (30019, 3011, 3, 'reward', 1, NULL),
  -- Rainbow Badge milestone -> Rainbow Badge
  (30020, 3012, 3, 'reward', 1, NULL),
  -- Soul Badge milestone -> Soul Badge
  (30021, 3013, 3, 'reward', 1, NULL),
  -- Marsh Badge milestone -> Marsh Badge
  (30022, 3014, 3, 'reward', 1, NULL),
  -- Volcano Badge milestone -> Volcano Badge
  (30023, 3015, 3, 'reward', 1, NULL),
  -- Earth Badge milestone -> Earth Badge
  (30024, 3016, 3, 'reward', 1, NULL);
