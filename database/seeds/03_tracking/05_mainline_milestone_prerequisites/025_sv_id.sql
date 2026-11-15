-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following The Indigo Disk's story.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Indigo Disk milestone prerequisite links, in Red / Blue's pattern: each
-- required beat suggests the one before it in Story order, and each
-- side-content beat names the beat that opens it (opens-after).
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
  -- Terapagos <- BB Champion Kieran
  (250008, 250006, 25, 1, 1, NULL),
  -- Coastal Biome opens after Arrive at Blueberry Academy
  (250010, 250001, 25, 4, 1, NULL),
  -- Mochi Mayhem opens after Terapagos
  (250009, 250008, 25, 4, 1, NULL),
  -- Perrin's Paradox Photos opens after Terapagos
  (250011, 250008, 25, 4, 1, NULL),
  -- Snacksworth's Legendary Treats opens after Terapagos
  (250012, 250008, 25, 4, 1, NULL);
