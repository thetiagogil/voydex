-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Isle of Armor mainline milestone prerequisite links.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_prerequisites (
  milestone_id,
  prerequisite_milestone_id,
  version_group_id,
  prerequisite_kind_id,
  sort_order,
  notes
) VALUES
  -- Dojo Rival Battle <- Arrive at the Isle of Armor
  (190002, 190001, 19, 1, 1, NULL),
  -- Choose Dojo Starter <- Dojo Rival Battle
  (190003, 190002, 19, 1, 1, NULL),
  -- Receive Kubfu <- Choose Dojo Starter
  (190004, 190003, 19, 1, 1, NULL),
  -- Tower Choice <- Receive Kubfu
  (190005, 190004, 19, 1, 1, NULL),
  -- Tower of Two Fists <- Tower Choice
  (190006, 190005, 19, 1, 1, NULL),
  -- Final Mustard Battle <- Tower of Two Fists
  (190007, 190006, 19, 1, 1, NULL);
