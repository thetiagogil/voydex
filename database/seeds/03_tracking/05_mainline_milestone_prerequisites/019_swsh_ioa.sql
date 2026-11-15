-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following the Isle of Armor's story.
-- Scope: Previous-step prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Isle of Armor's milestone prerequisite links: each beat suggests the one
-- before it in Story order.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_prerequisites (
  milestone_id,
  prerequisite_milestone_id,
  version_group_id,
  prerequisite_kind_id,
  sort_order,
  notes
) VALUES
  -- Dojo Trials <- Arrive at the Isle of Armor
  (190002, 190001, 19, 1, 1, NULL),
  -- Choose Dojo Starter <- Dojo Trials
  (190003, 190002, 19, 1, 1, NULL),
  -- Tower Choice <- Choose Dojo Starter
  (190005, 190003, 19, 1, 1, NULL),
  -- Tower of Two Fists <- Tower Choice
  (190006, 190005, 19, 1, 1, NULL),
  -- Final Mustard Battle <- Tower of Two Fists
  (190007, 190006, 19, 1, 1, NULL);
