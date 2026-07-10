-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Sword / Shield, Badge, Gym Leader, Champion Cup, Legendary Pokémon, and First partner Pokémon pages.
-- Scope: Pokémon Sword / Shield milestone-to-badge references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Sword / Shield Gym milestones to their badge rewards.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_badge_refs (
  milestone_id,
  badge_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Grass Badge milestone -> Grass Badge
  (180003, 18001, 18, 'reward', 1, NULL),
  -- Water Badge milestone -> Water Badge
  (180004, 18002, 18, 'reward', 1, NULL),
  -- Fire Badge milestone -> Fire Badge
  (180005, 18003, 18, 'reward', 1, NULL),
  -- Fighting Badge milestone -> Fighting Badge
  (183106, 18004, 18, 'reward', 1, NULL),
  -- Ghost Badge milestone -> Ghost Badge
  (183206, 18005, 18, 'reward', 1, NULL),
  -- Fairy Badge milestone -> Fairy Badge
  (180007, 18006, 18, 'reward', 1, NULL),
  -- Rock Badge milestone -> Rock Badge
  (183108, 18007, 18, 'reward', 1, NULL),
  -- Ice Badge milestone -> Ice Badge
  (183208, 18008, 18, 'reward', 1, NULL),
  -- Dark Badge milestone -> Dark Badge
  (180009, 18009, 18, 'reward', 1, NULL),
  -- Dragon Badge milestone -> Dragon Badge
  (180010, 18010, 18, 'reward', 1, NULL);
