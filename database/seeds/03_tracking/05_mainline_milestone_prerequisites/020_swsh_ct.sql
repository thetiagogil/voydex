-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following the Crown Tundra's story.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Crown Tundra's milestone prerequisite links: each beat suggests the one
-- before it in Story order, and each side-content beat names the beat that
-- opens it (opens-after).
-- ============================================================================

INSERT INTO tracking.mainline_milestone_prerequisites (
  milestone_id,
  prerequisite_milestone_id,
  version_group_id,
  prerequisite_kind_id,
  sort_order,
  notes
) VALUES
  -- Arrive at the Crown Tundra <- Battle Peony
  (200001, 200002, 20, 1, 1, NULL),
  -- Steed Choice <- Arrive at the Crown Tundra
  (200003, 200001, 20, 1, 1, NULL),
  -- Calyrex Quest <- Steed Choice
  (200004, 200003, 20, 1, 1, NULL),
  -- Regi Temples <- Calyrex Quest
  (200006, 200004, 20, 1, 1, NULL),
  -- Regi Choice <- Regi Temples
  (200005, 200006, 20, 1, 1, NULL),
  -- Galarian Birds <- Regi Choice
  (200007, 200005, 20, 1, 1, NULL),
  -- Finish Crown Tundra Expeditions <- Galarian Birds
  (200008, 200007, 20, 1, 1, NULL),
  -- Swords of Justice opens after Arrive at the Crown Tundra
  (200009, 200001, 20, 4, 1, NULL),
  -- Ballimere Lake opens after Swords of Justice
  (200010, 200009, 20, 4, 1, 'Needs Cobalion, Terrakion and Virizion in your party.');
