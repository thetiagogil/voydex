-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Black 2 / White 2, and First partner Pokémon pages.
-- Scope: Pokémon Black 2 / White 2 milestone-to-badge references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Black 2 / White 2 Gym milestones to their badge rewards.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_badge_refs (
  milestone_id,
  badge_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Basic Badge milestone -> Basic Badge
  (120003, 12001, 12, 'reward', 1, NULL),
  -- Toxic Badge milestone -> Toxic Badge
  (120004, 12002, 12, 'reward', 1, NULL),
  -- Insect Badge milestone -> Insect Badge
  (120005, 12003, 12, 'reward', 1, NULL),
  -- Bolt Badge milestone -> Bolt Badge
  (120006, 12004, 12, 'reward', 1, NULL),
  -- Quake Badge milestone -> Quake Badge
  (120007, 12005, 12, 'reward', 1, NULL),
  -- Jet Badge milestone -> Jet Badge
  (120008, 12006, 12, 'reward', 1, NULL),
  -- Legend Badge milestone -> Legend Badge
  (120009, 12007, 12, 'reward', 1, NULL),
  -- Wave Badge milestone -> Wave Badge
  (120010, 12008, 12, 'reward', 1, NULL);
