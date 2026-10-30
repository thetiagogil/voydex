-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Crown Tundra mainline milestone prerequisite links.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_prerequisites (
  milestone_id,
  prerequisite_milestone_id,
  version_group_id,
  prerequisite_kind_id,
  sort_order,
  notes
) VALUES
  -- Battle Peony <- Arrive at the Crown Tundra
  (200002, 200001, 20, 1, 1, NULL),
  -- Steed Choice <- Battle Peony
  (200003, 200002, 20, 1, 1, NULL),
  -- Calyrex Quest <- Steed Choice
  (200004, 200003, 20, 1, 1, NULL),
  -- Regi Choice <- Calyrex Quest
  (200005, 200004, 20, 1, 1, NULL),
  -- Regi Temples <- Regi Choice
  (200006, 200005, 20, 1, 1, NULL),
  -- Galarian Birds <- Regi Temples
  (200007, 200006, 20, 1, 1, NULL),
  -- Finish Crown Tundra Expeditions <- Galarian Birds
  (200008, 200007, 20, 1, 1, NULL),
  -- Swords of Justice opens after Battle Peony
  (200009, 200002, 20, 4, 1, NULL),
  -- Ballimere Lake opens after Swords of Justice
  (200010, 200009, 20, 4, 1, NULL);
