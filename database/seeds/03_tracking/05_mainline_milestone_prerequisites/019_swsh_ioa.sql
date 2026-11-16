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
  -- Choose Dojo Starter opens after Arrive at the Isle of Armor
  (190003, 190001, 19, 4, 1, 'Passing the first of Mustard''s three trials is enough.'),
  -- Dojo Trials <- Arrive at the Isle of Armor
  (190002, 190001, 19, 1, 1, NULL),
  -- Tower Choice <- Dojo Trials
  (190005, 190002, 19, 1, 1, NULL),
  -- Tower of Two Fists <- Tower Choice
  (190006, 190005, 19, 1, 1, NULL),
  -- Final Mustard Battle <- Tower of Two Fists
  (190007, 190006, 19, 1, 1, NULL);
