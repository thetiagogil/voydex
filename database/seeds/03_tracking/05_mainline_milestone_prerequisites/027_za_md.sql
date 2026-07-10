-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Mega Dimension mainline milestone prerequisite links.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_prerequisites (
  milestone_id,
  prerequisite_milestone_id,
  version_group_id,
  prerequisite_kind_id,
  sort_order,
  notes
) VALUES
  -- Investigate Hyperspace Lumiose <- Begin Mega Dimension
  (270002, 270001, 27, 1, 1, NULL),
  -- Rogue Mega Darkrai <- Investigate Hyperspace Lumiose
  (270003, 270002, 27, 1, 1, NULL),
  -- Capture Groudon <- Rogue Mega Darkrai
  (270004, 270003, 27, 1, 1, NULL),
  -- Capture Kyogre <- Capture Groudon
  (270005, 270004, 27, 1, 1, NULL),
  -- Rogue Mega Rayquaza <- Capture Kyogre
  (270006, 270005, 27, 1, 1, NULL);
