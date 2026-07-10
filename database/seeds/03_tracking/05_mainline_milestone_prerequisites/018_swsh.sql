-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Sword / Shield mainline milestone prerequisite links.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_prerequisites (
  milestone_id,
  prerequisite_milestone_id,
  version_group_id,
  prerequisite_kind_id,
  sort_order,
  notes
) VALUES
  -- Receive Pokedex <- Choose Starter
  (180002, 180001, 18, 1, 1, NULL),
  -- Grass Badge <- Receive Pokedex
  (180003, 180002, 18, 1, 1, NULL),
  -- Water Badge <- Grass Badge
  (180004, 180003, 18, 1, 1, NULL),
  -- Fire Badge <- Water Badge
  (180005, 180004, 18, 1, 1, NULL),
  -- Fighting Badge <- Fire Badge
  (183106, 180005, 18, 1, 1, NULL),
  -- Ghost Badge <- Fire Badge
  (183206, 180005, 18, 1, 1, NULL),
  -- Fairy Badge <- Fighting Badge
  (180007, 183106, 18, 1, 1, NULL),
  -- Fairy Badge <- Ghost Badge
  (180007, 183206, 18, 1, 2, NULL),
  -- Rock Badge <- Fairy Badge
  (183108, 180007, 18, 1, 1, NULL),
  -- Ice Badge <- Fairy Badge
  (183208, 180007, 18, 1, 1, NULL),
  -- Dark Badge <- Rock Badge
  (180009, 183108, 18, 1, 1, NULL),
  -- Dark Badge <- Ice Badge
  (180009, 183208, 18, 1, 2, NULL),
  -- Dragon Badge <- Dark Badge
  (180010, 180009, 18, 1, 1, NULL),
  -- Defeat Eternatus <- Dragon Badge
  (180011, 180010, 18, 1, 1, NULL),
  -- Champion Leon <- Defeat Eternatus
  (180012, 180011, 18, 1, 1, NULL),
  -- Hall of Fame <- Champion Leon
  (180013, 180012, 18, 1, 1, NULL),
  -- Post-Game Episode <- Hall of Fame
  (180014, 180013, 18, 1, 1, NULL);
