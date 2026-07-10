-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Black / White, and First partner Pokémon pages.
-- Scope: Pokémon Black / White milestone-to-badge references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Black / White Gym milestones to their badge rewards.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_badge_refs (
  milestone_id,
  badge_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Trio Badge milestone -> Trio Badge
  (110003, 11001, 11, 'reward', 1, NULL),
  -- Basic Badge milestone -> Basic Badge
  (110004, 11002, 11, 'reward', 1, NULL),
  -- Insect Badge milestone -> Insect Badge
  (110005, 11003, 11, 'reward', 1, NULL),
  -- Bolt Badge milestone -> Bolt Badge
  (110006, 11004, 11, 'reward', 1, NULL),
  -- Quake Badge milestone -> Quake Badge
  (110007, 11005, 11, 'reward', 1, NULL),
  -- Jet Badge milestone -> Jet Badge
  (110008, 11006, 11, 'reward', 1, NULL),
  -- Freeze Badge milestone -> Freeze Badge
  (110009, 11007, 11, 'reward', 1, NULL),
  -- Legend Badge milestone -> Legend Badge
  (110010, 11008, 11, 'reward', 1, NULL);
