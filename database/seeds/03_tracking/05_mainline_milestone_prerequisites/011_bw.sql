-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Black / White mainline milestone prerequisite links.
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
  (110002, 110001, 11, 1, 1, NULL),
  -- Trio Badge <- Receive Pokedex
  (110003, 110002, 11, 1, 1, NULL),
  -- Basic Badge <- Trio Badge
  (110004, 110003, 11, 1, 1, NULL),
  -- Insect Badge <- Basic Badge
  (110005, 110004, 11, 1, 1, NULL),
  -- Bolt Badge <- Insect Badge
  (110006, 110005, 11, 1, 1, NULL),
  -- Quake Badge <- Bolt Badge
  (110007, 110006, 11, 1, 1, NULL),
  -- Jet Badge <- Quake Badge
  (110008, 110007, 11, 1, 1, NULL),
  -- Freeze Badge <- Jet Badge
  (110009, 110008, 11, 1, 1, NULL),
  -- Legend Badge <- Freeze Badge
  (110010, 110009, 11, 1, 1, NULL),
  -- Elite Four Shauntal <- Legend Badge
  (110011, 110010, 11, 1, 1, NULL),
  -- Elite Four Grimsley <- Elite Four Shauntal
  (110012, 110011, 11, 1, 1, NULL),
  -- Elite Four Caitlin <- Elite Four Grimsley
  (110013, 110012, 11, 1, 1, NULL),
  -- Elite Four Marshal <- Elite Four Caitlin
  (110014, 110013, 11, 1, 1, NULL),
  -- Battle N <- Elite Four Marshal
  (110015, 110014, 11, 1, 1, NULL),
  -- Defeat Ghetsis <- Battle N
  (110016, 110015, 11, 1, 1, NULL),
  -- Champion Alder <- Defeat Ghetsis
  (110017, 110016, 11, 1, 1, NULL),
  -- Hall of Fame <- Champion Alder
  (110018, 110017, 11, 1, 1, NULL);
