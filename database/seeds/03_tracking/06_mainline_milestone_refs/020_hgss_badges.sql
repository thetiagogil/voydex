-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge and HeartGold / SoulSilver pages.
-- Cross-check: Pokémon HeartGold / SoulSilver source page.
-- Scope: Pokémon HeartGold / SoulSilver milestone-to-badge references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links HeartGold / SoulSilver Gym milestones to their badge rewards.
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
  (100003, 10001, 10, 'reward', 1, NULL),
  -- Hive Badge milestone -> Hive Badge
  (100004, 10002, 10, 'reward', 1, NULL),
  -- Plain Badge milestone -> Plain Badge
  (100005, 10003, 10, 'reward', 1, NULL),
  -- Fog Badge milestone -> Fog Badge
  (100006, 10004, 10, 'reward', 1, NULL),
  -- Storm Badge milestone -> Storm Badge
  (100007, 10005, 10, 'reward', 1, NULL),
  -- Mineral Badge milestone -> Mineral Badge
  (100008, 10006, 10, 'reward', 1, NULL),
  -- Glacier Badge milestone -> Glacier Badge
  (100009, 10007, 10, 'reward', 1, NULL),
  -- Rising Badge milestone -> Rising Badge
  (100010, 10008, 10, 'reward', 1, NULL),
  -- Boulder Badge milestone -> Boulder Badge
  (100017, 10009, 10, 'reward', 1, NULL),
  -- Cascade Badge milestone -> Cascade Badge
  (100018, 10010, 10, 'reward', 1, NULL),
  -- Thunder Badge milestone -> Thunder Badge
  (100019, 10011, 10, 'reward', 1, NULL),
  -- Rainbow Badge milestone -> Rainbow Badge
  (100020, 10012, 10, 'reward', 1, NULL),
  -- Soul Badge milestone -> Soul Badge
  (100021, 10013, 10, 'reward', 1, NULL),
  -- Marsh Badge milestone -> Marsh Badge
  (100022, 10014, 10, 'reward', 1, NULL),
  -- Volcano Badge milestone -> Volcano Badge
  (100023, 10015, 10, 'reward', 1, NULL),
  -- Earth Badge milestone -> Earth Badge
  (100024, 10016, 10, 'reward', 1, NULL);
