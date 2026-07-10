-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Indigo Disk mainline milestone prerequisite links.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_prerequisites (
  milestone_id,
  prerequisite_milestone_id,
  version_group_id,
  prerequisite_kind_id,
  sort_order,
  notes
) VALUES
  -- BB Elite Four Crispin <- Arrive at Blueberry Academy
  (250002, 250001, 25, 1, 1, NULL),
  -- BB Elite Four Amarys <- BB Elite Four Crispin
  (250003, 250002, 25, 1, 1, NULL),
  -- BB Elite Four Lacey <- BB Elite Four Amarys
  (250004, 250003, 25, 1, 1, NULL),
  -- BB Elite Four Drayton <- BB Elite Four Lacey
  (250005, 250004, 25, 1, 1, NULL),
  -- BB Champion Kieran <- BB Elite Four Drayton
  (250006, 250005, 25, 1, 1, NULL),
  -- Area Zero Underdepths <- BB Champion Kieran
  (250007, 250006, 25, 1, 1, NULL),
  -- Terapagos Battle <- Area Zero Underdepths
  (250008, 250007, 25, 1, 1, NULL);
