-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Emerald mainline milestone prerequisite links.
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
  (70002, 70001, 7, 1, 1, NULL),
  -- Stone Badge <- Receive Pokedex
  (70003, 70002, 7, 1, 1, NULL),
  -- Knuckle Badge <- Stone Badge
  (70004, 70003, 7, 1, 1, NULL),
  -- Dynamo Badge <- Knuckle Badge
  (70005, 70004, 7, 1, 1, NULL),
  -- Heat Badge <- Dynamo Badge
  (70007, 70005, 7, 1, 1, NULL),
  -- Balance Badge <- Heat Badge
  (70008, 70007, 7, 1, 1, NULL),
  -- Feather Badge <- Balance Badge
  (70009, 70008, 7, 1, 1, NULL),
  -- Mind Badge <- Feather Badge
  (70010, 70009, 7, 1, 1, NULL),
  -- Rain Badge <- Mind Badge
  (70011, 70010, 7, 1, 1, NULL),
  -- Elite Four Sidney <- Rain Badge
  (70012, 70011, 7, 1, 1, NULL),
  -- Elite Four Phoebe <- Elite Four Sidney
  (70013, 70012, 7, 1, 1, NULL),
  -- Elite Four Glacia <- Elite Four Phoebe
  (70014, 70013, 7, 1, 1, NULL),
  -- Elite Four Drake <- Elite Four Glacia
  (70015, 70014, 7, 1, 1, NULL),
  -- Champion Wallace <- Elite Four Drake
  (70016, 70015, 7, 1, 1, NULL),
  -- Hall of Fame <- Champion Wallace
  (70017, 70016, 7, 1, 1, NULL),
  -- Lati Choice <- Hall of Fame
  (70018, 70017, 7, 1, 1, NULL),
  -- Defeat Steven <- Lati Choice
  (70019, 70018, 7, 1, 1, NULL);
