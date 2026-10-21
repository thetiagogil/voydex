-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Diamond / Pearl mainline milestone prerequisite links.
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
  (80002, 80001, 8, 1, 1, NULL),
  -- Coal Badge <- Receive Pokedex
  (80003, 80002, 8, 1, 1, NULL),
  -- Forest Badge <- Coal Badge
  (80004, 80003, 8, 1, 1, NULL),
  -- Cobble Badge <- Forest Badge
  (80005, 80004, 8, 1, 1, NULL),
  -- Fen Badge <- Cobble Badge
  (80006, 80005, 8, 1, 1, NULL),
  -- Relic Badge <- Fen Badge
  (80007, 80006, 8, 1, 1, NULL),
  -- Mine Badge <- Relic Badge
  (80008, 80007, 8, 1, 1, NULL),
  -- Icicle Badge <- Mine Badge
  (80009, 80008, 8, 1, 1, NULL),
  -- Beacon Badge <- Spear Pillar
  (80010, 80018, 8, 1, 1, NULL),
  -- Elite Four Aaron <- Beacon Badge
  (80011, 80010, 8, 1, 1, NULL),
  -- Elite Four Bertha <- Elite Four Aaron
  (80012, 80011, 8, 1, 1, NULL),
  -- Elite Four Flint <- Elite Four Bertha
  (80013, 80012, 8, 1, 1, NULL),
  -- Elite Four Lucian <- Elite Four Flint
  (80014, 80013, 8, 1, 1, NULL),
  -- Champion Cynthia <- Elite Four Lucian
  (80015, 80014, 8, 1, 1, NULL),
  -- Hall of Fame <- Champion Cynthia
  (80016, 80015, 8, 1, 1, NULL),
  -- Team Galactic HQ <- Icicle Badge
  (80017, 80009, 8, 1, 1, NULL),
  -- Spear Pillar <- Team Galactic HQ
  (80018, 80017, 8, 1, 1, NULL),
  -- Fight Area <- Hall of Fame
  (80019, 80016, 8, 1, 1, NULL);
